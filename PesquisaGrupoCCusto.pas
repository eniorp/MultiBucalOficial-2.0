{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Planos                                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaGrupoCCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormPesquisaGrupoCCusto = class(TForm)
    DBGridPesquisaGrupoCCustos: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorPlanos: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarGrupoCCusto: TEdit;
    QueryGrupoCCusto: TQuery;
    DataSourceCentroCusto: TDataSource;
    BitBtnSair: TBitBtn;
    QueryGrupoCCustoid_Grupo: TIntegerField;
    QueryGrupoCCustoCodigo: TStringField;
    QueryGrupoCCustoDescricao: TStringField;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditLocalizarGrupoCCustoExit(Sender: TObject);
    procedure EditLocalizarGrupoCCustoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBGridPesquisaGrupoCCustosExit(Sender: TObject);
    procedure DBGridPesquisaGrupoCCustosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaGrupoCCusto: TFormPesquisaGrupoCCusto;

implementation


{$R *.DFM}

procedure TFormPesquisaGrupoCCusto.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaGrupoCCusto.FormActivate(Sender: TObject);
begin
     EditLocalizarGrupoCCusto.Text := '';
     EditLocalizarGrupoCCusto.SetFocus;
end;

procedure TFormPesquisaGrupoCCusto.EditLocalizarGrupoCCustoExit(
  Sender: TObject);
begin
     with QueryGrupoCCusto do
        begin
          close;
          Parambyname('Descricao').asString := EditLocalizarGrupoCCusto.Text;
          Open;
          first;
        end;
     DBGridPesquisaGrupoCCustos.SetFocus;
end;

procedure TFormPesquisaGrupoCCusto.EditLocalizarGrupoCCustoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormPesquisaGrupoCCusto.DBGridPesquisaGrupoCCustosExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

procedure TFormPesquisaGrupoCCusto.DBGridPesquisaGrupoCCustosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaGrupoCCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FormPesquisaGrupoCCusto.ModalResult := mrOK;
end;

end.

