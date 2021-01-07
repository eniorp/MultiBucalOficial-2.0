unit CadGrupoFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls;

type
  TFmCadGrupoFunc = class(TFmPadrao)
    ADOQueryGrupo: TADOQuery;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure ADOQueryGrupoBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadGrupoFunc: TFmCadGrupoFunc;

implementation

uses udm, PermGrupo;

{$R *.dfm}

procedure TFmCadGrupoFunc.FormShow(Sender: TObject);
begin
  inherited;
  AdoQueryGrupo.Open;
end;

procedure TFmCadGrupoFunc.ADOQueryGrupoBeforePost(DataSet: TDataSet);
begin
  inherited;
   if AdoQueryGrupo.FieldByName('cd_grupo').IsNull then
      AdoQueryGrupo.FieldByName('cd_grupo').AsString := dm.execmd('select isnull(max(cd_grupo),0) + 1 m from grupo_funcionario','m');
end;

procedure TFmCadGrupoFunc.Button1Click(Sender: TObject);
begin
  inherited;
   FmPermGrupo := TFmPermGrupo.create(self);
   FmPermGrupo.Edit1.Text := ADOQueryGrupo.FieldbyName('ds_grupo').AsString;
   FmPermGrupo.AdoQueryPermissoes.sql[3] := ADOQueryGrupo.FieldbyName('cd_grupo').AsString;
   FmPermGrupo.AdoQueryPermissoes.Open;
   FmPermGrupo.CdGrupo := ADOQueryGrupo.FieldbyName('cd_grupo').AsString;
   FmPermGrupo.ADOQueryPermissaoGrupo.SQL[1] := ADOQueryGrupo.FieldbyName('cd_grupo').AsString;
   FmPermGrupo.ADOQueryPermissaoGrupo.open;

   FmPermGrupo.ShowModal;
   FmPermGrupo.free;
end;

procedure TFmCadGrupoFunc.Button2Click(Sender: TObject);
var UsuGrupo : string;
begin
  inherited;
  UsuGrupo := '';
  dm.execmd('select apelido from operador where dtexclusao is null and cd_grupo = ' + ADOQueryGrupo.FieldByName('cd_grupo').AsString + ' order by apelido','apelido');
  while not dm.QueryGlobal.Eof do
  begin
     UsuGrupo := UsuGrupo + dm.QueryGlobal.FieldByName('apelido').AsString + #13;
     dm.QueryGlobal.next;
  end;
  showMessage(Usugrupo);
  dm.QueryGlobal.close;
end;

end.
