unit RelOrcClienteXDentista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelPadrao, QRExport, Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, jpeg;

type
  TQrOrcClienteXDentista = class(TQuickReportPadrao)
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QueryOrcamento: TQuery;
    QRDBText17: TQRDBText;
    QRLabel19: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRImage1: TQRImage;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText18: TQRDBText;
    QRShape3: TQRShape;
    QRDBText19: TQRDBText;
    QRShape4: TQRShape;
    QRLabel22: TQRLabel;
    QRShape5: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRRichText1: TQRRichText;
    QueryMsgOrc: TQuery;
    QRLabel24: TQRLabel;
    QRDBText21: TQRDBText;
    QRShape6: TQRShape;
    QRLabelvIA: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRImage2: TQRImage;
    QRLabel29: TQRLabel;
    QRLabelClinica: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QrOrcClienteXDentista: TQrOrcClienteXDentista;

implementation

uses senha, Seletor, udm;

{$R *.DFM}

procedure TQrOrcClienteXDentista.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
   if senha.Cod_Empresa = 1 then
   begin
      QRImage1.Enabled := true;
      QRImage2.Enabled := false;
   end
   else
   begin
      QRImage1.Enabled := false;
      QRImage2.Enabled := true;
      QRImage2.Picture := FormSeletor.Image2.Picture;
   end;

   QrOrcClienteXDentista.ReportTitle := uppercase(senha.Empresa);//dm.ExecutaComando('select fantasia f from empresa where codigo = ' +
end;

procedure TQrOrcClienteXDentista.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
  var Nr : smallint;
begin
  inherited;
   if not QrOrcClienteXDentista.QRRichText1.Enabled then
      exit;
   QueryMsgOrc.Close;
   QueryMsgOrc.sql[1] := QueryOrcamento.FieldByName('numero').AsString;
   QueryMsgOrc.Open;
   QRRichText1.Lines.Clear;
   Nr := 1;
   QRRichText1.enabled := not (QueryMsgOrc.bof and QueryMsgOrc.Eof);
   if not (QueryMsgOrc.bof and QueryMsgOrc.Eof) then
   begin
      QRRichText1.Lines.Add('');
      QRRichText1.Lines.Add('                                                 OBSERVAÇÕES');
      QRRichText1.Lines.Add('');
      QRRichText1.Lines.Add('');
      while not QueryMsgOrc.eof do
      begin
         QRRichText1.lines.add(' ' + IntToStr(Nr) + ') ' + QueryMsgOrc.FieldByName('tx_evento').AsString);
         QueryMsgOrc.next;
         inc(nr);
      end;
   end;
end;

end.
