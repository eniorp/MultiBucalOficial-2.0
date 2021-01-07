unit GeraPerdidosANS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls,Biblio, Buttons, ExtCtrls,FileCtrl, ComCtrls;

type
  TFmGeraPerdidosANS = class(TForm)
    QueryParam: TQuery;
    SpArqSusep: TStoredProc;
    Label1: TLabel;
    EditDiretorio: TEdit;
    Label2: TLabel;
    EditNmArq: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    EditQtdeExcl: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    QueryContratante: TQuery;
    QueryContratantecodigo: TIntegerField;
    QueryContratanteendereco_comercial: TStringField;
    QueryContratanteendereco_residencial: TStringField;
    QueryContratantenumero_res: TStringField;
    QueryContratantenumero_com: TStringField;
    QueryContratantecomplemento_res: TStringField;
    QueryContratantecomplemento_com: TStringField;
    Panel1: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
//    procedure BitBtn1Click(Sender: TObject);
  private
    qtdeIncl, qtdeAlt, QtdeExcl,SeqArq : Word;
    Aux :String;
    S : AnsiString;
    F : TextFile;
    procedure PGeraInclusao;
    procedure PGeraAlteracao;
    procedure PGeraExclusao;
  public
    { Public declarations }
  end;

var
  FmGeraPerdidosANS: TFmGeraPerdidosANS;

  
implementation

uses udm, UdmAt;

{$R *.DFM}


procedure TFmGeraPerdidosANS.BitBtn1Click(Sender: TObject);
var Dir, Data, Hora : String;
begin
   If application.MessageBox('Confirma geração do arquivo dos registros não encontrados na base?','Confirmação',
     MB_OKCANCEL) = MrCancel then
      Exit;
      // tirei as linahs abaixo pq o envio do mês 10/2005 rejeitou pq o código
      // estava sendo enviado com zeros a esquerda
      // e a data de cancelamento estava em branco e o motivo de cancelamento zerado
      
//   dm.ExecutaComando('delete UsuPerdidoANS');

   // inclui os registros
//   DmAT.QueryInseriPerdidos.ExecSQL;

    // esta query zera as datas de exclusão e inclui o cógido do usuário correspondnete
    // aos usuários que possuem a e contratantes titulares sem o zero no final
    // e conforme o parâmetro ENVCAN envia ou não os perdidos que ainda não foram
    // excluidos
    //filtrar apenas quem tem data de exclusao.
    dmAt.QueryUpd_dtExcl_Perdidos.ExecSQL;

   SpArqSusep.Close;
   SpArqSusep.Open; // procedure que inclui data de inclusão e exclusão nos registros e retorna as registros.
   If SpArqSusep.Bof and SpArqSusep.Eof then
   begin
      Showmessage('Arquivo não gerado. Não existem registros pendentes !');
      Exit;
   end;

   QueryParam.Close;
   QueryParam.Open;

   Data := Copy(QueryParam.FieldByName('data').AsString,7,4) +
           Copy(QueryParam.FieldByName('data').AsString,4,2) +
           Copy(QueryParam.FieldByName('data').AsString,1,2);
   Hora := FormatDateTime('hhnnss',dm.now());

   Aux := QueryParam.FieldByName('CodOperSusepOri').AsString;
   Aux := lpad(aux,6,'0');
   Aux := Aux + Data + Hora;

   Dir := Dir + Aux + '.SIB';

   EditNmArq.Text := Dir;

   If EditDiretorio.Text = '' then
      EditDiretorio.Text := 'c:\susep';

   if not DirectoryExists(EditDiretorio.Text) then
      ForceDirectories(EditDiretorio.Text);

   Dir := EditDiretorio.Text + '\' + Dir;
   AssignFile(F,Dir);
   ReWrite(F);
   qtdeIncl := 0;
   QtdeExcl := 0;
   qtdeAlt := 0;
   SeqArq := 2;

   // linha do tipo Header

   S := '00000010BENEF' + Data +
        QueryParam.FieldByName('CodOperSusep').AsString +
        QueryParam.FieldByName('CNPJ').AsString +
        QueryParam.FieldByName('UltArqSusep').AsString +
        {08} 'V01' +
        {09} 'O'   +
        {10} Hora  +
        {11} '0'   +
        {12} strAll(266,' ') +
        {13} strAll(049,' ');

   Writeln(F,S);
   while not SpArqSusep.Eof do
   begin
      case SpArqSusep.FieldByName('FlagIncl_Excl').AsInteger of
         1 : PGeraInclusao; // 1 = inclusao  2 = alteração  3 = exclusao
         2 : PGeraAlteracao;
         3 : PGeraExclusao;
      end;
      SpArqSusep.next;
      Inc(SeqArq);
   end;

   aux := IntToStr(SeqArq);
   if qtdeIncl = 0 then
   begin
      S := lpad(aux,7,'0') + '6' + 'NAO EXISTEM BENEFICIARIOS CADASTRADOS';
      Writeln(F,S);
      Inc(SeqArq);
   end;

   if (qtdeAlt = 0) and (QtdeExcl = 0) then
   begin
      S := lpad(aux,7,'0') + '6' + 'NAO HOUVE ATUALIZACAO DE DADOS BENEFICIARIOS';
      Writeln(F,S);
      Inc(SeqArq);
   end;


   // TRAILER

   aux := IntToStr(SeqArq);
   S := StrAll(7 - Length(Aux),'0') + Aux + '9';
   // TOTAL INCLUSAO
   aux := IntToStr(qtdeIncl);
   S := S + StrAll(7 - Length(Aux),'0') + Aux;
   // TOTAL ALTERACAO
   aux := IntToStr(qtdeAlt);
   S := S + StrAll(7 - Length(Aux),'0') + Aux;
   // TOTAL EXCLUSAO
   aux := IntToStr(qtdeExcl);
   S := S + StrAll(7 - Length(Aux),'0') + Aux ;
   // TOTAL COBERTURA
   S := S +  '0000000';
   // TOTAL PROCEDIMENTO EXCLUIDOS
   S := S +  '0000000';
   // RESERVA PARA EXPANSAO
   S := S +  strAll(345,' ');

   Writeln(F,S);
   closeFile(F);
   EditQtdeExcl.Text := IntToStr(qtdeExcl);

   ShowMessage('Arquivo "' + Dir + '" Gerado com sucesso !')
