{ Programa ........: Cobertura x Plano                                         }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }
{ Ultima Alteração.: 11/04/2002                                                }

unit TabPrecoXPlano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  TFormTabPrecoxPlano = class(TForm)
    Panel1: TPanel;
    Panel15: TPanel;
    BitBtnSair: TBitBtn;
    Panel13: TPanel;
    DBNavigatorCadastro: TDBNavigator;
    Panel8: TPanel;
    Label27: TLabel;
    DBEditTabela: TDBEdit;
    Panel10: TPanel;
    DBGridTabPrecoPlano: TDBGrid;
    DBCheckBoxAtiva: TDBCheckBox;
    DBLookupComboBoxPlano: TDBLookupComboBox;
    Label1: TLabel;
    DataSourcePlano: TDataSource;
    QueryTabPrecoXPlano: TQuery;
    DataSourceTabPrecoXPlano: TDataSource;
    QueryTabPrecoXPlanoPlano: TIntegerField;
    QueryTabPrecoXPlanoAtiva: TBooleanField;
    QueryTabPrecoXPlanoDescricaoPlano: TStringField;
    QueryTabPrecoXPlanoAtiva_Aux: TStringField;
    QueryTabPrecoXPlanoTabelaPreco: TIntegerField;
    QueryPlano: TQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryTabPrecoXPlanoAfterPost(DataSet: TDataSet);
    procedure QueryTabPrecoXPlanoAfterInsert(DataSet: TDataSet);
    procedure DBEditTabelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBCheckBoxAtivaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryTabPrecoXPlanoCalcFields(DataSet: TDataSet);
    procedure QueryTabPrecoXPlanoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTabPrecoxPlano: TFormTabPrecoxPlano;

implementation

uses udm;


{$R *.DFM}

procedure TFormTabPrecoxPlano.FormCreate(Sender: TObject);
begin
     Left := 90;
     Top := 90;
     QueryTabPrecoXPlano.Open;
     QueryPlano.Open;
end;

procedure TFormTabPrecoxPlano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryTabPrecoXPlano.Close;
     QueryPlano.Close;
end;

procedure TFormTabPrecoxPlano.QueryTabPrecoXPlanoAfterPost(
  DataSet: TDataSet);
begin
     with QueryTabPrecoXPlano  do
       begin
          Close;
          Open;
          Last;
       end;
     DBGridTabPrecoPlano.SetFocus;
end;

procedure TFormTabPrecoxPlano.QueryTabPrecoXPlanoAfterInsert(
  DataSet: TDataSet);
begin
     DBLookupComboBoxPlano.SetFocus;
end;

procedure TFormTabPrecoxPlano.DBEditTabelaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormTabPrecoxPlano.DBCheckBoxAtivaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormTabPrecoxPlano.QueryTabPrecoXPlanoCalcFields(
  DataSet: TDataSet);
begin
     if QueryTabPrecoXPlanoAtiva.AsBoolean then
        QueryTabPrecoXPlanoAtiva_Aux.AsString := 'Sim'
     else
        QueryTabPrecoXPlanoAtiva_Aux.AsString := 'Não';
end;

procedure TFormTabPrecoxPlano.QueryTabPrecoXPlanoFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
   Accept := Dm.PlanoAtivo(QueryTabPrecoXPlanoPlano.AsString);
end;

end.
