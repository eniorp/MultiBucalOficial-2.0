unit parametro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  ComCtrls, DBCtrls;

type
  TFmParametro = class(TForm)
    PanelLeft: TPanel;
    PanelRigth: TPanel;
    PanelCenter: TPanel;
    PanelBotton: TPanel;
    Panel1: TPanel;
    BitBtnSair: TBitBtn;
    PanelTop: TPanel;
    Bevel1: TBevel;
    DsParametro: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QueryParametro: TQuery;
    QueryHistParam: TQuery;
    DsHistParam: TDataSource;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure DBNavigator2BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QueryParametroBeforePost(DataSet: TDataSet);
    procedure QueryParametroNewRecord(DataSet: TDataSet);
    procedure QueryParametroAfterPost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParametro: TFmParametro;

implementation



{$R *.DFM}

procedure TFmParametro.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
   if Button = nbRefresh then
   begin
      QueryHistParam.Close;
      QueryHistParam.Open;
      Abort;
   end;
end;

procedure TFmParametro.DBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
begin
   if Button = nbRefresh then
   begin
      QueryParametro.Close;
      QueryParametro.Open;
      Abort;
   end;
end;

end;

procedure TFmParametro.FormShow(Sender: TObject);
begin
   QueryParametro.Close;
   QueryParametro.Open;
   QueryHistParam.Close;
   QueryHistParam.Open;
   ComboBox1.ItemIndex := 0;
end;

procedure TFmParametro.TabSheet2Show(Sender: TObject);
begin
   QueryHistParam.Close;
   QueryHistParam.Open;
   QueryHistParam.Locate('cd_parametro',QueryParametro.fieldbyName('cd_parametro').AsString,[]);
end;

procedure TFmParametro.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   key := upcase(key);
end;

procedure TFmParametro.QueryParametroBeforePost(DataSet: TDataSet);
begin
  if uppercase(QueryParametro.FieldByName('tipo').AsString) <> 'U' then
  begin
     ShowMessage('Não é permitido alterar este parâmetro(PARÂMETRO DE SISTEMA)');
     Abort;
  end
end;

procedure TFmParametro.QueryParametroNewRecord(DataSet: TDataSet);
begin
   QueryParametro.FieldByName('tipo').AsString := 'U';
end;

procedure TFmParametro.QueryParametroAfterPost(DataSet: TDataSet);
begin
   QueryParametro.Close;
   QueryParametro.Open;
end;

procedure TFmParametro.Button1Click(Sender: TObject);
begin
    QueryParametro.Close;
    QueryParametro.sql[1] := ' and cd_parametro like ''%' + Edit1.Text + '%''';
    QueryParametro.Open;
    if QueryParametro.Bof and QueryParametro.Eof then
    begin
       QueryParametro.Close;
       QueryParametro.sql[1] := ' and ds_parametro like ''%' + Edit1.Text + '%''';
       QueryParametro.Open;
    end;
end;

procedure TFmParametro.ComboBox1Change(Sender: TObject);
begin
   QueryParametro.Close;
   Case ComboBox1.ItemIndex of
       0: QueryParametro.sql[2] := ' order by cd_parametro';
       1: QueryParametro.sql[2] := ' order by ds_parametro';
       2: QueryParametro.sql[2] := ' order by dt_criacao,cd_parametro'
   end;
    QueryParametro.Open;

end;

procedure TFmParametro.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      Button1Click(Sender);
      Edit1.SelectAll;
   end
end;

end.
