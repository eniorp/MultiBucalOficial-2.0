unit FrRelContratosExcluidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, RLReport, DB, ADODB, RLParser;

type
  TFmfrRelContratosExcluidos = class(TFmFortesRepPadrao)
    sp_relBenefExcluidos: TADOStoredProc;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabelParam: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmfrRelContratosExcluidos: TFmfrRelContratosExcluidos;

implementation

{$R *.dfm}

end.
