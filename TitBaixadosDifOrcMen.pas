unit TitBaixadosDifOrcMen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons;

type
  TFmTitBaixadosDifOrcMen = class(TFmPadrao)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmTitBaixadosDifOrcMen: TFmTitBaixadosDifOrcMen;

implementation

uses tacio;

{$R *.dfm}

procedure TFmTitBaixadosDifOrcMen.Button1Click(Sender: TObject);
begin
  inherited;

  ToExcel(ADOQueryH,'Titulos');
end;

end.
