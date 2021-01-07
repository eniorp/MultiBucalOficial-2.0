unit PesqPacote;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  TFmPesqPacote = class(TFmPadrao)
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqPacote: TFmPesqPacote;

implementation

{$R *.DFM}

procedure TFmPesqPacote.FormShow(Sender: TObject);
begin
  inherited;
   Query1.close;
   Query1.Open;
end;

procedure TFmPesqPacote.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   Tag := 1;
   Close;
end;

end.
