unit frRelUsuExcluidosManutAtivas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, ADODB, RLParser, RLReport;

type
  TFmfrRelUsuExcluidosManutAtivas = class(TFmFortesRepPadrao)
    ADOQuery1: TADOQuery;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmfrRelUsuExcluidosManutAtivas: TFmfrRelUsuExcluidosManutAtivas;

implementation

{$R *.dfm}

end.
