unit PesqOperadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, StdCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls, Buttons;

type
  TFmPesqOperadores = class(TFmPadrao)
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqOperadores: TFmPesqOperadores;

implementation

{$R *.DFM}

procedure TFmPesqOperadores.BitBtn1Click(Sender: TObject);
begin
  inherited;
   Query1.Close;
   Query1.sql[1] := '''' + Edit1.Text + '%''';
   Query1.Open;  
end;

procedure TFmPesqOperadores.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  FmPesqOperadores.Tag := 1;
  Close;
end;

end.
