{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Serviços                              }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaCobertura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormPesquisaCobertura = class(TForm)
    DBGridPesquisaCobertura: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorCobertura: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarCobertura: TEdit;
    QueryCobertura: TQuery;
    DataSourceCobertura: TDataSource;
    Query50: TQuery;
    DataSource50: TDataSource;
    BitBtnSair: TBitBtn;
    Query50Descricao: TStringField;
    Query50CodigoTabela: TIntegerField;
    QueryCoberturaCodigoTabela: TIntegerField;
    QueryCoberturaDescricao: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure EditLocalizarCoberturaExit(Sender: TObject);
    procedure EditLocalizarCoberturaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPesquisaCoberturaExit(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaCobertura: TFormPesquisaCobertura;
  Campo: String[5];

implementation

{$R *.DFM}

procedure TFormPesquisaCobertura.FormActivate(Sender: TObject);
begin
     EditLocalizarCobertura.Text := '';
//     EditLocalizarCoberturaChange(EditLocalizarDentistas);
     EditLocalizarCobertura.SetFocus;
end;

procedure TFormPesquisaCobertura.EditLocalizarCoberturaExit(
  Sender: TObject);
begin
     with Query50 do
        begin
          SQL[0] := 'select top 50 Descricao,CodigoTabela from TabelaCobertura';
          SQL[1] := 'where Descricao >= ''' + EditLocalizarCobertura.Text + '''';
          SQL[2] := 'order by Descricao';
          Open;
          Last;
          QueryCobertura.SQL[1] := 'where Descricao >= ''' + EditLocalizarCobertura.Text + ''' and Descricao <= ''' + Query50.Fields[0].asString + '''';
          QueryCobertura.SQL[2] := 'order by Descricao';
          Close;
        end;
     QueryCobertura.Open;
     DBGridPesquisaCobertura.SetFocus;
end;

procedure TFormPesquisaCobertura.EditLocalizarCoberturaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaCobertura.DBGridPesquisaCoberturaExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

procedure TFormPesquisaCobertura.BitBtnSairClick(Sender: TObject);
begin
   Close;
end;

end.
