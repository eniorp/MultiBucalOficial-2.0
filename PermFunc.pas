unit PermFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls,
  Buttons, ADODB ;

type
  TfmPermFunc = class(TFmPadrao)
    DBGrid2: TDBGrid;
    Panel2: TPanel;
    BitBtnMandaUm: TBitBtn;
    BitBtnMandaTodos: TBitBtn;
    BitBtnRetornaUm: TBitBtn;
    BitBtnRetornaTodos: TBitBtn;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ADOQueryPermissoes: TADOQuery;
    DsPermissoes: TDataSource;
    ADOQueryPermissaoFunc: TADOQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure BitBtnMandaUmClick(Sender: TObject);
    procedure BitBtnMandaTodosClick(Sender: TObject);
    procedure BitBtnRetornaUmClick(Sender: TObject);
    procedure BitBtnRetornaTodosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
     Cdfunc : String[10];
  end;

var
  fmPermFunc: TfmPermFunc;

implementation

uses udm, CadGrupoFunc;

{$R *.dfm}

procedure TfmPermFunc.BitBtnMandaUmClick(Sender: TObject);
var VAux : Integer;
begin
  inherited;
    if not AdoQueryPermissoes.FieldByName('cd_menu').isnull and not adoQueryPermissaoFunc.Locate('cd_menu',AdoQueryPermissoes.FieldByName('cd_menu').AsInteger,[]) then
    begin
      dm.execmd('insert into permissao_funcionario values ( ' + Cdfunc + ',' + AdoQueryPermissoes.FieldByName('cd_menu').AsString + ')');
      VAux := ADOQueryPermissoes.FieldByName('cd_menu').AsInteger;;
      ADOQueryPermissaoFunc.Close;
      ADOQueryPermissaoFunc.Open;
      ADOQueryPermissaofunc.locate('cd_menu',VAux,[]);
      ADOQueryPermissoes.next;
      VAux := ADOQueryPermissoes.FieldByName('cd_menu').AsInteger;
      ADOQueryPermissoes.Close;
      ADOQueryPermissoes.open;
      ADOQueryPermissoes.locate('cd_menu',VAux,[]);
    end;

end;

procedure TfmPermFunc.BitBtnMandaTodosClick(Sender: TObject);
begin
  inherited;
  dm.execmd('insert into permissao_funcionario select ' + cdfunc + ', cd_menu from menu_disponivel m ' +
  ' where not exists (select * from permissao_funcionario f where f.cd_menu = m.cd_menu and f.cd_funcionario = ' + CdFunc + ')');
  ADOQueryPermissaoFunc.Close;
  ADOQueryPermissaoFunc.open;
  ADOQueryPermissoes.Close;
  ADOQueryPermissoes.open;

end;

procedure TfmPermFunc.BitBtnRetornaUmClick(Sender: TObject);
begin
  inherited;
   if not ADOQueryPermissaoFunc.FieldByName('cd_funcionario').isnull then
   begin
     dm.execmd('delete from permissao_funcionario where cd_funcionario = ' + CdFunc  + ' and cd_menu = ' + ADOQueryPermissaoFunc.FieldByName('cd_menu').AsString);
     ADOQueryPermissaoFunc.Close;
     ADOQueryPermissaoFunc.open;
     ADOQueryPermissoes.Close;
     ADOQueryPermissoes.open;
   end;

end;

procedure TfmPermFunc.BitBtnRetornaTodosClick(Sender: TObject);
begin
  inherited;
  dm.execmd('delete from permissao_funcionario where cd_funcionario = ' + CdFunc);
  ADOQueryPermissaoFunc.Close;
  ADOQueryPermissaoFunc.open;
  ADOQueryPermissoes.Close;
  ADOQueryPermissoes.open;

end;

procedure TfmPermFunc.FormShow(Sender: TObject);
begin
  inherited;
   AdoQueryPermissoes.close;
   AdoQueryPermissoes.open;
   ADOQueryPermissaoFunc.close;
   ADOQueryPermissaoFunc.open;
end;

procedure TfmPermFunc.Button1Click(Sender: TObject);
var VCdUsu : string;
begin
  inherited;
  if inputQuery('Informe o código do funcionário que deseja copiar as permissões','Informe o código do funcionário que deseja copiar as permissões',VCdUsu) then
     if Application.MessageBox(Pchar('Deseja copiar as permissões do operador "' + dm.execmd('select apelido from operador where codigo = ' + VCdUsu ,'apelido') + '" ?'),'Confirmação',MB_YesNo + MB_DEFBUTTON2) = IdYes then
     begin

        dm.execmd('insert into permissao_funcionario select ' + cdFunc + ',cd_menu from permissao_funcionario p ' +
               'where p.cd_funcionario = ' + VCdUsu + ' and not exists (select * from permissao_funcionario p1 ' +
               'where p1.cd_funcionario = ' + Cdfunc + ' and p.cd_menu = p1.cd_menu)');
        AdoQueryPermissoes.close;
        AdoQueryPermissoes.open;
        ADOQueryPermissaoFunc.close;
        ADOQueryPermissaoFunc.open;
     end;

end;

procedure TfmPermFunc.Button2Click(Sender: TObject);
begin
  inherited;
   FmCadGrupoFunc := TFmCadGrupoFunc.create(self);
   FmCadGrupoFunc.ShowModal;
   FmCadGrupoFunc.free;
end;

end.
