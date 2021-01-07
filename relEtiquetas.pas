unit relEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ADODB;

type
  TFmFrEtiquetas = class(TForm)
    RLReport1: TRLReport;
    sp_listaEtiq: TADOStoredProc;
    DsEtiq: TDataSource;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText4: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    sp_listaEtiqContrat: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrEtiquetas: TFmFrEtiquetas;

implementation

uses udm;

{$R *.dfm}

end.
