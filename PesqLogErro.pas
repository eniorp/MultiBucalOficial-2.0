unit PesqLogErro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, DBCtrls, Grids, DBGrids;

type
  TFmPesqLogErro = class(TForm)
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    Query1: TQuery;
    DataSource1: TDataSource;
    Memo1: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqLogErro: TFmPesqLogErro;

implementation

{$R *.DFM}

procedure TFmPesqLogErro.Button1Click(Sender: TObject);
begin
   Query1.close;
   Query1.sql.Clear;
   Query1.sql.Add(memo1.text);
   Query1.open;
end;

procedure TFmPesqLogErro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := CaFree;
end;

end.
