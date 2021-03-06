{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Vendedor                              }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaVendedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormPesquisaVendedor = class(TForm)
    DBGridPesquisaVendedores: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorVendedores: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarVendedores: TEdit;
    QueryVendedores: TQuery;
    DataSourceVendedores: TDataSource;
    Query50: TQuery;
    BitBtnSair: TBitBtn;
    Query50Nome: TStringField;
    Query50Codigo: TIntegerField;
    QueryVendedoresNome: TStringField;
    QueryVendedoresCodigo: TIntegerField;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditLocalizarVendedoresExit(Sender: TObject);
    procedure EditLocalizarVendedoresKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBGridPesquisaVendedoresExit(Sender: TObject);
    procedure DBGridPesquisaVendedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaVendedor: TFormPesquisaVendedor;

implementation

{$R *.DFM}

procedure TFormPesquisaVendedor.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaVendedor.FormActivate(Sender: TObject);
begin
     EditLocalizarVendedores.Text := '';
//     EditLocalizarUsuariosChange(EditLocalizarUsuarios);
     EditLocalizarVendedores.SetFocus;
end;

procedure TFormPesquisaVendedor.EditLocalizarVendedoresExit(
  Sender: TObject);
begin
     QueryVendedores.Close;
     with Query50 do
        begin
          SQL[0] := 'select top 50 Nome,Codigo from Vendedor';
          SQL[1] := 'where data_exclusao is null and Nome >= ''' + EditLocalizarVendedores.Text + '''';
          SQL[2] := 'order by Nome';
          Open;
          Last;
          QueryVendedores.SQL[1] := 'where data_exclusao is null and Nome >= ''' + EditLocalizarVendedores.Text + ''' and Nome <= ''' + Query50.Fields[0].asString + '''';
          QueryVendedores.SQL[2] := 'order by Nome';
          Close;
        end;
     QueryVendedores.Open;
     DBGridPesquisaVendedores.SetFocus;
end;

procedure TFormPesquisaVendedor.EditLocalizarVendedoresKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormPesquisaVendedor.DBGridPesquisaVendedoresExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

procedure TFormPesquisaVendedor.DBGridPesquisaVendedoresKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     ModalResult := mrOK;
end;

end.


