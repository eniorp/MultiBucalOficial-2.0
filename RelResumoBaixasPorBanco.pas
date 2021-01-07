unit RelResumoBaixasPorBanco;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQrResumoBaixasPorBanco = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabelVencto: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabelPagto: TQRLabel;
    DetailBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QueryResumoPagtoBanco: TQuery;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabeltpDoc: TQRLabel;
  private

  public

  end;

var
  QrResumoBaixasPorBanco: TQrResumoBaixasPorBanco;

implementation

{$R *.DFM}

end.