end;


procedure TFmGeraPerdidosANS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DmAt.free;
   QueryParam.Close;
   SpArqSusep.Close;
end;


procedure TFmGeraPerdidosANS.FormShow(Sender: TObject);
begin
   ShortDateFormat := 'dd/MM/yyyy';
   DmAt := TDmAt.create(self);
//   bRILHANTE...
//   MUDAR A CARA DO FORM
//   COLOCAR TEXTO EXPLICANDO ESTE FORM
//   COLOCAR ALERTA DIZENDO SE PROCESSO O ANS CONFERENCIA..
//   LINDO..
   
end;


procedure TFmGeraPerdidosANS.PGeraInclusao;
begin
    Inc(qtdeIncl);

    // 01 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO
    aux := IntToStr(SeqArq);
    S := StrAll(7 - Length(Aux),'0') + Aux;
    // 02 indicado de registro tipo detalhe
    S := S +  SpArqSusep.FieldByName('FlagIncl_Excl').AsString;
    // 03 CODIGO USUARIO
    aux := SpArqSusep.FieldByName('codigo_completo').AsString;
    S := S + StrAll(30 - Length(Aux),'0') + Aux;
    // 04 NOME BENEFICIARIO
    Aux := SpArqSusep.FieldByName('nome').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 05 DATA DE NASCIMENTO

    S := S +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,1,2);
    // 06 SEXO
    S := S + SpArqSusep.FieldByName('sexo').AsString;
    // 07 CPF
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('cpf').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');

    // 08 PIS / PASEP
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('pis_pasep').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');


    // 09 NOME MAE BENEFICIARIO

    Aux := SpArqSusep.FieldByName('Nm_Mae').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 10 CODIGO DO PLANO NA ANS

    aux := SpArqSusep.FieldByName('codigo_susep').AsString;
    S := S + lpad(Aux,09,'0');

    // 11 DATA INCLUSAO
    S := S +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,1,2);

    // 12 DATA EXCLUSAO - não se aplica na inclusão
    S := S + '00000000';

    // 13 DATA REINCLUSAO - não se alpica na inclusão
    S := S + '00000000';
    // 14 ENDEREÇO
    Aux := SpArqSusep.FieldByName('Endereco_Residencial').AsString;
    Aux := copy(dm.so_alfa(dm.Tira_acento(Aux)),1,50);
    S := S + Aux + StrAll(50 - length(Aux),' ');
    //NUMERO RESIDENCIA
    Aux := SpArqSusep.FieldByName('Numero_Res').AsString;
    S := S + Aux + StrAll(5 - length(Aux),' ');
    //COMPLEMENTO
    Aux := SpArqSusep.FieldByName('Complemento_Res').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,15);
    S := S + Aux + StrAll(15 - length(Aux),' ');
    //BAIRRO
    Aux := SpArqSusep.FieldByName('Bairro_Residencial').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,30);
    S := S + Aux + StrAll(30 - length(Aux),' ');
    //MUNICIPIO
    Aux := SpArqSusep.FieldByName('Cidade_Residencial').AsString;
    Aux := Copy(dm.So_letra(dm.Tira_acento(Aux)),1,30);
    S := S + Aux + StrAll(30 - length(Aux),' ');
    //ESTADO
    Aux := SpArqSusep.FieldByName('Estado_Residencial').AsString;
    Aux := Copy(dm.So_letra(dm.Tira_acento(Aux)),1,2);
    S := S + Aux + StrAll(02 - length(Aux),' ');
    //CEP
    Aux := SpArqSusep.FieldByName('CEP').AsString;
    Aux := Copy(dm.so_numero(Aux),1,8);
    S := S + lpad(Aux,08,'0');

    //21 SEGMENTO ASSISTENCIAL
    S := S + '04';
    //22 ABRANGENCIA GEOGRAFICA
    S := S + '4';
    //23 TIPO DE CONTRATAÇÃO
    S := S + Copy(SpArqSusep.FieldByName('flag_envio_ans').AsString,1,1);
    //24 INDICAÇÃO TITULAR
    Aux := SpArqSusep.FieldByName('grau_parentesco').AsString;
    S := S + lpad(Aux,2,'0');
    //25 MOTIVO CANCELAMENTO
    S := S + '00'; // não se aplica na inclusão

    //26 INDICAÇÃO DE COBERTURA PARCIAL OU TEMPORARIA
    S := S + '2';
    //27 INDICAÇAO DE CO-PARTICIPAÇÃO
    S := S + '1';
    //28 NUMERO REGISTRO PLANO ANTES 02/01/1999
    aux := SpArqSusep.FieldByName('cd_ans_anterior').AsString;
    S := S + lpad(aux,30,'0');
    //29 CNS
    S:= S + '000000000000000'; //opcional,decidimos não enviar.
    //30 CI
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //31 Orgão emissor
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //32 Pais emissor
    S:= S + StrAll(03,'0'); //opcional,decidimos não enviar.
    //33 CNPJ plano empresa
    if SpArqSusep.FieldByName('Fis_Jur').asString[1] = 'J' then
       S:= S + lpad(dm.SoNum(SpArqSusep.FieldByName('Campo33CNPJ').asString),14,'0')
    else
       S:= S + StrAll(14,'0');
    //34 Codigo titular, apesar do layout ser alfa, estamos mandando como numerico, pois
    // nossa base é numerico
    S := S + lpad(SpArqSusep.FieldByName('Campo34Cdtitular').Asstring,30,'0');
    //35 Indicação de itens de procedimento excluídos na cobertura
    S := S + '2'; // 2 = não existe exclusão de cobertura.
    //36 Data de adaptação, não se aplica na inclusão.
    S := S + '00000000';

    Writeln(F,S);
