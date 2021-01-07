unit RelAniverInclusaoProtetico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelAniverInclusaoDentista, DB, ADODB, RLParser, RLReport;

type
  TfmfrNiverInclusaoProtetico = class(TfmfrNiverInclusaoDentista)
    RLLabel6: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmfrNiverInclusaoProtetico: TfmfrNiverInclusaoProtetico;

implementation

{$R *.dfm}

end.
