unit DetalheFat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons;

type
  TFmDetalheFat = class(TFmPadrao)
    ADOQueryPeriodoFat: TADOQuery;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmDetalheFat: TFmDetalheFat;

implementation

{$R *.dfm}

end.
