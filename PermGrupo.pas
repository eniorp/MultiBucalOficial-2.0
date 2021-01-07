unit PermGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmPermGrupo = class(TFmPadrao)
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    ADOQueryPermissoes: TADOQuery;
    ADOQueryPermissaoGrupo: TADOQuery;
    DsPermissoes: TDataSource;
    BitBtnRetornaUm: TBitBtn;
    BitBtnMandaUm: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    BitBtnMandaTodos: TBitBtn;
    BitBtnRetornaTodos: TBitBtn;
    procedure BitBtnMandaUmClick(Sender: TObject);
    procedure BitBtnRetornaUmClick(Sender: TObject);
    procedure BitBtnMandaTodosClick(Sender: TObject);
    procedure BitBtnRetornaTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    CdGrupo : string[5];
  end;

var
  FmPermGrupo: TFmPermGrupo;

implementation

uses udm;

{$R *.dfm}

procedure TFmPermGrupo.BitBtnMandaUmClick(Sender: TObject);
var VAux : integer;
begin
  inherited;
    if not AdoQueryPermissoes.FieldByName('cd_menu').isnull and not adoQueryPermissaoGrupo.Locate('cd_menu',AdoQueryPermissoes.FieldByName('cd_menu').AsInteger,[]) then
    begin
      dm.execmd('insert into permissao_grupo values ( ' + CdGrupo + ',' + AdoQueryPermissoes.FieldByName('cd_menu').AsString + ')');
      VAux := ADOQueryPermissoes.FieldByName('cd_menu').AsInteger;;
      ADOQueryPermissaoGrupo.Close;
      ADOQueryPermissaoGrupo.Open;
      ADOQueryPermissaoGrupo.locate('cd_menu',VAux,[]);
      ADOQueryPermissoes.next;
      VAux := ADOQueryPermissoes.FieldByName('cd_menu').AsInteger;
      ADOQueryPermissoes.Close;
      ADOQueryPermissoes.open;
      ADOQueryPermissoes.locate('cd_menu',VAux,[]);
    end;
end;

procedure TFmPermGrupo.BitBtnRetornaUmClick(Sender: TObject);
begin
  inherited;
   if not ADOQueryPermissaoGrupo.FieldByName('cd_grupo').isnull then
   begin
     dm.execmd('delete from permissao_grupo where cd_grupo = ' + ADOQueryPermissaoGrupo.FieldByName('cd_grupo').AsString  + ' and cd_menu = ' + ADOQueryPermissaoGrupo.FieldByName('cd_menu').AsString);
     ADOQueryPermissaoGrupo.Close;
     ADOQueryPermissaoGrupo.open;
     ADOQueryPermissoes.Close;
     ADOQueryPermissoes.open;
   end;
end;

procedure TFmPermGrupo.BitBtnMandaTodosClick(Sender: TObject);
begin
  inherited;
  dm.execmd('insert into permissao_grupo select ' + CdGrupo + ', cd_menu from menu_disponivel m ' +
  ' where not exists (select * from permissao_grupo p where p.cd_menu = m.cd_menu and p.cd_grupo = ' + CdGrupo + ')');
  ADOQueryPermissaoGrupo.Close;
  ADOQueryPermissaoGrupo.open;
  ADOQueryPermissoes.Close;
  ADOQueryPermissoes.open;

end;

procedure TFmPermGrupo.BitBtnRetornaTodosClick(Sender: TObject);
begin
  inherited;
  dm.execmd('delete from permissao_grupo where cd_grupo = ' + CdGrupo);
  ADOQueryPermissaoGrupo.Close;
  ADOQueryPermissaoGrupo.open;
  ADOQueryPermissoes.Close;
  ADOQueryPermissoes.open;
  
end;

end.
