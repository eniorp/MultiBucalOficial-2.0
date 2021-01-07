unit relRetiradaCarteira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrRetiradaCarteira = class(TFmFortesRepPadrao)
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    ADOQuery1: TADOQuery;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrRetiradaCarteira: TFmFrRetiradaCarteira;

implementation

uses udm;

{$R *.dfm}

end.
