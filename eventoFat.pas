unit eventoFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons;

type
  TFmEventosFat = class(TFmPadrao)
    AdoQueryevento_fat: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEventosFat: TFmEventosFat;

implementation

{$R *.dfm}
//parei aqui
end.
