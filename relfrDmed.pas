unit relfrDmed;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrRelDmed = class(TFmFortesRepPadrao)
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    SP_GERA_DMED: TADOStoredProc;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabelPeriodo: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrRelDmed: TFmFrRelDmed;

implementation

uses udm;

{$R *.dfm}

end.
