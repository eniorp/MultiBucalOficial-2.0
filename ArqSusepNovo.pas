unit ArqSusepNovo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls,Biblio, Buttons, ExtCtrls,FileCtrl, ComCtrls,enio;

type
  TFormArqSusepNovo = class(TForm)
    QueryParam: TQuery;
    SpArqSusep: TStoredProc;
    Label1: TLabel;
    EditDiretorio: TEdit;
    Label2: TLabel;
    EditNmArq: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    EditQtdeIncl: TEdit;
    Label4: TLabel;
    EditQtdeExcl: TEdit;
    Label5: TLabel;
    EditQtdeTotal: TEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    QueryContratante: TQuery;
    QueryContratantecodigo: TIntegerField;
    QueryContratanteendereco_comercial: TStringField;
    QueryContratanteendereco_residencial: TStringField;
    QueryContratantenumero_res: TStringField;
    QueryContratantenumero_com: TStringField;
    Label6: TLabel;
    EditQtdeAlter: TEdit;
    QueryContratantecomplemento_res: TStringField;
    QueryContratantecomplemento_com: TStringField;
    DTPLimite: TDateTimePicker;
    Label7: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    Memo3: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EditQtReinc: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
//    procedure BitBtn1Click(Sender: TObject);
  private
    qtdeIncl, qtdeAlt, QtdeExcl,SeqArq,qtdeReinc : Word;
    Aux :String;
    S : AnsiString;
    F : TextFile;
    procedure PGeraInclusao;
    procedure PGeraAlteracao;
    procedure PGeraExclusao;
    procedure PGeraReinclusao;
  public
    { Public declarations }
  end;

var
  FormArqSusepNovo: TFormArqSusepNovo;

  
implementation

uses udm;

{$R *.DFM}


procedure TFormArqSusepNovo.BitBtn1Click(Sender: TObject);
var Dir, Data, Hora : String;
var qtreg6 : integer;
begin
   If application.MessageBox('Confirma geração do arquivo ?','Confirmação',
     MB_OKCANCEL) = MrCancel then
      Exit;

   SpArqSusep.Close;
   SpArqSusep.ParamByName('@DtLimite').AsString := DateToStr(DTPLimite.date);
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
   qtdeReinc := 0;
   QtdeExcl := 0;
   qtdeAlt := 0;
   SeqArq := 2;

   // linha do tipo Header

   S := '00000010BENEF' + Data +
        QueryParam.FieldByName('CodOperSusep').AsString +
        QueryParam.FieldByName('CNPJ').AsString +
        QueryParam.FieldByName('UltArqSusep').AsString +
        {08} '    ' + //08 reservado para ans 49 a 52
        {09} Hora  +  // 09 hora 53 a 58
        {12} strAll(30,' '); // 10 reservado para expansão 59 a 88


   Writeln(F,S);
   while not SpArqSusep.Eof do
   begin
      case SpArqSusep.FieldByName('FlagIncl_Excl').AsInteger of
         1 : PGeraInclusao; // 1 = inclusao  2 = alteração  3 = exclusao
         2 : PGeraAlteracao;
         3 : PGeraExclusao;
         8 : PGeraReinclusao;
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

   // total registro 06
   qtreg6 := 0;
   if  qtdeIncl = 0 then
     inc(qtreg6);
   if (qtdeAlt = 0) and (QtdeExcl = 0) then
        inc(qtreg6);
   aux := IntToStr(qtreg6);
   S := S + StrAll(7 - Length(Aux),'0') + Aux ;

   // TOTAL EXCLUSAO
   aux := IntToStr(qtdeExcl);
   S := S + StrAll(7 - Length(Aux),'0') + Aux ;

   // total registro reinclusão tipo 8
   aux := IntToStr(qtdeReinc);
   S := S + Lpad(aux,7,'0');
   // RESERVA PARA EXPANSAO

   S := S +  strAll(35,' ');

   Writeln(F,S);
   closeFile(F);
   EditQtdeIncl.Text := IntToStr(qtdeIncl);
   EditQtdeAlter.Text := IntToStr(qtdeAlt);
   EditQtReinc.Text := IntToStr(qtdeReinc);
   EditQtdeExcl.Text := IntToStr(qtdeExcl);
   EditQtdeTotal.Text := IntToStr(qtdeIncl + qtdeExcl + qtdeAlt + qtdeReinc);

   ShowMessage('Arquivo "' + Dir + '" Gerado com sucesso !')
