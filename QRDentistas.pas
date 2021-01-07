unit QRDentistas;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport,
  ADODB;

type
  TQRListaDentistas = class(TQuickRep)
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRLabelEmpresa: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBTextCodigo: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabelFiltro: TQRLabel;
    QRBand1: TQRBand;
    QRTextFilter1: TQRTextFilter;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QueryDentistas: TADOQuery;
  private

  public

  end;

var
  QRListaDentistas: TQRListaDentistas;

implementation
   uses Senha, tacio, udm;

{$R *.DFM}

end.
