unit ReimpressaoRecibo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask;

type
  TFmReimpressaoRec = class(TFmPadrao)
    Label1: TLabel;
    EditContr: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    EditRec1: TEdit;
    EditRec2: TEdit;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    Bevel2: TBevel;
    Query1nr_recibo: TIntegerField;
    Query1dt_recibo: TDateTimeField;
    Query1vr_recibo: TFloatField;
    Query1titulo: TIntegerField;
    Query1desd: TStringField;
    Query1operador: TStringField;
    Query1cd_contratante: TIntegerField;
    Query1nm_contratante: TStringField;
    Query1data_vencimento: TDateTimeField;
    Query1data_pagamento: TDateTimeField;
    Query1valor_pago: TFloatField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Query1status: TStringField;
    BitBtn4: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditRec1Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditRec1Exit(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmReimpressaoRec: TFmReimpressaoRec;

implementation

uses udm,senha;

{$R *.DFM}

procedure TFmReimpressaoRec.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Query1.sql[22] := ' where 1 = 1 ';
   if EditContr.text <> '' then
      Query1.sql[22] := Query1.sql[22] + ' and c.codigo = ' + EditContr.text
   else
      Query1.sql[23] := ' order by r.nr_recibo';

   if (EditRec1.text <> '') and (EditRec2.text <> '') then
      Query1.sql[22] := Query1.sql[22] + ' and r.nr_recibo between  ' + EditRec1.text + ' and ' + EditRec2.text
   else
     Query1.sql[23] := ' order by r.nr_recibo';
   if (MaskEditDtIni.text <> '  /  /    ') and (MaskEditDtFim.text <> '  /  /    ') then
      Query1.sql[22] := Query1.sql[22] + ' and r.dt_recibo between  ''' + MaskEditDtIni.text + ''' and ''' + MaskEditDtFim.text + ' 23:59:59'''
   else
      Query1.sql[23] := ' order by r.nr_recibo';
   Query1.Open;

end;

procedure TFmReimpressaoRec.EditRec1Change(Sender: TObject);
begin
  inherited;
   Editrec2.text := Editrec1.text;
end;

procedure TFmReimpressaoRec.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if Query1.fieldByName('status').AsString = 'C' then
  begin
     ShowMessage('Não é possível imprimir recibo cancelado !');
     exit;
  end;
  if Application.MessageBox(Pchar('confirma a impressão do recibo "' + Query1.fieldByName('nr_recibo').AsString + '"'),'Confirmação de impressão de recibo',MB_OKCANCEL) = IDOK then
     dm.ImprimeRecibo(Query1.fieldByName('nr_recibo').AsString);
end;

procedure TFmReimpressaoRec.EditRec1Exit(Sender: TObject);
begin
  inherited;
   if (EditRec1.Text <> '') and (EditRec2.text <> '') then
   begin
      MaskEditDtIni.text := '01/01/2007';
      MaskEditDtFim.text := '01/01/2079';
      EditContr.Text := '';
   end;
end;

procedure TFmReimpressaoRec.Query1AfterScroll(DataSet: TDataSet);
begin
  inherited;
   BitBtn3.Enabled :=  Query1.fieldByName('titulo').IsNull;
end;

procedure TFmReimpressaoRec.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(Pchar('confirma a exclusão do recibo "' + Query1.fieldByName('nr_recibo').AsString + '" ?'),'Confirmação de exclusão',MB_OKCANCEL) = IDOK then
  begin
     dm.ExecutaComando('delete recibo where nr_recibo = ' + Query1.fieldByName('nr_recibo').AsString);
     Query1.close;
     Query1.Open;
  end
end;

procedure TFmReimpressaoRec.BitBtn4Click(Sender: TObject);
begin
  inherited;
   if Query1.fieldByName('nr_recibo').IsNull or (Query1.fieldByName('status').AssTring = 'C') then
      exit;
      
   if (Application.MessageBox(Pchar('confirma o cancelamento do recibo "' + Query1.fieldByName('nr_recibo').AsString + '"'),'Confirmação de impressão de recibo',MB_OKCANCEL) <> IDOK) then
      exit;

   try
      dm.ExecutaComando('update recibo set status = ''C'', operador_canc = ''' + senha.Apelido + ''' where nr_recibo = ' + Query1.fieldByName('nr_recibo').AsString);
   except
     ShowMessage('Ocorreu um erro ao tentar cancelar o recibo, operação cancelada!');
     exit;
   end;
   Query1.close;
   Query1.Open;
   ShowMessage('Cancelamento Efetuado com Sucesso !');
end;

end.
