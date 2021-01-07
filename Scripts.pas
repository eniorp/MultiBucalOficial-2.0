unit Scripts;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  DBCtrls,enio;

type
  TFmScripts = class(TFmPadrao)
    DBMemo1: TDBMemo;
    Panel3: TPanel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Query1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure Button4Click(Sender: TObject);
    procedure Query1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmScripts: TFmScripts;

implementation

uses ExecutaSql, udm,Senha ;

{$R *.DFM}

procedure TFmScripts.Button1Click(Sender: TObject);
begin
  inherited;
   Query1.close;
   Query1.RequestLive := False;
   Query1.sql[1] := ' where ds_script like ''%' + Edit1.text + '%''';
   Query1.Open;
end;

procedure TFmScripts.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if FmScripts.tag = 1 then
   begin
      FmExecutaSql.Memo1.clear;
      FmExecutaSql.Memo1.lines.Add(DBMemo1.text);
      FmExecutaSql.Button1Click(Sender);
      Close;
   end;
end;

procedure TFmScripts.Button2Click(Sender: TObject);
Var V_cd_script : String[10];
begin
  inherited;
   V_cd_script := Query1.FieldByname('cd_script').asString;
   if V_cd_script = '' then
      V_cd_script := '0';
   Query1.close;
   Query1.requestLive := true;
   Query1.sql[1] := ' where cd_script = ' + v_cd_script;
   Query1.Open;
   if (Sender as TButton).tag = 0 then
   begin
      Query1.Insert;
      Query1.FieldByName('cd_script').asString := dm.ExecutaComando('select isnull(max(cd_script),0) + 1 maior from script','maior');
      Query1.FieldByName('dtCriacao').asString := dm.GetDataSrv;
      Query1.FieldByName('ds_script').FocusControl;
   end
   else
   begin
      Query1.Edit;
      Query1.FieldByName('script').FocusControl;
   end

end;

procedure TFmScripts.Query1BeforePost(DataSet: TDataSet);
begin
  inherited;
   ValidaCampo(Query1,'cd_script','Código do Script',true);
   ValidaCampo(Query1,'ds_script','Descrição do script',true);
   ValidaCampo(Query1,'dtcriacao','Data de criação do script',true);
   ValidaCampo(Query1,'script'   ,'Comando(Script)',true);
end;

procedure TFmScripts.FormShow(Sender: TObject);
begin
  inherited;
  DbGrid1.ShowHint := (tag <> 0);
  if tag = 2 then
  begin
     Query1.close;
     Query1.open;
     Button2Click(Button2);
     DBMemo1.lines.add(FmExecutaSql.Memo1.Text);
  end
end;

procedure TFmScripts.Query1AfterPost(DataSet: TDataSet);
begin
  inherited;
   Query1.close;
   Query1.Open;
end;

procedure TFmScripts.Button4Click(Sender: TObject);
begin
  inherited;
  if Button4.Caption = '&Criar Menu' then
  begin
     If application.MessageBox(Pchar('Deseja criar um menu Dinâmico para o Script "' + Query1.FieldByname('ds_script').AsString + '" ?'),'Alerta',
       MB_OKCANCEL + MB_DEFBUTTON2 ) = MrCancel then
       Exit;
     Dm.ExecutaComando('insert into menu_dinamico (nm_menu,cd_usuario,cd_script) values (''' + Query1.FieldByname('ds_script').AsString + ''',' + IntToStr(Senha.Codigo_Operador) + ',' + Query1.FieldByname('cd_script').AsString + ')');
     Button4 .Caption := '&Deletar Menu';
     ShowMessage('Menu dinâmico criado com sucesso!');
  end
  else
  begin
     If application.MessageBox(Pchar('Deseja excluir o menu Dinâmico do Script "' + Query1.FieldByname('ds_script').AsString + '" ?'),'Alerta',
       MB_OKCANCEL + MB_DEFBUTTON2 ) = MrCancel then
       Exit;
     Dm.ExecutaComando('delete menu_dinamico where cd_script = ' + Query1.FieldByname('cd_script').AsString + ' and cd_usuario = ' + IntToStr(Senha.Codigo_Operador));
     Button4.Caption := '&Criar Menu';
     ShowMessage('Menu dinâmico excluído com sucesso!');
  end;
end;

procedure TFmScripts.Query1AfterScroll(DataSet: TDataSet);
begin
  inherited;
   if dm.ExecutaComando ('select count(*) q from menu_dinamico where cd_script = ''' + Query1.fieldByname('cd_script').AsString + ''' and cd_usuario = ' + IntToStr(Senha.Codigo_Operador),'q') <> '0' then
   begin
      Button4.Caption := '&Deletar Menu';
      Button4.Hint := 'Clique aqui para escluir o atalho para este script no  Menu Dinâmico';
   end
   else
   begin
      Button4.Caption := '&Criar Menu';
      Button4.Hint := 'Clique aqui para criar um atalho para este script no  Menu Dinâmico';
   end;
end;

end.
