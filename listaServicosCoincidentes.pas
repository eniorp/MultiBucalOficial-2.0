unit listaServicosCoincidentes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmServCoincidentes = class(TFmPadrao)
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmServCoincidentes: TFmServCoincidentes;

implementation

uses udm;

{$R *.dfm}

end.
