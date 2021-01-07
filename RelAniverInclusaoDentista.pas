unit RelAniverInclusaoDentista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, RLReport, DB, ADODB, RLParser;

type
  TfmfrNiverInclusaoDentista = class(TFmFortesRepPadrao)
    ADOQuery1: TADOQuery;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmfrNiverInclusaoDentista: TfmfrNiverInclusaoDentista;

implementation

uses udm;

{$R *.dfm}

end.
