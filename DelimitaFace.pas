unit DelimitaFace;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  DBCtrls;

type
  TFmDelimitaFace = class(TFmPadrao)
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    QueryFace: TQuery;
    DsFace: TDataSource;
    Query1cd_servico: TIntegerField;
    Query1cd_face: TStringField;
    Query1ds_face: TStringField;
    DBNavigator1: TDBNavigator;
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Query1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmDelimitaFace: TFmDelimitaFace;

implementation

uses Servicos;

{$R *.DFM}

procedure TFmDelimitaFace.Query1NewRecord(DataSet: TDataSet);
begin
  inherited;
   Query1cd_servico.AsInteger := FormServicos.QueryServicosCodigo.AsInteger;
end;

procedure TFmDelimitaFace.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   key := upcase(key);
end;

procedure TFmDelimitaFace.Query1AfterPost(DataSet: TDataSet);
begin
  inherited;
   Query1.close;
   Query1.Open;
   Query1.last;
end;

end.