end;

procedure TFmGeraPerdidosANS.PGeraAlteracao;
Var aux: string;

begin
    Inc(qtdeAlt);

    // 01 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO
    aux := IntToStr(SeqArq);
    S := StrAll(7 - Length(Aux),'0') + Aux;
    // 02 indicado de registro tipo detalhe
    S := S +  SpArqSusep.FieldByName('FlagIncl_Excl').AsString;
    // 03 CODIGO USUARIO
    aux := SpArqSusep.FieldByName('codigo_completo').AsString;
    S := S + StrAll(30 - Length(Aux),'0') + Aux;
    // 04 NOME BENEFICIARIO
    Aux := SpArqSusep.FieldByName('nome').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 05 DATA DE NASCIMENTO

    S := S +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,1,2);
    // 06 SEXO
    S := S + SpArqSusep.FieldByName('sexo').AsString;
    // 07 CPF
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('cpf').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');

    // 08 PIS / PASEP
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('pis_pasep').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');

    // 09 NOME MAE BENEFICIARIO

    Aux := SpArqSusep.FieldByName('Nm_Mae').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 10 CODIGO DO PLANO NA ANS

    aux := SpArqSusep.FieldByName('codigo_susep').AsString;
    S := S + lpad(Aux,09,'0');

    // 11 DATA INCLUSAO
    S := S +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,1,2);

