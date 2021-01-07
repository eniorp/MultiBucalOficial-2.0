{ Programa ........: Cobertura x Contratante                                   }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }
{ Ultima Alteração.: 11/04/2002                                                }

unit CoberturaProcedimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, ExtCtrls, Db, DBTables,Variants;

type
  TFormCoberturaProcedimento = class(TForm)
    Panel1: TPanel;
    Panel20: TPanel;
    Label30: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEditCodigoProcedimento: TDBEdit;
    DBEditDescricaoProcedimento: TDBEdit;
    DBEditCodigoCobertura: TDBEdit;
    DBEditDescricaoCobertura: TDBEdit;
    Panel21: TPanel;
    DBGridCoberturaProcedimento: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtnSair: TBitBtn;
    QueryTabelaCobertura: TQuery;
    DataSourceTabelaCobertura: TDataSource;
    QueryCoberturaProcedimento: TQuery;
    DataSourceCoberturaProcedimento: TDataSource;
    QueryProcedimento: TQuery;
    DataSourceProcedimento: TDataSource;
    QueryTabelaCoberturaCodigoTabela: TIntegerField;
    QueryTabelaCoberturaDescricao: TStringField;
    QueryCoberturaProcedimentoCodigo_Tabela: TIntegerField;
    QueryCoberturaProcedimentoCodigo_procedimento: TIntegerField;
    QueryCoberturaProcedimentoDias: TIntegerField;
    QueryCoberturaProcedimentoPercentual: TFloatField;
    QueryProcedimentoCodigo: TIntegerField;
    QueryProcedimentoDescricao: TStringField;
    QueryProcedimentoCategoria: TIntegerField;
    QueryCoberturaProcedimentoDescricao_Cobertura: TStringField;
    QueryCoberturaProcedimentoDescricao_Procedimento: TStringField;
    QueryCoberturaProcedimentoCategoria_Procedimento: TStringField;
    Label1: TLabel;
    DBEditCategoria: TDBEdit;
    Label2: TLabel;
    DBEditPercentual: TDBEdit;
    DBEditDias: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    BitBtnPesquisarCobertura: TBitBtn;
    BitBtnPesquisaServico: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditCodigoProcedimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDescricaoProcedimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDescricaoCoberturaKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure QueryCoberturaProcedimentoAfterInsert(DataSet: TDataSet);
    procedure QueryCoberturaProcedimentoAfterPost(DataSet: TDataSet);
    procedure DBEditCategoriaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDiasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditPercentualKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPesquisarCoberturaClick(Sender: TObject);
    procedure BitBtnPesquisaServicoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCoberturaProcedimento: TFormCoberturaProcedimento;

implementation

uses PesquisaCobertura, PesquisaServicos;

{$R *.DFM}

procedure TFormCoberturaProcedimento.FormCreate(Sender: TObject);
begin
     Top := 90;
     Left := 82;

     QueryProcedimento.Open;
     QueryTabelaCobertura.Open;
     QueryCoberturaProcedimento.Open;
end;

procedure TFormCoberturaProcedimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryProcedimento.Close;
     QueryTabelaCobertura.Close;
     QueryCoberturaProcedimento.Close;

     action := cafree;
end;

procedure TFormCoberturaProcedimento.DBEditCodigoProcedimentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaProcedimento.DBEditDescricaoProcedimentoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaProcedimento.DBEditDescricaoCoberturaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaProcedimento.QueryCoberturaProcedimentoAfterInsert(
  DataSet: TDataSet);
begin
     DBEditCodigoProcedimento.SetFocus;
end;

procedure TFormCoberturaProcedimento.QueryCoberturaProcedimentoAfterPost(
  DataSet: TDataSet);
  var VTab,Servico,Dias : Integer;
begin

   VTab    := QueryCoberturaProcedimentoCodigo_Tabela.AsInteger;
   Servico := QueryCoberturaProcedimentoCodigo_procedimento.AsInteger;
   Dias    := QueryCoberturaProcedimentoDias.AsInteger;

   with QueryCoberturaProcedimento do
   begin
      Close;
      Open;
      Locate('codigo_tabela; codigo_procedimento; dias', VarArrayOf([Vtab,Servico,dias]), [loCaseInsensitive]);
   end;

end;

procedure TFormCoberturaProcedimento.DBEditCategoriaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaProcedimento.DBEditDiasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaProcedimento.DBEditPercentualKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaProcedimento.BitBtnPesquisarCoberturaClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaCobertura, FormPesquisaCobertura);
     FormPesquisaCobertura.ShowModal;

     if QueryCoberturaProcedimento.state in [dsEdit, dsInsert] then
        begin
          QueryCoberturaProcedimentoCodigo_Tabela.asInteger := PesquisaCobertura.FormPesquisaCobertura.QueryCoberturaCodigoTabela.asInteger;
          DBEditDias.SetFocus;
        end;
     FormPesquisaCobertura.QueryCobertura.Close;
     FormPesquisaCobertura.Query50.close;
     FormPesquisaCobertura.Free;
end;

procedure TFormCoberturaProcedimento.BitBtnPesquisaServicoClick(
  Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     FormPesquisaServicos.ShowModal;

     if QueryCoberturaProcedimento.state in [dsEdit, dsInsert] then
        begin
          QueryCoberturaProcedimentoCodigo_Procedimento.asInteger := PesquisaServicos.FormPesquisaServicos.QueryServicosCodigo.asInteger;
          DBEditCodigoCobertura.SetFocus;
        end;
     FormPesquisaServicos.QueryServicos.Close;
     FormPesquisaServicos.Query50.Close;        
     FormPesquisaServicos.Free;
end;

end.
