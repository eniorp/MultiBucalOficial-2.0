unit relGlosasPorPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrRelGlosas = class(TFmFortesRepPadrao)
    RLLabel1: TRLLabel;
    ADOQueryGlosa: TADOQuery;
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
    RLLabel7: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrRelGlosas: TFmFrRelGlosas;

implementation

{$R *.dfm}

end.
