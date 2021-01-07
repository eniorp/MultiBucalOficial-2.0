unit RelEnvDentistaGrafica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadraoGroup, DB, RLParser, RLReport, ADODB;

type

  TFmFrEnvDentistaGrafica = class(TFmFortesPadraoGroup)
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    SP_ENVIO_DENTISTA_GRAFICA: TADOStoredProc;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrEnvDentistaGrafica: TFmFrEnvDentistaGrafica;

implementation

uses udm;

{$R *.dfm}

end.
