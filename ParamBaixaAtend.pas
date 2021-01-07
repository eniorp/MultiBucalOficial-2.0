unit ParamBaixaAtend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, ExtCtrls, ComCtrls, Db, DBTables;

type
  TFmParamBaixaAtend = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    EditOperador1: TEdit;
    BitBtnPesquisaDentista: TBitBtn;
    EditOperador2: TEdit;
    BitBtn2: TBitBtn;
    RadioGroupTpRel: TRadioGroup;
    ListView: TListView;
    CheckBox1: TCheckBox;
    Query1: TQuery;
    Label5: TLabel;
    procedure BitBtnPesquisaDentistaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditOperador1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditOperador2Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDtIniChange(Sender: TObject);
    procedure EditOperador1Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    ListItem: TListItem;
    Procedure MontaView;
    Procedure LimpaView(flag : Boolean);

  public
    { Public declarations }
  end;

var
  FmParamBaixaAtend: TFmParamBaixaAtend;

implementation

uses PesqOperadores, udm, BaixaPorAtendente, RelbaixaPorAtendente;

{$R *.DFM}

Procedure TFmParamBaixaAtend.LimpaView(flag : Boolean);
Var I : Integer;
begin

   For I := 0 to ListView.Items.Count - 1 do
      ListView.Items.Item[I].Checked := flag;
end;

Procedure TFmParamBaixaAtend.MontaView;

Begin
   ListView.Items.Clear;
   While Not Query1.EOF do
   Begin
      ListItem := ListView.Items.Add;
      ListItem.Caption := Query1.FieldByName('codigo').AsString;
      ListItem.SubItems.Add(Query1.FieldByName('descricao').AsString);
      Query1.Next;
  end;
end;

procedure TFmParamBaixaAtend.BitBtnPesquisaDentistaClick(Sender: TObject);
begin
   FmPesqOperadores := TFmPesqOperadores.create(self);
   FmPesqOperadores.ShowModal;
   if FmPesqOperadores.tag = 1 then
      EditOperador1.text := FmPesqOperadores.Query1.FieldByName('codigo').AsString;

end;

procedure TFmParamBaixaAtend.BitBtn2Click(Sender: TObject);
begin
   FmPesqOperadores := TFmPesqOperadores.create(self);
   FmPesqOperadores.ShowModal;
   if FmPesqOperadores.tag = 1 then
      EditOperador2.text := FmPesqOperadores.Query1.FieldByName('codigo').AsString;

end;

procedure TFmParamBaixaAtend.EditOperador1Change(Sender: TObject);
begin
   BitBtn1.Enabled := (EditOperador1.Text <> '') and (EditOperador2.text <> '');
   EditOperador2.text := EditOperador1.text;
end;

procedure TFmParamBaixaAtend.FormShow(Sender: TObject);
begin
  MaskEditDtIni.text := dm.GetDataSrv;
  MaskEditDtFim.text := dm.GetDataSrv;
  Query1.open;
  MontaView;;
end;

procedure TFmParamBaixaAtend.BitBtn1Click(Sender: TObject);
var Vaux : string;
    cont : word;
begin
   FmRelBaixaPorAtendente := TFmRelBaixaPorAtendente.create('RIBEIRÃO MULTIODONTO LTDA','RELATÓRIO DE BAIXA POR OPERADOR',self);
      FmRelBaixaPorAtendente.QueryReceber.sql[35] := 'where rb.dtbaixa between ''' + MaskEditDtIni.text + ''' and ''' + MaskEditDtFim.text + ' 23:59:59'' and r.operador between ' + EditOperador1.Text + ' and ' + EditOperador2.text ;
   Vaux := '-1';
   For cont := 0 to ListView.Items.Count - 1 do
      if ListView.Items.Item[cont].Checked then
         Vaux :=  Vaux + ',' + ListView.Items[cont].caption;
   if Vaux <> '-1' then
      FmRelBaixaPorAtendente.QueryReceber.sql[35] := FmRelBaixaPorAtendente.QueryReceber.sql[35] + ' and t.Codigo in (' + Vaux + ')';
   FmRelBaixaPorAtendente.QueryReceber.Open;
   FmRelBaixaPorAtendente.RLLabelPeriodo.Caption := 'Período : ' + MaskEditDtIni.text + ' A ' + MaskEditDtFim.text;

   FmRelBaixaPorAtendente.RLBandDetail.enabled       := RadioGroupTpRel.ItemIndex = 1;
   FmRelBaixaPorAtendente.RLLabel2.visible           := FmRelBaixaPorAtendente.RLBandDetail.enabled;
   FmRelBaixaPorAtendente.RLDBText3.visible          := FmRelBaixaPorAtendente.RLBandDetail.enabled;
   FmRelBaixaPorAtendente.RLBandHeader2.visible      := FmRelBaixaPorAtendente.RLBandDetail.enabled;
   FmRelBaixaPorAtendente.RLBandHeaderGroup2.visible := not FmRelBaixaPorAtendente.RLBandDetail.enabled;
   FmRelBaixaPorAtendente.RLBandHeader1.visible      := FmRelBaixaPorAtendente.RLBandDetail.enabled;
   if RadioGroupTpRel.ItemIndex = 0 then
   begin
        FmRelBaixaPorAtendente.RLBandSummary.Borders.DrawTop := true;
        FmRelBaixaPorAtendente.RLBandDetail.Height := 0;
        FmRelBaixaPorAtendente.RLGroup1.Borders.DrawBottom := false;
        FmRelBaixaPorAtendente.RLBandFooterGroup1.Height := 14;
