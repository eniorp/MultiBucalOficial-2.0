unit RelFortesPadraoGroup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, RLReport, DB, RLParser, ADODB;

type
  TFmFortesPadraoGroup = class(TFmFortesRepPadrao)
    RLGroup1: TRLGroup;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFortesPadraoGroup: TFmFortesPadraoGroup;

implementation


{$R *.dfm}

end.
