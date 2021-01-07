unit PesqlogAltUsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmPesqLogAltUsu = class(TFmPadrao)
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqLogAltUsu: TFmPesqLogAltUsu;

implementation

{$R *.dfm}

end.