//    S := S + '00000000';// não procede para alteração

    // 12 DATA EXCLUSAO
    S := S + '00000000';// não procede para alteração

    // 13 DATA REINCLUSAO se tiver zerado a procedure manda 10 zeros
    S := S +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,1,2);

    // 14 ENDEREÇO
    Aux := SpArqSusep.FieldByName('Endereco_Residencial').AsString;
    Aux := copy(dm.so_alfa(dm.Tira_acento(Aux)),1,50);
    S := S + Aux + StrAll(50 - length(Aux),' ');
    //NUMERO RESIDENCIA
    Aux := SpArqSusep.FieldByName('Numero_Res').AsString;
    S := S + Aux + StrAll(5 - length(Aux),' ');
    //COMPLEMENTO
    Aux := SpArqSusep.FieldByName('Complemento_Res').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,15);
    S := S + Aux + StrAll(15 - length(Aux),' ');
    //BAIRRO
    Aux := SpArqSusep.FieldByName('Bairro_Residencial').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,30);
    S := S + Aux + StrAll(30 - length(Aux),' ');
    //MUNICIPIO
    Aux := SpArqSusep.FieldByName('Cidade_Residencial').AsString;
    Aux := Copy(dm.So_letra(dm.Tira_acento(Aux)),1,30);
    S := S + Aux + StrAll(30 - length(Aux),' ');
    //ESTADO
    Aux := SpArqSusep.FieldByName('Estado_Residencial').AsString;
    Aux := Copy(dm.So_letra(dm.Tira_acento(Aux)),1,2);
    S := S + Aux + StrAll(02 - length(Aux),' ');
    //20 CEP
    Aux := SpArqSusep.FieldByName('CEP').AsString;
    Aux := Copy(dm.so_numero(Aux),1,8);
    S := S + lpad(Aux,08,'0');
    //21 SEGMENTO ASSISTENCIAL
    S := S + '04';
    //22 ABRANGENCIA GEOGRAFICA
    S := S + '4';
    //23 TIPO DE CONTRATAÇÃO
    S := S + Copy(SpArqSusep.FieldByName('flag_envio_ans').AsString,1,1);
    //24 INDICAÇÃO TITULAR
    Aux := SpArqSusep.FieldByName('grau_parentesco').AsString;
    S := S + lpad(Aux,2,'0');
    //25 MOTIVO CANCELAMENTO
    aux := SpArqSusep.FieldByName('motivo_cancelamento').AsString;
    S := S + lpad(aux,2,'0');
    //26 INDICAÇÃO DE COBERTURA PARCIAL OU TEMPORARIA
    S := S + '2';
    //27 INDICAÇAO DE CO-PARTICIPAÇÃO
    S := S + '1';
    //28 NUMERO REGISTRO PLANO ANTES 02/01/1999
    aux := SpArqSusep.FieldByName('cd_ans_anterior').AsString;
    S := S + Rpad(aux,30,'0');

    //29 CNS
    S:= S + '000000000000000'; //opcional,decidimos não enviar.
    //30 CI
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //31 Orgão emissor
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //32 Pais emissor
    S:= S + StrAll(03,'0'); //opcional,decidimos não enviar.
    //33 CNPJ plano empresa

    if SpArqSusep.FieldByName('Fis_Jur').asString[1] = 'J' then
       S:= S + lpad(dm.SoNum(SpArqSusep.FieldByName('Campo33CNPJ').asString),14,'0')
    else
       S:= S + StrAll(14,'0');

    //34 Codigo titular, apesar do layout ser alfa, estamos mandando como numerico, pois
    // nossa base é numerico
    S := S + lpad(SpArqSusep.FieldByName('Campo34Cdtitular').Asstring,30,'0');
    //35 Indicação de itens de procedimento excluídos na cobertura
    S := S + '2'; // 2 = não existe exclusão de cobertura.

    //36
    S := S + '00000000';

    Writeln(F,S);
end;

