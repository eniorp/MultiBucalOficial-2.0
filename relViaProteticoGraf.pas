unit relViaProteticoGraf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, jpeg, ADODB;

type
  TfmFrViaProteticoGraf = class(TFmFortesRepPadrao)
    RLLabel1: TRLLabel;
    ADOQueryOrc: TADOQuery;
    RLDBText1: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLLabel18: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel19: TRLLabel;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel20: TRLLabel;
    RLImage1: TRLImage;
    RLLabel21: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLPanel3: TRLPanel;
    RLPanel4: TRLPanel;
    RLDraw1: TRLDraw;
    RLImage2: TRLImage;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabelClinica: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmFrViaProteticoGraf: TfmFrViaProteticoGraf;

implementation

uses udm;

{$R *.dfm}

end.
