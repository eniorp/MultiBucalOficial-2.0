unit RelPadrao;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, QRExport;

type
  TQuickReportPadrao = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRTextFilter1: TQRTextFilter;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
  private

  public

  end;

var
  QuickReportPadrao: TQuickReportPadrao;

implementation

{$R *.DFM}

end.
