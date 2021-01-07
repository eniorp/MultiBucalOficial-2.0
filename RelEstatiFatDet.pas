unit RelEstatiFatDet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelPadrao, Db, DBTables, QRExport, Qrctrls, QuickRpt, ExtCtrls;

type
  TQrEstatFatDet = class(TQuickReportPadrao)
    Query: TQuery;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr1: TQRExpr;
    QRLabel10: TQRLabel;
    QRDBText8: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QrEstatFatDet: TQrEstatFatDet;

implementation

{$R *.DFM}

procedure TQrEstatFatDet.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
      If DetailBand1.Color = clWhite then
         DetailBand1.Color := $00DBDBDB
      Else
         DetailBand1.Color := clWhite;

end;

end.
