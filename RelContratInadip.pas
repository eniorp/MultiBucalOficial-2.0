unit RelContratInadip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelPadrao, Db, DBTables, QRExport, Qrctrls, QuickRpt, ExtCtrls;

type
  TQrContratInadip = class(TQuickReportPadrao)
    QueryContrInad: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QrContratInadip: TQrContratInadip;

implementation

{$R *.DFM}

end.
