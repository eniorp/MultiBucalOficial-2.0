unit PesqLogContrat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons;

type
  TFmPesqLogContratante = class(TFmPadrao)
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqLogContratante: TFmPesqLogContratante;

implementation

uses udm;

{$R *.dfm}

end.
