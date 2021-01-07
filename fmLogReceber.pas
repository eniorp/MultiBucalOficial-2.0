unit fmLogReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmLogAltReceber = class(TFmPadrao)
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmLogAltReceber: TFmLogAltReceber;

implementation

uses udm;

{$R *.dfm}

end.
