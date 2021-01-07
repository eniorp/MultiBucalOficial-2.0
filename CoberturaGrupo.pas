{ Programa ........: Cobertura x Grupo Contratante                             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }
{ Ultima Alteração.: 11/04/2002                                                }

unit CoberturaGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  TFormCoberturaGrupo = class(TForm)
    Panel1: TPanel;
    Panel15: TPanel;
    BitBtnSair: TBitBtn;
    Panel13: TPanel;
    DBNavigatorCadastro: TDBNavigator;
    DataSourceTabelaCoberturaXGrupoContratante: TDataSource;
    Panel8: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEditGrupo: TDBEdit;
    DBEditDescricaoGrupo: TDBEdit;
    DBEditCodigoTabela: TDBEdit;
    DBEditDescricaoTabela: TDBEdit;
    Panel10: TPanel;
    DBGridCoberturaGrupo: TDBGrid;
    DataSourceTabelaCobertura: TDataSource;
    QueryTabelaConsulta: TQuery;
    DBCheckBoxAtiva: TDBCheckBox;
    QueryTabelaCoberturaXGrupoContratante: TQuery;
    QueryTabelaCoberturaXGrupoContratanteGrupo_Contratante: TIntegerField;
    QueryTabelaCoberturaXGrupoContratanteTabela_Cobertura: TIntegerField;
    QueryTabelaCoberturaXGrupoContratanteAtiva: TBooleanField;
    QueryTabelaCoberturaXGrupoContratanteDescricaoCobertura: TStringField;
    QueryTabelaCoberturaXGrupoContratanteAtiva_Aux: TStringField;
    BitBtnPesquisaCobertura: TBitBtn;
    QueryGrupoContratante: TQuery;
    DataSourceGrupo_Contratante: TDataSource;
    QueryTabelaCoberturaXGrupoContratanteDescricaoGrupo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryTabelaCoberturaXGrupoContratanteAfterPost(
      DataSet: TDataSet);
    procedure QueryTabelaCoberturaXGrupoContratanteAfterInsert(
      DataSet: TDataSet);
    procedure DBEditGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDescricaoGrupoKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBEditCodigoTabelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDescricaoTabelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBoxAtivaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryTabelaCoberturaXGrupoContratanteCalcFields(
      DataSet: TDataSet);
    procedure BitBtnPesquisaCoberturaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCoberturaGrupo: TFormCoberturaGrupo;

implementation

uses PesquisaCobertura;

{$R *.DFM}

procedure TFormCoberturaGrupo.FormCreate(Sender: TObject);
begin
     Left := 90;
     Top := 90;
     QueryTabelaCoberturaXGrupoContratante.Open;
     QueryGrupoContratante.Open;
     QueryTabelaConsulta.Open;
end;

procedure TFormCoberturaGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryTabelaCoberturaXGrupoContratante.Close;
     QueryGrupoContratante.Close;
     QueryTabelaConsulta.Close;
end;

procedure TFormCoberturaGrupo.QueryTabelaCoberturaXGrupoContratanteAfterPost(
  DataSet: TDataSet);
begin
     with QueryTabelaCoberturaXGrupoContratante do
       begin
          Close;
          Open;
          Last;
       end;
     DBGridCoberturaGrupo.SetFocus;
end;

procedure TFormCoberturaGrupo.QueryTabelaCoberturaXGrupoContratanteAfterInsert(
  DataSet: TDataSet);
begin
     DBEditGrupo.SetFocus;
end;

procedure TFormCoberturaGrupo.DBEditGrupoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaGrupo.DBEditDescricaoGrupoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaGrupo.DBEditCodigoTabelaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaGrupo.DBEditDescricaoTabelaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaGrupo.DBCheckBoxAtivaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCoberturaGrupo.QueryTabelaCoberturaXGrupoContratanteCalcFields(
  DataSet: TDataSet);
begin
     if QueryTabelaCoberturaXGrupoContratanteAtiva.AsBoolean then
        QueryTabelaCoberturaXGrupoContratanteAtiva_Aux.AsString := 'Sim'
     else
        QueryTabelaCoberturaXGrupoContratanteAtiva_Aux.AsString := 'Não';
end;

procedure TFormCoberturaGrupo.BitBtnPesquisaCoberturaClick(
  Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaCobertura, FormPesquisaCobertura);
     FormPesquisaCobertura.ShowModal;

     if QueryTabelaCoberturaXGrupoContratante.state in [dsEdit, dsInsert] then
        begin
          QueryTabelaCoberturaXGrupoContratanteTabela_Cobertura.asInteger := PesquisaCobertura.FormPesquisaCobertura.QueryCoberturaCodigoTabela.asInteger;
          DBCheckBoxAtiva.SetFocus;
        end;
     FormPesquisaCobertura.QueryCobertura.Close;
     FormPesquisaCobertura.Query50.Close;
     FormPesquisaCobertura.Free;
end;

end.