end;


procedure TFormArqSusepNovo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QueryParam.Close;
   SpArqSusep.Close;
end;


procedure TFormArqSusepNovo.FormShow(Sender: TObject);
begin
   ShortDateFormat := 'dd/MM/yyyy';
   DTPLimite.date := dm.Date;
end;


procedure TFormArqSusepNovo.PGeraInclusao;
var TitOuDep : string;
begin
    Inc(qtdeIncl);

    TitOuDep := dm.execmd('select upper(Situacao) sit from usuario where codigo_completo = ' + SpArqSusep.FieldByName('codigo_completo').AsString ,'sit');
    // 01 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO   01 07
    aux := IntToStr(SeqArq);
    S := StrAll(7 - Length(Aux),'0') + Aux;
    // 02 indicado de registro tipo detalhe 08
    S := S +  SpArqSusep.FieldByName('FlagIncl_Excl').AsString;

    //103 MOTIVO INCUSÃO 09 10
    S := S + lpad(SpArqSusep.FieldByName('cd_motivo_inclusao').AsString,2,'0');

    // 104 CODIGO USUARIO 11 40
    aux := SpArqSusep.FieldByName('codigo_completo').AsString;
    S := S + StrAll(30 - Length(Aux),'0') + Aux;
    // 105 NOME BENEFICIARIO 41 110
    Aux := SpArqSusep.FieldByName('nome').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 106 DATA DE NASCIMENTO 111 118

    S := S +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,1,2);
    // 107 SEXO 119
    S := S + SpArqSusep.FieldByName('sexo').AsString;
    // 108 CPF 120 130
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('cpf').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');

    //109 Codigo titular, apesar do layout ser alfa, estamos mandando como numerico, pois 131 160
    // nossa base é numerico
    if TitOuDep <> 'TITULAR' then // para titular nao envia codigo titular
       S := S + lpad(SpArqSusep.FieldByName('Campo34Cdtitular').Asstring,30,'0')
    else
       S := S + StrAll(30,' '); // quando for titular manda em branco..


    // 110 PIS / PASEP 161 171
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('pis_pasep').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');


    // 111 NOME MAE BENEFICIARIO 172 271

    Aux := SpArqSusep.FieldByName('Nm_Mae').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    //112 CNS 242 256
    S:= S + '000000000000000'; //opcional,decidimos não enviar.

    //113 CI 257 286
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //114 Orgão emissor 287 316
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //115 Pais emissor 317 319
    S:= S + StrAll(03,'0'); //opcional,decidimos não enviar.

    // 116 CODIGO DO PLANO NA ANS 320 328

    aux := SpArqSusep.FieldByName('codigo_susep').AsString;
    S := S + lpad(Aux,09,'0');

    //117 NUMERO REGISTRO PLANO ANTES 02/01/1999 329 348
    aux := SpArqSusep.FieldByName('cd_ans_anterior').AsString;
    S := S + rpad(aux,20,' ');
    // 118 nr cod plano de origem(portabilidade) 349 357
    S := S + lpad(SpArqSusep.FieldByName('NrPlanoOUtOp').AsString,9,'0');

    // 119 DATA INCLUSAO 358 a 365
    S := S +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,1,2);

    //120 relação de dependência do benef. 366 367
     if TitOuDep = 'TITULAR' then
       S := S + '01' // titular
    else
    begin
      Aux := SpArqSusep.FieldByName('grau_parentesco').AsString;
      S := S + lpad(Aux,2,'0');
    end;

    //121 INDICAÇÃO DE COBERTURA PARCIAL OU TEMPORARIA, FIXO CONFORME BIA  - 368 368
    S := S + '2';

    //122 Indicação de itens de procedimento excluídos na cobertura 369 369
    S := S + '2'; // 2 = não existe exclusão de cobertura. CONF. BIA

    //123 CNPJ plano empresa 370 383
    if SpArqSusep.FieldByName('Fis_Jur').asString[1] = 'J' then
       S:= S + lpad(dm.SoNum(SpArqSusep.FieldByName('Campo33CNPJ').asString),14,'0')
    else
       S:= S + StrAll(14,'0');

    // 124 CEI 387 397
    S := S + lpad(SpArqSusep.FieldByName('cei').AsString,14,'0');

    // 125 ENDEREÇO 398 447
    Aux := SpArqSusep.FieldByName('Endereco_Residencial').AsString;
    Aux := copy(dm.so_alfa(dm.Tira_acento(Aux)),1,50);
    S := S + Aux + StrAll(50 - length(Aux),' ');
    //126 NUMERO RESIDENCIA 448 452
    Aux := SpArqSusep.FieldByName('Numero_Res').AsString;
    S := S + Aux + StrAll(5 - length(Aux),' ');
    //127 COMPLEMENTO 453 467
    Aux := SpArqSusep.FieldByName('Complemento_Res').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,15);
    S := S + Aux + StrAll(15 - length(Aux),' ');
    //128 BAIRRO 468 497
    Aux := SpArqSusep.FieldByName('Bairro_Residencial').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,30);
    S := S + Aux + StrAll(30 - length(Aux),' ');

    //130 COD MUNICIPIO BENEF(CD IBGE) 498 504
    S:= S + lpad(dm.SoNum(SpArqSusep.FieldByName('cd_ibge').asString),7,'0');
    // 130 indic. se a residenci en ho brasil ou exterior..fixo conf. GAbi. - 505
    S := S + '0';
    //131 CEP 506 513
    Aux := SpArqSusep.FieldByName('CEP').AsString;
    Aux := Copy(dm.so_numero(Aux),1,8);
    S := S + lpad(Aux,08,'0');

    // 132 - reservado para expansão
    S := S + StrAll(20,' ');

    Writeln(F,S);
