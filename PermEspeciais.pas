unit PermEspeciais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  DBCtrls;

type
  TFmPermEspeciais = class(TFmPadrao)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPermEspeciais: TFmPermEspeciais;

implementation

uses udm;

{$R *.DFM}

procedure TFmPermEspeciais.FormShow(Sender: TObject);
begin
  inherited;
   query1.close;
   query1.open;
end;

procedure TFmPermEspeciais.Query1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  label1.caption := dm.execmd('select nome from operador where codigo = ''' + Query1.fieldByName('codigo_operador').AsString + '''','nome'); 
end;

end.
