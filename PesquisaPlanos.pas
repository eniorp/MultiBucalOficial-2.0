{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Planos                                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaPlanos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormPesquisaPlanos = class(TForm)
    DBGridPesquisaPlanos: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorPlanos: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarPlanos: TEdit;
    QueryPlanos: TQuery;
    DataSourcePlanos: TDataSource;
    Query50: TQuery;
    BitBtnSair: TBitBtn;
    Query50Descricao: TStringField;
    Query50Codigo: TIntegerField;
    QueryPlanosDescricao: TStringField;
    QueryPlanosCodigo: TIntegerField;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditLocalizarPlanosExit(Sender: TObject);
    procedure EditLocalizarPlanosKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBGridPesquisaPlanosExit(Sender: TObject);
    procedure DBGridPesquisaPlanosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaPlanos: TFormPesquisaPlanos;

implementation

{$R *.DFM}

procedure TFormPesquisaPlanos.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaPlanos.FormActivate(Sender: TObject);
begin
     EditLocalizarPlanos.Text := '';
//     EditLocalizarUsuariosChange(EditLocalizarUsuarios);
     EditLocalizarPlanos.SetFocus;
end;

procedure TFormPesquisaPlanos.EditLocalizarPlanosExit(
  Sender: TObject);
begin
     QueryPlanos.Close;
     with Query50 do
        begin
          SQL[0] := 'select top 50 Descricao,Codigo   from Plano';
          SQL[1] := 'where ativo = 1 and Descricao >= ''' + EditLocalizarPlanos.Text + '''';
          SQL[2] := 'order by Descricao';
          Open;
          Last;
          QueryPlanos.SQL[1] := 'where ativo = 1 and Descricao >= ''' + EditLocalizarPlanos.Text + ''' and Descricao <= ''' + Query50.Fields[0].asString + '''';
          QueryPlanos.SQL[2] := 'order by Descricao';
          Close;
        end;
     QueryPlanos.Open;
     DBGridPesquisaPlanos.SetFocus;
end;

procedure TFormPesquisaPlanos.EditLocalizarPlanosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormPesquisaPlanos.DBGridPesquisaPlanosExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

procedure TFormPesquisaPlanos.DBGridPesquisaPlanosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaPlanos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FormPesquisaPlanos.ModalResult := mrOK;
end;

end.