procedure TFmGeraPerdidosANS.PGeraExclusao; // oficial
begin
    Inc(QtdeExcl);

    // 01 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO
    aux := IntToStr(SeqArq);
    S := StrAll(7 - Length(Aux),'0') + Aux;
    // 02 indicado de registro tipo detalhe
    S := S +  SpArqSusep.FieldByName('FlagIncl_Excl').AsString;
    // 03 CODIGO USUARIO
    aux := SpArqSusep.FieldByName('codigo_completo').AsString;
    //S := S + StrAll(30 - Length(Aux),'0') + Aux;
    S := S + rpad(Aux,30,' ');
    // 04 NOME BENEFICIARIO
    Aux := SpArqSusep.FieldByName('nome').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 05 DATA DE NASCIMENTO

    S := S +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,1,2);
    // 06 SEXO
    S := S + SpArqSusep.FieldByName('sexo').AsString;
    // 07 CPF
    S := S + StrAll(11,'0'); //não se aplica

    // 08 PIS / PASEP
    S := S + StrAll(11,'0'); //não se aplica na exclusao
    // 09 NOME MAE BENEFICIARIO
    S := S + StrAll(70 ,' ');

    // 10 CODIGO DO PLANO NA ANS

    S := S + strAll(09,'0');

    // 11 DATA INCLUSAO
    S := S +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,1,2);

    // 12 DATA EXCLUSAO
    if SpArqSusep.FieldByName('Data_exclusao').AsString <> '' then
       S := S +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,7,4) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,4,2) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,1,2)
    else
       s:= S + '00000000';

    // 13 DATA REINCLUSAO se tiver zerado a procedure manda 10 zeros
    S := S + '00000000';

    // 14 ENDEREÇO
    S := S + StrAll(50,' ');
    //NUMERO RESIDENCIA
    S := S + StrAll(05,' ');
    //COMPLEMENTO
    S := S + StrAll(15,' ');
    //17BAIRRO
    S := S + StrAll(30,' ');
    //18MUNICIPIO
    S := S + StrAll(30,' ');
    //19ESTADO
    S := S + '  ';
    //20CEP
    S := S + StrAll(08,'0');
    //21SEGMENTO ASSISTENCIAL
    S := S + '00';
    //22ABRANGENCIA GEOGRAFICA
    S := S + '0';
    //23 TIPO DE CONTRATAÇÃO
    S := S + '0';
    //24 INDICAÇÃO TITULAR
    S := S + '00';

    //25 MOTIVO CANCELAMENTO
    aux := SpArqSusep.FieldByName('motivo_cancelamento').AsString;
    S := S + lpad(aux,2,'0');
//    S := S + '01';
    //26INDICAÇÃO DE COBERTURA PARCIAL OU TEMPORARIA
    S := S + '0';
    //INDICAÇAO DE CO-PARTICIPAÇÃO
    S := S + '0';
    //28NUMERO REGISTRO PLANO ANTES 02/01/1999
    aux := SpArqSusep.FieldByName('cd_ans_anterior').AsString;
    S := S + StrAll(30,' ');
    //29 CNS
    S:= S + '000000000000000'; //opcional,decidimos não enviar.
    //30 CI
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //31 Orgão emissor
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //32 Pais emissor
    S:= S + StrAll(03,'0'); //opcional,decidimos não enviar.
    //33 CNPJ plano empresa
    S:= S + StrAll(14,'0');

    //34 Codigo titular, apesar do layout ser alfa, estamos mandando como numerico, pois
    // nossa base é numerico
    S := S + StrAll(30,' ');
    //35 Indicação de itens de procedimento excluídos na cobertura
    S := S + '0'; // 2 = não existe exclusão de cobertura.

    //36 Data de adaptação, não se aplica na inclusão.
    S := S + '00000000';
    Writeln(F,S);
end;


end.


