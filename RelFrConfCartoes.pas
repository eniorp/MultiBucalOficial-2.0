unit RelFrConfCartoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, RLParser, RLReport, FMTBcd, DB, SqlExpr,
  DBTables;

type
  TFmRelFrConfCartoes = class(TFmFortesRepPadrao)
    DataSource1: TDataSource;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabelParam: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBResult1: TRLDBResult;
    Query1: TQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRelFrConfCartoes: TFmRelFrConfCartoes;

implementation

uses udm;

{$R *.dfm}

end.