end;

procedure TFormArqSusepNovo.PGeraReinclusao;
begin
    Inc(qtdeReinc);

    // 80101 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO   01 07
    aux := IntToStr(SeqArq);
    S := StrAll(7 - Length(Aux),'0') + Aux;
    // 802 indicado de registro tipo detalhe 08
    S := S +  SpArqSusep.FieldByName('FlagIncl_Excl').AsString;

    //804 CCO 11 20
    s := s + lpad(SpArqSusep.FieldByName('cco').AsString,10,'0');
    //805 dg do CCO 21 22
    s := s + lpad(SpArqSusep.FieldByName('dg_cco').AsString,2,'0');

    // 806 DATA EXCLUSAO
    if SpArqSusep.FieldByName('Data_exclusao').AsString <> '' then
       S := S +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,7,4) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,4,2) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,1,2)
    else
       s:= S + '00000000';

    // 806 dt reinclusao
    S := S +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,1,2);
    Writeln(F,S);
end;

procedure TFormArqSusepNovo.PGeraAlteracao;
Var aux: string;
    TitOuDep : string;
begin
    Inc(qtdeAlt);
    TitOuDep := dm.execmd('select upper(Situacao) sit from usuario where codigo_completo = ' + SpArqSusep.FieldByName('codigo_completo').AsString ,'sit');
    // 201 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO
    aux := IntToStr(SeqArq);
    S := StrAll(7 - Length(Aux),'0') + Aux;
    // 202 indicado de registro tipo detalhe
    S := S +  SpArqSusep.FieldByName('FlagIncl_Excl').AsString;
    //ver com gabi para colocar nas pendencias abrir opção de motivo de alteração

    //203 MOTIVO alteração // rever pela ans deve ser 06 11 12 43 51 ou 52
    S := S + '51';
    //S := S + lpad(SpArqSusep.FieldByName('cd_motivo_inclusao').AsString,2,'0');
    //204 CCO 11 20
    s := s + lpad(SpArqSusep.FieldByName('cco').AsString,10,'0');
    //205 dg do CCO 21 22
    s := s + lpad(SpArqSusep.FieldByName('dg_cco').AsString,2,'0');

    // 206 NOME BENEFICIARIO 23 92
    Aux := SpArqSusep.FieldByName('nome').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    // 207 DATA DE NASCIMENTO 93 100

    S := S +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,1,2);
    // 208 SEXO 101
    S := S + SpArqSusep.FieldByName('sexo').AsString;
    // 209 CPF 102 112
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('cpf').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');

    //210 Codigo titular, apesar do layout ser alfa, estamos mandando como numerico, pois 113 142
    // nossa base é numerico

    if TitOuDep <> 'TITULAR' then //  eh titular e para titular nao envia codigo titular
       S := S + lpad(SpArqSusep.FieldByName('Campo34Cdtitular').Asstring,30,'0')
    else
       S := S + StrAll(30,' '); // quando for titular manda em branco..


    // 211 PIS / PASEP 143 153
    Aux := dm.RetiraTracoCPF(SpArqSusep.FieldByName('pis_pasep').AsString);
    Aux := copy(aux,1,11);
    S := S + lpad(Aux,11,'0');

    // 212 NOME MAE BENEFICIARIO 154 223

    Aux := SpArqSusep.FieldByName('Nm_Mae').AsString;
    Aux := dm.so_alfa(dm.Tira_acento(Aux));
    S := S + Aux + StrAll(70 - length(aux),' ');

    //213 CNS
    S:= S + '000000000000000'; //opcional,decidimos não enviar.

    //214 CI 239 268
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //215 Orgão emissor 269 298
    S:= S + StrAll(30,' '); //opcional,decidimos não enviar.
    //216 Pais emissor 299 301
    S:= S + StrAll(03,'0'); //opcional,decidimos não enviar.

    // 217 CODIGO DO PLANO NA ANS 302 310

    aux := SpArqSusep.FieldByName('codigo_susep').AsString;
    S := S + lpad(Aux,09,'0');

    //218 NUMERO REGISTRO PLANO ANTES 02/01/1999 311 330
    aux := SpArqSusep.FieldByName('cd_ans_anterior').AsString;
    S := S + Rpad(aux,20,' ');
    // 219 nr cod plano anterior a portabilidade 331 339
    S := S + lpad(SpArqSusep.FieldByName('NrPlanoOUtOp').AsString,9,'0');


    // 220 11 DATA INCLUSAO  não procede para alteração (deu erro na IN18 então tive que mandar) 340 347
