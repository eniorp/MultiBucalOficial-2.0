{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Planos                                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaCentroCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormPesquisaCentroCusto = class(TForm)
    DBGridPesquisaCentroCustos: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorPlanos: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarCentroCusto: TEdit;
    QueryCentroCusto: TQuery;
    DataSourceCentroCusto: TDataSource;
    BitBtnSair: TBitBtn;
    QueryCentroCustoId_Conta: TIntegerField;
    QueryCentroCustoConta: TStringField;
    QueryCentroCustoDescricao: TStringField;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditLocalizarCentroCustoExit(Sender: TObject);
    procedure EditLocalizarCentroCustoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBGridPesquisaCentroCustosExit(Sender: TObject);
    procedure DBGridPesquisaCentroCustosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaCentroCusto: TFormPesquisaCentroCusto;

implementation

{$R *.DFM}

procedure TFormPesquisaCentroCusto.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaCentroCusto.FormActivate(Sender: TObject);
begin
     EditLocalizarCentroCusto.Text := '';
     EditLocalizarCentroCusto.SetFocus;
end;

procedure TFormPesquisaCentroCusto.EditLocalizarCentroCustoExit(
  Sender: TObject);
begin
     with QueryCentroCusto do
        begin
          close;
          Parambyname('Descricao').asString := EditLocalizarCentroCusto.Text;
          Open;
          first;
        end;
     DBGridPesquisaCentroCustos.SetFocus;
end;

procedure TFormPesquisaCentroCusto.EditLocalizarCentroCustoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormPesquisaCentroCusto.DBGridPesquisaCentroCustosExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

procedure TFormPesquisaCentroCusto.DBGridPesquisaCentroCustosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaCentroCusto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     FormPesquisaCentroCusto.ModalResult := mrOK;
end;

end.
