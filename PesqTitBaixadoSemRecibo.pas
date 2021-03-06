unit PesqTitBaixadoSemRecibo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, Mask,
  ComCtrls, ADODB;

type
  TFmTitBaixSemRecibo = class(TFmPadrao)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    BitBtn1: TBitBtn;
    ListView: TListView;
    CheckBox1: TCheckBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    ListItem: TListItem;
    Procedure MontaView;
    Procedure LimpaView(flag : Boolean);

  public
    { Public declarations }
  end;

var
  FmTitBaixSemRecibo: TFmTitBaixSemRecibo;

implementation

uses Fundo, udm,senha;

{$R *.DFM}

Procedure TFmTitBaixSemRecibo.LimpaView(flag : Boolean);
Var I : Integer;
begin

   For I := 0 to ListView.Items.Count - 1 do
      ListView.Items.Item[I].Checked := flag;
end;

Procedure TFmTitBaixSemRecibo.MontaView;

Begin
   ListView.Items.Clear;
   While Not Query1.EOF do
   Begin
      ListItem := ListView.Items.Add;
      ListItem.Caption := Query1.FieldByName('numero_titulo').AsString;
      ListItem.SubItems.Add(Query1.FieldByName('desdobramento').AsString);
      ListItem.SubItems.Add(Query1.FieldByName('data_vencimento').AsString);
      ListItem.SubItems.Add(Formatfloat('###,###,##0.00',Query1.FieldByName('Valor').AsCurrency));
      ListItem.SubItems.Add(Formatfloat('###,###,##0.00',Query1.FieldByName('Valor_pago').Ascurrency));
      ListItem.SubItems.Add(Query1.FieldByName('Data_pagamento').AsString);
      Query1.Next;
  end;
end;

procedure TFmTitBaixSemRecibo.BitBtn1Click(Sender: TObject);
var cont,Qtck : byte;
    PnrRecibo : string[15];
begin
  inherited;
   try
      Qtck := 0;
      For cont := 0 to ListView.Items.Count - 1 do
         if ListView.Items.Item[cont].Checked then
           inc(Qtck);
      if qtck = 0 then
      begin
          ShowMessage('Opera��o cancelada. nenhum registro selecionado ');
         exit;
      end;

      Qtck := 0;
      For cont := 0 to ListView.Items.Count - 1 do
         if ListView.Items.Item[cont].Checked then
           Inc(QtCk);

      if Qtck > StrToInt(dm.GetParam('QTDREC')) then
      begin
         ShowMessage('A quantidade de registros no recibo n�o pode ultrapassar ' + dm.GetParam('QTDREC') + ', voc� selecionou ' + IntToStr(qtck) + ', se necess�rio emita mais de um recibo');
         exit;
      end;
      FormFundo.DatabaseMultiOdonto.StartTransaction;
      PnrRecibo := dm.EmiteRecibo(senha.apelido);
      For cont := 0 to ListView.Items.Count - 1 do
         if ListView.Items.Item[cont].Checked then
            dm.IncluiItemRecibo(PnrRecibo,ListView.Items[cont].caption,ListView.Items[cont].SubItems[0]);
      FormFundo.DatabaseMultiOdonto.Commit;
   except
   on E: Exception do
      begin
         if FormFundo.DatabaseMultiOdonto.InTransaction then
            FormFundo.DatabaseMultiOdonto.Rollback;
         ShowMessage('Ocorreu um erro ao tentar emitir o recibo, Erro : ' + e.message);
         if (dm.GetParam('GRALOG') = 'S') then
            Dm.GravaLog('TFmTitBaixSemRecibo','BitBtn1Click',e.message);
         exit;
      end;
   end;
   Button1Click(Sender);
   dm.ImprimeRecibo(PnrRecibo);
end;

procedure TFmTitBaixSemRecibo.Button1Click(Sender: TObject);
begin
  inherited;
  Query1.Close;
  Query1.sql[6] := Edit1.Text;
  Query1.sql[8] := '''' + MaskEdit1.Text + ''' and ''' + MaskEdit1.text + ' 23:59:59''';
  Query1.Open;
  BitBtn1.Enabled :=  not (Query1.bof and Query1.eof);
  MontaView;
end;

procedure TFmTitBaixSemRecibo.CheckBox1Click(Sender: TObject);
begin
  inherited;
   LimpaView(CheckBox1.Checked);
end;

procedure TFmTitBaixSemRecibo.FormShow(Sender: TObject);
begin
  inherited;
   MaskEdit1.Text := dm.GetDataSrv;
end;

end.