//    S := S + '00000000';
    s := S +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Inclusao').AsString,1,2);

    // 221 relação dep beneficiario 348 349
    if TitOuDep = 'TITULAR' then
       S := S + '01' // titular
    else
    begin
       Aux := SpArqSusep.FieldByName('grau_parentesco').AsString;
       S := S + lpad(Aux,2,'0');
    end;
    //222 INDICAÇÃO DE COBERTURA PARCIAL OU TEMPORARIA 350 350
    S := S + '2';

    //223 Indicação de itens de procedimento excluídos na cobertura 351
    S := S + '2'; // 2 = não existe exclusão de cobertura.

    //224 CNPJ plano empresa 352 365

    if SpArqSusep.FieldByName('Fis_Jur').asString[1] = 'J' then
       S:= S + lpad(dm.SoNum(SpArqSusep.FieldByName('Campo33CNPJ').asString),14,'0')
    else
       S:= S + StrAll(14,'0');

    // 225 CEI 366 379
    S := S + lpad(SpArqSusep.FieldByName('cei').AsString,14,'0');

    // 226 DATA migração

    S := S +
    Copy(SpArqSusep.FieldByName('dt_migracao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('dt_migracao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('dt_migracao').AsString,1,2);


    // 227 ENDEREÇO 388 437
    Aux := SpArqSusep.FieldByName('Endereco_Residencial').AsString;
    Aux := copy(dm.so_alfa(dm.Tira_acento(Aux)),1,50);
    S := S + Aux + StrAll(50 - length(Aux),' ');

    //228 NUMERO RESIDENCIA 438 443
    Aux := SpArqSusep.FieldByName('Numero_Res').AsString;
    S := S + Aux + StrAll(5 - length(Aux),' ');

    //229 COMPLEMENTO 443 457
    Aux := SpArqSusep.FieldByName('Complemento_Res').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,15);
    S := S + Aux + StrAll(15 - length(Aux),' ');

    //230 BAIRRO 458 487
    Aux := SpArqSusep.FieldByName('Bairro_Residencial').AsString;
    Aux := Copy(dm.so_alfa(dm.Tira_acento(Aux)),1,30);
    S := S + Aux + StrAll(30 - length(Aux),' ');

    //231 COD MUNICIPIO BENEF(CD IBGE) 488 494
    S:= S + lpad(dm.SoNum(SpArqSusep.FieldByName('cd_ibge').asString),7,'0');

    // 232 indic. se a residenci en ho brasil ou exterior..fixo conf. GAbi. - 495
    S := S + '0';

    //233 CEP 496 503
    Aux := SpArqSusep.FieldByName('CEP').AsString;
    Aux := Copy(dm.so_numero(Aux),1,8);
    S := S + lpad(Aux,08,'0');
    // 234 dt reinclusao 504 511
    S := S +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,1,2);

    // 235 dt cancelamento 512 519
    if SpArqSusep.FieldByName('Data_exclusao').AsString <> '' then
       S := S +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,7,4) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,4,2) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,1,2)
    else
       s:= S + '00000000';

    //236 MOTIVO CANCELAMENTO 520 521
    aux := SpArqSusep.FieldByName('motivo_cancelamento').AsString;
    S := S + lpad(aux,2,'0');

    //237 reservado para expansão
    s := s + strall(20,' ');

    Writeln(F,S);
