{ Programa ........: Cobertura x Contratante                                   }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }
{ Ultima Alteração.: 11/04/2002                                                }

unit CoberturaContratante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, ExtCtrls, Db, DBTables;

type
  TFormCoberturaContratante = class(TForm)
    Panel1: TPanel;
    Panel20: TPanel;
    Label30: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEditContratante: TDBEdit;
    DBEditNomeContratante: TDBEdit;
    DBEditCodigoCobertura: TDBEdit;
    DBEditDescricaoCobertura: TDBEdit;
    Panel21: TPanel;
    DBGridCoberturaContratante: TDBGrid;
    BitBtnPesquisar: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtnSair: TBitBtn;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryTabelaCoberturaXContratante: TQuery;
    DataSourceTabelaCoberturaXContratante: TDataSource;
    QueryTabelaCobertura: TQuery;
    DataSourceTabelaCobertura: TDataSource;
    DataSourceContratante: TDataSource;
    DBCheckBoxAtiva: TDBCheckBox;
    QueryTabelaCoberturaXContratanteContratante: TIntegerField;
    QueryTabelaCoberturaXContratanteTabela_Cobertura: TIntegerField;
    QueryTabelaCoberturaXContratanteAtiva: TBooleanField;
    QueryTabelaCoberturaXContratanteDescricaoContratante: TStringField;
    QueryTabelaCoberturaXContratanteDescricaoCobertura: TStringField;
    QueryTabelaCoberturaXContratanteAtiva_Aux: TStringField;
    BitBtnPesquisaCobertura: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditContratanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditNomeContratanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDescricaoCoberturaKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure QueryTabelaCoberturaXContratanteAfterPost(DataSet: TDataSet);
    procedure QueryTabelaCoberturaXContratanteAfterInsert(
      DataSet: TDataSet);
    procedure QueryTabelaCoberturaXContratanteCalcFields(
      DataSet: TDataSet);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure BitBtnPesquisaCoberturaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCoberturaContratante: TFormCoberturaContratante;

implementation

uses PesquisaContratante, PesquisaCobertura;

{$R *.DFM}

procedure TFormCoberturaContratante.FormCreate(Sender: TObject);
begin
     Top := 90;
     Left := 82;

     QueryContratante.Open;
     QueryTabelaCobertura.Open;
     QueryTabelaCoberturaXContratante.Open;
end;

procedure TFormCoberturaContratante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryContratante.Close;
     QueryTabelaCobertura.Open;
     QueryTabelaCoberturaXContratante.Open;

     action := cafree;
end;

procedure TFormCoberturaContratante.DBEditContratanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaContratante.DBEditNomeContratanteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaContratante.DBEditDescricaoCoberturaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaContratante.QueryTabelaCoberturaXContratanteAfterPost(
  DataSet: TDataSet);
begin
     with QueryTabelaCoberturaXContratante do
       begin
         Close;
         Open;
       end;
end;

procedure TFormCoberturaContratante.QueryTabelaCoberturaXContratanteAfterInsert(
  DataSet: TDataSet);
begin
     DBEditContratante.SetFocus;
end;

procedure TFormCoberturaContratante.QueryTabelaCoberturaXContratanteCalcFields(
  DataSet: TDataSet);
begin
     if QueryTabelaCoberturaXContratanteAtiva.AsBoolean then
        QueryTabelaCoberturaXContratanteAtiva_Aux.AsString := 'Sim'
     else
        QueryTabelaCoberturaXContratanteAtiva_Aux.AsString := 'Não';
end;

procedure TFormCoberturaContratante.BitBtnPesquisarClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
     FormPesquisaContratante.ShowModal;

     if QueryTabelaCoberturaXContratante.state in [dsEdit, dsInsert] then
        begin
          QueryTabelaCoberturaXContratanteContratante.asInteger := PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asInteger;
          DBEditCodigoCobertura.SetFocus;
        end;
     FormPesquisaContratante.QueryContratante.close;
     FormPesquisaContratante.Free;
end;

procedure TFormCoberturaContratante.BitBtnPesquisaCoberturaClick(
  Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaCobertura, FormPesquisaCobertura);
     FormPesquisaCobertura.ShowModal;

     if QueryTabelaCoberturaXContratante.state in [dsEdit, dsInsert] then
        begin
          QueryTabelaCoberturaXContratanteTabela_Cobertura.asInteger := PesquisaCobertura.FormPesquisaCobertura.QueryCoberturaCodigoTabela.asInteger;
          DBCheckBoxAtiva.SetFocus;
        end;
     FormPesquisaCobertura.QueryCobertura.Close;
     FormPesquisaCobertura.Query50.Close;        
     FormPesquisaCobertura.Free;
end;

end.
