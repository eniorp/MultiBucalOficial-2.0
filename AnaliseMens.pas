unit AnaliseMens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, ComCtrls,biblio, Buttons;

type
  TFmAnalisaMensalidade = class(TForm)
    QueryUsu: TQuery;
    QueryUsucd_usuario: TIntegerField;
    QueryUsudg_usuario: TIntegerField;
    QueryUsuinclusao: TDateTimeField;
    QueryUsuplano: TIntegerField;
    QueryUsuid_acrescimo: TIntegerField;
    QueryUsudtinicio: TDateTimeField;
    QueryUsudtfim: TDateTimeField;
    QueryUsuvalor: TFloatField;
    Button1: TButton;
    QueryAcrescimo: TQuery;
    QueryAux: TQuery;
    QueryAcrescimoPlano: TIntegerField;
    QueryAcrescimoDias: TSmallintField;
    QueryAcrescimoPercentual: TFloatField;
    QueryAcrescimoData_Aumento: TDateTimeField;
    QueryAcrescimoDtinclusao: TDateTimeField;
    QueryAcrescimoid_acrescimo: TIntegerField;
    QueryUsudata_inclusao: TDateTimeField;
    QueryUsucontratante_titular: TIntegerField;
    QueryUsugrau_parentesco: TSmallintField;
    ProgressBar1: TProgressBar;
    QueryAux1: TQuery;
    QueryUsunome: TStringField;
    CheckBox1: TCheckBox;
    SpeedButton1: TSpeedButton;
    Query1: TQuery;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
     F:Textfile;
     VcdUsu,DgUsu : integer;
     DataAux : TDatetime;
     Function VerificaData(Dt1,Dt2:String): Boolean;
     Procedure Imprime(texto : String);
     procedure verificaAcres;
     procedure AcertaData(Data:String;flag:char);
     Function VerificaDatafimAumento : TDatetime;
     procedure VerificaProximoRegistro;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmAnalisaMensalidade: TFmAnalisaMensalidade;

implementation

{$R *.DFM}

procedure TFmAnalisaMensalidade.AcertaData(Data: String;flag:char);
Var S : String;
begin
   if CheckBox2.checked then
   begin
      QueryAux1.close;
      QueryAux1.RequestLive := True;
      QueryAux1.sql.clear;
      QueryAux1.sql.Add('select * from mensalidade_usuario where cd_usuario = ' +
      QueryUsucd_usuario.AsString + ' and dg_usuario = ' + QueryUsudg_usuario.AsString +
      ' and id_acrescimo = ' + QueryUsuid_acrescimo.AsString);
      QueryAux1.Open;
      QueryAux1.Edit;
      if flag = 'F' then
      begin
         S := QueryAux1.fieldByName('dtfim').AsString;
         QueryAux1.fieldByName('dtfim').AsString := Data;
      end
      else
      begin
         S:= QueryAux1.fieldByName('dtinicio').AsString;
         QueryAux1.fieldByName('dtinicio').AsDatetime := StrToDate(Data);
      end;

      QueryAux1.Post;
   end;
   
   if CheckBox1.checked then
      Writeln(F,StrAll(10 - length(QueryUsucd_usuario.AsString),'0') + QueryUsucd_usuario.AsString +
      ' ' + QueryUsudg_usuario.AsString +
      ' ' + QueryUsuNome.AsString + StrAll(50 - Length(QueryUsuNome.AsString),' ') +
      ' ' + flag + ' DATA ANTERIOR = ' + S + ' NOVA DATA = ' + Data);


end;

procedure TFmAnalisaMensalidade.Button1Click(Sender: TObject);
begin
   // rodar depois  de tudo sp_verificaerro

   // pega todas as mensalidades
   // Se a opção Gravar em arquivo estiver desmarcada
   // o programa dá a opção de mudar as datas ver procedures..
   Button1.Enabled := False;
   Assignfile(F,'c:\mesn.xpo');
   ReWrite(F);
   QueryUsu.close;
   QueryUsu.Open;
   ProgressBar1.Max := QueryUsu.recordcount;
   While not QueryUsu.eof do
   begin
      Application.ProcessMessages;
      // pega os acrescimos do plano deste usuario
      QueryAcrescimo.Close;
      QueryAcrescimo.Sql[01] := QueryUsuplano.AsString;
      QueryAcrescimo.Open;
      verificaAcres;
      QueryUsu.next;
      ProgressBar1.StepIt;
   end;
   ProgressBar1.Position := 0;
   closeFile(F);
   ShowMessage('Processo finalizado com sucesso, favor enviar o arquivo c:\mens.xpo para eniosilveira@terra.com.br');
   Button1.Enabled := true;
