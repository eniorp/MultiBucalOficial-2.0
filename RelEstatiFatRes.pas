unit RelEstatiFatRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelPadrao, Qrctrls, Db, DBTables, QRExport, QuickRpt, ExtCtrls;

type
  TQrEstatFatRes = class(TQuickReportPadrao)
    Query: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText7: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
//    vMes : smallint;
  public
    { Public declarations }
  end;

var
  QrEstatFatRes: TQrEstatFatRes;

implementation

{$R *.DFM}

procedure TQrEstatFatRes.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
//   if VMes <> Query.FieldByName('Mes').asInteger then
//   begin
      If DetailBand1.Color = clWhite then
         DetailBand1.Color := $00DBDBDB
      Else
         DetailBand1.Color := clWhite;
//      VMes := Query.FieldByName('Mes').asInteger;
//   end;

end;

procedure TQrEstatFatRes.PageHeaderBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  inherited;
//   VMes := Query.FieldByName('Mes').asInteger;
end;

end.
