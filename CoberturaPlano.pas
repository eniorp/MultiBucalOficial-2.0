{ Programa ........: Cobertura x Plano                                         }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }
{ Ultima Alteração.: 11/04/2002                                                }

unit CoberturaPlano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  TFormCoberturaPlano = class(TForm)
    Panel1: TPanel;
    Panel15: TPanel;
    BitBtnSair: TBitBtn;
    Panel13: TPanel;
    DBNavigatorCadastro: TDBNavigator;
    Panel8: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    DBEditCodigoTabela: TDBEdit;
    DBEditDescricaoTabela: TDBEdit;
    Panel10: TPanel;
    DBGridCoberturaPlano: TDBGrid;
    DataSourceTabelaCobertura: TDataSource;
    QueryTabelaConsulta: TQuery;
    DBCheckBoxAtiva: TDBCheckBox;
    DBLookupComboBoxPlano: TDBLookupComboBox;
    Label1: TLabel;
    QueryPlano: TQuery;
    DataSourcePlano: TDataSource;
    QueryTabelaCoberturaXPlano: TQuery;
    DataSourceTabelaCoberturaXPlano: TDataSource;
    QueryTabelaCoberturaXPlanoPlano: TIntegerField;
    QueryTabelaCoberturaXPlanoTabela_Cobertura: TIntegerField;
    QueryTabelaCoberturaXPlanoAtiva: TBooleanField;
    QueryTabelaCoberturaXPlanoDescricaoPlano: TStringField;
    QueryTabelaCoberturaXPlanoDescricaoCobertura: TStringField;
    QueryTabelaCoberturaXPlanoAtiva_Aux: TStringField;
    BitBtnPesquisar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryTabelaCoberturaXPlanoAfterPost(DataSet: TDataSet);
    procedure QueryTabelaCoberturaXPlanoAfterInsert(DataSet: TDataSet);
    procedure DBLookupComboBoxPlanoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditCodigoTabelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDescricaoTabelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBoxAtivaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryTabelaCoberturaXPlanoCalcFields(DataSet: TDataSet);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure QueryTabelaCoberturaXPlanoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCoberturaPlano: TFormCoberturaPlano;

implementation

uses PesquisaCobertura;

{$R *.DFM}

procedure TFormCoberturaPlano.FormCreate(Sender: TObject);
begin
     Left := 90;
     Top := 90;
     QueryTabelaCoberturaXPlano.Open;
     QueryPlano.Open;
     QueryTabelaConsulta.Open;
end;

procedure TFormCoberturaPlano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryTabelaCoberturaXPlano.Close;
     QueryPlano.Close;
     QueryTabelaConsulta.Close;
end;

procedure TFormCoberturaPlano.QueryTabelaCoberturaXPlanoAfterPost(
  DataSet: TDataSet);
begin
     with QueryTabelaCoberturaXPlano  do
       begin
          Close;
          Open;
          Last;
       end;
     DBGridCoberturaPlano.SetFocus;
end;

procedure TFormCoberturaPlano.QueryTabelaCoberturaXPlanoAfterInsert(
  DataSet: TDataSet);
begin
     DBLookupComboBoxPlano.SetFocus;
end;

procedure TFormCoberturaPlano.DBLookupComboBoxPlanoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaPlano.DBEditCodigoTabelaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaPlano.DBEditDescricaoTabelaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaPlano.DBCheckBoxAtivaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaPlano.QueryTabelaCoberturaXPlanoCalcFields(
  DataSet: TDataSet);
begin
     if QueryTabelaCoberturaXPlanoAtiva.AsBoolean then
        QueryTabelaCoberturaXPlanoAtiva_Aux.AsString := 'Sim'
     else
        QueryTabelaCoberturaXPlanoAtiva_Aux.AsString := 'Não';    
end;

procedure TFormCoberturaPlano.BitBtnPesquisarClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaCobertura, FormPesquisaCobertura);
     FormPesquisaCobertura.ShowModal;

     if QueryTabelaCoberturaXPlano.state in [dsEdit, dsInsert] then
        begin
          QueryTabelaCoberturaXPlanoTabela_Cobertura.asInteger := PesquisaCobertura.FormPesquisaCobertura.QueryCoberturaCodigoTabela.asInteger;
          DBCheckBoxAtiva.SetFocus;
        end;
     FormPesquisaCobertura.QueryCobertura.Close;
     FormPesquisaCobertura.Query50.close;
     FormPesquisaCobertura.Free;
end;

procedure TFormCoberturaPlano.QueryTabelaCoberturaXPlanoNewRecord(
  DataSet: TDataSet);
begin
   QueryTabelaCoberturaXPlanoAtiva.AsBoolean := True;
end;

end.
