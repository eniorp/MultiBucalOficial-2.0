unit ArqSusep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls,Biblio, Buttons, ExtCtrls,FileCtrl, ComCtrls;

type
  TFormArqSusep = class(TForm)
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
    Button1: TButton;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
//    Function TiraCaracteres(S : String): String;
    function Tira_acento ( str: String ): String;
    Function So_letra(S : String): String;
    Function So_numero(S: String): String;
    Function So_alfa(S: String): String;
    Function RetiraTracoCPF(CpfStr: String):String;
  public
    { Public declarations }
  end;

var
  FormArqSusep: TFormArqSusep;
  Traco : boolean;
  Posicao : integer;
implementation

uses udm;

{$R *.DFM}

function TFormArqSusep.Tira_acento ( str: String ): String;
var
i: Integer;
begin
   for i := 1 to Length ( str ) do
      case str[i] of

         'á': str[i] := 'a';
         'é': str[i] := 'e';
         'í': str[i] := 'i';
         'ó': str[i] := 'o';
         'ú': str[i] := 'u';
         'à': str[i] := 'a';
         'è': str[i] := 'e';
         'ì': str[i] := 'i';
         'ò': str[i] := 'o';
         'ù': str[i] := 'u';
         'â': str[i] := 'a';
         'ê': str[i] := 'e';
         'î': str[i] := 'i';
         'ô': str[i] := 'o';
         'û': str[i] := 'u';
         'ä': str[i] := 'a';
         'ë': str[i] := 'e';
         'ï': str[i] := 'i';
         'ö': str[i] := 'o';
         'ü': str[i] := 'u';
         'ã': str[i] := 'a';
         'õ': str[i] := 'o';
         'ñ': str[i] := 'n';
         'ç': str[i] := 'c';
         'Á': str[i] := 'A';
         'É': str[i] := 'E';
         'Í': str[i] := 'I';
         'Ó': str[i] := 'O';
         'Ú': str[i] := 'U';
         'À': str[i] := 'A';
         'È': str[i] := 'E';
         'Ì': str[i] := 'I';
         'Ò': str[i] := 'O';
         'Ù': str[i] := 'U';
         'Â': str[i] := 'A';
         'Ê': str[i] := 'E';
         'Î': str[i] := 'I';
         'Ô': str[i] := 'O';
         'Û': str[i] := 'U';
         'Ä': str[i] := 'A';
         'Ë': str[i] := 'E';
         'Ï': str[i] := 'I';
         'Ö': str[i] := 'O';
         'Ü': str[i] := 'U';
         'Ã': str[i] := 'A';
         'Õ': str[i] := 'O';
         'Ñ': str[i] := 'N';
         'Ç': str[i] := 'C';
   end;
   Result := str;
