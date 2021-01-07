unit PesqGrupoContrat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  TFmPesqGrupoContrat = class(TFmPadrao)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqGrupoContrat: TFmPesqGrupoContrat;

implementation

{$R *.DFM}

procedure TFmPesqGrupoContrat.Button1Click(Sender: TObject);
begin
  inherited;
   Query1.Close;
   Query1.Sql[1] := '''' + Edit1.Text + '%''';
   Query1.Open;
end;

procedure TFmPesqGrupoContrat.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   Close;
end;

end.