procedure TFmGeraPerdidosANS.PGeraExclusao;
begin
    Inc(QtdeExcl);

    // 01 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO
    aux := IntToStr(SeqArq);
    S := StrAll(7 - Length(Aux),'0') + Aux;
    // 02 indicado de registro tipo detalhe
    S := S +  SpArqSusep.FieldByName('FlagIncl_Excl').AsString;
    // 03 CODIGO USUARIO
    aux := SpArqSusep.FieldByName('codigo_completo').AsString;
    //S := S + Rpad(Aux,30,' ');
    // 04 NOME BENEFICIARIO
    Aux := SpArqSusep.FieldByName('nome').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 05 DATA DE NASCIMENTO

    S := S +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,1,2);
    // 06 SEXO
    S := S + SpArqSusep.FieldByName('sexo').AsString;
    // 07 CPF
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('cpf').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');

    // 08 PIS / PASEP
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('pis_pasep').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');

    // 09 NOME MAE BENEFICIARIO

    Aux := SpArqSusep.FieldByName('Nm_Mae').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 10 CODIGO DO PLANO NA ANS

    aux := SpArqSusep.FieldByName('codigo_susep').AsString;
    S := S + lpad(Aux,09,'0');

    // 11 DATA INCLUSAO
    S := S +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,1,2);

    // 12 DATA EXCLUSAO
    if SpArqSusep.FieldByName('Data_exclusao').AsString <> '' then
       S := S +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,7,4) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,4,2) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,1,2)
    else
       s:= S + '00000000';

    // 13 DATA REINCLUSAO se tiver zerado a procedure manda 10 zeros
    S := S +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,1,2);

    // 14 ENDEREÇO
    Aux := SpArqSusep.FieldByName('Endereco_Residencial').AsString;
    Aux := copy(dm.so_alfa(dm.Tira_acento(Aux)),1,50);
    S := S + Aux + StrAll(50 - length(Aux),' ');
    //NUMERO RESIDENCIA
    Aux := SpArqSusep.FieldByName('Numero_Res').AsString;
    S := S + Aux + StrAll(5 - length(Aux),' ');
    //COMPLEMENTO
    Aux := SpArqSusep.FieldByName('Complemento_Res').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,15);
    S := S + Aux + StrAll(15 - length(Aux),' ');
    //17BAIRRO
    Aux := SpArqSusep.FieldByName('Bairro_Residencial').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,30);
    S := S + Aux + StrAll(30 - length(Aux),' ');
    //18MUNICIPIO
    Aux := SpArqSusep.FieldByName('Cidade_Residencial').AsString;
    Aux := Copy(dm.So_letra(dm.Tira_acento(Aux)),1,30);
    S := S + Aux + StrAll(30 - length(Aux),' ');
    //19ESTADO
    Aux := SpArqSusep.FieldByName('Estado_Residencial').AsString;
    Aux := Copy(dm.So_letra(dm.Tira_acento(Aux)),1,2);
    S := S + Aux + StrAll(02 - length(Aux),' ');
    //20CEP
    Aux := SpArqSusep.FieldByName('CEP').AsString;
    Aux := Copy(dm.so_numero(Aux),1,8);
    S := S + lpad(Aux,08,'0');
    //21SEGMENTO ASSISTENCIAL
    S := S + '04';
    //22ABRANGENCIA GEOGRAFICA
    S := S + '4';
    //23 TIPO DE CONTRATAÇÃO
    S := S + Copy(SpArqSusep.FieldByName('flag_envio_ans').AsString,1,1);
    //24 INDICAÇÃO TITULAR
    Aux := SpArqSusep.FieldByName('grau_parentesco').AsString;
    S := S + lpad(Aux,2,'0');
    //25 MOTIVO CANCELAMENTO
    aux := SpArqSusep.FieldByName('motivo_cancelamento').AsString;
    S := S + lpad(aux,2,'0');
    //26INDICAÇÃO DE COBERTURA PARCIAL OU TEMPORARIA
    S := S + '2';
    //INDICAÇAO DE CO-PARTICIPAÇÃO
    S := S + '1';
    //28NUMERO REGISTRO PLANO ANTES 02/01/1999
    aux := SpArqSusep.FieldByName('cd_ans_anterior').AsString;
    S := S + Rpad(aux,30,'0');
//00000021000000000000000000000000040830BENEDITO FONTES                                                       1943061110000000000000000000000                                                                      000000000200411040000000000000000VICENTE DE PAULA LIMA                             1745                BELA VISTA                    SERRANA                       SP1415000004410000021                              000000000000000000000000000000                              00000038056003800000000000000000000000000040830200000000
    //29 CNS
    S:= S + '000000000000000'; //opcional,decidimos não enviar.
    //30 CI
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //31 Orgão emissor
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //32 Pais emissor
    S:= S + StrAll(03,'0'); //opcional,decidimos não enviar.
    //33 CNPJ plano empresa

    if SpArqSusep.FieldByName('Fis_Jur').asString[1] = 'J' then
       S:= S + lpad(dm.SoNum(SpArqSusep.FieldByName('Campo33CNPJ').asString),14,'0')
    else
       S:= S + StrAll(14,'0');

    //34 Codigo titular, apesar do layout ser alfa, estamos mandando como numerico, pois
    // nossa base é numerico
    S := S + lpad(SpArqSusep.FieldByName('Campo34Cdtitular').Asstring,30,'0');
    //35 Indicação de itens de procedimento excluídos na cobertura
    S := S + '2'; // 2 = não existe exclusão de cobertura.

    //36 Data de adaptação, não se aplica na inclusão.
    S := S + '00000000';
    Writeln(F,S);
end;

}
