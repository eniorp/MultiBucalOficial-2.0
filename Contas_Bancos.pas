{ Programa ........: Preferências do Sistema                                   }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Contas_Bancos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, Db, DBTables, IniFiles, DBIProcs,
  ComCtrls, Grids, DBGrids;

type
  TFormContas_Bancos = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    Label73: TLabel;
    DBEditCodBanco: TDBEdit;
    Label74: TLabel;
    DBEditNome_Banco: TDBEdit;
    Label76: TLabel;
    DBEditAgencia: TDBEdit;
    Label75: TLabel;
    DBEditNroConta: TDBEdit;
    Label79: TLabel;
    DBEditConvenio: TDBEdit;
    Label78: TLabel;
    DBEditCGC: TDBEdit;
    DBEditTitular: TDBEdit;
    Label77: TLabel;
    Label80: TLabel;
    DBEditMensagemHeader: TDBEdit;
    Label81: TLabel;
    DBEditEspaco: TDBEdit;
    DBCheckBoxBoleto: TDBCheckBox;
    DBGridContas: TDBGrid;
    QueryContas_Banco: TQuery;
    DataSourceContas_Banco: TDataSource;
    QueryContas_BancoId_Banco: TIntegerField;
    QueryContas_BancoBanco: TStringField;
    QueryContas_BancoNome_Banco: TStringField;
    QueryContas_BancoNumero_Conta: TStringField;
    QueryContas_BancoAgencia: TStringField;
    QueryContas_BancoTitular: TStringField;
    QueryContas_BancoCGC: TStringField;
    QueryContas_BancoConvenio: TStringField;
    QueryContas_BancoBoleto: TBooleanField;
    QueryContas_BancoMensagem_Header: TStringField;
    QueryContas_BancoEspaco_Header: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    DBEditBoletoSeq: TDBEdit;
    PanelNavegador: TPanel;
    BitBtnSair: TBitBtn;
    DBNavigatorContas: TDBNavigator;
    QueryTipoCobranca: TQuery;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    DataSourceTipoCobranca: TDataSource;
    QueryContas_BancoDebito_Tipo: TSmallintField;
    Label3: TLabel;
    DBEditDebitoSeq: TDBEdit;
    DBLookupComboBoxDebito_Tipo: TDBLookupComboBox;
    QueryContas_BancoDebito_Sequencial: TIntegerField;
    QueryContas_BancoBoleto_Sequencial: TIntegerField;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    Label92: TLabel;
    DBEdit13: TDBEdit;
    Label93: TLabel;
    DBEdit14: TDBEdit;
    Label94: TLabel;
    DBEdit15: TDBEdit;
    Label99: TLabel;
    DBEdit20: TDBEdit;
    Label97: TLabel;
    Label98: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    QueryContas_Bancolayout: TStringField;
    QueryContas_BancoJurosDiario: TFloatField;
    QueryContas_Bancomsg1: TStringField;
    QueryContas_Bancomsg2: TStringField;
    QueryContas_BancoPasta: TStringField;
    procedure EditCaminhoGravacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryContas_BancoAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormContas_Bancos: TFormContas_Bancos;

implementation

{$R *.DFM}

procedure TFormContas_Bancos.EditCaminhoGravacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     Case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormContas_Bancos.QueryContas_BancoAfterPost(DataSet: TDataSet);
begin
     with QueryContas_Banco do
       begin
         Close;
         Open;
       end;
end;

procedure TFormContas_Bancos.FormCreate(Sender: TObject);
begin
     QueryTipoCobranca.Open;
     QueryContas_Banco.Open;
end;

procedure TFormContas_Bancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QueryContas_Banco.Close;
   QueryTipoCobranca.Close;
end;

end.