end;
// Acrescenta a qtde de dias do aumento - 1

Function TFmAnalisaMensalidade.VerificaDatafimAumento : TDatetime;
begin
   QueryAux.Close;
   QueryAux.sql.clear;
   QueryAux.sql.Add(' set dateformat dmy select dateadd(dd,' +
   QueryAcrescimoDias.AsString + ',''' + QueryUsudtinicio.AsString + ''') as data');
   QueryAux.Open;
   Result := QueryAux.FieldbyName('data').AsDateTime;
//   QueryAux.Close;
end;

//Esta rotina recalcula todos os acrescimos conferindo as datas inicio e fim

procedure TFmAnalisaMensalidade.verificaAcres;

begin
   Application.ProcessMessages;

   while not QueryAcrescimo.eof do
   begin
      VcdUsu := QueryUsucd_usuario.value;
      DgUsu  := QueryUsudg_usuario.value;

      //somente se a data de inclusao for menor que vai ter o registro do aumento

      if QueryUsudata_inclusao.AsDatetime < QueryAcrescimoData_Aumento.AsDatetime then
      begin
         // acrescenta a qtde de dias na data inicio

         DataAux := VerificaDatafimAumento;

         ProgressBar1.StepIt;

         // se a data do aumento for maior que a data fim calculada acim(dias + data inicio)
         // então deve -se assumir a data fim a data do aumento -1

         if QueryAcrescimoData_Aumento.AsDatetime > DataAux then
         begin
            If QueryUsudtfim.AsDateTime <> (QueryAcrescimoData_Aumento.AsDatetime -1) then
               AcertaData(DateTimeToStr(QueryAcrescimoData_Aumento.AsDatetime -1),'F');
         end
         else
           verificaProximoRegistro;

         QueryUsu.next;

         // se existe registro para este usuario verifica a data inicio

         if (VcdUsu = QueryUsucd_usuario.value) and (DgUsu = QueryUsudg_usuario.value) then
         begin

            // se a data do aumento for maior que a data fim calculada acim(dias + data inicio)
            // então deve -se assumir a data fim a data do aumento -1

            if QueryAcrescimoData_Aumento.AsDatetime > DataAux then
            begin
               If QueryUsudtinicio.AsDateTime <> QueryAcrescimoData_Aumento.AsDatetime then
                  AcertaData(QueryAcrescimoData_Aumento.AsString,'I');
            end
            else
            If QueryUsudtinicio.AsDateTime <> DataAux then
               AcertaData(DateToStr(DataAux),'I');
         end
         else
            QueryUsu.Prior; // Volta o usuario pq mudou de usuario e logo abaixo verifica a data fim
      end;
      QueryAcrescimo.next;
   end;

   QueryUsu.next; // verifica se ainda tem registro do usuario


   if (VcdUsu = QueryUsucd_usuario.value) and (DgUsu  = QueryUsudg_usuario.value) then
   begin
      QueryUsu.Prior;
      ShowMessage('Ainda possui registros do mesmo usuário e acabou o desconto usu =' + QueryUsucd_usuario.AsString + ' DG = ' + QueryUsudg_usuario.AsString);
   end
   else
   begin
      QueryUsu.Prior;
      if QueryUsudtfim.AsDateTime <> StrToDatetime('01/01/2079') then
      begin
         ShowMessage('não existe data fim usu =' + QueryUsucd_usuario.AsString + ' DG = ' + QueryUsudg_usuario.AsString);
         AcertaData('01/01/2079','F')
      end;
   if QueryUsu.eof then
   Begin
      ShowMessage('acabou queryusu');
      exit;
   end;
      
   end;


end;

procedure TFmAnalisaMensalidade.VerificaProximoRegistro;

begin

   If QueryUsudtfim.AsDateTime <> (DataAux - 1) then
   begin
      //avanca queryusu para ver se existe mais acrescimo, se não
      // a data fim deve ser 01/01/2079

      QueryUsu.next;
      if QueryUsu.eof then
      Begin
         ShowMessage('acabou queryusu');
         exit;
      end;

      // verifica se existe registro para este usuario ainda

      if (VcdUsu <> QueryUsucd_usuario.value) or (DgUsu <> QueryUsudg_usuario.value) then
      begin

         //se não achar nenhum registro(se o registro seguinte for de outro usuario
         QueryUsu.Prior;
         //a data deve ser 01/01/2079 se não for acertadata
         if QueryUsudtfim.AsDateTime <> StrToDatetime('01/01/2079') then
            AcertaData('01/01/2079','F')
      end
      else//existe registro para este usuario ainda
      begin
         QueryUsu.Prior;
         AcertaData(DateToStr(DataAux - 1),'F');
      end;
   end;
end;
procedure TFmAnalisaMensalidade.FormShow(Sender: TObject);
begin
   ShortDateFormat := 'dd/MM/yyyy';
end;

procedure TFmAnalisaMensalidade.SpeedButton1Click(Sender: TObject);
var DtFim : TDatetime;
begin
  Assignfile(F,'c:\SeqData.err');
  ReWrite(F);
  Writeln(F,'OS REGISTROS ABAIXO ENCONTRAM-SE FORA DA SEQUENCIA. ENTRAR EM CONTATO COM PROGRAMADOR');
  Writeln(F,'=====================================================================================');
  Writeln(F,'');
  QueryAux.close;
  QueryAux.sql.clear;
  QueryAux.sql.add('select codigo,digito from usuario');
  QueryAux.open;
  QueryAux1.close;
  QueryAux1.sql.clear;

  QueryAux1.sql.add('select * from mensalidade_usuario where cd_usuario = ');
  QueryAux1.sql.add('2 ');
  QueryAux1.sql.add('and dg_usuario = ');
  QueryAux1.sql.add('0 ');
  QueryAux1.sql.add('order by dtinicio ');

  while not QueryAux.eof do
  begin
     QueryAux1.Close;
     QueryAux1.sql[01] := QueryAux.fieldByName('codigo').AsString;
     QueryAux1.sql[03] := QueryAux.fieldByName('digito').AsString;
     QueryAux1.Open;
     DtFim := QueryAux1.fieldByName('dtfim').AsDatetime  + 1;

     While not QueryAux1.Eof do
     begin
        QueryAux1.next;
        if not QueryAux1.Eof then
           if not VerificaData(QueryAux1.fieldByName('dtinicio').AsString,DatetimeToStr(Dtfim)) then
              Imprime('ERRO NA SEQUENCIA DE DIAS');

        DtFim := QueryAux1.fieldByName('dtfim').AsDatetime + 1;
     end;

     QueryAux.next;
  end;
  if not VerificaData(QueryAux1.fieldByName('dtfim').AsString,'01/01/2079') then
     Imprime('NÃO EXISTE DATA 01/01/2079');

  CloseFile(F);
  QueryAux.close;
  QueryAux1.Close;
  ShowMessage('Acabou');
  WinExec('notepad c:\SeqData.err',SW_SHOW);
end;
Procedure TFmAnalisaMensalidade.Imprime(texto : String);
begin
   Writeln(F,StrAll(10 - length(QueryAux.fieldByName('codigo').AsString),'0') + QueryAux.fieldByName('codigo').AsString +
   ' ' + QueryAux.fieldByName('digito').AsString +
   ' ' + StrAll(3 - length(QueryAux1.fieldByName('id_acrescimo').AsString),'0') + QueryAux1.fieldByName('id_acrescimo').AsString +
   ' ' + texto);
end;

Function TFmAnalisaMensalidade.VerificaData(Dt1,Dt2:String): Boolean;
begin
   Query1.Close;
   Query1.sql[01] := '''' + Copy(Dt1,1,10) + '''';
   Query1.sql[03] := '''' + Copy(Dt2,1,10) + '''';
   Query1.Open;
   Result := not (Query1.Eof and Query1.Bof);
end;
end.
