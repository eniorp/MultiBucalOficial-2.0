unit RelFrServicoPorPlano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadraoGroup, DB, RLParser, RLReport, ADODB;

type
  TFrRelServicoPorPlano = class(TFmFortesPadraoGroup)
    SP_VR_SERVICO_POR_PLANO: TADOStoredProc;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrRelServicoPorPlano: TFrRelServicoPorPlano;

implementation

uses udm;

{$R *.dfm}

end.
