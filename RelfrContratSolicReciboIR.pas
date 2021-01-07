unit RelfrContratSolicReciboIR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmfrContratSolicReciboIR = class(TFmFortesRepPadrao)
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    ADOQuery1: TADOQuery;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBResult1: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmfrContratSolicReciboIR: TFmfrContratSolicReciboIR;

implementation

uses udm;

{$R *.dfm}

end.
