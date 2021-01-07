{ Programa ........: Preferências do Sistema                                   }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Preferencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Mask, Db, DBTables, IniFiles, DBIProcs,
  ComCtrls;

type
  TFormPreferencias = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBNavigatorPreferencias: TDBNavigator;
    Panel4: TPanel;
    BitBtnSair: TBitBtn;
    Panel5: TPanel;
    DataSourcePreferencias: TDataSource;
    QueryPreferencias: TQuery;
    PageControlPreferencias: TPageControl;
    TabFaturamento: TTabSheet;
    QueryTipoCobranca: TQuery;
    DataSourceTipoCobranca: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    BitBtnBradesco: TBitBtn;
    BitBtnBanespa: TBitBtn;
    BitBtnCaixa: TBitBtn;
    BitBtnUnibanco: TBitBtn;
    BitBtnItau: TBitBtn;
    DBLookupComboBoxDebitoBradesco: TDBLookupComboBox;
    DBLookupComboBoxDebitoBanespa: TDBLookupComboBox;
    DBLookupComboBoxDebitoBCaixa: TDBLookupComboBox;
    DBLookupComboBoxDebitoItau: TDBLookupComboBox;
    DBLookupComboBoxDebitoUnibanco: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    DBLookupComboBoxDebitoHSBC: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    DBLookupComboBoxDebitoBrasil: TDBLookupComboBox;
    BitBtn3: TBitBtn;
    DBLookupComboBoxDebitoReal: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    DBLookupComboBoxDebitoSantander: TDBLookupComboBox;
    BitBtn5: TBitBtn;
    DBLookupComboBoxBoletoBanespa: TDBLookupComboBox;
    Label12: TLabel;
    DBEditMensagem1: TDBEdit;
    Label13: TLabel;
    DBEditMensagem2: TDBEdit;
    Label14: TLabel;
    DBEditMensagem3: TDBEdit;
    QueryTipoDocumento: TQuery;
    DataSourceTipoDocumento: TDataSource;
    DBCheckBox1: TDBCheckBox;
    TabSequencias: TTabSheet;
    Label24: TLabel;
    DBEditSequenciaSantander: TDBEdit;
    Label25: TLabel;
    DBEditSequenciaCaixa: TDBEdit;
    Label26: TLabel;
    DBEditSequenciaHSBC: TDBEdit;
    Label27: TLabel;
    DBEditSequenciaBradesco: TDBEdit;
    Label29: TLabel;
    DBEditSequenciaBanespa: TDBEdit;
    BitBtn6: TBitBtn;
    Label30: TLabel;
    DBLookupComboBoxDebitoNossaCaixa: TDBLookupComboBox;
    Label34: TLabel;
    DBEditSequencialReal: TDBEdit;
    QueryPreferenciasRegistro_Unico: TSmallintField;
    QueryPreferenciasNome_Empresa: TStringField;
    QueryPreferenciasCaminho_Cobranca: TStringField;
    QueryPreferenciasUltimo_Lancamento: TIntegerField;
    QueryPreferenciasTipo_Cobranca: TSmallintField;
    QueryPreferenciasDebito_Cef: TSmallintField;
    QueryPreferenciasDebito_Santader: TSmallintField;
    QueryPreferenciasDebito_Bradesco: TSmallintField;
    QueryPreferenciasDebito_Real: TSmallintField;
    QueryPreferenciasDebito_HSBC: TSmallintField;
    QueryPreferenciasDebito_Brasil: TSmallintField;
    QueryPreferenciasDebito_Banespa: TSmallintField;
    QueryPreferenciasDebito_Unibanco: TSmallintField;
    QueryPreferenciasDebito_Itau: TSmallintField;
    QueryPreferenciasDebito_NossaCaixa: TSmallintField;
    QueryPreferenciasBoleto_Cef: TSmallintField;
    QueryPreferenciasBoleto_Itau: TSmallintField;
    QueryPreferenciasBoleto_Banespa: TSmallintField;
    QueryPreferenciasMensagem1: TStringField;
    QueryPreferenciasMensagem2: TStringField;
    QueryPreferenciasMensagem3: TStringField;
    QueryPreferenciasMensagem4: TStringField;
    QueryPreferenciasDias_Prazo: TSmallintField;
    QueryPreferenciasMostrar_Informacoes: TBooleanField;
    QueryPreferenciasSequencial_Santander: TSmallintField;
    QueryPreferenciasSequencial_Caixa: TSmallintField;
    QueryPreferenciasSequencial_HSBC: TSmallintField;
    QueryPreferenciasSequencial_Bradesco: TSmallintField;
    QueryPreferenciasSequencial_Banespa: TSmallintField;
    QueryPreferenciasSequencial_Real: TSmallintField;
    QueryPreferenciasSequencial_Unibanco: TSmallintField;
    QueryPreferenciasSequencial_NossaCaixa: TSmallintField;
    QueryPreferenciasSequencial_Itau: TSmallintField;
    QueryPreferenciasSequencial_Brasil: TSmallintField;
    QueryPreferenciasInicial_Contrato: TDateTimeField;
    QueryPreferenciasFinal_Contrato: TDateTimeField;
    QueryPreferenciasInicial_Receber: TDateTimeField;
    QueryPreferenciasFinal_Receber: TDateTimeField;
    QueryPreferenciasInicial_Pagar: TDateTimeField;
    QueryPreferenciasFinal_Pagar: TDateTimeField;
    QueryPreferenciasValor_US: TFloatField;
    QueryPreferenciasStatus_Grava: TSmallintField;
    QueryPreferenciasStatus_Autorizado: TSmallintField;
    QueryPreferenciasStatus_Parcial: TSmallintField;
    QueryPreferenciasStatus_Total: TSmallintField;
    Label6: TLabel;
    DBEditSequencialNossaCaixa: TDBEdit;
    Label16: TLabel;
    DBEditSequencialItau: TDBEdit;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    Label17: TLabel;
    DBEditBoletoBanespa: TDBEdit;
    QueryPreferenciasSequencial_BoletoBanespa: TIntegerField;
    Label18: TLabel;
    DBEditSequencialBrasil: TDBEdit;
    QueryPreferenciasDocumento_Manutencao: TSmallintField;
    Label15: TLabel;
    DBLookupComboBoxManutencao: TDBLookupComboBox;
    TabSheet1: TTabSheet;
    QueryPreferenciasValor_Cobranca: TFloatField;
    QueryPreferenciasversao: TStringField;
    QueryPreferenciasVrBaseCobr_Ir: TFloatField;
    QueryPreferenciasVrBaseCobr_Tributos: TFloatField;
    QueryPreferenciasPercent_IR: TFloatField;
    QueryPreferenciasPercent_Tributos: TFloatField;
    QueryPreferenciasPercent_Inss: TFloatField;
    QueryPreferenciasIdadeMaxCrianca: TSmallintField;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    Label20: TLabel;
    DBEdit2: TDBEdit;
    Label21: TLabel;
    DBEdit3: TDBEdit;
    Label22: TLabel;
    DBEdit4: TDBEdit;
    Label23: TLabel;
    DBEdit5: TDBEdit;
    Label28: TLabel;
    DBEdit6: TDBEdit;
    Label31: TLabel;
    DBEdit7: TDBEdit;
    Label32: TLabel;
    DBEdit8: TDBEdit;
    Label33: TLabel;
    DBEdit9: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCaminhoGravacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPreferencias: TFormPreferencias;
  Ini: TIniFile;
  Executa : String[1];

implementation

{$R *.DFM}

procedure TFormPreferencias.FormCreate(Sender: TObject);
begin
     PageControlPreferencias.ActivePage := TabFaturamento;

     QueryTipoCobranca.Open;
     QueryTipoDocumento.Open;
     QueryPreferencias.Open;
end;

procedure TFormPreferencias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryPreferencias.Close;
     QueryTipoCobranca.Close;
     QueryTipoDocumento.Close;
end;

procedure TFormPreferencias.EditCaminhoGravacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     Case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

end.
