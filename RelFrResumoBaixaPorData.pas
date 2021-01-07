unit RelFrResumoBaixaPorData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrRelResumoBaixaPorData = class(TFmFortesRepPadrao)
    AdoQueryResumo: TADOQuery;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBText3: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBResult2: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrRelResumoBaixaPorData: TFmFrRelResumoBaixaPorData;

implementation

{$R *.dfm}

end.
