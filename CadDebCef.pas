unit CadDebCef;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, StdCtrls, Mask, Db, DBTables, Grids, DBGrids, ExtCtrls, Buttons,
  DBCtrls,biblio;

type
  TFmCadDebCef = class(TFmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    GroupBox2: TGroupBox;
    DBLCBanco: TDBLookupComboBox;
    QueryBanco: TQuery;
    DsBanco: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    OpenDialog1: TOpenDialog;
    CheckBoxSelBanco: TCheckBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MaskEditPgIni: TMaskEdit;
    MaskEditPgFim: TMaskEdit;
    Querytmp: TQuery;
    LabelResumo: TLabel;
    GroupBox4: TGroupBox;
    ComboBoxClass: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBoxSelBancoClick(Sender: TObject);
    procedure DBLCBancoClick(Sender: TObject);
  private
     VNrSeqArq : Smallint;
     Function MontaHeaderFEBRABAN150(Banco,PDebSeq : string): String;
     Function MontaRegFEBRABAN150 : String;
     Function MontaTraillerFEBRABAN150 : String;
  public
    { Public declarations }
  end;

var
  FmCadDebCef: TFmCadDebCef;

implementation

uses udm;

{$R *.DFM}

procedure TFmCadDebCef.BitBtn1Click(Sender: TObject);
Var NmTbTemp : string[40];
    tt,ttpg : integer;
begin
  inherited;

   if (MaskEditDtIni.text = '  /  /    ') or (MaskEditDtfim.text = '  /  /    ') then
   Begin
      ShowMessage('É Necessário informar o intervalo de data de inclusão do contrtante !');
      exit;
   end;

   Query1.close;
   if CheckBoxSelBanco.Checked then
   begin
     if (DBLCBanco.Text = '') then
        ShowMessage('É Necessário informar o banco !')
     else
        Querytmp.sql[07] := 'and c.banco = ''' + QueryBanco.FieldByName('banco').AsString  + '''';

   end
   else
      Querytmp.sql[07] := ' ';


   Querytmp.sql[03] := '''' + MaskEditDtIni.text  + '''';
   Querytmp.sql[05] := '''' + MaskEditDtfim.text  + ' 23:59''';
   NmTbTemp := DatetimeToStr(now);
   NmTbTemp := copy(NmTbTemp,1,2) + copy(NmTbTemp,4,2) + copy(NmTbTemp,9,2) + copy(NmTbTemp,12,2) + copy(NmTbTemp,15,2)  + copy(NmTbTemp,18,2);
   NmTbTemp := '##TMP_' + NmTbTemp;
   Querytmp.sql[01] := 'INTO '+ NmTbTemp;

   case ComboBoxClass.ItemIndex of

     0: Querytmp.sql[08] := ' order by c.banco,c.nome ';
     1: Querytmp.sql[08] := ' order by c.inclusao,c.nome';
     2: Querytmp.sql[08] := ' order by c.nome';
     3: Querytmp.sql[08] := ' order by v.nome,c.nome'     
   end;

   Querytmp.ExecSQL;

   dm.execmd('set dateformat dmy update ' + NmTbTemp + ' set pg = ''S'' from receber r where r.Codigo_Contratante = codigo and data_vencimento between ''' +
   MaskEditPgIni.text + ''' and ''' + MaskEditPgFim.text + ''' and r.desdobramento = ''M'' and valor_pago > 0 and data_pagamento is not null ');

   Query1.sql.clear;
   Query1.sql.add('select * from ' + NmTbTemp);
   Query1.open;
   tt := 0;
   ttpg := 0;
   while not Query1.eof do
   begin
      inc(tt);
      if Query1.FieldByName('pg').AsString = 'S' then
         inc(ttpg);
      Query1.next;
   end;
   LabelResumo.caption := 'Total ' + IntToStr(tt) + ' ->  ' + intToStr(ttpg) + ' pagaram  -> ' + intTostr(tt -ttpg) + ' não pagaram';
end;

procedure TFmCadDebCef.BitBtn2Click(Sender: TObject);
var NmArq : String;
    Arq : TextFile;
    vDebSeq : string[10];
begin
  inherited;
  if not Query1.Active or (query1.bof and query1.Eof) then
  begin
     ShowMessage('Não há registros para gerar o arquivo !');
     exit;
  end;
  NmArq := dm.ExecutaComando('select caminho_cobranca cc from preferencia','cc') + '\Debitos\Envio\caixa\';
  dm.ExecutaComando('select convert(char(10),getdate(),103) as data','data');
  NmArq := NmArq + 'ACC.' +
  copy(dm.QueryGlobal.fields[0].value,1,2) + // dia
  copy(dm.QueryGlobal.fields[0].value,4,2) + // mes
  copy(dm.QueryGlobal.fields[0].value,7,4) + // ano
  '.015977.';
  vDebSeq := dm.ExecutaComando('select debito_sequencial ds from contas_banco where banco = ''' + QueryBanco.FieldByname('banco').AsString + '''','ds');
  NmArq := NmArq + lpad(vDebSeq,6,'0') + '.REM';
  OpenDialog1.FileName   := NmArq;
  if not OpenDialog1.Execute then
     exit;
  AssignFile(Arq,OpenDialog1.FileName);
  Rewrite(Arq);
  Writeln(Arq,MontaHeaderFEBRABAN150(QueryBanco.FieldByname('banco').AsString,vDebSeq));
  VNrSeqArq := 0;
  Query1.first;
  While not Query1.Eof do
  begin
      Writeln(Arq,MontaRegFEBRABAN150);
      Query1.Next;
  end;
  Writeln(Arq,MontaTraillerFEBRABAN150);
  CloseFile(Arq);
  dm.ExecutaComando('update contas_banco set debito_sequencial = debito_sequencial + 1 where banco = ''' + QueryBanco.FieldByname('banco').AsString + '''');
  ShowMessage('Arquivo "' + OpenDialog1.FileName + '" Gerado com sucesso !');
end;

Function TFmCadDebCef.MontaHeaderFEBRABAN150(Banco,PDebSeq : string): String;
var Registro : string;
    DtStr : string[10];
begin
   dm.ExecutaComando('select * from contas_banco where banco = ''' + banco + '''','banco');
   if dm.QueryGlobal.RecordCount > 1 then
   begin
      showMessage('Banco possui mais de uma conta, é necessário implementação para tratar essa situação');
      Abort;
   end;
   Registro := '';
   Registro := Registro + 'A'; // Código do Registro = 'A'
   Registro := Registro + '1'; // Identifica Código de Remessa 1 - Remessa / 2 - Retorno
   Registro := Registro + '015977110001        ';; // //Convenio debito CEF é diferente conv. Boleto
   Registro := Registro + Rpad(copy(dm.QueryGlobal.FieldByName('titular').AsString,1,20),20,' '); // Nome da Empresa
   Registro := Registro + copy(Banco,1,3); // Código do Banco Banespa
   Registro := Registro + Rpad(copy(dm.QueryGlobal.FieldByName('Nome_Banco').AsString,1,20),20,' '); // Nome do Banco

   DtStr := Dm.GetDataSrv;
   Registro := Registro + Copy(DtStr,7,4) + Copy(DtStr,4,2) + Copy(DtStr,1,2);
   Registro := Registro + lpad(PDebSeq,6,'0'); //Número sequencial do arquivo gerado
   Registro := Registro + '04'; // Versão do Layout
   Registro := Registro + rpad(dm.QueryGlobal.FieldByName('Mensagem_Header').AsString,17,' ');
   Registro := Registro + lpad(copy(dm.QueryGlobal.FieldByName('agencia').AsString,1,4) + dm.QueryGlobal.FieldByName('Numero_Conta').AsString,16,'0');
   Registro := Registro + 'P'; // A.12 - Identificação do Ambiente Cliente P - Produção
   Registro := Registro + 'P'; // A.13 - Identificação do Ambiente caixa   P - Produção
   Registro := Registro + StrAll(27,' '); // A.14 filler
   Registro := Registro + '000000'; // A.15 sequencial do registro
   Registro := Registro + ' '; // A.16 filler
   Result := Registro;
end;

Function TFmCadDebCef.MontaRegFEBRABAN150 : String;
var Registro : string;
begin
   Inc(VNrSeqArq);
   Registro := '';
   Registro := Registro + 'C'; // Código do Registro = 'C' //C1
   Registro := Registro + lpad(Query1.FieldByName('codigo').AsString,25,'0'); //C2
   Registro := Registro + lpad(Query1.FieldByName('Agencia').asString,4,'0'); //C3

   // Conforme layout, aconta eh composta da seguinte maneira..
   //	- Pos 31 a 33 = código da operação;
   //	- Pos 34 a 41 = número de conta;
   //	- Pos 42 a 42 = DV da conta;
   //	- Pos 43 a 44 = brancos.

   Registro := Registro + rpad(Query1.FieldByName('Conta').asString + Query1.FieldByName('Digito').asString + '  ',14,' '); //C4
   Registro := Registro  + StrAll(40,' '); //c5
   Registro := Registro  + StrAll(40,' ');//c6
   Registro := Registro  + StrAll(19,' ');//c7
   Registro := Registro + lpad(IntToStr(VNrSeqArq),6,'0'); // C.8 sequencial do arquivo
   Registro := Registro + '2'; // Código do Movimento 1 - exclusão deb automatica -- 2 inclusão deb automatico
   Result := Registro;
end;

Function TFmCadDebCef.MontaTraillerFEBRABAN150 : String;
var Registro : string;
begin
     inc(VNrSeqArq);
     Registro := '';
     Registro := Registro + 'Z'; // Código do Registro = 'Z'
     Registro := Registro + lpad(IntToStr(VNrSeqArq + 1),6,'0'); // Total de Registros no Arquivo
     Registro := Registro + StrAll(17,'0');
     Registro := Registro + StrAll(119,' '); // Espaços (Filler)
     Registro := Registro + lpad(IntToStr(VNrSeqArq),6,'0'); // Z.05 sequencial do arquivo
     Registro := Registro + ' '; // Z.06Espaços (Filler)
     Result := Registro;
end;


procedure TFmCadDebCef.CheckBoxSelBancoClick(Sender: TObject);
begin
  inherited;
   QueryBanco.active := CheckBoxSelBanco.Checked;
end;

procedure TFmCadDebCef.DBLCBancoClick(Sender: TObject);
begin
  inherited;
   LabelResumo.caption := '';
   Query1.close;
end;

end.
