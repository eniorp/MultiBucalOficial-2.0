unit ParamRelConfCart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, DBClient, SimpleDS, DBCtrls, Buttons;

type
  TFmParamRelConfCart = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    SDSTpPagto: TSimpleDataSet;
    dsTpPagot: TDataSource;
    GroupBox2: TGroupBox;
    DBLCTpPagto: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    DBLCTpCobr: TDBLookupComboBox;
    DsTpCobr: TDataSource;
    SDSTpCobr: TSimpleDataSet;
    BitBtn2: TBitBtn;
    BitBtnSair: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamRelConfCart: TFmParamRelConfCart;

implementation

uses udm, RelFrConfCartoes;

{$R *.dfm}

procedure TFmParamRelConfCart.FormShow(Sender: TObject);
begin
   SDSTpPagto.Open;
   SDSTpCobr.Open;
end;

procedure TFmParamRelConfCart.BitBtn2Click(Sender: TObject);
begin
   if (MaskEditDtIni.Text = '  /  /    ') or (MaskEditDtFim.Text = '  /  /    ') then
   begin
      showMessage('informe o intervalo de vencimento');
      exit;
   end;
   FmRelFrConfCartoes := TFmRelFrConfCartoes.Create('RIBEIRÃO MULTI BUCAL LTDA','CONFERÊNCIA DE BAIXA(CARTÕES)',self);
   FmRelFrConfCartoes.Query1.close;
   FmRelFrConfCartoes.Query1.SQL[19] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.text + '''';
   FmRelFrConfCartoes.RLLabelParam.caption := 'Vencimento de : ' + MaskEditDtIni.Text + ' a ' + MaskEditDtFim.Text;
   if DBLCTpPagto.text <> '' then
   begin
      FmRelFrConfCartoes.Query1.SQL[20] := ' and r.Tipo_pagamento = ' + SDSTpPagto.FieldByName('Id_TipoPgto').AsString;
      FmRelFrConfCartoes.RLLabelParam.caption := FmRelFrConfCartoes.RLLabelParam.caption + ' / Tipo Pagto : ' + DBLCTpPagto.text;
   end
   else
     FmRelFrConfCartoes.Query1.SQL[20] := ' ';

   if DBLCTpCobr.text <> '' then
   begin
      FmRelFrConfCartoes.Query1.SQL[21] := ' and r.Tipo_cobranca = ' + SDSTpCobr.FieldByName('codigo').AsString;
      FmRelFrConfCartoes.RLLabelParam.caption := FmRelFrConfCartoes.RLLabelParam.caption + ' / Tipo Cobrança : ' + DBLCTpCobr.text;
   end
   else
     FmRelFrConfCartoes.Query1.SQL[21] := ' ';
   FmRelFrConfCartoes.Query1.open;
   if not (FmRelFrConfCartoes.Query1.bof and FmRelFrConfCartoes.Query1.eof) then
      FmRelFrConfCartoes.RLReportH.PreviewModal
   else
      ShowMessage('Não há dados a serem impressos com os parâmetros passados ');


   FmRelFrConfCartoes.Free;

end;

procedure TFmParamRelConfCart.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
