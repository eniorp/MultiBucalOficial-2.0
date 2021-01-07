unit PrecoContratante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, ExtCtrls, Db, DBTables;

type
  TFormPrecoContratante = class(TForm)
    Panel1: TPanel;
    Panel20: TPanel;
    Label30: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEditContratante: TDBEdit;
    DBEditNomeContratante: TDBEdit;
    DBEditGrau: TDBEdit;
    DBEditDescricaoGrauParentesco: TDBEdit;
    DBEditData: TDBEdit;
    DBEditValor: TDBEdit;
    Panel21: TPanel;
    DBGridDocumento: TDBGrid;
    BitBtnPesquisar: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtnSair: TBitBtn;
    QueryContratante: TQuery;
    QueryPrecoContratante: TQuery;
    DataSourcePrecoContratante: TDataSource;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryPrecoContratanteCodigo_Contratante: TIntegerField;
    QueryPrecoContratanteCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoContratanteData: TDateTimeField;
    QueryPrecoContratanteValor: TFloatField;
    QueryPrecoContratanteNome_Contratante: TStringField;
    QueryGrauParentesco: TQuery;
    QueryGrauParentescoCodigo: TSmallintField;
    QueryGrauParentescoDescricao: TStringField;
    QueryGrauParentescoIdade_Inicial: TSmallintField;
    QueryGrauParentescoIdade_Final: TSmallintField;
    QueryPrecoContratanteDescricao_Grau: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryPrecoContratanteAfterPost(DataSet: TDataSet);
    procedure QueryPrecoContratanteAfterInsert(DataSet: TDataSet);
    procedure DBEditContratanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditValorExit(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrecoContratante: TFormPrecoContratante;

implementation

uses PesquisaContratante, udm;

{$R *.DFM}

procedure TFormPrecoContratante.FormCreate(Sender: TObject);
begin
     Top := 90;
     Left := 82;

     QueryContratante.Open;
     QueryPrecoContratante.Open;
     QueryGrauParentesco.Open;
end;

procedure TFormPrecoContratante.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryContratante.Close;
     QueryPrecoContratante.Close;
     QueryGrauParentesco.Close;

     action := cafree;
end;

procedure TFormPrecoContratante.QueryPrecoContratanteAfterPost(
  DataSet: TDataSet);
begin
     with QueryPrecoContratante do
       begin
         Close;
         Open;
       end;
end;

procedure TFormPrecoContratante.QueryPrecoContratanteAfterInsert(
  DataSet: TDataSet);
begin
     QueryPrecoContratanteData.asDateTime := dm.Date;
     DBEditContratante.SetFocus;
end;

procedure TFormPrecoContratante.DBEditContratanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormPrecoContratante.DBEditValorExit(Sender: TObject);
begin
     if MessageDlg('Dados Ok ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          DBEditContratante.SetFocus;
          exit;
        end;

     try
       QueryPrecoContratante.Post
     except
      begin
       ShowMessage('Erro Gravação da Tabela de Preços Contratantes');
       QueryPrecoContratante.Cancel;
      end;
     end;

     DBEditContratante.SetFocus;
end;

procedure TFormPrecoContratante.BitBtnPesquisarClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
     FormPesquisaContratante.ShowModal;

     if QueryPrecoContratante.state in [dsEdit, dsInsert] then
        begin
          QueryPrecoContratanteCodigo_Contratante.asInteger := PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asInteger;
          DBEditGrau.SetFocus;
        end;
     FormPesquisaContratante.QueryContratante.Close;
     FormPesquisaContratante.Free;
end;

end.
