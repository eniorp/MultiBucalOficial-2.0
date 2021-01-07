unit relInadimplente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, RLReport, DB, ADODB, RLParser;

type
  TFmFrContratInadimplente = class(TFmFortesRepPadrao)
    sp_relContratInadimplente: TADOStoredProc;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrContratInadimplente: TFmFrContratInadimplente;

implementation

uses udm;

{$R *.dfm}

end.
