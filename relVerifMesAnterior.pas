unit relVerifMesAnterior;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, DBTables, RLParser, RLHTMLFilter, RLFilters,
  RLDraftFilter, RLRichFilter, RLPDFFilter;

type
  TFmRelVerifFatAnterior = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    Ds: TDataSource;
    sp_verifFatAnterior: TStoredProc;
    RLDBText1: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLDraw3: TRLDraw;
    RLSystemInfo4: TRLSystemInfo;
    RLDBResult1: TRLDBResult;
    RLExpressionParser1: TRLExpressionParser;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLDraftFilter1: TRLDraftFilter;
    RLHTMLFilter1: TRLHTMLFilter;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRelVerifFatAnterior: TFmRelVerifFatAnterior;

implementation

{$R *.dfm}

end.