end;

procedure TFormArqSusepNovo.PGeraExclusao;
begin
    Inc(QtdeExcl);

    // 701 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO
    aux := IntToStr(SeqArq);
    S := StrAll(7 - Length(Aux),'0') + Aux;
    // 702 indicado de registro tipo detalhe 8
    S := S +  '7';//SpArqSusep.FieldByName('FlagIncl_Excl').AsString;

    //703 MOTIVO CANCELAMENTO 09 10
    aux := SpArqSusep.FieldByName('motivo_cancelamento').AsString;
    S := S + lpad(aux,2,'0');


    //704 CCO 11 20
    s := s + lpad(SpArqSusep.FieldByName('cco').AsString,10,'0');
    //705 dg do CCO 21 22
    s := s + lpad(SpArqSusep.FieldByName('dg_cco').AsString,2,'0');

    // 706 DATA DE NASCIMENTO 23 30

    S := S +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,7,4) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,4,2) +
    Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,1,2);

    // 707 DATA EXCLUSAO 31 a 38
    if SpArqSusep.FieldByName('Data_exclusao').AsString <> '' then
       S := S +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,7,4) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,4,2) +
       Copy(SpArqSusep.FieldByName('Data_exclusao').AsString,1,2)
    else
       s:= S + '00000000';

    //708 novo codigo de identificação do benef na operadora

    s := s + rpad(SpArqSusep.FieldByName('novo_cod_usu_plano').AsString,30,' ');

    Writeln(F,S);
end;



procedure TFormArqSusepNovo.Button1Click(Sender: TObject);
var arq: textfile;
    linha,codigo : string;
    qtReg : integer;
begin
   assignFile(arq,inputbox('arquivo conferencia','arquivo conferencia','c:\temp\mt\ArqConf3513510620090101.TXT'));
   reset(arq);
   while not eof(arq) do
   begin
      readln(arq,linha);
      codigo := copy(linha,23,30);
      if E_Numerico(codigo) then
      begin
         qtReg := StrToInt(dm.execmd('select count(*) qt from usuario where codigo_completo = ' + codigo,'qt'));
         if qtReg  = 1 then
            dm.execmd('update usuario set cco = ''' + copy(linha,11,10) + ''',dg_cco = ''' + copy(linha,21,2) + ''' where codigo_completo = ' + codigo)
         else
         if qtReg > 1 then
           memo2.lines.add(linha)
         else
           memo3.lines.add(linha);
      end
       else
          memo1.lines.add(linha);
   end;
   closeFile(arq);
end;

end.

//backup da rotina PGeraExclusao
{

procedure TFormArqSusepNovo.PGeraExclusao;
begin
    Inc(QtdeExcl);

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
