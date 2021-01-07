unit Cadcidades;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  DBCtrls, ADODB;

type
  TFmCadCidade = class(TFmPadrao)
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Query1cd_cidade: TSmallintField;
    Query1ds_cidade: TStringField;
    Query1uf: TStringField;
    Query1cd_ibge: TIntegerField;
    Query1cd_regiao: TSmallintField;
    DataSource2: TDataSource;
    Query2: TQuery;
    Query1Regiao: TStringField;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure Button1Click(Sender: TObject);
    procedure Query1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadCidade: TFmCadCidade;

implementation

uses CadRegiao;

{$R *.DFM}

procedure TFmCadCidade.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   key := upcase(key);
end;

procedure TFmCadCidade.FormShow(Sender: TObject);
begin
  inherited;
   Query1.Close;
   Query1.Open;
   Query2.Close;
   Query2.Open;
end;

procedure TFmCadCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
   Query1.Close;
end;


procedure TFmCadCidade.Button1Click(Sender: TObject);
begin
  inherited;
   FmCadRegiao := TFmCadRegiao.create(self);
   FmCadRegiao.ShowModal;
   FmCadRegiao.free;
end;

procedure TFmCadCidade.Query1BeforePost(DataSet: TDataSet);
begin
  inherited;
   if Query1cd_regiao.IsNull then
   begin
      ShowMessage('Região deve ser informada !');
      abort;
   end;
end;

end.
