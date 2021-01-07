unit relContratRestricaoTitPago;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, ADODB, RLParser, RLReport;

type
  TFmFrrContratRestricaoTitPago = class(TFmFortesRepPadrao)
    ADOQueryReceber: TADOQuery;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrrContratRestricaoTitPago: TFmFrrContratRestricaoTitPago;

implementation

uses udm;

{$R *.dfm}

end.
