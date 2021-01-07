
{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Cadastros Diversos                                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

unit Cadastro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, Mask, DBCtrls, DBTables, Grids, DBGrids, Buttons, ExtCtrls,
  ComCtrls, ColorGrd, Menus, FMTBcd, SqlExpr, DBClient, SimpleDS, ADODB ;

type
  TFormDiversos = class(TForm)
    PageControlCadastro: TPageControl;
    TabPlanos: TTabSheet;
    TabGrauParentesco: TTabSheet;
    Panel1: TPanel;
    Panel3: TPanel;
    DBGridMovimento: TDBGrid;
    Label11: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel9: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEditCodigoPlano: TDBEdit;
    Label2: TLabel;
    DBEditDescricaoPlanos: TDBEdit;
    Label8: TLabel;
    Label10: TLabel;
    DBEditDescricaoGrau: TDBEdit;
    Panel13: TPanel;
    DBNavigatorCadastro: TDBNavigator;
    Panel15: TPanel;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    DBEditCodigoGrau: TDBEdit;
    TabPlanoGrau: TTabSheet;
    Panel22: TPanel;
    Panel23: TPanel;
    DBGridCobranca: TDBGrid;
    DBGridMarcas: TDBGrid;
    DataSourcePlanoGrau: TDataSource;
    QueryPlanoGrau: TQuery;
    QueryPlanos: TQuery;
    QueryGrauParentesco: TQuery;
    DataSourcePlanos: TDataSource;
    DataSourceGrauParentesco: TDataSource;
    TabGrupoContratante: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditCodigoLivro: TDBEdit;
    DBEditDescricaoGrupo: TDBEdit;
    Panel7: TPanel;
    DBGridGrupoContratante: TDBGrid;
    DataSourceGrupoContrantante: TDataSource;
    QueryGrupoContratante: TQuery;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DBEditFlag: TDBEdit;
    QueryPlanosCodigo: TSmallintField;
    QueryPlanosDescricao: TStringField;
    QueryPlanosCodigo_Susep: TIntegerField;
    QueryPlanosTitular_Contratante: TStringField;
    QueryPlanosFis_Jur: TStringField;
    QueryPlanosFlag_Envio_Ans: TStringField;
    DBComboBoxTipo: TDBComboBox;
    DBComboBoxPessoa: TDBComboBox;
    QueryGrauParentescoCodigo: TSmallintField;
    QueryGrauParentescoDescricao: TStringField;
    QueryGrauParentescoIdade_Inicial: TSmallintField;
    QueryGrauParentescoIdade_Final: TSmallintField;
    Label14: TLabel;
    DBEditIdadeInicial: TDBEdit;
    Label15: TLabel;
    DBEditIdadeFinal: TDBEdit;
    QueryPlanoGrauCodigo_Plano: TSmallintField;
    QueryPlanoGrauCodigo_Grau: TSmallintField;
    QueryPlanoGrauIdade_Inicial: TIntegerField;
    QueryPlanoGrauIdade_Final: TIntegerField;
    Label20: TLabel;
    DBEditCodigoPlanoGrau: TDBEdit;
    DBEditDescricaoPlanoGrau: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEditGrauPlanoGrau: TDBEdit;
    DBEditDescricaoGrauPlanoGrau: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBEditInicialPlanoGrau: TDBEdit;
    DBEditFinalPlanoGrau: TDBEdit;
    Label25: TLabel;
    QueryGrupoContratanteCodigo: TSmallintField;
    QueryGrupoContratanteDescricao: TStringField;
    QueryGrupoContratanteFlag_Envio_Ans: TStringField;
    Label26: TLabel;
    DBEditFlagGrupo: TDBEdit;
    DataSourceDesconto: TDataSource;
    TabDesconto: TTabSheet;
    Panel11: TPanel;
    Label33: TLabel;
    Label34: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEditCodigoDesconto: TDBEdit;
    DBEditDescricaoDesconto: TDBEdit;
    DBEditDataDesconto: TDBEdit;
    DBEditValorDesconto: TDBEdit;
    Panel12: TPanel;
    DBGridDescontoxUsuarios: TDBGrid;
    Label35: TLabel;
    DBEditPercentualDesconto: TDBEdit;
    Label36: TLabel;
    Label39: TLabel;
    DBEditQuantidadeUsuarios: TDBEdit;
    QueryPlanoGrauDescricao_Plano: TStringField;
    QueryPlanoGrauDescricao_Grau: TStringField;
    TabDocumento: TTabSheet;
    TabCobranca: TTabSheet;
    Panel14: TPanel; 
    Label40: TLabel;
    Label41: TLabel;
    DBEditCodigoDocumento: TDBEdit;
    DBEditDescricaoDocumento: TDBEdit;
    Panel16: TPanel;
    DBGrid2: TDBGrid;
    Panel17: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    DBEditCodigoCobranca: TDBEdit;
    DBEditDescricaoCobranca: TDBEdit;
    Panel18: TPanel;
    DBGrid3: TDBGrid;
    QueryTipoDocumento: TQuery;
    QueryTipoCobranca: TQuery;
    DataSourceTipoCobranca: TDataSource;
    DataSourceTipoDocumento: TDataSource;
    TabCancelamento: TTabSheet;
    Panel19: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    DBEditCodigoCancelamento: TDBEdit;
    DBEditDescricaoCancelamento: TDBEdit;
    Panel24: TPanel;
    DBGridCancelamento: TDBGrid;
    QueryCancelamento: TQuery;
    DataSourceCancelamento: TDataSource;
    QueryCancelamentoCodigo: TSmallintField;
    QueryCancelamentoDescricao: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    TabTipoContato: TTabSheet;
    Panel25: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    DBEditCodigoContato: TDBEdit;
    DBEditDescricaoContato: TDBEdit;
    Panel26: TPanel;
    DBGridContato: TDBGrid;
    QueryTipoContato: TQuery;
    DataSourceTipoContato: TDataSource;
    QueryTipoContatoCodigo: TIntegerField;
    QueryTipoContatoDescricao: TStringField;
    TabParcelas: TTabSheet;
    DBGridParcelas: TDBGrid;
    QueryParcelas: TQuery;
    DataSourceParcelas: TDataSource;
    QueryParcelasValor_Inicial: TFloatField;
    QueryParcelasValor_Final: TFloatField;
    QueryParcelasNumero_Parcelas: TSmallintField;
    TabStatusOrcamento: TTabSheet;
    Panel27: TPanel;
    Label48: TLabel;
    Label49: TLabel;
    DBEditStatusOrcamento: TDBEdit;
    DBEditDescricaoStatus: TDBEdit;
    Panel28: TPanel;
    DBGridStatusOrcamento: TDBGrid;
    QueryStatusOrcamento: TQuery;
    DataSourceStatusOrcamento: TDataSource;
    QueryStatusOrcamentoCodigo: TSmallintField;
    QueryStatusOrcamentoDescricao: TStringField;
    QueryDesconto: TQuery;
    QueryPlanosAuxiliar: TQuery;
    QueryPlanosAuxiliarCodigo: TIntegerField;
    QueryPlanosAuxiliarDescricao: TStringField;
    QueryPlanosAuxiliarCodigo_Susep: TIntegerField;
    QueryPlanosAuxiliarTitular_Contratante: TStringField;
    QueryPlanosAuxiliarFis_Jur: TStringField;
    QueryPlanosAuxiliarFlag_Envio_Ans: TStringField;
    QueryDescontoDescricao: TStringField;
    QueryDescontoCodigo_Plano: TSmallintField;
    QueryDescontoData: TDateTimeField;
    QueryDescontoQtde_Usuarios1: TSmallintField;
    QueryDescontoQtde_Usuarios2: TSmallintField;
    QueryDescontoPercentual_desconto: TFloatField;
    QueryDescontoValor_Desconto: TFloatField;
    Label5: TLabel;
    DBEditQuantidadeUsuarios2: TDBEdit;
    QueryDescontoIncremento: TIntegerField;
    TabAcrescimo: TTabSheet;
    Panel8: TPanel;
    Label6: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEditPlanoAcrescimo: TDBEdit;
    DBEditDescricaoAcrescimo: TDBEdit;
    DBEditPercentualAcrescimo: TDBEdit;
    DBEditDiasAcrecimo: TDBEdit;
    Panel10: TPanel;
    DBGrid4: TDBGrid;
    DataSourceAcrescimoDesconto: TDataSource;
    QueryAcrescimoInclusao: TQuery;
    QueryAcrescimoInclusaoPlano: TIntegerField;
    QueryAcrescimoInclusaoDias: TSmallintField;
    QueryAcrescimoInclusaoPercentual: TFloatField;
    QueryPlanoAuxiliar: TQuery;
    QueryPlanoAuxiliarCodigo: TIntegerField;
    QueryPlanoAuxiliarDescricao: TStringField;
    QueryPlanoAuxiliarCodigo_Susep: TIntegerField;
    QueryPlanoAuxiliarTitular_Contratante: TStringField;
    QueryPlanoAuxiliarFis_Jur: TStringField;
    QueryPlanoAuxiliarFlag_Envio_Ans: TStringField;
    QueryAcrescimoInclusaoDescricao: TStringField;
    TabCobertura: TTabSheet;
    DBGridCobertura: TDBGrid;
    QueryCobertura: TQuery;
    DataSourceCobertura: TDataSource;
    QueryCoberturaCodigoTabela: TIntegerField;
    QueryCoberturaDescricao: TStringField;
    QueryTipoDocumentoClassificacao: TStringField;
    Label17: TLabel;
    DBComboBoxClassificacao: TDBComboBox;
    TabClinicas: TTabSheet;
    DBEditCodigo: TDBEdit;
    QueryClinicas: TQuery;
    DataSourceClinicas: TDataSource;
    QueryClinicasCodigo: TIntegerField;
    QueryClinicasDescricao: TStringField;
    QueryClinicasCGC: TStringField;
    QueryClinicasIE: TStringField;
    QueryClinicasEndereco: TStringField;
    QueryClinicasBairro: TStringField;
    QueryClinicasCEP: TStringField;
    QueryClinicasCidade: TStringField;
    QueryClinicasEstado: TStringField;
    QueryClinicasTelefone: TStringField;
    QueryClinicasFax: TStringField;
    QueryClinicasEmail: TStringField;
    Label18: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEditDescricao: TDBEdit;
    DBEditEndereco: TDBEdit;
    DBEditBairro: TDBEdit;
    Label31: TLabel;
    DBEditCEP: TDBEdit;
    Label32: TLabel;
    DBEditCidade: TDBEdit;
    Label50: TLabel;
    Label51: TLabel;
    DBEditEstado: TDBEdit;
    DBEditTelefone: TDBEdit;
    Label52: TLabel;
    DBEditFax: TDBEdit;
    Label53: TLabel;
    DBEditEmail: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBEditCGC: TDBEdit;
    Label56: TLabel;
    DBEditIE: TDBEdit;
    DBGridClinicas: TDBGrid;
    TabSip: TTabSheet;
    QuerySip: TQuery;
    DataSourceSip: TDataSource;
    DBEditCodigoSio: TDBEdit;
    Label57: TLabel;
    DBEditDescricaoSip: TDBEdit;
    Label58: TLabel;
    DBGrid5: TDBGrid;
    TabOcorrencias: TTabSheet;
    QueryOcorrencias: TQuery;
    DataSourceOcorrencias: TDataSource;
    DBEditBanco: TDBEdit;
    Label59: TLabel;
    Label60: TLabel;
    DBEditOcorrencia: TDBEdit;
    DBEditDescricaoOcorrencia: TDBEdit;
    Label61: TLabel;
    DBGridOcorrencias: TDBGrid;
    QueryPlanosFamiliar: TBooleanField;
    DBCheckBoxAtiva: TDBCheckBox;
    QueryPlanosFamiliar_Aux: TStringField;
    TabDentes: TTabSheet;
    Label62: TLabel;
    DBEditCodigo_Dente: TDBEdit;
    Label64: TLabel;
    DBEditDescricao_Dente: TDBEdit;
    QueryDentes: TQuery;
    DataSourceDentes: TDataSource;
    DBGridDentes: TDBGrid;
    TabDentesXFaces: TTabSheet;
    Label63: TLabel;
    DBEditCodDente: TDBEdit;
    Label65: TLabel;
    DBEditFace: TDBEdit;
    Label66: TLabel;
    DBEditDescricaoFace: TDBEdit;
    DBGridDentesXFace: TDBGrid;
    QueryDentesXFaces: TQuery;
    DataSourceDentesXFaces: TDataSource;
    TabGrupoCentroCusto: TTabSheet;
    QueryGrupoCentroCusto: TQuery;
    QueryGrupoCentroCustoCodigo: TStringField;
    QueryGrupoCentroCustoDescricao: TStringField;
    DataSourceGrupoCentroCusto: TDataSource;
    TabCentroCusto: TTabSheet;
    Label69: TLabel;
    DBEditCodigoCusto: TDBEdit;
    Label70: TLabel;
    DBEditDescricaoCusto: TDBEdit;
    QueryCentroCusto: TQuery;
    QueryCentroCustoId_Conta: TIntegerField;
    QueryCentroCustoConta: TStringField;
    QueryCentroCustoDescricao: TStringField;
    QueryCentroCustoReduzida: TStringField;
    DataSourceCentroCusto: TDataSource;
    DBGridCentroCusto: TDBGrid;
    Label71: TLabel;
    DBEditGrupoCusto: TDBEdit;
    DBEditReduzida: TDBEdit;
    Label72: TLabel;
    TabContasBanco: TTabSheet;
    QueryContasBancos: TQuery;
    QueryContasBancosId_Banco: TIntegerField;
    QueryContasBancosBanco: TStringField;
    QueryContasBancosNome_Banco: TStringField;
    QueryContasBancosNumero_Conta: TStringField;
    QueryContasBancosAgencia: TStringField;
    QueryContasBancosTitular: TStringField;
    QueryContasBancosCGC: TStringField;
    QueryContasBancosConvenio: TStringField;
    QueryContasBancosBoleto: TBooleanField;
    QueryContasBancosMensagem_Header: TStringField;
    QueryContasBancosEspaco_Header: TIntegerField;
    DataSourceContasBanco: TDataSource;
    Label73: TLabel;
    DBEditCodBanco: TDBEdit;
    Label74: TLabel;
    DBEditNome_Banco: TDBEdit;
    Label75: TLabel;
    DBEdit2: TDBEdit;
    Label76: TLabel;
    DBEdit3: TDBEdit;
    Label77: TLabel;
    DBEdit4: TDBEdit;
    Label78: TLabel;
    DBEdit7: TDBEdit;
    Label79: TLabel;
    DBEdit8: TDBEdit;
    Label80: TLabel;
    DBEdit9: TDBEdit;
    Label81: TLabel;
    DBEdit10: TDBEdit;
    DBGrid6: TDBGrid;
    DBCheckBoxBoleto: TDBCheckBox;
    Label82: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QueryClinicasCodigo_Tabela: TIntegerField;
    QueryGrupoCentroCustoid_Grupo: TIntegerField;
    QueryCentroCustoGrupo_Conta: TIntegerField;
    BitBtnPesquisar: TBitBtn;
    TabTiposPgto: TTabSheet;
    DBEditCodigoGrupo: TDBEdit;
    Label67: TLabel;
    Label68: TLabel;
    DBEditDescricaoGrupoCentro: TDBEdit;
    DBGridGrupoCentroCusto: TDBGrid;
    Label84: TLabel;
    DBEditDescricaoPgto: TDBEdit;
    DBGridTiposPgto: TDBGrid;
    QueryTiposPgto: TQuery;
    DataSourceTiposPgto: TDataSource;
    QueryTiposPgtoId_TipoPgto: TIntegerField;
    QueryTiposPgtoDescricao_TipoPgto: TStringField;
    EditPesqCod: TEdit;
    BitBtnPesqCod: TBitBtn;
    ButtonTudo: TButton;
    QueryAcrescimoInclusaoData_Aumento: TDateTimeField;
    Label83: TLabel;
    DBEditDataAumento: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    QueryClinicasTipoPessoa: TStringField;
    QueryTipoCobrancaeh_banco: TBooleanField;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    QueryPlanosDtIniAplicacaoRPC: TDateTimeField;
    QueryPlanosDtFimAplicacaoRPC: TDateTimeField;
    QueryPlanosDtIniAnaliseRPC: TDateTimeField;
    QueryPlanosDtFimAnaliseRPC: TDateTimeField;
    Label85: TLabel;
    Label86: TLabel;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    Label87: TLabel;
    Label88: TLabel;
    DBEdit6: TDBEdit;
    DBEdit11: TDBEdit;
    BitBtn1: TBitBtn;
    QueryAcrescimoInclusaoid_acrescimo: TIntegerField;
    QueryAcrescimoInclusaoDtinclusao: TDateTimeField;
    DBCheckBox2: TDBCheckBox;
    QueryPlanosConsideraCrianca: TBooleanField;
    PopupMenu1: TPopupMenu;
    Aplicaresteacrscimo1: TMenuItem;
    SpProcessaAumentoMens: TStoredProc;
    QueryPlanosativo: TBooleanField;
    DBCheckBox3: TDBCheckBox;
    QueryPlanoAuxiliarativo: TBooleanField;
    QueryPlanosAuxiliarativo: TBooleanField;
    Label89: TLabel;
    QueryGrauParentescocd_ans: TStringField;
    QueryvinculoANS: TQuery;
    DsVinculoAns: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox3: TGroupBox;
    DBEditSusep: TDBEdit;
    Label90: TLabel;
    DBEdit12: TDBEdit;
    QueryPlanoscd_ans_anterior: TIntegerField;
    Label91: TLabel;
    QueryDentesXFacescd_dente: TSmallintField;
    QueryDentesXFacescd_face: TStringField;
    GroupBox4: TGroupBox;
    DBRadioGroup2: TDBRadioGroup;
    DBRGPermDec: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    DBRGMoPreMo: TDBRadioGroup;
    GroupBox5: TGroupBox;
    DBCheckBoxGeraReceber: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    QueryTipoCobrancaDebAutomatico: TBooleanField;
    DBRGSexante: TDBRadioGroup;
    TabSheetFace: TTabSheet;
    DBGrid1: TDBGrid;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    DBGrid7: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    QueryFace: TQuery;
    DsFace: TDataSource;
    QueryFaceAdj: TQuery;
    DsFaceAdj: TDataSource;
    QueryFaceAdjcd_face: TStringField;
    QueryFaceAdjcd_face_adj: TStringField;
    QueryFaceAdjds_face: TStringField;
    Label7: TLabel;
    LabelAdj: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit13: TDBEdit;
    Label92: TLabel;
    QueryContasBancoslayout: TStringField;
    Label93: TLabel;
    DBEdit14: TDBEdit;
    QueryContasBancosDebito_Tipo: TSmallintField;
    QueryContasBancosDebito_Sequencial: TIntegerField;
    QueryContasBancosBoleto_Sequencial: TIntegerField;
    QueryContasBancosJurosDiario: TFloatField;
    Label94: TLabel;
    DBEdit15: TDBEdit;
    Label95: TLabel;
    DBEdit16: TDBEdit;
    Label96: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label97: TLabel;
    Label98: TLabel;
    QueryContasBancosmsg1: TStringField;
    QueryContasBancosmsg2: TStringField;
    QueryContasBancosPasta: TStringField;
    Label99: TLabel;
    DBEdit20: TDBEdit;
    QueryCancelamentoativo: TBooleanField;
    DBCheckBox5: TDBCheckBox;
    PopupMenu2: TPopupMenu;
    ExibiremMultiplasLinhas1: TMenuItem;
    TabSheetFormaLiqCNAB: TTabSheet;
    DBGrid8: TDBGrid;
    QueryLiqCNAB: TQuery;
    DsLIqCNAB: TDataSource;
    DBNavigator3: TDBNavigator;
    DBComboBox1: TDBComboBox;
    Label100: TLabel;
    QueryCancelamentotipo: TStringField;
    TabSheetEspOdonto: TTabSheet;
    DBGrid9: TDBGrid;
    DBNavigator4: TDBNavigator;
    QueryEspOdonto: TQuery;
    DsEspOdonto: TDataSource;
    QueryTiposPgtoativo: TBooleanField;
    QueryTipoCobrancaativo: TBooleanField;
    QueryTipoDocumentoativo: TBooleanField;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    TabSheetCadEmp: TTabSheet;
    QueryEmpresa: TQuery;
    dsEmpresa: TDataSource;
    DBGrid10: TDBGrid;
    DBNavigator5: TDBNavigator;
    TabSheetTpLigacao: TTabSheet;
    QueryTpLigacao: TQuery;
    DsTpLigacao: TDataSource;
    DBGrid11: TDBGrid;
    DBNavigator6: TDBNavigator;
    TabSheetMenusDesat: TTabSheet;
    DsMenuDesativ: TDataSource;
    QueryMenuDesativ: TQuery;
    DBGrid12: TDBGrid;
    Panel32: TPanel;
    Panel33: TPanel;
    DBNavigator7: TDBNavigator;
    DBCheckBox9: TDBCheckBox;
    QueryGrauParentescoativo: TBooleanField;
    TabSheetBairros: TTabSheet;
    DBGrid13: TDBGrid;
    Panel34: TPanel;
    DBNavigator8: TDBNavigator;
    DsBairro: TDataSource;
    GroupBox6: TGroupBox;
    DBCheckBox10: TDBCheckBox;
    Label101: TLabel;
    QueryClinicasExigeANS: TBooleanField;
    DBCheckBox11: TDBCheckBox;
    QueryTipoContatoativo: TBooleanField;
    ADOQueryBairro: TADOQuery;
    ADOQueryBairrocd_bairro: TSmallintField;
    ADOQueryBairrods_bairro: TStringField;
    Label102: TLabel;
    DBEdit21: TDBEdit;
    Label103: TLabel;
    DBEdit22: TDBEdit;
    QueryTipoCobrancaqt_dg_agencia: TSmallintField;
    QueryTipoCobrancaqt_dg_conta: TSmallintField;
    Label104: TLabel;
    DBEdit23: TDBEdit;
    QueryTipoCobrancaqt_dg_dg_conta: TSmallintField;
    DBMemo1: TDBMemo;
    QueryTipoCobrancaobs: TStringField;
    QueryTiposPgtopermite_data_futura: TStringField;
    DBRadioGroup5: TDBRadioGroup;
    LabelDsPlanoANS: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    QueryTiposPgtoeh_cartao: TStringField;
    QueryPlanosvr_minimo_plano: TFloatField;
    Label105: TLabel;
    DBEdit24: TDBEdit;
    QueryGrupoContratanteinclusao: TDateTimeField;
    Label106: TLabel;
    DBEdit25: TDBEdit;
    Button1: TButton;
    Label107: TLabel;
    ADOQueryCancelANS: TADOQuery;
    DataSource1: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    QueryCancelamentocd_sib: TIntegerField;
    DBCheckBox12: TDBCheckBox;
    QueryTipoCobrancacartaoRecorrencia: TBooleanField;
    QueryPlanoslg_orc_incorporado_mens: TBooleanField;
    DBCheckBox13: TDBCheckBox;
    QueryClinicasoptante_simples: TBooleanField;
    DBCheckBox14: TDBCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure PageControlCadastroChange(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure BitBtnSairCadastroClick(Sender: TObject);
    procedure DBEditCodigoPlanoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryGrauParentescoAfterPost(DataSet: TDataSet);
    procedure QueryPlanosAfterPost(DataSet: TDataSet);
    procedure QueryPlanoGrauAfterPost(DataSet: TDataSet);
    procedure QueryPlanoGrauAfterInsert(DataSet: TDataSet);
    procedure QueryPlanosAfterInsert(DataSet: TDataSet);
    procedure QueryGrupoContratanteAfterPost(DataSet: TDataSet);
    procedure QueryGrupoContratanteAfterInsert(DataSet: TDataSet);
    procedure QueryGrauParentescoAfterInsert(DataSet: TDataSet);
    procedure QueryDescontoAfterInsert(DataSet: TDataSet);
    procedure QueryDescontoAfterPost(DataSet: TDataSet);
    procedure QueryTipoDocumentoAfterInsert(DataSet: TDataSet);
    procedure QueryTipoDocumentoAfterPost(DataSet: TDataSet);
    procedure QueryTipoCobrancaAfterPost(DataSet: TDataSet);
    procedure QueryTipoCobrancaAfterInsert(DataSet: TDataSet);
    procedure QueryCancelamentoAfterInsert(DataSet: TDataSet);
    procedure QueryCancelamentoAfterPost(DataSet: TDataSet);
    procedure QueryTipoContatoAfterInsert(DataSet: TDataSet);
    procedure QueryTipoContatoAfterPost(DataSet: TDataSet);
    procedure QueryParcelasAfterInsert(DataSet: TDataSet);
    procedure QueryParcelasAfterPost(DataSet: TDataSet);
    procedure DBGridParcelasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryStatusOrcamentoAfterPost(DataSet: TDataSet);
    procedure QueryAcrescimoInclusaoAfterPost(DataSet: TDataSet);
    procedure QueryAcrescimoInclusaoAfterInsert(DataSet: TDataSet);
    procedure QueryCoberturaAfterPost(DataSet: TDataSet);
    procedure QueryClinicasAfterPost(DataSet: TDataSet);
    procedure QueryClinicasAfterInsert(DataSet: TDataSet);
    procedure QuerySipAfterPost(DataSet: TDataSet);
    procedure QuerySipAfterInsert(DataSet: TDataSet);
    procedure QueryOcorrenciasAfterInsert(DataSet: TDataSet);
    procedure QueryOcorrenciasAfterPost(DataSet: TDataSet);
    procedure DBEditBancoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditOcorrenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDescricaoOcorrenciaKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure QueryPlanosCalcFields(DataSet: TDataSet);
    procedure QueryDentesAfterPost(DataSet: TDataSet);
    procedure QueryDentesXFacesAfterPost(DataSet: TDataSet);
    procedure QueryDentesBeforeInsert(DataSet: TDataSet);
    procedure QueryDentesXFacesBeforeInsert(DataSet: TDataSet);
    procedure DBEditCodDenteExit(Sender: TObject);
    procedure QueryGrupoCentroCustoAfterPost(DataSet: TDataSet);
    procedure QueryCentroCustoAfterPost(DataSet: TDataSet);
    procedure QueryContasBancosAfterPost(DataSet: TDataSet);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure QueryTiposPgtoAfterPost(DataSet: TDataSet);
    procedure SpeedButtonPesqCodClick(Sender: TObject);
    procedure EditPesqCodExit(Sender: TObject);
    procedure BitBtnPesqCodClick(Sender: TObject);
    procedure ButtonTudoClick(Sender: TObject);
    procedure QueryClinicasNewRecord(DataSet: TDataSet);
    procedure Aplicaresteacrscimo1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure QueryAcrescimoInclusaoBeforePost(DataSet: TDataSet);
    procedure QueryDescontoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure QueryAcrescimoInclusaoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure QueryDescontoBeforePost(DataSet: TDataSet);
    procedure QueryDentesBeforePost(DataSet: TDataSet);
    procedure QueryPlanosNewRecord(DataSet: TDataSet);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure QueryDentesAfterScroll(DataSet: TDataSet);
    procedure QueryFaceAfterScroll(DataSet: TDataSet);
    procedure ExibiremMultiplasLinhas1Click(Sender: TObject);
    procedure QueryEspOdontoNewRecord(DataSet: TDataSet);
    procedure QueryEspOdontoBeforePost(DataSet: TDataSet);
    procedure QueryEspOdontoAfterPost(DataSet: TDataSet);
    procedure QueryCancelamentoBeforePost(DataSet: TDataSet);
    procedure QueryCancelamentoNewRecord(DataSet: TDataSet);
    procedure DBComboBox1Change(Sender: TObject);
    procedure QueryTipoCobrancaNewRecord(DataSet: TDataSet);
    procedure QueryTiposPgtoNewRecord(DataSet: TDataSet);
    procedure QueryTipoDocumentoNewRecord(DataSet: TDataSet);
    procedure QueryEmpresaBeforeDelete(DataSet: TDataSet);
    procedure QueryEmpresaAfterPost(DataSet: TDataSet);
    procedure QueryTpLigacaoAfterPost(DataSet: TDataSet);
    procedure QueryMenuDesativAfterPost(DataSet: TDataSet);
    procedure QueryMenuDesativBeforePost(DataSet: TDataSet);
    procedure DBGrid13KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure ADOQueryBairroBeforePost(DataSet: TDataSet);
    procedure QueryPlanosAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure QueryCancelamentoAfterScroll(DataSet: TDataSet);
    procedure QueryPlanosBeforePost(DataSet: TDataSet);
    procedure QueryClinicasBeforePost(DataSet: TDataSet);
    procedure QueryTipoCobrancaBeforePost(DataSet: TDataSet);

  private

    { Private declarations }
  public
     Procedure PDesabilitaTab;
  end;

  TIECustomGrid = class(TCustomGrid)
  public
    property InplaceEditor;
  end;

  TIEInplaceEdit = class(TInplaceEdit)
  public
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  end;

var
  FormDiversos: TFormDiversos;
  Mostrar_Registros : Boolean;
  Nome : String[40];

implementation

uses QRAcrescimo, PesquisaGrupoCCusto, Fundo, udm, PesquisaPlanos,
  cadDescontoPlano,enio,Biblio;

{$R *.DFM}

procedure TFormDiversos.FormCreate(Sender: TObject);
begin
     Top := 70;
     Left := 8;
//     FormFundo.DatabaseMultiOdonto.Connected := False;
//     FormFundo.DatabaseMultiOdonto.Connected := True;
     QueryPlanoAuxiliar.Open;
     QueryPlanos.Open;
     QueryPlanosAuxiliar.Open;
     QueryGrauParentesco.Open;
     QueryPlanoGrau.Open;
     QueryGrupoContratante.Open;
     QueryDesconto.Open;
     QueryTipoDocumento.Open;
     QueryTipoCobranca.Open;
     QueryCancelamento.Open;
     QueryTipoContato.Open;
     QueryParcelas.Open;
     QueryStatusOrcamento.Open;
     QueryAcrescimoInclusao.Open;
     QueryCobertura.Open;
     QueryClinicas.Open;
     QuerySip.Open;
     QueryOcorrencias.Open;
     QueryDentes.Open;
     QueryDentesXFaces.Open;
     QueryGrupoCentroCusto.Open;
     QueryCentroCusto.Open;
     QueryContasBancos.Open;
     QueryTiposPgto.Open;
     QueryvinculoANS.Open;

     PageControlCadastro.ActivePage := TabPlanos;
end;

procedure TFormDiversos.PageControlCadastroChange(Sender: TObject);
begin
   with PageControlCadastro do
   begin
      if ActivePage = TabPlanos           then
         DBNavigatorCadastro.DataSource := DataSourcePlanos
      else
      if ActivePage = TabGrauParentesco   then
         DBNavigatorCadastro.DataSource := DataSourceGrauParentesco
      else
      if ActivePage = TabPlanoGrau        then
         DBNavigatorCadastro.DataSource := DataSourcePlanoGrau
      else
      if ActivePage = TabGrupoContratante then
         DBNavigatorCadastro.DataSource := DataSourceGrupoContrantante
      else
      if ActivePage = TabDesconto         then
      begin
         DBNavigatorCadastro.DataSource := DataSourceDesconto;
         QueryDesconto.Filtered := false;
         QueryDesconto.Filtered := true;
      end
      else
      if ActivePage = TabDocumento        then
         DBNavigatorCadastro.DataSource := DataSourceTipoDocumento
      else
      if ActivePage = TabCobranca         then
         DBNavigatorCadastro.DataSource := DataSourceTipoCobranca
      else
      if ActivePage = TabCancelamento     then
         DBNavigatorCadastro.DataSource := DataSourceCancelamento
      else
      if ActivePage = TabTipoContato      then
         DBNavigatorCadastro.DataSource := DataSourceTipoContato
      else
      if ActivePage = TabParcelas         then
         DBNavigatorCadastro.DataSource := DataSourceParcelas
      else
      if ActivePage = TabStatusOrcamento  then
         DBNavigatorCadastro.DataSource := DataSourceStatusOrcamento
      else
      if ActivePage = TabAcrescimo        then
      begin
         DBNavigatorCadastro.DataSource := DataSourceAcrescimoDesconto;
         QueryAcrescimoInclusao.Filtered := false;
         QueryAcrescimoInclusao.Filtered := true;
      end
      else
      if ActivePage = TabCobertura        then
         DBNavigatorCadastro.DataSource := DataSourceCobertura
      else
      if ActivePage = TabClinicas         then
         DBNavigatorCadastro.DataSource := DataSourceClinicas
      else
      if ActivePage = TabSip              then
         DBNavigatorCadastro.DataSource := DataSourceSip
      else
      if ActivePage = TabOcorrencias      then
         DBNavigatorCadastro.DataSource := DataSourceOcorrencias
      else
      if ActivePage = TabDentes           then
         DBNavigatorCadastro.DataSource := DataSourceDentes
      else
      if ActivePage = TabDentesXFaces     then
         DBNavigatorCadastro.DataSource := DataSourceDentesXFaces
      else
      if ActivePage = TabGrupoCentroCusto then
         DBNavigatorCadastro.DataSource := DataSourceGrupoCentroCusto
      else
      if ActivePage = TabCentroCusto      then
         DBNavigatorCadastro.DataSource := DataSourceCentroCusto
      else
      if ActivePage = TabContasBanco      then
         DBNavigatorCadastro.DataSource := DataSourceContasBanco
      else
      if ActivePage = TabTiposPgto        then
         DBNavigatorCadastro.DataSource := DataSourceTiposPgto
      else
      if ActivePage = TabSheetEspOdonto   then
         QueryEspOdonto.open
      else
      if ActivePage = TabSheetCadEmp then
        QueryEmpresa.open
      else
      if ActivePage = TabSheetTpLigacao then
        QueryTpLigacao.open
      else
      if ActivePage = TabSheetMenusDesat   then
         QueryMenuDesativ.Open
      else
      if ActivePage = TabSheetBairros  then
         ADOQueryBairro.Open;



      QueryFace.Active := (ActivePage = TabSheetFace);
      QueryFaceAdj.Active := (ActivePage = TabSheetFace);
      QueryLiqCNAB.Active := (ActivePage = TabSheetFormaLiqCNAB);
  end;
end;

procedure TFormDiversos.BitBtnImprimirClick(Sender: TObject);
begin
      with PageControlCadastro do
          begin
            if ActivePage = TabAcrescimo then
               begin
                 Application.CreateForm(TQRListaAcrescimo, QRListaAcrescimo);
                 QRListaAcrescimo.Preview;
                 QRListaAcrescimo.Free;
               end;
{            else
            if ActivePage = TabOcorrencias then
               begin
                 Application.CreateForm(TQRListaOcorrencias, QRListaOcorrencias);
                 QRListaOcorrencias.Preview;
                 QRListaOcorrencias.Free;
               end;
          end;
{                 else
                     if ActivePage = TabPatologias then
                        begin
                          Application.CreateForm(TQRPatologias, QRPatologias);
                          QRPatologias.Preview;
                          QRPatologias.Free;
                        end;}
          end;
end;

procedure TFormDiversos.BitBtnSairCadastroClick(Sender: TObject);
begin
     Close;
end;

procedure TFormDiversos.DBEditCodigoPlanoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormDiversos.BitBtnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TFormDiversos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryvinculoANS.Close;
     QueryPlanoAuxiliar.Close;
     QueryPlanos.Close;
     QueryPlanosAuxiliar.Close;
     QueryGrauParentesco.Close;
     QueryPlanoGrau.Close;
     QueryGrupoContratante.Close;
     QueryDesconto.Close;
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryCancelamento.Close;
     QueryTipoContato.Close;
     QueryParcelas.Close;
     QueryStatusOrcamento.Close;
     QueryAcrescimoInclusao.Close;
     QueryCobertura.Close;
     QueryClinicas.Close;
     QuerySip.Close;
     QueryOcorrencias.Close;
     QueryDentes.Close;
     QueryDentesXFaces.Close;
     QueryGrupoCentroCusto.Close;
     QueryCentroCusto.Close;
     QueryContasBancos.Close;
     QueryTiposPgto.Close;
     Action := cafree;
end;

procedure TFormDiversos.QueryGrauParentescoAfterPost(DataSet: TDataSet);
begin
     with QueryGrauParentesco do
       begin
          Close;
          Open;
          Last;
       end;
     DBEditDescricaoGrau.SetFocus;
end;

procedure TFormDiversos.QueryPlanosAfterPost(DataSet: TDataSet);
var CdPlano : integer;
begin
   CdPlano := QueryPlanosCodigo.AsInteger;
   QueryPlanos.Close;
   QueryPlanos.Open;
   // nao funcionou locate, kelly solicitou que ao salvar um registro mudar para o proximo plano
   while not QueryPlanos.eof do
   begin
      if QueryPlanosCodigo.AsInteger = cdPLano then
         break;
      QueryPlanos.Next;
   end;
   QueryPlanos.Next;
end;

procedure TFormDiversos.QueryPlanoGrauAfterPost(DataSet: TDataSet);
begin
     with QueryPlanoGrau do
       begin
          Close;
          Open;
          Last;
       end;
     DBEditCodigoPlanoGrau.SetFocus;
end;

procedure TFormDiversos.QueryPlanoGrauAfterInsert(DataSet: TDataSet);
begin
     DBEditCodigoPlanoGrau.SetFocus;
end;

procedure TFormDiversos.QueryPlanosAfterInsert(DataSet: TDataSet);
begin
     DBEditDescricaoPlanos.SetFocus;
end;

procedure TFormDiversos.QueryGrupoContratanteAfterPost(DataSet: TDataSet);
begin
     with QueryGrupoContratante do
       begin
          Close;
          Open;
          Last;
       end;
     DBEditDescricaoGrupo.SetFocus;
end;

procedure TFormDiversos.QueryGrupoContratanteAfterInsert(DataSet: TDataSet);
begin
     DBEditDescricaoGrupo.SetFocus;
end;

procedure TFormDiversos.QueryGrauParentescoAfterInsert(DataSet: TDataSet);
begin
     DBEditDescricaoGrau.SetFocus;
end;

procedure TFormDiversos.QueryDescontoAfterInsert(DataSet: TDataSet);
begin
     DBEditCodigoDesconto.SetFocus;
end;

procedure TFormDiversos.QueryDescontoAfterPost(DataSet: TDataSet);
begin
     with QueryDesconto do
       begin
          Close;
          Open;
          Last;
       end;
     DBEditCodigoDesconto.SetFocus;
end;

procedure TFormDiversos.QueryTipoDocumentoAfterInsert(DataSet: TDataSet);
begin
     DBEditDescricaoDocumento.SetFocus;
end;

procedure TFormDiversos.QueryTipoDocumentoAfterPost(DataSet: TDataSet);
begin
     with QueryTipoDocumento do
       begin
           DisableControls;
           Nome := QueryTipoDocumentoDescricao.asString;
           Close;
           Open;
           Locate('Descricao', Nome, [loCaseInsensitive]);
           EnableControls;
       end;
end;

procedure TFormDiversos.QueryTipoCobrancaAfterPost(DataSet: TDataSet);
begin
     with QueryTipoCobranca do
       begin
           DisableControls;
           Nome := QueryTipoCobrancaDescricao.asString;
           Close;
           Open;
           Locate('Descricao', Nome, [loCaseInsensitive]);
           EnableControls;
       end;
       if    QueryTipoCobrancaeh_banco.AsBoolean and ((QueryTipoCobrancaqt_dg_agencia.AsInteger = 0)
          or (QueryTipoCobrancaqt_dg_conta.AsInteger = 0)
          or (QueryTipoCobrancaqt_dg_dg_conta.AsInteger = 0)) then
       begin
          ShowMessage('Atenção, esse tipo de cobrança é um instituição financeira e não foi informado a quantidade de dígitos '+
                      'da agência e conta corrente, essa informação é importante para validar a agência e conta corrente para débito no cadastro de contratante');
       end;
end;

procedure TFormDiversos.QueryTipoCobrancaAfterInsert(DataSet: TDataSet);
begin
     DBEditDescricaoCobranca.SetFocus;
end;

procedure TFormDiversos.QueryCancelamentoAfterInsert(DataSet: TDataSet);
begin
     DBEditDescricaoCancelamento.SetFocus;
end;

procedure TFormDiversos.QueryCancelamentoAfterPost(DataSet: TDataSet);
begin
     with QueryCancelamento do
       begin
           DisableControls;
           Nome := QueryCancelamentoDescricao.asString;
           Close;
           Open;
           Locate('Descricao', Nome, [loCaseInsensitive]);
           EnableControls;
       end;
end;

procedure TFormDiversos.QueryTipoContatoAfterInsert(DataSet: TDataSet);
begin
     DBEditDescricaoContato.SetFocus;
end;

procedure TFormDiversos.QueryTipoContatoAfterPost(DataSet: TDataSet);
begin
     with QueryTipoContato do
       begin
         Close;
         Open;
       end;
end;

procedure TFormDiversos.QueryParcelasAfterInsert(DataSet: TDataSet);
begin
     DBEditDescricaoStatus.SetFocus;
end;

procedure TFormDiversos.QueryParcelasAfterPost(DataSet: TDataSet);
begin
     with QueryParcelas do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.DBGridParcelasKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
       vk_return :
          begin
            key := vk_tab;
            if Assigned(TIECustomGrid(Sender).InplaceEditor) then
               TIEInplaceEdit(TIECustomGrid(Sender).InplaceEditor).KeyDown(key,shift);
          end;
     end;
end;

{ TIEInplaceEdit }

procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TFormDiversos.QueryStatusOrcamentoAfterPost(DataSet: TDataSet);
begin
     with QueryStatusOrcamento do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.QueryAcrescimoInclusaoAfterPost(DataSet: TDataSet);
begin
     with QueryAcrescimoInclusao do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.QueryAcrescimoInclusaoAfterInsert(
  DataSet: TDataSet);
begin
     DBEditPlanoAcrescimo.SetFocus;
end;


procedure TFormDiversos.QueryCoberturaAfterPost(DataSet: TDataSet);
begin
     with QueryCobertura do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.QueryClinicasAfterPost(DataSet: TDataSet);
begin
     with QueryClinicas do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.QueryClinicasAfterInsert(DataSet: TDataSet);
begin
  DBEditDescricao.SetFocus;
end;

procedure TFormDiversos.QuerySipAfterPost(DataSet: TDataSet);
begin
     with QuerySip do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.QuerySipAfterInsert(DataSet: TDataSet);
begin
  DBEditDescricaoSip.SetFocus;
end;

procedure TFormDiversos.QueryOcorrenciasAfterInsert(DataSet: TDataSet);
begin
  DBEditBanco.SetFocus;
end;

procedure TFormDiversos.QueryOcorrenciasAfterPost(DataSet: TDataSet);
begin
     with QueryOcorrencias do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.DBEditBancoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormDiversos.DBEditOcorrenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormDiversos.DBEditDescricaoOcorrenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormDiversos.QueryPlanosCalcFields(DataSet: TDataSet);
begin
     if QueryPlanosFamiliar.AsBoolean then
        QueryPlanosFamiliar_Aux.AsString := 'Sim'
     else
        QueryPlanosFamiliar_Aux.AsString := 'Não';
end;

procedure TFormDiversos.QueryDentesAfterPost(DataSet: TDataSet);
begin
   with QueryDentes do
     begin
       Close;
       Open;
       Last;
     end;
end;

procedure TFormDiversos.QueryDentesXFacesAfterPost(DataSet: TDataSet);
begin
   with QueryDentesXFaces do
     begin
       Close;
       Open;
       Last;
     end;
end;

procedure TFormDiversos.QueryDentesBeforeInsert(DataSet: TDataSet);
begin
  DBEditCodigo_Dente.SetFocus;
end;

procedure TFormDiversos.QueryDentesXFacesBeforeInsert(DataSet: TDataSet);
begin
  DBEditCodDente.SetFocus;
end;

procedure TFormDiversos.DBEditCodDenteExit(Sender: TObject);
begin
{   if DBEditCodDente.Text <> '' then
     with QueryDentes do
       begin
         close;
         SQL[1] := 'Where Codigo =:Dente';
         ParamByName('Dente').AsInteger := QueryDentesXFacesCodigo_Dente.AsInteger;
         open;
         if recordcount = 0 then
           begin
             showmessage('Código do Dente inválido digite novamente !');
             DBEditCodDente.SetFocus;
             exit;
           end
         else
           QueryDentesXFacesDescricao.AsString := QueryDentesDescricao.AsString;
       end;}
end;

procedure TFormDiversos.QueryGrupoCentroCustoAfterPost(DataSet: TDataSet);
begin
     with QueryGrupoCentroCusto do
       begin
          Close;
          Open;
          Last;
       end;
     DBEditCodigoGrupo.SetFocus;
end;

procedure TFormDiversos.QueryCentroCustoAfterPost(DataSet: TDataSet);
begin
     with QueryCentroCusto do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.QueryContasBancosAfterPost(DataSet: TDataSet);
begin
     with QueryContasBancos do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormDiversos.BitBtnPesquisarClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaGrupoCCusto, FormPesquisaGrupoCCusto);
     FormPesquisaGrupoCCusto.ShowModal;

     if QueryCentroCusto.state in [dsEdit, dsInsert] then
        begin
          QueryCentroCustoGrupo_Conta.asInteger := PesquisaGrupoCCusto.FormPesquisaGrupoCCusto.QueryGrupoCCustoid_Grupo.asInteger;
        end;
     FormPesquisaGrupoCCusto.QueryGrupoCCusto.Close;
     FormPesquisaGrupoCCusto.Free;

end;

procedure TFormDiversos.QueryTiposPgtoAfterPost(DataSet: TDataSet);
begin
     with QueryTiposPgto do
       begin
          Close;
          Open;
          Last;
       end;
     DBEditDescricaoPgto.SetFocus;
end;

procedure TFormDiversos.SpeedButtonPesqCodClick(Sender: TObject);
begin
EditPesqCod.Visible := True;
EditPesqCod.Text := '';
EditPesqCod.SetFocus;
end;

procedure TFormDiversos.BitBtnPesqCodClick(Sender: TObject);
begin
   EditPesqCod.Visible := True;
   EditPesqCod.Text := '';
   EditPesqCod.SetFocus;
end;

procedure TFormDiversos.EditPesqCodExit(Sender: TObject);
begin
   With QueryPlanos do
     begin
       Close;
       SQL[1] := 'where Codigo >= ''' + EditPesqCod.Text + '''';
       Open;
       if (RecordCount <> 0) then
         Begin
           MessageDlg('Plano de código ' + EditPesqCod.Text + ': ' + DBEditDescricaoPlanos.text, mtInformation,[mbOk],0);
           EditPesqCod.Visible := False;
         End
         Else Begin
           ShowMessage('Plano Não Encontrado !!! [ENTER]');
           EditPesqCod.Visible := False;
           BitBtnPesqCod.SetFocus;
           exit;
          end;
     End;
end;





procedure TFormDiversos.ButtonTudoClick(Sender: TObject);
begin
   With QueryPlanos do
     Begin
       close;
       SQL[0] := 'Select * from Plano';
       SQL[1] := '';
       open;
       exit;
     End;
end;

procedure TFormDiversos.QueryClinicasNewRecord(DataSet: TDataSet);
begin
   QueryClinicasTipoPessoa.AsString := 'PJ';
end;

procedure TFormDiversos.Aplicaresteacrscimo1Click(Sender: TObject);
begin
  if not QueryAcrescimoInclusaoid_acrescimo.Isnull then
  begin
     Dm.QueryGenerica.Close;
     Dm.QueryGenerica.Sql.Clear;
     Dm.QueryGenerica.Sql.Add('select top 1 * from mensalidade_usuario where id_acrescimo = ' +
     QueryAcrescimoInclusaoid_acrescimo.AsString);
     Dm.QueryGenerica.Open;
     if (Dm.QueryGenerica.bof and Dm.QueryGenerica.Eof) then
     begin
        if Application.MessageBox(Pchar('Confirma o processamento de ' + QueryAcrescimoInclusaoPercentual.AsString + '% de aumento para o plano ' +
           QueryAcrescimoInclusaoPlano.AsString + ' -> ' + QueryAcrescimoInclusaoDescricao.AsString + ' ?'),'Inclusão acréscimo plano',MB_OKCANCEL + MB_DEFBUTTON2) = IDOK then
        begin
           SpProcessaAumentoMens.Unprepare;
           SpProcessaAumentoMens.ParamByName('@id_acrescimo').AsInteger := QueryAcrescimoInclusaoid_acrescimo.AsInteger;
           SpProcessaAumentoMens.Prepare;
           Try
              SpProcessaAumentoMens.ExecProc;
           except
              on E: Exception do
              begin
                 ShowMessage('Ocorreu um erro ao tentar aplicar o acréscimo. ERRO: ' + E.Message);
                 exit;
              end;
           end;
           ShowMessage('Acréscimo aplicado com sucesso !');
        end;
     end
     else
        ShowMessage('Este acréscimo já foi aplicado, operação cancelada !');
  end;
end;

procedure TFormDiversos.BitBtn1Click(Sender: TObject);
begin
  FormPesquisaPlanos := TFormPesquisaPlanos.create(self);
  FormPesquisaPlanos.ShowModal;
  if QueryAcrescimoInclusao.State = DsInsert then
  begin
     QueryAcrescimoInclusaoPlano.AsInteger := FormPesquisaPlanos.QueryPlanosCodigo.AsInteger;
     DBEditPlanoAcrescimo.SetFocus;
     DBEditPlanoAcrescimo.SelectAll;
  end;

  FormPesquisaPlanos.QueryPlanos.Close;
  FormPesquisaPlanos.Query50.Close;
  FormPesquisaPlanos.Free;
end;

procedure TFormDiversos.QueryAcrescimoInclusaoBeforePost(
  DataSet: TDataSet);
begin
   if not dm.PlanoAtivo(QueryAcrescimoInclusaoPlano.AsString) then
   begin
      ShowMessage('Plano informado não está ativo, operação cancelada !');
      Abort;
   end
   else
   if Application.MessageBox(Pchar('Confirma o processamento de ' + QueryAcrescimoInclusaoPercentual.AsString + '% de aumento para o plano ' +
      QueryAcrescimoInclusaoPlano.AsString + ' -> ' + QueryAcrescimoInclusaoDescricao.AsString + ' ?'),'Inclusão acréscimo plano',MB_OKCANCEL + MB_DEFBUTTON2) <> IDOK then
        Abort;

end;

procedure TFormDiversos.QueryDescontoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   Accept := dm.PlanoAtivo(QueryDescontoCodigo_Plano.AsString);
end;

procedure TFormDiversos.QueryAcrescimoInclusaoFilterRecord(
  DataSet: TDataSet; var Accept: Boolean);
begin
  Accept := dm.PlanoAtivo(QueryAcrescimoInclusaoPlano.AsString);
end;

procedure TFormDiversos.QueryDescontoBeforePost(DataSet: TDataSet);
begin
   if not dm.PlanoAtivo(QueryDescontoCodigo_Plano.AsString) then
   begin
      ShowMessage('Plano informado não está ativo, operação cancelada !');
      Abort;
   end
end;

procedure TFormDiversos.QueryDentesBeforePost(DataSet: TDataSet);
begin
   if (QueryDentes.FieldByName('tipo_dente').AsString = 'O') and (QueryDentes.FieldByName('Perm_deci').AsString = 'P') then
   begin
      if QueryDentes.FieldByName('Molar_preMolar').IsNull then
      begin
         ShowMessage('É necessário informar se o dente é molar ou pré molar !');
         abort;
      end;
   end
   else
      QueryDentes.FieldByName('Molar_preMolar').Clear;
end;

procedure TFormDiversos.QueryPlanosNewRecord(DataSet: TDataSet);
begin
   QueryPlanosConsideraCrianca.AsBoolean := false;
   QueryPlanosAtivo.AsBoolean := true;
   QueryPlanosFamiliar.AsBoolean := false;
   QueryPlanoslg_orc_incorporado_mens.AsBoolean := false;

end;

procedure TFormDiversos.DBRadioGroup2Change(Sender: TObject);
begin
   DBRGMoPreMo.enabled := (DBRadioGroup2.ItemIndex = 0) and (DBRGPermDec.ItemIndex = 0);
end;

procedure TFormDiversos.QueryDentesAfterScroll(DataSet: TDataSet);
begin
   DBRadioGroup2Change(DataSet);
end;

procedure TFormDiversos.QueryFaceAfterScroll(DataSet: TDataSet);
begin
   QueryFaceAdj.close;
   if QueryFace.FieldByname('cd_face').AsString <> '' then
   begin
      QueryFaceAdj.sql[1] := '''' + QueryFace.FieldByname('cd_face').AsString + '''';
      QueryFaceAdj.Open;
      LabelAdj.caption := 'FACES ADJACENTES À FACE "'+ QueryFace.FieldByname('cd_face').AsString  + '"';
   end
   else
      LabelAdj.caption := '';

end;

procedure TFormDiversos.ExibiremMultiplasLinhas1Click(Sender: TObject);
begin
   ExibiremMultiplasLinhas1.checked := not ExibiremMultiplasLinhas1.checked;
   PageControlCadastro.MultiLine := ExibiremMultiplasLinhas1.checked;

end;

procedure TFormDiversos.QueryEspOdontoNewRecord(DataSet: TDataSet);
begin
   QueryEspOdonto.FieldByName('cd_especialidade').AsString := dm.ExecutaComando('select max(cd_especialidade) qt from especialidade','qt');
   QueryEspOdonto.FieldByName('cd_especialidade').AsInteger := QueryEspOdonto.FieldByName('cd_especialidade').AsInteger + 1;
   QueryEspOdonto.FieldByName('ativa').AsString := 'S';
end;

procedure TFormDiversos.QueryEspOdontoBeforePost(DataSet: TDataSet);
begin
   QueryEspOdonto.FieldByName('ds_especialidade').AsString := uppercase(QueryEspOdonto.FieldByName('ds_especialidade').AsString);
end;

procedure TFormDiversos.QueryEspOdontoAfterPost(DataSet: TDataSet);
begin
   QueryEspOdonto.close;
   QueryEspOdonto.Open;
   QueryEspOdonto.Last;
end;

procedure TFormDiversos.QueryCancelamentoBeforePost(DataSet: TDataSet);
begin
   if (QueryCancelamentoCodigo.AsString = '') then
   begin
      if DBComboBox1.ItemIndex = 1 then
      begin
         QueryCancelamentoCodigo.AsString := dm.ExecutaComando('select max(codigo) + 1 qt from cancelamento','qt');
         QueryCancelamentocd_sib.AsString := '';
      end;
   end;
   if QueryCancelamentoTipo.AsString = 'USUARIO' THEN
      begin
         if QueryCancelamentocd_sib.IsNull then
         begin
           ShowMessage('Informe o motivo de Cancelamento ANS');
           Abort;
         end;
      end;

end;

procedure TFormDiversos.QueryCancelamentoNewRecord(DataSet: TDataSet);
begin
   QueryCancelamentoativo.AsBoolean := true;
end;

procedure TFormDiversos.DBComboBox1Change(Sender: TObject);
begin
   DBEditCodigoCancelamento.Enabled := (DBComboBox1.ItemIndex = 0);
         Label107.Visible :=  DBComboBox1.ItemIndex = 0;
      DBLookupComboBox3.Visible := DBComboBox1.ItemIndex = 0;

   if DBComboBox1.ItemIndex = 1 then
      QueryCancelamentoCodigo.AsString := '';
end;

procedure TFormDiversos.QueryTipoCobrancaNewRecord(DataSet: TDataSet);
begin
   QueryTipoCobrancaAtivo.AsBoolean := true;
end;

procedure TFormDiversos.QueryTiposPgtoNewRecord(DataSet: TDataSet);
begin
   QueryTiposPgtoAtivo.AsBoolean := true;
end;

procedure TFormDiversos.QueryTipoDocumentoNewRecord(DataSet: TDataSet);
begin
   QueryTipoDocumentoAtivo.AsBoolean := true;
end;

procedure TFormDiversos.QueryEmpresaBeforeDelete(DataSet: TDataSet);
begin
   Showmessage('não é possível deletar empresa');
   abort;
end;

procedure TFormDiversos.QueryEmpresaAfterPost(DataSet: TDataSet);
begin
   QueryEmpresa.close;
   QueryEmpresa.open;
end;

procedure TFormDiversos.QueryTpLigacaoAfterPost(DataSet: TDataSet);
begin
   QueryTpLigacao.close;
   QueryTpLigacao.open;
end;

procedure TFormDiversos.QueryMenuDesativAfterPost(DataSet: TDataSet);
begin
   QueryMenuDesativ.Close;
   QueryMenuDesativ.Open;
end;

procedure TFormDiversos.QueryMenuDesativBeforePost(DataSet: TDataSet);
begin
   if Application.MessageBox(Pchar('ATENÇÃO, a Coluna "Descrição da Opção" deve corresponder exatamente à descrição da Opção(inclusive acentuação, caso contrário a opção não será desativada!, Confirma?'),'Confirmação',MB_OKCANCEL + MB_DEFBUTTON2) <> IDOK then
      Abort;
end;

procedure TFormDiversos.DBGrid13KeyPress(Sender: TObject; var Key: Char);
begin
  key := upcase(key);
end;

procedure TFormDiversos.PDesabilitaTab;
var I : word;
begin
   For I := 0 to PageControlCadastro.PageCount - 1 do
      PageControlCadastro.Pages[I].TabVisible := false;

end;

procedure TFormDiversos.FormShow(Sender: TObject);
begin
   PageControlCadastroChange(sender);
   ADOQueryCancelANS.Open;
end;

procedure TFormDiversos.ADOQueryBairroBeforePost(DataSet: TDataSet);
begin
   if ADOQueryBairrocd_bairro.IsNull then
      ADOQueryBairrocd_bairro.AsString := dm.execmd('select isnull(max(cd_bairro),0) + 1 m from bairro','m');
end;

procedure TFormDiversos.QueryPlanosAfterScroll(DataSet: TDataSet);
begin

   LabelDsPlanoANS.Caption := dm.execmd('select ds_registro a from registroPlanoANS where registroPlano = ''' + QueryPlanosCodigo_Susep.asString + '''','a');
//   if not QueryPlanosCodigo.IsNull then

end;

procedure TFormDiversos.Button1Click(Sender: TObject);
begin
   FmCadDescPlano := TFmCadDescPlano.create(self);
   FmCadDescPlano.ShowModal;
   FmCadDescPlano.free;

end;

procedure TFormDiversos.QueryCancelamentoAfterScroll(DataSet: TDataSet);
begin
    if not QueryCancelamentoCodigo.IsNull then
   begin
      Label107.Visible :=  QueryCancelamentoTipo.AsString = 'USUARIO';
      DBLookupComboBox3.Visible := QueryCancelamentoTipo.AsString = 'USUARIO';
   end;

end;

procedure TFormDiversos.QueryPlanosBeforePost(DataSet: TDataSet);
begin
    if QueryPlanosConsideraCrianca.AsBoolean and (dm.execmd('select count(*) q from descontoXIdade where dt_fim is null and cd_plano = ''' +  QueryPlanosCodigo.AsString + '''','q') <> '0') then
    begin
       ShowMessage('Atenção existe parametrização de desconto por idade para esse plano, não é permitido marar a opção considera criança para desconto, pois senão será aplicado desconto sobre desconto' );
       sysUtils.Abort;
    end;

end;

procedure TFormDiversos.QueryClinicasBeforePost(DataSet: TDataSet);
begin
   //if not enio.ValidaCGC(Replace(QueryClinicasCGC.AsString,'/',''),'.','')) then
   if not enio.ValidaCGC(replace(replace(replace(QueryClinicasCGC.AsString,'.',''),'-',''),'/','')) then
   begin
      ShowMessage('CNPJ do contratante  ' + QueryClinicasCGC.AsString + ' inválido !');
      Abort;
   end;


end;

procedure TFormDiversos.QueryTipoCobrancaBeforePost(DataSet: TDataSet);
begin
  if QueryTipoCobrancacartaoRecorrencia.AsBoolean and QueryTipoCobrancaDebAutomatico.AsBoolean then
  begin
     showMessage('nao pode ser selecionado Débito automatico e recorrência em cartão de crédito ao mesmo tempo');
     sysutils.Abort;
  end;
end;

end.
