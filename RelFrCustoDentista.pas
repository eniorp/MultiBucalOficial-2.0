unit RelFrCustoDentista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrCustoDentista = class(TFmFortesRepPadrao)
    ADOQuery1: TADOQuery;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLDBResult5: TRLDBResult;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBResult7: TRLDBResult;
    sp_RelCustoComOrcamento: TADOStoredProc;
    RLDBText9: TRLDBText;
    RLDBResult6: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrCustoDentista: TFmFrCustoDentista;

implementation

uses udm;

{$R *.dfm}

end.
