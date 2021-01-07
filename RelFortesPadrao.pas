unit RelFortesPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLHTMLFilter, RLPDFFilter, RLFilters, RLRichFilter,
  RLParser, DB;

type
  TFmFortesRepPadrao = class(TForm)
    RLReportH: TRLReport;
    RLBandSummaryH: TRLBand;
    RLBandDetailH: TRLBand;
    RLSystemInfoLastPgH: TRLSystemInfo;
    RLLabelBarraH: TRLLabel;
    RLSystemInfoPgH: TRLSystemInfo;
    RLLabelEmpresaH: TRLLabel;
    RLSystemInfoQtRegH: TRLSystemInfo;
    RLExpressionParserH: TRLExpressionParser;
    DataSourceH: TDataSource;
  private
    { Private declarations }
  public
     constructor Create(PNmEmpresa,PTituloRel: string; Aowner:TComponent);

  end;

var
  FmFortesRepPadrao: TFmFortesRepPadrao;

implementation

{$R *.dfm}

{ TFmFortesRepPadrao }

constructor TFmFortesRepPadrao.Create(PNmEmpresa, PTituloRel: string; Aowner:TComponent);
begin
  inherited create(Aowner);
  RLLabelEmpresaH.Caption := PNmEmpresa;
  RLReportH.Title := PTituloRel;
end;

end.
