unit frQtUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrQtUsuarios = class(TFmFortesRepPadrao)
    ADOQuery1: TADOQuery;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrQtUsuarios: TFmFrQtUsuarios;

implementation

uses udm;

{$R *.dfm}

end.
