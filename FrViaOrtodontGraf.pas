unit FrViaOrtodontGraf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, jpeg, ADODB;

type
  TfmFrViaOrtodontGraf = class(TFmFortesRepPadrao)
    RLImage1: TRLImage;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel18: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel14: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel13: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLLabelAutorizadoEm: TRLLabel;
    ADOQueryOrc: TADOQuery;
    RLImage2: TRLImage;
    RLLabel15: TRLLabel;
    RLLabelClinica: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFrViaOrtodontGraf: TfmFrViaOrtodontGraf;

implementation

{$R *.dfm}

end.
