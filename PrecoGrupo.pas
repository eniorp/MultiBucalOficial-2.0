unit PrecoGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls;

type
  TFormPrecoGrupo = class(TForm)
    Panel1: TPanel;
    Panel15: TPanel;
    BitBtnSair: TBitBtn;
    Panel13: TPanel;
    DBNavigatorCadastro: TDBNavigator;
    QueryGrauParentesco: TQuery;
    QueryGrauParentescoCodigo: TSmallintField;
    QueryGrauParentescoDescricao: TStringField;
    QueryGrauParentescoIdade_Inicial: TSmallintField;
    QueryGrauParentescoIdade_Final: TSmallintField;
    DataSourceGrauParentesco: TDataSource;
    Panel8: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label32: TLabel;
    DBEditGrupoPreco: TDBEdit;
    DBEditDescricaoGrupoPreco: TDBEdit;
    DBEditGrauPreco: TDBEdit;
    DBEditDescricaoGrauPreco: TDBEdit;
    DBEditDataPrecoGrupo: TDBEdit;
    DBEditValorGrupo: TDBEdit;
    Panel10: TPanel;
    DBGridInspetor: TDBGrid;
    QueryPrecoGrupo: TQuery;
    QueryPrecoGrupoCodigo_Grupo: TSmallintField;
    QueryPrecoGrupoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoGrupoData: TDateTimeField;
    QueryPrecoGrupoValor: TFloatField;
    QueryPrecoGrupoDescricao_Grau: TStringField;
    DataSourcePrecoGrupo: TDataSource;
    QueryGrupoContratante: TQuery;
    DataSourceGrupoContrantante: TDataSource;
    QueryPrecoGrupoDescricaoGrupo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryPrecoPlanoAfterInsert(DataSet: TDataSet);
    procedure QueryPrecoGrupoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrecoGrupo: TFormPrecoGrupo;

implementation

{$R *.DFM}

procedure TFormPrecoGrupo.FormCreate(Sender: TObject);
begin
     Left := 90;
     Top := 90;
     QueryGrupoContratante.Open;
     QueryGrauParentesco.Open;
     QueryPrecoGrupo.Open;
end;

procedure TFormPrecoGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryGrupoContratante.Close;
     QueryGrauParentesco.Close;
     QueryPrecoGrupo.Close;
end;

procedure TFormPrecoGrupo.QueryPrecoPlanoAfterInsert(DataSet: TDataSet);
begin
     DBEditGrupoPreco.SetFocus;
end;

procedure TFormPrecoGrupo.QueryPrecoGrupoAfterPost(DataSet: TDataSet);
begin
     with QueryPrecoGrupo do
       begin
          Close;
          Open;
          Last;
       end;
     DBEditGrupoPreco.SetFocus;
end;

end.