end;
{
function TFormArqSusep.TiraCaracteres(S: String): String;
Var I : byte;
    aux : String;
begin
   aux := '';
   For I := 1 to length(S) do
     if S[I] in ['0'..'9','a'..'z','A'..'Z',',','-','''','"','.','/'] then
        aux := aux + S[I]
     else
        aux := aux + ' ';
   Result := aux;
end;
}

procedure TFormArqSusep.BitBtn1Click(Sender: TObject);
Var F: TextFile;
    S: AnsiString;
    aux, Dir, Data, Hora : String;
    I,qtdeIncl, qtdeAlt, QtdeExcl : Word;

begin
   If application.MessageBox('Os dados gerados por este programa é no layout antigo, para envio até a competência 03/2005, se vc jerar o arquivo neste programa a partir dessa competência o programa SIB irá rejeitar os registros.Confirma geração?','Alerta',
     MB_OKCANCEL + MB_DEFBUTTON2 ) = MrCancel then
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
   Aux := StrAll(6 - Length(aux),'0') + Aux;
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
   I := 2;


   S := '00000010BENEF' + Data +
        QueryParam.FieldByName('CodOperSusep').AsString +
        QueryParam.FieldByName('CNPJ').AsString +
        QueryParam.FieldByName('UltArqSusep').AsString + strAll(3,' ') + 'O' +
        Hora +
        strAll(316,' ');

   Writeln(F,S);

   while not SpArqSusep.Eof do
   begin
      case SpArqSusep.FieldByName('FlagIncl_Excl').AsInteger of
         1 : Inc(qtdeIncl); // 1 = inclusao  2 = alteração  3 = exclusao
         2 : Inc(qtdeAlt);
         3 : Inc(QtdeExcl);
      end;

      // 01 NUMERO SEQUENCIAL + INDICADOR DE REGISTRO
      aux := IntToStr(I);
      S := StrAll(7 - Length(Aux),'0') + Aux;
      // 02 indicado de registro tipo detalhe
      S := S +  SpArqSusep.FieldByName('FlagIncl_Excl').AsString;
      // 03 CODIGO USUARIO
      aux := SpArqSusep.FieldByName('codigo_completo').AsString;
      S := S + StrAll(30 - Length(Aux),'0') + Aux;
      // 04 NOME BENEFICIARIO
      Aux := SpArqSusep.FieldByName('nome').AsString;
      Aux := so_alfa(Tira_acento(Aux));
      S := S + Aux + StrAll(70 - length(aux),' ');

      // 05 DATA DE NASCIMENTO

      S := S +
      Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,7,4) +
      Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,4,2) +
      Copy(SpArqSusep.FieldByName('Data_Nascimento').AsString,1,2);
      // 06 SEXO
      S := S + SpArqSusep.FieldByName('sexo').AsString;
      // 07 CPF
      Aux := RetiraTracoCPF(SpArqSusep.FieldByName('cpf').AsString);
      Aux := copy(aux,1,11);
      S := S + Aux + StrAll(11 - length(aux),'0');

      // 08 PIS / PASEP
      Aux := RetiraTracoCPF(SpArqSusep.FieldByName('pis_pasep').AsString);
      Aux := copy(aux,1,11);
      S := S + Aux + StrAll(11 - length(aux),'0');

      // 09 NOME MAE BENEFICIARIO

      Aux := SpArqSusep.FieldByName('Nm_Mae').AsString;
      Aux := so_alfa(Tira_acento(Aux));
      S := S + Aux + StrAll(70 - length(aux),' ');

      // 10 CODIGO DO PLANO NA ANS

      aux := SpArqSusep.FieldByName('codigo_susep').AsString;
      S := S + StrAll(09 - Length(Aux),'0') + Aux;

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
         s:= S + '        ';

      // 13 DATA REINCLUSAO se tiver zerado a procedure manda 10 zeros
      S := S +
      Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,7,4) +
      Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,4,2) +
      Copy(SpArqSusep.FieldByName('DtReinclusao').AsString,1,2);

      // 14 ENDEREÇO
      Aux := SpArqSusep.FieldByName('Endereco_Residencial').AsString;
      Aux := copy(So_alfa(Tira_acento(Aux)),1,50);
      S := S + Aux + StrAll(50 - length(Aux),' ');
      //NUMERO RESIDENCIA
      Aux := SpArqSusep.FieldByName('Numero_Res').AsString;
      S := S + Aux + StrAll(5 - length(Aux),' ');
      //COMPLEMENTO
      Aux := SpArqSusep.FieldByName('Complemento_Res').AsString;
      Aux := Copy(So_alfa(Tira_acento(Aux)),1,15);
      S := S + Aux + StrAll(15 - length(Aux),' ');
      //BAIRRO
      Aux := SpArqSusep.FieldByName('Bairro_Residencial').AsString;
      Aux := Copy(So_alfa(Tira_acento(Aux)),1,30);
      S := S + Aux + StrAll(30 - length(Aux),' ');
      //MUNICIPIO
      Aux := SpArqSusep.FieldByName('Cidade_Residencial').AsString;
      Aux := Copy(So_letra(tira_acento(Aux)),1,30);
      S := S + Aux + StrAll(30 - length(Aux),' ');
      //ESTADO
      Aux := SpArqSusep.FieldByName('Estado_Residencial').AsString;
      Aux := Copy(So_letra(tira_acento(Aux)),1,2);
      S := S + Aux + StrAll(02 - length(Aux),' ');
      //CEP
      Aux := SpArqSusep.FieldByName('CEP').AsString;
      Aux := Copy(so_numero(Aux),1,8);
      S := S + StrAll(08 - length(aux),'0') + Aux;
      //SEGMENTO ASSISTENCIAL
      S := S + '04';
      //ABRANGENCIA GEOGRAFICA
      S := S + '4';
      //TIPO DE CONTRATAÇÃO
      S := S + Copy(SpArqSusep.FieldByName('flag_envio_ans').AsString,1,1);
      //INDICAÇÃO TITULAR
      S := S + Copy(SpArqSusep.FieldByName('grau_parentesco').AsString,1,1);
      //MOTIVO CANCELAMENTO
      S := S + StrAll(02 - length(Copy(SpArqSusep.FieldByName('motivo_cancelamento').AsString,1,2)),'0')
             + Copy(SpArqSusep.FieldByName('motivo_cancelamento').AsString,1,2);
      //INDICAÇÃO DE COBERTURA PARCIAL OU TEMPORARIA
      S := S + '2';
      //INDICAÇAO DE CO-PARTICIPAÇÃO
      S := S + '1';
      //NUMERO REGISTRO PLANO ANTES 02/01/1999
      S := S + strAll(30,' ');

      Writeln(F,S);
      SpArqSusep.next;
      Inc(I);
   end;

   // PROVISORIO -- APENAS INDICAR A NÃO EXISTENCIA DE ALTERAÇÃO
   aux := IntToStr(I);
   S := StrAll(7 - Length(Aux),'0') + Aux + '6';
   S := S + 'NAO HOUVE ATUALIZACAO DE DADOS BENEFICIARIOS';
   Writeln(F,S);
   Inc(I);

   // TRAILER

   aux := IntToStr(I);
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
   EditQtdeIncl.Text := IntToStr(qtdeIncl);
   EditQtdeAlter.Text := IntToStr(qtdeAlt);
   EditQtdeExcl.Text := IntToStr(qtdeExcl);
   EditQtdeTotal.Text := IntToStr(qtdeIncl + qtdeExcl + qtdeAlt);

   ShowMessage('Arquivo "' + Dir + '" Gerado com sucesso !')
end;

function TFormArqSusep.So_letra(S: String): String;
Var I : Byte;
   aux : String;
begin
   For I := 1 to Length(S) do
      if S[I] in ['a'..'z','A'..'Z',' '] then
        Aux := Aux + S[I];
   Result := Aux;
end;

function TFormArqSusep.So_numero(S: String): String;
Var I : Byte;
   aux : String;
begin
   For I := 1 to Length(S) do
      if S[I] in ['0'..'9'] then
        Aux := Aux + S[I];
   Result := Aux;
end;

function TFormArqSusep.So_alfa(S: String): String;
Var I : Byte;
   aux : String;
begin
   For I := 1 to Length(S) do
      if S[I] in ['a'..'z','A'..'Z','0'..'9',' '] then
        Aux := Aux + S[I];
   Result := Aux;
end;

procedure TFormArqSusep.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QueryParam.Close;
   SpArqSusep.Close;
end;

procedure TFormArqSusep.Button1Click(Sender: TObject);
var Logradouro : String;
begin
   QueryContratante.Open;
   QueryContratante.First;
   while not QueryContratante.Eof do begin
      QueryContratante.Edit;
      Logradouro := QueryContratanteEndereco_Residencial.AsString;
      if pos(',',Logradouro) <> 0 then begin
         QueryContratanteEndereco_Residencial.AsString := copy(Logradouro,1,pos(',',Logradouro)-1);
         QueryContratanteNumero_Res.AsString := copy(Logradouro,pos(',',Logradouro)+2, 5);
         QueryContratanteComplemento_Res.asString := copy(Logradouro,pos(',',Logradouro)+7, 15);
      end;
      Logradouro := QueryContratanteEndereco_Comercial.AsString;
      if pos(',',Logradouro) <> 0 then begin
         QueryContratanteEndereco_Comercial.AsString := copy(Logradouro,1,pos(',',Logradouro)-1);
         QueryContratanteNumero_Com.AsString := copy(Logradouro,pos(',',Logradouro)+2, 5);
         QueryContratanteComplemento_Com.asString := copy(Logradouro,pos(',',Logradouro)+7, 15);
      end;
      QueryContratante.Post;
      QueryContratante.Next;
   end;
end;

function TFormArqSusep.RetiraTracoCPF(CpfStr: String):String;
begin
     Traco := False;
     Posicao:=pos('.', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('.', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos('-', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('-', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos(' ', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos(' ', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos('/', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('/', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     RetiraTracoCPF := CpfStr;
end;


procedure TFormArqSusep.FormShow(Sender: TObject);
begin
   ShowMessage('Os dados gerados por este programa é no layout antigo, para envio até a competência 03/2005, se vc jerar o arquivo neste programa a partir dessa competência o programa SIB irá rejeitar os registros');
   ShortDateFormat := 'dd/MM/yyyy';
   DTPLimite.date := dm.Date;
end;

end.
