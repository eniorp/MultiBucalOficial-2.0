unit frRelPagDentistaPorPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrRelPagDentistaPorPeriodo = class(TFmFortesRepPadrao)
    ADOQuery1: TADOQuery;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel5: TRLLabel;
    RLDBResult3: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrRelPagDentistaPorPeriodo: TFmFrRelPagDentistaPorPeriodo;

implementation

uses udm;

{$R *.dfm}

end.