//      FmRelBaixaPorAtendente.QRExpr5.Font.Style := [];
//      FmRelBaixaPorAtendente.QRExpr4.Font.Style := [];
//      FmRelBaixaPorAtendente.QRExpr6.Font.Style := [];
//      FmRelBaixaPorAtendente.QRBand2.Height := 18;
//      FmRelBaixaPorAtendente.QRBand2.Frame.DrawTop := false;
   end;
   if FmRelBaixaPorAtendente.QueryReceber.Bof and FmRelBaixaPorAtendente.QueryReceber.Eof then

      ShowMessage('não há registro a serem mostrados com os parâmetros selecionados')
   else
   FmRelBaixaPorAtendente.RLReportH.Preview;
   FmRelBaixaPorAtendente.free;


{   QrBaixaPAtendente := tQrBaixaPAtendente.create(self);
   QrBaixaPAtendente.QueryReceber.sql[35] := 'where rb.dtbaixa between ''' + MaskEditDtIni.text + ''' and ''' + MaskEditDtFim.text + ' 23:59:59'' and r.operador between ' + EditOperador1.Text + ' and ' + EditOperador2.text ;
   Vaux := '-1';
   For cont := 0 to ListView.Items.Count - 1 do
      if ListView.Items.Item[cont].Checked then
         Vaux :=  Vaux + ',' + ListView.Items[cont].caption;
   if Vaux <> '-1' then
      QrBaixaPAtendente.QueryReceber.sql[35] := QrBaixaPAtendente.QueryReceber.sql[35] + ' and t.Codigo in (' + Vaux + ')';
   QrBaixaPAtendente.QueryReceber.Open;
   QrBaixaPAtendente.QRLabel2.Caption := 'Período : ' + MaskEditDtIni.text + ' A ' + MaskEditDtFim.text;
   QrBaixaPAtendente.DetailBand1.Enabled := RadioGroupTpRel.ItemIndex = 1;
   QrBaixaPAtendente.QRDBText11.Enabled := RadioGroupTpRel.ItemIndex = 0;
   QrBaixaPAtendente.QRGroup2.Enabled := RadioGroupTpRel.ItemIndex = 1;
   if RadioGroupTpRel.ItemIndex = 0 then
   begin
      QrBaixaPAtendente.QRExpr5.Font.Style := [];
      QrBaixaPAtendente.QRExpr4.Font.Style := [];
      QrBaixaPAtendente.QRExpr6.Font.Style := [];
      QrBaixaPAtendente.QRBand2.Height := 18;
      QrBaixaPAtendente.QRBand2.Frame.DrawTop := false;
   end;
   if QrBaixaPAtendente.QueryReceber.Bof and QrBaixaPAtendente.QueryReceber.Eof then

      ShowMessage('não há registro a serem mostrados com os parâmetros selecionados')
   else
   QrBaixaPAtendente.preview;
   QrBaixaPAtendente.free;}
end;

procedure TFmParamBaixaAtend.EditOperador2Change(Sender: TObject);
begin
   BitBtn1.Enabled := (EditOperador1.Text <> '') and (EditOperador2.text <> '');
end;

procedure TFmParamBaixaAtend.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFmParamBaixaAtend.MaskEditDtIniChange(Sender: TObject);
begin
   MaskEditDtFim.text := MaskEditDtIni.text;
end;

procedure TFmParamBaixaAtend.EditOperador1Exit(Sender: TObject);
begin

   GroupBox2.Caption := 'Atendente ' + dm.ExecutaComando('select apelido from operador where codigo = ''' + EditOperador1.text + '''','apelido');
   if EditOperador1.text <> EditOperador2.text then
      GroupBox2.Caption :=  GroupBox2.Caption + ' A ' +
      dm.ExecutaComando('select apelido from operador where codigo = ''' + EditOperador2.text + '''','apelido');
end;

procedure TFmParamBaixaAtend.CheckBox1Click(Sender: TObject);
begin
   LimpaView(CheckBox1.Checked);
end;

end.
