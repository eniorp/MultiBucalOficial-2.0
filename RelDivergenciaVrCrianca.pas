unit RelDivergenciaVrCrianca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelPadrao, Qrctrls, Db, DBTables, QRExport, QuickRpt, ExtCtrls;

type
  TQrDiverVrCrianca = class(TQuickReportPadrao)
    sp_verifiValorCrianca: TStoredProc;
    QRDBText1: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabelDtBase: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QrDiverVrCrianca: TQrDiverVrCrianca;

implementation

{$R *.DFM}

end.
