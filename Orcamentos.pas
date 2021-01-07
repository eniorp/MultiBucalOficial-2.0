{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Manutenção de Orçamentos                                  }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

unit Orcamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, Db, DBTables,
  Gutenberg, Biblio,IniFiles, Extenso, Menus,enio, ADODB;

    type ListaREvent = record
               Orcamento  : Integer;
               TpEvento   : String[1];
               Operador   : Integer;
               Criterio   : Integer;
               TxEvento   : String;
               tp_criterio : string;
               log         : string;
             end;

type
  TFormOrcamentos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditNumero: TDBEdit;
    DBEditData: TDBEdit;
    DBEditUsuario: TDBEdit;
    DBEditDentista: TDBEdit;
    Label5: TLabel;
    DBEditPrestacoes: TDBEdit;
    Label6: TLabel;
    DBEditTotal: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    DBNavigatorOrcamento: TDBNavigator;
    BitBtnPesquisar: TBitBtn;
    QueryItensOrcamento: TQuery;
    DataSourceItensOrcamento: TDataSource;
    QueryUsuarios: TQuery;
    QueryServicos: TQuery;
    QueryItensOrcamentoOrcamento: TIntegerField;
    QueryItensOrcamentoIncremento: TIntegerField;
    QueryItensOrcamentoServico: TIntegerField;
    QueryItensOrcamentoQuantidade: TSmallintField;
    QueryItensOrcamentoValor: TFloatField;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryDentista: TQuery;
    QueryItensOrcamentoDescricao_Servico: TStringField;
    BitBtnPesquisaUsuario: TBitBtn;
    BitBtnPesquisaDentista: TBitBtn;
    EditNomeUsuario: TEdit;
    EditNomeDentista: TEdit;
    QueryOrcamentosAuxiliar: TQuery;
    QueryOrcamentosAuxiliarNumero: TIntegerField;
    QueryServicosAuxiliar: TQuery;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    QueryValorProcedimento: TQuery;
    QueryValorProcedimentoCodigo_Tabela: TIntegerField;
    QueryValorProcedimentoCodigo_Servico: TIntegerField;
    QueryValorProcedimentoValor_Cobranca: TFloatField;
    QueryServicosAuxiliarCodigo: TIntegerField;
    QueryReceber: TQuery;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberTipo_Documento: TIntegerField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberData_Emissao: TDateTimeField;
    QueryReceberData_Vencimento: TDateTimeField;
    QueryReceberValor: TFloatField;
    QueryReceberSaldo: TFloatField;
    QueryReceberTipo_Cobranca: TIntegerField;
    QueryReceberNumero_Banco: TStringField;
    QueryReceberData_Pagamento: TDateTimeField;
    QueryReceberValor_Pago: TFloatField;
    QueryReceberDesconto: TFloatField;
    QueryReceberJuros: TFloatField;
    QueryReceberOperador: TSmallintField;
    QueryReceberOrcamento: TIntegerField;
    QueryPreferencias: TQuery;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratantePlano: TIntegerField;
    QueryContratanteGrupo_Contratante: TIntegerField;
    QueryPrecoContratante: TQuery;
    QueryPrecoGrupo: TQuery;
    QueryPrecoPlano: TQuery;
    QueryPrecoPlanoTabelaPreco: TIntegerField;
    QueryPrecoPlanoPlano: TIntegerField;
    QueryPrecoPlanoAtiva: TBooleanField;
    QueryPrecoContratanteTabelaPreco: TIntegerField;
    QueryPrecoContratanteContratante: TIntegerField;
    QueryPrecoContratanteAtiva: TBooleanField;
    Label8: TLabel;
    DBEditTipo: TDBEdit;
    BitBtnPesquisaTipo: TBitBtn;
    EditTipo: TEdit;
    QueryTipoOrcamento: TQuery;
    QueryTipoOrcamentoTipo: TSmallintField;
    QueryTipoOrcamentoTipo_Documento: TSmallintField;
    QueryTipoOrcamentoTipo_Cobranca: TSmallintField;
    QueryTipoOrcamentoDescricao: TStringField;
    QueryCoberturaContratante: TQuery;
    QueryCoberturaGrupo: TQuery;
    QueryCoberturaPlano: TQuery;
    QueryCoberturaProcedimento: TQuery;
    QueryCoberturaContratanteTabela_Cobertura: TIntegerField;
    QueryCoberturaContratanteContratante: TIntegerField;
    QueryCoberturaContratanteAtiva: TBooleanField;
    QueryCoberturaGrupoTabela_Cobertura: TIntegerField;
    QueryCoberturaGrupoGrupo_Contratante: TIntegerField;
    QueryCoberturaGrupoAtiva: TBooleanField;
    QueryCoberturaPlanoTabela_Cobertura: TIntegerField;
    QueryCoberturaPlanoPlano: TIntegerField;
    QueryCoberturaPlanoAtiva: TBooleanField;
    QueryCoberturaProcedimentoCodigo_Tabela: TIntegerField;
    QueryCoberturaProcedimentoCodigo_procedimento: TIntegerField;
    QueryCoberturaProcedimentoDias: TIntegerField;
    QueryCoberturaProcedimentoPercentual: TFloatField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryPrecoGrupoGrupo_Contratante: TIntegerField;
    QueryPrecoGrupoTabelaPreco: TIntegerField;
    QueryPrecoGrupoAtiva: TBooleanField;
    QueryPreferenciasRegistro_Unico: TSmallintField;
    QueryPreferenciasNome_Empresa: TStringField;
    QueryContratanteNome: TStringField;
    PrintDialogOrdem: TPrintDialog;
    QueryItensOrcamentoValor_Bruto: TFloatField;
    QueryItensOrcamentoValor_Dentista: TFloatField;
    QueryItensOrcamentoValor_Protetico: TFloatField;
    QueryPreferenciasValor_US: TFloatField;
    QueryReceber2: TQuery;
    QueryReceber2Numero_Titulo: TIntegerField;
    QueryReceber2Desdobramento: TStringField;
    QueryReceber2Tipo_Documento: TIntegerField;
    QueryReceber2Codigo_Contratante: TIntegerField;
    QueryReceber2Data_Emissao: TDateTimeField;
    QueryReceber2Data_Vencimento: TDateTimeField;
    QueryReceber2Valor: TFloatField;
    QueryReceber2Saldo: TFloatField;
    QueryReceber2Tipo_Cobranca: TIntegerField;
    QueryReceber2Numero_Banco: TStringField;
    QueryReceber2Data_Pagamento: TDateTimeField;
    QueryReceber2Valor_Pago: TFloatField;
    QueryReceber2Desconto: TFloatField;
    QueryReceber2Juros: TFloatField;
    QueryReceber2Operador: TSmallintField;
    QueryReceber2Orcamento: TIntegerField;
    DBEditDesconto: TDBEdit;
    Label11: TLabel;
    Label10: TLabel;
    DBGrid1: TDBGrid;
    Panel8: TPanel;
    DBGridItens: TDBGrid;
    QueryParcelas: TQuery;
    QueryParcelasValor_Inicial: TFloatField;
    QueryParcelasValor_Final: TFloatField;
    QueryParcelasNumero_Parcelas: TSmallintField;
    QueryPreferenciasStatus_Grava: TSmallintField;
    QueryPreferenciasStatus_Autorizado: TSmallintField;
    QueryPreferenciasStatus_Parcial: TSmallintField;
    QueryPreferenciasStatus_Total: TSmallintField;
    QueryStatus: TQuery;
    DataSourceStatus: TDataSource;
    QueryStatusCodigo: TSmallintField;
    QueryStatusDescricao: TStringField;
    QueryOperador: TQuery;
    QueryOperadorCodigo: TIntegerField;
    QueryOperadorNome: TStringField;
    QueryOperadorApelido: TStringField;
    QueryOperadorEndereco: TStringField;
    QueryOperadorBairro: TStringField;
    QueryOperadorCidade: TStringField;
    QueryOperadorUF: TStringField;
    QueryOperadorCep: TStringField;
    QueryOperadorFone: TStringField;
    QueryOperadorSenha: TStringField;
    QueryPrestacoes: TQuery;
    QueryPrestacoesOrcamento: TIntegerField;
    QueryPrestacoesParcela: TSmallintField;
    QueryPrestacoesVencimento: TDateTimeField;
    QueryPrestacoesValor: TFloatField;
    QueryUsuariosContratante_Titular: TIntegerField;
    DataSourceReceber2: TDataSource;
    QueryTipoDocumento: TQuery;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobranca: TQuery;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    DataSourceTipoCobranca: TDataSource;
    DataSourceTipoDocumento: TDataSource;
    QueryReceber2Descricao_Documento: TStringField;
    QueryReceber2Descricao_Cobranca: TStringField;
    DataSourceUsuarios: TDataSource;
    DataSourceContratante: TDataSource;
    QueryReceberParcela: TSmallintField;
    QueryReceberObservacoes: TStringField;
    QueryReceberStatus_Orcamento: TSmallintField;
    QueryContratanteEndereco_Residencial: TStringField;
    QueryContratanteCGC_CPF: TStringField;
    QueryContratanteFone1: TStringField;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    DBEditDataConferencia: TDBEdit;
    Label13: TLabel;
    EditNomeOperador: TEdit;
    GroupBoxProcura: TGroupBox;
    LabelNumero: TLabel;
    EditProcura: TEdit;
    DBCheckBoxAprovado: TDBCheckBox;
    QueryOrcamentos: TQuery;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosData_Hora: TDateTimeField;
    QueryOrcamentosOperador_Cadastro: TSmallintField;
    QueryOrcamentosUsuario: TIntegerField;
    QueryOrcamentosContratante_Titular: TIntegerField;
    QueryOrcamentosContratante: TIntegerField;
    QueryOrcamentosData: TDateTimeField;
    QueryOrcamentosDentista: TIntegerField;
    QueryOrcamentosTotal: TFloatField;
    QueryOrcamentosTotal_Bruto: TFloatField;
    QueryOrcamentosTotal_Desconto: TFloatField;
    QueryOrcamentosStatus: TSmallintField;
    QueryOrcamentosNumero_Parcelas: TSmallintField;
    QueryOrcamentosData_Conferencia: TDateTimeField;
    QueryOrcamentosTotal_Dentista: TFloatField;
    QueryOrcamentosTotal_Protetico: TFloatField;
    QueryOrcamentosTotal_Contas: TFloatField;
    QueryOrcamentosAutorizado: TBooleanField;
    QueryOrcamentosOperador_Aprovacao: TSmallintField;
    QueryOrcamentosTipo: TSmallintField;
    QueryOrcamentosDesconto: TFloatField;
    DataSourceOrcamentos: TDataSource;
    QueryOrcamentosNro_Urgencia: TIntegerField;
    BitBtnUrgencia: TBitBtn;
    DBEditUrgencia: TDBEdit;
    QueryUsuariosCodigo_Completo: TIntegerField;
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
    QueryPreferenciasDocumento_Manutencao: TSmallintField;
    QueryPreferenciasDias_Prazo: TSmallintField;
    QueryPreferenciasMostrar_Informacoes: TBooleanField;
    QueryPreferenciasSequencial_Santander: TSmallintField;
    QueryPreferenciasSequencial_Caixa: TSmallintField;
    QueryPreferenciasSequencial_HSBC: TSmallintField;
    QueryPreferenciasSequencial_Bradesco: TSmallintField;
    QueryPreferenciasSequencial_Banespa: TSmallintField;
    QueryPreferenciasSequencial_Real: TSmallintField;
    QueryPreferenciasSequencial_Unibanco: TSmallintField;
    QueryPreferenciasSequencial_Itau: TSmallintField;
    QueryPreferenciasSequencial_NossaCaixa: TSmallintField;
    QueryPreferenciasSequencial_Brasil: TSmallintField;
    QueryPreferenciasSequencial_BoletoBanespa: TIntegerField;
    QueryPreferenciasInicial_Contrato: TDateTimeField;
    QueryPreferenciasFinal_Contrato: TDateTimeField;
    QueryPreferenciasInicial_Receber: TDateTimeField;
    QueryPreferenciasFinal_Receber: TDateTimeField;
    QueryPreferenciasInicial_Pagar: TDateTimeField;
    QueryPreferenciasFinal_Pagar: TDateTimeField;
    QueryPreferenciasValor_Cobranca: TFloatField;
    QueryEmpresa: TQuery;
    QueryEmpresaRazao_Social: TStringField;
    QueryEmpresaFantasia: TStringField;
    QueryEmpresaEndereco: TStringField;
    QueryEmpresaCidade: TStringField;
    QueryEmpresaEstado: TStringField;
    QueryEmpresaCGC: TStringField;
    QueryEmpresaIns_Estadual: TStringField;
    QueryEmpresaCodigo: TIntegerField;
    QueryGrupoContratante: TQuery;
    QueryGrupoContratanteCodigo: TIntegerField;
    QueryGrupoContratanteDescricao: TStringField;
    QueryReceberCodigo_Usuario: TIntegerField;
    QueryPrestacoesNro_Cheque: TStringField;
    QueryPrestacoesBanco_Cheque: TStringField;
    QueryPrestacoesNro_ContaCheque: TStringField;
    QueryReceberStatus_Ocorrencia: TSmallintField;
    QueryReceberNro_cheque: TStringField;
    QueryReceberBanco_Cheque: TStringField;
    QueryReceberNro_ContaCheque: TStringField;
    QueryReceberAgencia_Cheque: TStringField;
    EditNomeDigitador: TEdit;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryDentistaData_Exclusao: TDateTimeField;
    QueryDentistaCodigo_Tabela: TIntegerField;
    QueryReceberDeposito: TBooleanField;
    QueryReceberTipo_Pagamento: TIntegerField;
    QueryOrcamentosData_Status: TDateTimeField;
    QueryOrcamentosOperador_Status: TIntegerField;
    QueryEspeciais: TQuery;
    QueryEspeciaisCodigo_Operador: TIntegerField;
    QueryEspeciaisCodigo_Operacao: TSmallintField;
    BitBtnExclui: TBitBtn;
    QueryOrcamentosPericiaFinal: TBooleanField;
    QueryProcEfetuados: TQuery;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    QueryStatus_Pagto: TQuery;
    QueryStatus_PagtoCodigo: TIntegerField;
    QueryStatus_PagtoDescricao: TStringField;
    DataSourceStatus_Pagto: TDataSource;
    QueryItensOrcamentoDenteFace: TStringField;
    QueryCritOdonto: TQuery;
    QueryServicosSIP: TIntegerField;
    QueryServicoscd_nivel_servico: TStringField;
    QueryPacote: TQuery;
    QueryCritIdade: TQuery;
    QueryDente: TQuery;
    QueryItensOrcamentoHemiarco: TStringField;
    QueryItensOrcamentosexante: TSmallintField;
    QueryItensOrcamentoarcada: TStringField;
    QueryInsLog: TQuery;
    PopupMenu1: TPopupMenu;
    OdontogramaAntigo1: TMenuItem;
    QueryEvent: TQuery;
    QueryExtracao: TQuery;
    QueryItensOrcamentostatus: TStringField;
    EventosOramentoOdontograma1: TMenuItem;
    InformarSexantes1: TMenuItem;
    ReestabelecerconexocomBD1: TMenuItem;
    AlterarStatus1: TMenuItem;
    QueryOrcamentoscd_tabela: TSmallintField;
    DBEdit1: TDBEdit;
    RevalorizaOramento1: TMenuItem;
    QueryContratantelg_restricao: TBooleanField;
    Oramentoscommesmoprocedimento1: TMenuItem;
    BitBtnPrestacoes: TBitBtn;
    Label14: TLabel;
    DBLookupComboBoxTipoCobranca: TDBLookupComboBox;
    BitBtnAutorizar: TBitBtn;
    BitBtnImprimir: TBitBtn;
    BitBtnContratante: TBitBtn;
    DBLookupComboBoxStatus: TDBLookupComboBox;
    Label9: TLabel;
    BitBtnSair: TBitBtn;
    BitBtnPagDentistas: TBitBtn;
    Label15: TLabel;
    DBLookupComboBoxStatusPgto: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtnAlterarStatus: TBitBtn;
    BitBtnPgDentista_: TBitBtn;
    DBCheckBoxEmissaoIR: TDBCheckBox;
    QueryOrcamentoslg_ir: TBooleanField;
    QueryOrcamentostp_cobranca: TIntegerField;
    SP_DeleteOrcamento: TADOStoredProc;
    SPVerifCarenciaCrit: TADOStoredProc;
    sp_Upd_EventOdonto: TADOStoredProc;
    Desaprovaroramento1: TMenuItem;
    GroupBox2: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    QueryOrcamentosPericiaInicial: TBooleanField;
    QueryItensOrcamentotuss_id: TIntegerField;
    PesquisaproCdigoTUSS1: TMenuItem;
    Memo1: TMemo;
    QueryOrcamentosupdated: TDateTimeField;
    QueryItensOrcamentoupdated: TDateTimeField;
    QueryItensOrcamentoindiceTabPagDentista: TIntegerField;
    GerenciamentodeLEADS1: TMenuItem;
    QueryUsuariosdt_ini_cobertura: TDateTimeField;
    ADOQueryItensOrcUpd: TADOQuery;
    Label7: TLabel;
    QueryOrcamentosdata_validade: TDateTimeField;
    DBEdit_data_validade: TDBEdit;
    Label_cidade: TLabel;
    Label_especialidade: TLabel;
    ADOQuery_Temp: TADOQuery;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditDentistaExit(Sender: TObject);
    procedure DBGridItensExit(Sender: TObject);
    procedure DBEditUsuarioExit(Sender: TObject);
    procedure QueryItensOrcamentoServicoValidate(Sender: TField);
    procedure QueryItensOrcamentoAfterInsert(DataSet: TDataSet);
    procedure QueryItensOrcamentoAfterPost(DataSet: TDataSet);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure EditProcuraExit(Sender: TObject);
    procedure BitBtnPrestacoesClick(Sender: TObject);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPesquisaDentistaClick(Sender: TObject);
    procedure DBEditPrestacoesExit(Sender: TObject);
    procedure BitBtnAutorizarClick(Sender: TObject);
    procedure DBEditTipoExit(Sender: TObject);
    procedure QueryItensOrcamentoQuantidadeValidate(Sender: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure BitBtnPesquisaUsuarioClick(Sender: TObject);
    procedure QueryOrcamentosAfterInsert(DataSet: TDataSet);
    procedure QueryOrcamentosAfterPost(DataSet: TDataSet);
    procedure QueryOrcamentosBeforeDelete(DataSet: TDataSet);
    procedure QueryOrcamentosBeforePost(DataSet: TDataSet);
    procedure DataSourceOrcamentosDataChange(Sender: TObject;
      Field: TField);
    procedure BitBtnUrgenciaClick(Sender: TObject);
    procedure DBEditUrgenciaExit(Sender: TObject);
    procedure QueryOrcamentosAfterDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnPagDentistasClick(Sender: TObject);
    procedure QueryOrcamentosStatusChange(Sender: TField);
    procedure BitBtnExcluiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QueryItensOrcamentoBeforePost(DataSet: TDataSet);
    procedure DBGridItensKeyPress(Sender: TObject; var Key: Char);
    procedure QueryOrcamentosUsuarioValidate(Sender: TField);
    procedure QueryOrcamentosAfterScroll(DataSet: TDataSet);
    procedure QueryItensOrcamentoBeforeDelete(DataSet: TDataSet);
    procedure QueryItensOrcamentoAfterDelete(DataSet: TDataSet);
    procedure QueryItensOrcamentoAfterScroll(DataSet: TDataSet);
    procedure QueryItensOrcamentoNewRecord(DataSet: TDataSet);
    procedure QueryItensOrcamentoBeforeEdit(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure QueryOrcamentosNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure OdontogramaAntigo1Click(Sender: TObject);
    procedure QueryItensOrcamentoPostError(DataSet: TDataSet;
      E: EDatabaseError; var Action: TDataAction);
    procedure QueryOrcamentosNumero_ParcelasValidate(Sender: TField);
    procedure QueryOrcamentosDescontoValidate(Sender: TField);
    procedure DBEditUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditDentistaKeyPress(Sender: TObject; var Key: Char);
    procedure QueryItensOrcamentoBeforeInsert(DataSet: TDataSet);
    procedure QueryOrcamentosBeforeEdit(DataSet: TDataSet);
    procedure QueryOrcamentosBeforeInsert(DataSet: TDataSet);
    procedure BitBtnSairClick(Sender: TObject);
    procedure EventosOramentoOdontograma1Click(Sender: TObject);
    procedure InformarSexantes1Click(Sender: TObject);
    procedure ReestabelecerconexocomBD1Click(Sender: TObject);
    procedure AlterarStatus1Click(Sender: TObject);
    procedure RevalorizaOramento1Click(Sender: TObject);
    procedure QueryOrcamentosDentistaValidate(Sender: TField);
    procedure Oramentoscommesmoprocedimento1Click(Sender: TObject);
    procedure BitBtnContratanteClick(Sender: TObject);
    procedure BitBtnPgDentista_Click(Sender: TObject);
    procedure QueryContratanteAfterScroll(DataSet: TDataSet);
    procedure Panel1Exit(Sender: TObject);
    procedure Desaprovaroramento1Click(Sender: TObject);
    procedure PesquisaproCdigoTUSS1Click(Sender: TObject);
    procedure GerenciamentodeLEADS1Click(Sender: TObject);
    procedure QueryOrcamentosAfterOpen(DataSet: TDataSet);


  private

    VUsuario,VIncrementoItem : integer; // usada para setar o foco no proximo registro, após excluir um item do orçamento
    revalorizando,utilizaFormulaNovaPagtoDentista, InformandoSextante,AlterouDentista,VAlterouParcOuDesc,VAutorizando, VGRALOG, VAchouValor : boolean;
    utilizaFormulaNovaPagtoProtetico : boolean;
    vQtAnt : Integer;
    VId : Word; // controla o array.
    Atraso : string[5];
    VUsuAutAtraso : Word;
    REvent : array [1..20] of ListaREvent;
    autorizandoOrcamento : boolean;
    PIncluindoPkg : boolean; // Indica que está incluindo pacote e náo deixa processar
                             // a rotina de pacote novamente.
    function HaDifVrParcelas(Var msg: string): Boolean;
//    function getMesFatFolhaPagto(DtVencto: TDate) : string;

    procedure gravaEventoOdontograma(VIincremento1 : integer);
    procedure ImprimeCanhoto;
    procedure RevalorizaOrcamento;
    function GetTabPagtoDentista: string;
    procedure GetTabPagtoDentistaNova(Full:boolean); // Full significa que percorre toda a tabela de itens do orçamento e atualiza a tabela

    procedure EnvMsgAtraso(PMsg:string;PCor : Tcolor;HabLabelEmp:Boolean);
    procedure AchaVrDentistaProtetico;
    procedure ReCria_Prestacoes;
    Procedure IncluiSex(Sex: Byte; cdServico : Integer);

    procedure VerifPermissao;
    function PVerifExtracao(Pusuario,Pdente: String): boolean;
    procedure ImpGViaCliente;
    procedure impGViaApresentacao;
    procedure ImpGViaDentista;
    procedure ImpGViaConv;
    procedure ImpGViaProtetico;
    procedure ImpGViaOrtodontia;
    procedure PImprimeEventosOdonto;
    procedure GravaLogOrcamento;
    function PCdUsuario: Integer;
    Function FQtdeTotal(PQtIAnt,PQtIAtual,PQtTotal: Integer; PStatus: TDataSetState): Integer;
    procedure PValidaArcada(PCdServico,PArcada: String);
    procedure PVerifDadosAdicionais(Pcdservico : string);
    procedure PVerificaRestricaoCritSexante(Pcdcriterio:String;VerificaStatus: boolean);
    procedure PVerificaRestricaoCritHemiarco(Pcdcriterio:String;VerificaStatus: boolean);
    procedure PVerificaRestricaoCritArcada(Pcdcriterio:String;VerificaStatus: boolean);
    procedure PVerificaRestricaoCritCliente(Pcdcriterio:String;VerificaStatus: boolean); //fazer a tratativa do ;VerificaStatus: boolean 
    procedure PVerificaRestricaoCritFace(PCdDenteXFace,Pcdcriterio:String;VerificaStatus: boolean);
//    procedure PVerificaRestricaoCritDente(PCdDente,Pcdcriterio: String);

    procedure PVerificaRestricaoCritDente(PCdDente,Pcdcriterio: String;QtPermitida: Smallint;VerificaStatus: boolean);

    procedure PValidaHemiarco(PCdServico,PHemiarco: String);
    procedure PValidaSexante(PSexante: integer);
//    procedure HabilitaCamposGrid(PCdservico:String);
//    procedure PVerifQtPorOrcamento(PNrOrcamento,PCdServico,PQtServico: String);
    procedure PAdicionaNrOrcamentos(Var VMsg : TStrings;SpGenerica : TADOStoredProc);
    procedure PVerifiCritXIdade(PcdUsu, PCdServico,PCdDenteXFace:String);
    procedure PValidExecucaoDente(PDente,PServico : String);
    //procedure PVerificaPacote(POrcamento,Pcd_pacote : integer;PdenteFace:String);
    procedure PVerificaPacote(POrcamento,Pcd_pacote : integer;PdenteFace:String; cdDentista: String );
    //procedure VerifStatusUsu(Aborta: Boolean);
    procedure VerifStatusUsu(Aborta: Boolean; pedeSenha : Boolean);
//    procedure VerificaMsg(Codigo: String);
    procedure PGravarEventoOdont(Ptp_evento:char;Pcd_operador,PcdCriterio,Ptx_evento:String;Ptp_criterio:string; log : string);
    procedure PGravarMsgOdont(Ptp_evento:char;PcdCriterio,Ptx_evento:String;Ptp_criterio:string);
    procedure PAvisaRestrOdonto(PMsg: TStrings;PCdCriterio:String);
    procedure PExigeSenhaRestrOdonto(PMsg: TStrings; PCdCriterio:String);
    procedure PBloqRestrOdonto(PMsg: TStrings;PCdCriterio:String);

    procedure PValidaServicoXNivel;
//    procedure PValidaFace(PDenteFaces: String);
//    procedure PValidaDente(VDente:String);
    procedure PVerificaCritOdonto(PCdServico,PCdDenteXFace,PSexante:String;VerificaStatus: boolean);
    procedure MontaTotal;
    procedure AchaValor;
    procedure AchaCobertura(dataIniCobertura: Tdatetime);
    procedure VerificaAtraso;
    procedure Verifica_PrecoGrupo;
    procedure Verifica_PrecoPlano;
    procedure Verifica_CoberturaGrupo(dtIniCobertura : Tdatetime);
    procedure Verifica_CoberturaPlano(dtIniCobertura : TDatetime);
    procedure Imprime_Orcamento;
    procedure Imprime_OrcamentoGraf;
    procedure Imprime_OrcamentoConvenio ;
    procedure Imprime_OrcamentoDentista;
    procedure Imprime_OrcamentoProtetico;
    procedure Imprime_NaoAprovado;
    procedure Imprime_Cabecalho;
    procedure Imprime_ServicosNaoAprovado;
    procedure Soma_Linha;
    procedure Imprime_RodapeNaoAprovado;
    procedure Imprime_ServicosDentista;
    procedure Imprime_RodapeDentista;
    procedure Imprime_ServicosConvenio;
    procedure Imprime_RodapeConvenio;
    procedure Imprime_ServicosProtetico;
    //procedure Imprime_Promissoria;
    procedure  PDadosPromissoria;
    procedure Imprime_Promissoria;
    //procedure Imprime_Corpo(PAssinatura,PEmitente,Pendereco,Pcpf,PFone:String);
    procedure Imprime_Corpo(PAssinatura,PEmitente,Pendereco,Pcpf,Pfone,rg,DtNasc,NadaConsta:String);
    procedure Imprime_Canhoto;
    function getMaiorValorServicoProtetico(cdServico: String) : string;
    procedure LogarInfoDentista(CodigoDentista: String);

  public
     // indica qeu clicou no atalho de altera status orçamento
     NrOrcamento : string;
    AtalhoAltSt,Via_Apresentacao : Boolean;
    procedure fechaQuerys;
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
  FormOrcamentos: TFormOrcamentos;
  Numero_Orcamento,  VDigito : Integer;
  Valor_Bruto, Valor_Dentista, Valor_Protetico, Valor_Total, Valor_TotalBruto,
  Valor_Servico, Valor_TotalDentista, Valor_TotalProtetico : Real;
  Data_Base, Data_Atual : TDate;
  Campo1 : String[80];
  Impressora: TGutenberg;
  CaminhoImpressora : String[30];
  Linha, Pagina, Numero_ViasProtetico, I, Status, Status_Pg : Integer;
  Ini: TIniFile;
  Numero_Str : String[06];
  Numero_Str2 : String[10];
  Quantidade_Str : String[3];
  Valor_Str : String[8];
  Mes_Str : String[9];
  Promissoria, Flag_Receber, Via_Cliente, Via_Convenio, Via_Dentista, Via_Protetico, Tem_Protetico, ChequePre,Via_Ortodontia  : Boolean;
  Dia, Mes, Ano : Word;
  TextoExtenso : String[160];

implementation

uses PesquisaServicos, Prestacoes, PesquisaDentista, Senha, Odontograma,
  EmImpres, MensagemAtraso, ImpressaoOrcamentos, PesquisaUsuario, ConsultaOrcamentos,
  PesquisaContratante, Contratante,
  QRReciboChequesPre, OrcPagDentista, udm, Mensagem, LiberaOdonto, Fundo,
  DadosAdicionaisOrc, ConsultaTratamento, PagDentista,
  RelOrcClienteXDentista, RelOrcViaConv, DadosPromissoria,
  ConsultaEventoOdonto, listaServicosCoincidentes, PesquisaPlanos,
  PesquisaVendedor, relViaProteticoGraf, FrViaOrtodontGraf,
  avisoContratante, RelOrcViaApresentacao, PesqTitbaixSemRecGeral,
  PesqTitBaixadoSemRecibo, PericiaInicial, SelTuss, gerenciamentoDeLED,tacio;

{$R *.DFM}

procedure TFormOrcamentos.FormCreate(Sender: TObject);
begin
    utilizaFormulaNovaPagtoDentista :=(dm.GetParam('UFNVPD') = 'S'); // indica que usa formula nova para valorização de dentista
    utilizaFormulaNovaPagtoProtetico :=(dm.GetParam('UFNVPP') = 'S'); // indica que usa formula nova para valorização de protetico
    AtalhoAltSt := false;
     Left := 0;
     Top := 0;
//     Height := 572;
  //   Width := 800;
     QueryServicos.Open;
     QueryStatus.Open;
     QueryOrcamentos.Open;
     QueryPreferencias.Open;
     QueryItensOrcamento.Open;
     QueryTipoDocumento.Open;
     QueryTipoCobranca.Open;
     QueryEmpresa.Open;
     QueryStatus_Pagto.Open;
     QueryGrupoContratante.Open;
     if Contratante.Orc then begin
        GroupBoxProcura.Visible := True;
        GroupBoxProcura.Left := 560;
        GroupBoxProcura.Top := 3;
        EditProcura.Text := '';
        LabelNumero.Caption := 'Digite o Nº';
     end;

end;

procedure TFormOrcamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if tag = 1 then
        exit;
     if QueryOrcamentos.RecordCount = 0 then exit;
     QueryOrcamentos.DisableControls;
     if not QueryOrcamentosAutorizado.AsBoolean then
     begin

        MontaTotal;

        try
          QueryOrcamentos.Post
        except
          on E: Exception do
          begin
            if VGRALOG then
               Dm.GravaLog('TFormOrcamentos','FormClose','#ORC# ' + QueryOrcamentosNumero.AsString +  e.message);

            ShowMessage('Erro na Gravação do orçamento !!!' +  E.message);
            QueryOrcamentos.Cancel;
          end;
        end;
     end;

     QueryOrcamentos.EnableControls;

     QueryPreferencias.Close;
     QueryStatus.Close;
     QueryOrcamentos.Close;
     QueryItensOrcamento.Close;
     QueryUsuarios.Close;
     QueryServicos.Close;
     QueryDentista.Close;
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryEmpresa.Close;
     QueryGrupoContratante.Close;
     QueryOrcamentosAuxiliar.Close;
     QueryTipoOrcamento.Close;
     QueryParcelas.Close;
     QueryOperador.Close;
     QueryPrestacoes.Close;
     QueryContratante.Close;
     QueryItensOrcamento.Close;
     QueryServicosAuxiliar.Close;
     QueryReceber.Close;
     QueryReceber2.Close;
     QueryPrecoContratante.Close;
     QueryPrecoGrupo.Close;
     QueryPrecoPlano.Close;
     QueryValorProcedimento.Close;
     QueryCoberturaContratante.Close;
     QueryCoberturaGrupo.Close;
     QueryCoberturaPlano.Close;
     QueryCoberturaProcedimento.Close;
     QueryStatus_Pagto.Close;
     try
        FmMensagem.free;
     except
     end;
end;

procedure TFormOrcamentos.DBEditDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of

          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP : Perform(WM_NEXTDLGCTL, 1, 0);
          vk_f1 :
            begin
              if DBEditDentista.Focused then
                 BitBtnPesquisaDentistaClick(Sender);
              if DBEditUsuario.Focused then
                 BitBtnPesquisaUsuarioClick(Sender);
            end;
//          vk_f9  : if QueryOrcamentos.State in [dsbrowse] then
//                     QueryOrcamentos.Insert;
//          vk_f10 : BitBtnAntigosClick(Sender);
     end;
end;

procedure TFormOrcamentos.DBGridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var inc : integer;
begin
     case key of
       vk_space  :
       begin
          if FormOrcamentos.tag = 1 then
          begin
             if QueryItensOrcamentoStatus.AsString = 'A' then
                dm.execmd('update itens_orcamento set status = ''C'' where orcamento = ' + QueryItensOrcamentoOrcamento.AsString + ' and incremento = ' + QueryItensOrcamentoIncremento.AsString)
             else
             //Se for tirar o status C de cancelado, verifica se tem permissão pra isso
             if dm.VerifPermissao('0','62','3','0') then
                dm.execmd('update itens_orcamento set status = ''A'' where orcamento = ' + QueryItensOrcamentoOrcamento.AsString + ' and incremento = ' + QueryItensOrcamentoIncremento.AsString)
             else
                ShowMessage('Você não tem permissão para tirar um cancelamento de item de orçamento');

             inc := QueryItensOrcamentoIncremento.AsInteger;
             QueryItensOrcamento.Close;
             QueryItensOrcamento.open;
             QueryItensOrcamento.Locate('incremento',inc,[]);
             QueryItensOrcamento.next;


          end;
       end;
       vk_return :
          begin
            key := vk_tab;
            if Assigned(TIECustomGrid(Sender).InplaceEditor) then
               TIEInplaceEdit(TIECustomGrid(Sender).InplaceEditor).KeyDown(key,shift);
          end;
        vk_escape :
          begin
            if QueryItensOrcamentoServico.asString = '' then
               QueryItensOrcamento.Cancel;
            if QueryOrcamentos.State in [dsEdit, dsInsert] then
               begin
                 with QueryOrcamentos do
                    begin
                      try
                        Post;
                      except
                        on E: Exception do
                        begin
                           if VGRALOG then
                              Dm.GravaLog('TFormOrcamentos','DBGridItensKeyDown','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);

                          ShowMessage('Erro ao tentar gravar o orçamento!' + #13 +
                                      'ERRO : ' +  E.Message);
                          Cancel;
                          exit;
                        end;
                      end;
                      Close;
                      Open;
                      Last;
                    end;
               end;
            if DBEditPrestacoes.canFocus then
               DBEditPrestacoes.SetFocus;
          end;
        vk_f1: BitBtnPesquisarClick(Sender);
        vk_f5:
          begin
            if FormPesquisaServicos.ShowModal <> mrOK then
               Exit;

            with QueryServicos do
              begin
                Close;
                ParamByName('Codigo_Servico').asInteger := PesquisaServicos.FormPesquisaServicos.QueryServicosCodigo.asInteger;
                Open;
              end;

           if QueryItensOrcamento.State in [dsbrowse] then
              exit;
           QueryItensOrcamentoServico.asInteger := QueryServicosCodigo.asInteger;
           FormPesquisaServicos.QueryServicos.Close;
           FormPesquisaServicos.Query50.Close;
           FormPesquisaServicos.Free;
           end;
{        vk_f5 :
           begin
             SpeedButtonProtocoloClick(Sender);
             QueryItensProtocolo.Insert;
           end;
          end;
       vk_f9 : if QueryOrcamentos.State in [dsbrowse] then
                  QueryOrcamentos.Insert;
       vk_f10 : BitBtnAntigosClick(Sender);}
     end;
end;

{ TIEInplaceEdit }

procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TformOrcamentos.LogarInfoDentista(CodigoDentista:String);
var cidades, especialidades:string;
begin
  if CodigoDentista='' then exit;
  ADOQuery_Temp.Close;
  ADOQuery_Temp.SQL.Clear;
  ADOQuery_Temp.SQL.add('select c.ds_cidade q from cidade c, '+
  ' endereco_x_dentista e where c.cd_cidade  = e.cd_cidade '+
  ' and e.cd_dentista = '+CodigoDentista);
  ADOQuery_Temp.Open;
  if ADOQuery_Temp.RecordCount>0 then
  begin
      while not ADOQuery_Temp.eof do
      begin
        if cidades='' then
          cidades:=ADOQuery_Temp.fieldByName('q').AsString
        else
          cidades:=cidades + ', '+ADOQuery_Temp.fieldByName('q').AsString;
        ADOQuery_Temp.Next;
      end;
  end;

  ADOQuery_Temp.Close;
  ADOQuery_Temp.SQL.Clear;
  ADOQuery_Temp.SQL.add('select ds_especialidade q from esp_x_dentista d '+
  ' ,especialidade e where d.cd_especialidade = e.cd_especialidade and '+
  ' cd_dentista = '+CodigoDentista+' order by principal desc');
    ADOQuery_Temp.Open;
  if ADOQuery_Temp.RecordCount>0 then
  begin
      while not ADOQuery_Temp.eof do
      begin
        if especialidades='' then
          especialidades:=ADOQuery_Temp.fieldByName('q').AsString
        else
          especialidades:=especialidades + ', '+ADOQuery_Temp.fieldByName('q').AsString;
        ADOQuery_Temp.Next;
      end;
  end;


   Label_cidade.Caption:='Cidade do Dentista: '+PrimeiraLetraMaiscula(RemoveAcento(cidades));
   Label_especialidade.Caption:='Especialidades: '+PrimeiraLetraMaiscula(RemoveAcento(especialidades));
end;


procedure TFormOrcamentos.DBEditDentistaExit(Sender: TObject);
begin
     if QueryOrcamentosDentista.asString = '' then exit;

     with QueryDentista do
       begin
         Close;
         ParamByName('Dentista').asInteger := QueryOrcamentosDentista.asInteger;
         Open;
         if RecordCount = 0 then
            begin
              MessageDlg('Dentista Não Cadastrado !!!!', mtError, [mbOk], 0);
              DBEditDentista.SetFocus;
              exit;
            end;

         EditNomeDentista.Text := QueryDentistaNome.asString;
         LogarInfoDentista(QueryOrcamentosDentista.AsString);
         //EditCdTab.Text := QueryDentistacd_tabela.AsString;

         if QueryDentistaData_Exclusao.asString <> '' then
            begin
              MessageDlg('Dentista Excluído em ' + DateToStr(QueryDentistaData_Exclusao.asDateTime) + ' !!!', mtError, [mbOk], 0);
              DBEditDentista.SetFocus;
              exit;
            end;
       end;
     if QueryOrcamentos.State in [dsbrowse] then
        exit;

     with QueryOrcamentos do
       begin
         try
           Post;
         except
            on E: Exception do
            begin
               if VGRALOG then
                  Dm.GravaLog('TFormOrcamentos','DBEditDentistaExit','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);

               ShowMessage('Erro ao tentar gravar o orçamento!' + #13 +
                           'ERRO : ' +  E.Message);
               Cancel;
               exit;
            end;

         end;
       end;

     QueryItensOrcamento.Insert;
     DBGridItens.SetFocus;
end;

procedure TFormOrcamentos.DBGridItensExit(Sender: TObject);
begin
     MontaTotal;
     if QueryOrcamentosNumero_Parcelas.asString = '' then
       if QueryOrcamentosDesconto.asString = '' then
          begin
            with QueryParcelas do
               begin
                 Close;
                 ParamByName('Inicial').asCurrency := Valor_Total;
                 ParamByName('Final').asCurrency := Valor_Total;
                 Open;
               end;
           QueryOrcamentos.Edit;
           QueryOrcamentosNumero_Parcelas.asInteger := QueryParcelasNumero_Parcelas.asInteger;
         end;
     if QueryOrcamentosTotal_Desconto.AsString = '0' then
     begin
       QueryOrcamentosNumero_Parcelas.AsInteger := 0;
       QueryOrcamentosDesconto.AsCurrency := 0;
     end;
     DBEditDesconto.SetFocus;
end;

procedure TFormOrcamentos.MontaTotal;
begin
     Valor_Total := 0;
     Valor_TotalBruto := 0;
     Valor_TotalDentista := 0;
     Valor_TotalProtetico := 0;

     with QueryItensOrcamento do
       begin

         First;
           while not eof do
           begin
             Valor_Total := Valor_Total + QueryItensOrcamentoValor.asCurrency;
             Valor_TotalBruto := Valor_TotalBruto + QueryItensOrcamentoValor_Bruto.asCurrency;
             Valor_TotalDentista := Valor_TotalDentista + QueryItensOrcamentoValor_Dentista.asCurrency;
             Valor_TotalProtetico := Valor_TotalProtetico + QueryItensOrcamentoValor_Protetico.asCurrency;
             Next;
           end;
       end;

     if QueryOrcamentos.State in [dsbrowse] then
        QueryOrcamentos.Edit;

     QueryOrcamentosTotal.asCurrency := Valor_Total;
     QueryOrcamentosTotal_Bruto.asCurrency := Valor_TotalBruto;
     QueryOrcamentosTotal_Dentista.asCurrency := Valor_TotalDentista;
     QueryOrcamentosTotal_Protetico.asCurrency := Valor_TotalProtetico;
     if QueryOrcamentosDesconto.asString <> '' then
        QueryOrcamentosTotal_Desconto.asCurrency := QueryOrcamentosTotal.asCurrency - (QueryOrcamentosTotal.asCurrency * QueryOrcamentosDesconto.asFloat / 100)
     else
        QueryOrcamentosTotal_Desconto.asCurrency := QueryOrcamentosTotal.asCurrency;
     QueryOrcamentos.post;
     QueryOrcamentos.edit;     
end;
function TFormOrcamentos.PCdUsuario: Integer;
begin
   Dm.ExecutaComando('select codigo ,digito from usuario where codigo_completo = ''' + QueryOrcamentosUsuario.AsString + '''','codigo');
   Digito  := dm.QueryGlobal.FieldbyName('digito').asInteger;
   Vusuario := dm.QueryGlobal.FieldbyName('codigo').asInteger;
   Result  := dm.QueryGlobal.FieldbyName('codigo').asInteger;
end;
procedure TFormOrcamentos.DBEditUsuarioExit(Sender: TObject);
  var bloqueioAux : string;
begin
     if QueryOrcamentosUsuario.asString = '' then exit;

     if QueryOrcamentosUsuario.asInteger >= 10 then
     begin
        //Usuario := StrToInt(Copy(DBEditUsuario.Text,1, (Length(DBEditUsuario.Text)) - 1))
        //Usuario := StrToInt(Dm.ExecutaComando('select codigo ,digito from usuario where codigo_completo = ''' + QueryOrcamentosUsuario.AsString + '''','codigo'));
        Dm.ExecutaComando('select codigo ,digito from usuario where codigo_completo = ''' + QueryOrcamentosUsuario.AsString + '''','codigo');
        VUsuario := dm.QueryGlobal.FieldbyName('codigo').asInteger;
        VDigito  := dm.QueryGlobal.FieldbyName('digito').asInteger;
     end
     else
        begin
          MessageDlg('Digitação de Código Inválida !!!!', mtError, [mbOk], 0);
          DBEditUsuario.SetFocus;
          exit;
        end;

//     Digito := StrToInt(Copy(DBEditUsuario.Text, Length(DBEditUsuario.Text), 1));

     with QueryUsuarios do
       begin
         Close;
         ParamByName('codigo_completo').asString := DBEditUsuario.Text;
//         ParamByName('Digito_Usuario').asInteger := Digito;
         Open;
         if RecordCount = 0 then
            begin
              MessageDlg('Usuário Não Cadastrado !!!!', mtError, [mbOk], 0);
              DBEditUsuario.SetFocus;
              exit;
            end
         else
           EditNomeUsuario.Text := QueryUsuariosNome.asString;


         //if QueryUsuariosData_Exclusao.asString <> '' then
//            begin
//              MessageDlg('Usuário Excluído em(Exit) ' + DateToStr(QueryUsuariosData_Exclusao.asDateTime) + ' !!!', mtError, [mbOk], 0);
              //DBEditUsuario.SetFocus;
//              exit;
//            end;
       end;


         if not QueryUsuariosCodigo.IsNull then
         begin
            bloqueioAux := '';
           if (dm.execmd('select distinct count(b.cd_Grupo_contrat) qt from contratante c, bloqueio_grupoContrat b where c.Codigo = ' + QueryUsuariosCodigo.AsString +
                     ' and c.Grupo_Contratante = b.cd_grupo_contrat and convert(char(10),GETDATE(),103) between dt_ini_bloqueio and isnull(dt_fim_gloqueio,''01/01/2079'') ','qt') <> '0') then
                     bloqueioAux := 'ATENÇÃO GRUPO DE CONTRATANTE BLOQUEADO, NÃO É PERMITIDO AUTORIZAÇÃO DE ORÇAMENTO'
            else
              if(dm.execmd('set dateformat dmy select count(*) q from bloqueio_contratante where cd_contratante = ' + QueryUsuariosCodigo.AsString + ' and convert(char(10),getdate(),103) between dt_ini_bloqueio and isnull(dt_fim_bloqueio,''01/01/2079'')','q') <> '0')  then
               bloqueioAux := 'ATENÇÃO CONTRATANTE BLOQUEADO, NÃO É PERMITIDO AUTORIZAÇÃO DE ORÇAMENTO';
            if bloqueioAux <> '' then
            begin
               repeat
                until application.MessageBox(pchar(bloqueioAux),'Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk;

            end;
         end;

//         if not QueryUsuariosCodigo.IsNull and (dm.execmd('set dateformat dmy select count(*) q from bloqueio_contratante where cd_contratante = ' + QueryUsuariosCodigo.AsString + ' and convert(char(10),getdate(),103) between dt_ini_bloqueio and isnull(dt_fim_bloqueio,''01/01/2079'')','q') <> '0')  then
//         begin
  //          repeat
    //         until application.MessageBox('ATENÇÃO CONTRATANTE BLOQUEADO, NÃO PODE AUTORIZAR ORÇAMENTO PARA ELE','Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk;
      //
//         end;



     VerificaAtraso;
     if  DBEditTipo.Text = '6' then
       begin
         with QueryOrcamentosAuxiliar do
           begin
             Close;
             ParamByName('Urgencia').asInteger := StrtoInt(DBEditUrgencia.text);
             ParamByName('Usuario').asInteger  := QueryUsuariosCodigo_completo.asInteger;
             Open;
             if RecordCount <> 0 then
               begin
                 if MessageDlg('Número de Urgência já utilizado, para este usuário !!!!' + #13 +
                               '                  Deseja continuar ?',
                                mtConfirmation, [mbYes, mbNo], 0) = mrNo then
                   begin
                     QueryOrcamentos.Cancel;
                     EditTipo.Clear;
                     EditNomeUsuario.Clear;
                     DBEditData.SetFocus;
                   end;
               end;
           end;
       end;
end;

procedure TFormOrcamentos.QueryItensOrcamentoServicoValidate(
  Sender: TField);

begin
     if dm.execmd('select count(codigo) q from servicos where codigo = ' + QueryItensOrcamentoServico.AsString, 'q') = '0' then
     begin
        ShowMessage('Código do serviço inválido !');
        abort;
     end;
     if not InformandoSextante and ((QueryItensOrcamentoServico.AsInteger = 5111)) then
     begin // como somente o serviço 5110 é executado na sextante tá fixo..mas se tiver outro serviço tem que refazer esse código.

        InformarSexantes1Click(InformarSexantes1);
        InformandoSextante := false;
        abort;
     end;

   Data_Base := StrToDate(dm.GetDataSrv); //Date;// Pega Data do Sistema //Data_Base := Date;// Pega Data do Sistema
   QueryServicosAuxiliar.Close;
   QueryServicosAuxiliar.ParamByName('Servico').asInteger := QueryItensOrcamentoServico.asInteger;
   QueryServicosAuxiliar.Open;

   if QueryItensOrcamentoQuantidade.asFloat > 0 then
   begin
      AchaValor;
      AchaCobertura(QueryUsuariosdt_ini_cobertura.AsDateTime);
      QueryItensOrcamentoValor.asCurrency := Valor_Servico * QueryItensOrcamentoQuantidade.asFloat;
      QueryItensOrcamentoValor_Bruto.asCurrency := Valor_Bruto * QueryItensOrcamentoQuantidade.asFloat;
      QueryItensOrcamentoValor_Dentista.asCurrency := Valor_Dentista * QueryItensOrcamentoQuantidade.asFloat;
      QueryItensOrcamentoValor_Protetico.asCurrency := Valor_Protetico * QueryItensOrcamentoQuantidade.asFloat;
   end;

end;

procedure TFormOrcamentos.AchaVrDentistaProtetico;
   var cdTabelaQtUS, vrAux : string;
begin
   if utilizaFormulaNovaPagtoDentista then
      GetTabPagtoDentistaNova(false);
   if utilizaFormulaNovaPagtoProtetico then
   begin
      //GetTabPagtoProteticoaNova(QueryOrcamentosDentista.AsString,QueryItensOrcamentoServico.AsString);
//      cdTabelaQtUS := dm.execmd('select cd_tabelaQTUS from protetico where codigo = ' + QueryOrcamentosProtetico.AsString,'cd_tabelaQTUS');
      //vrAux := dm.execmd('select vrUs * qtUs vr from TabPagProteticoXProcedimento t, protetico d, servicoXqtUs s where d.codigo = t.cd_protetico and d.cd_tabelaQTUS = s.cd_tabela and s.cd_servico = ' + QueryItensOrcamentoServico.AsString + ' and t.indice = ' +   QueryItensOrcamentoindiceTabPagProtetico.AsString + ' and s.cd_tabela = ' + cdTabelaQtUS,'vr');
      vrAux := getMaiorValorServicoProtetico(QueryItensOrcamentoServico.AsString);

      if(vrAux <> '') then
        Valor_Protetico := strToFloat(vrAux)
      else
      begin
        ShowMessage('Não foi possível calcular o preço do serviço ' + QueryItensOrcamentoServico.AsString );
        abort;
      end;
   end
   else
   begin
      dm.ADOQueryVrPagto.close;
      dm.ADOQueryVrPagto.sql[1] := QueryServicosAuxiliarCodigo.AsString;
      dm.ADOQueryVrPagto.sql[3] := dm.GetParam('TBPADP');  //tabela padrão do protetico
      dm.ADOQueryVrPagto.open;

      if dm.ADOQueryVrPagto.recordcount = 0 then
      begin
         ShowMessage('ATENÇÃO, valor de protético não encontrado, verifique o parâmetro  TBPADP , que indica qual a tabela deverá buscar o valor do protético!');
         Valor_Protetico := 0;
         abort;
      end;

      Valor_Protetico := dm.ADOQueryVrPagto.FieldByName('vr_dentista').AsCurrency;
   end;

   if utilizaFormulaNovaPagtoDentista then
   begin
      cdTabelaQtUS := dm.execmd('select cd_tabelaQTUS from dentista where codigo = ' + QueryOrcamentosDentista.AsString,'cd_tabelaQTUS');
      vrAux := dm.execmd('select vrUs * qtUs vr from TabPagDentistaXProcedimento t, dentista d, servicoXqtUs s where d.codigo = t.cd_dentista and d.cd_tabelaQTUS = s.cd_tabela and s.cd_servico = ' + QueryItensOrcamentoServico.AsString + ' and t.indice = ' +   QueryItensOrcamentoindiceTabPagDentista.AsString + ' and s.cd_tabela = ' + cdTabelaQtUS,'vr');
      if(vrAux <> '') then
        Valor_Dentista := strToFloat(vrAux)
      else
      begin
        ShowMessage('Não foi possível calcular o preço do serviço ' + QueryItensOrcamentoServico.AsString + ', tabela Pag dentsita : ' + QueryItensOrcamentoindiceTabPagDentista.AsString + ' tabela qtde US : ' + cdTabelaQtUS);
        abort;
      end;
      exit;
   end;

   dm.ADOQueryVrPagto.close;
   dm.ADOQueryVrPagto.sql[1] := QueryServicosAuxiliarCodigo.AsString;
   dm.ADOQueryVrPagto.sql[3] :=  QueryOrcamentosCd_tabela.AsString;
   dm.ADOQueryVrPagto.open;
   if dm.ADOQueryVrPagto.recordcount = 0 then
   begin
      ShowMessage('ATENÇÃO, procedimento não possui valor de cobrança cadastrado, operação cancelada !');
      Valor_Dentista := 0;
      abort;
   end;

   Valor_Dentista := dm.ADOQueryVrPagto.FieldByName('vr_dentista').AsCurrency;

end;

procedure TFormOrcamentos.AchaValor;
begin

   QueryServicosAuxiliar.Close;
   QueryServicosAuxiliar.ParamByName('Servico').asInteger := QueryItensOrcamentoServico.asInteger;
   QueryServicosAuxiliar.Open;

    PCdUsuario; // atualiza os campos usuario e digito
    VAchouValor := false;
//    if SpeedButton1.Down then
//       try
//          SpeedButton1.Caption := InttoStr(StrToInt(SpeedButton1.Caption) + 1);
//       except
//       end;
     Valor_Servico := 0;

     with QueryContratante do
       begin
         Close;
         ParamByName('Codigo_Contrantante').asInteger := VUsuario;
         Open;
       end;

     with QueryPrecoContratante do
        begin
          Close;
          ParamByName('Codigo_Contratante').asInteger := QueryContratanteCodigo.asInteger;
          Open;
          Last;
          if RecordCount = 0 then
             Verifica_PrecoGrupo
          else
          begin
             VAchouValor := true;
             with QueryValorProcedimento do
               begin

                 Close;
                 ParamByName('Tabela').asInteger := QueryPrecoContratanteTabelaPreco.asInteger;
                 ParamByName('Servico').asInteger := QueryServicosAuxiliarCodigo.asInteger;
                 Open;
                 Valor_Servico := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 Valor_Bruto := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 AchaVrDentistaProtetico;
               end; // Neste momento tenho o codigo do servico e da tabela
          end
        end;

     if dm.GetParam('LOGORC') = 'S' then
       GravaLogOrcamento;
     if not VAchouValor then
     begin
        ShowMessage('Não foi possível valorizar este procedimento, verifique as tabelas básicas do plano desse usuário !');
        Abort;
     end
end;

procedure TFormOrcamentos.GravaLogOrcamento;
begin
  try
      QueryInsLog.UnPrepare;
      QueryInsLog.ParamByName('orcamento'     ).AsString   := QueryOrcamentosNumero.AsString;
      QueryInsLog.ParamByName('contratante'   ).AsString   := QueryContratanteCodigo.AsString;
      QueryInsLog.ParamByName('usuario'       ).AsInteger  := Vusuario;
      QueryInsLog.ParamByName('dg_usuario'    ).AsInteger  := Vdigito;
      QueryInsLog.ParamByName('plano'         ).AsString   := QueryContratantePlano.AsString;
      QueryInsLog.ParamByName('TabelaPreco'   ).AsString   := QueryPrecoPlanoTabelaPreco.AsString;
      QueryInsLog.ParamByName('servico'       ).AsString   := QueryServicosAuxiliarCodigo.AsString;
      QueryInsLog.ParamByName('vrServico'     ).Ascurrency := Valor_Servico;
      QueryInsLog.ParamByName('VrDentista'    ).Ascurrency := Valor_Dentista;
      if QueryItensOrcamentoIncremento.isnull then
         QueryInsLog.ParamByName('IncrementoItem').AsString   := dm.executacomando('select max(incremento) + 1 a from itens_orcamento','a')
      else
         QueryInsLog.ParamByName('IncrementoItem').AsString   :=  QueryItensOrcamentoIncremento.AsString;

      QueryInsLog.Prepare;
      QueryInsLog.ExecSQL;
  except
  end;

end;

procedure TFormOrcamentos.AchaCobertura(dataIniCobertura : Tdatetime) ;
begin
    Data_Base := dm.Date;// Pega Data do Sistema
     with QueryCoberturaContratante do
        begin
          Close;
//          ParamByName('Codigo_Contratante').asInteger := QueryContratanteCodigo.asInteger;
          ParamByName('Codigo_Contratante').asInteger := QueryUsuariosContratante_Titular.asInteger;
          Open;
          if RecordCount = 0 then
             Verifica_CoberturaGrupo(dataIniCobertura)
          else
             with QueryCoberturaProcedimento do
               begin
                 Close;
                 ParamByName('Tabela').asInteger := QueryCoberturaContratanteTabela_Cobertura.asInteger;
                 ParamByName('Servico').asInteger := QueryServicosAuxiliarCodigo.asInteger;
                 Open;

                 while not eof do
                   if (Data_Base - dataIniCobertura) >= QueryCoberturaProcedimentoDias.asInteger then
                      begin
                        Valor_Servico := (Valor_Servico - (Valor_Servico * QueryCoberturaProcedimentoPercentual.asFloat / 100));
                        break;
                      end
                   else
                      Next;
               end; // Neste momento tenho o codigo do servico e da tabela
        end;
end;

procedure TFormOrcamentos.Verifica_PrecoGrupo;
begin
     with QueryPrecoGrupo do
       begin
         Close;
         ParamByName('Grupo_Contratante').asInteger := QueryContratanteGrupo_Contratante.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Verifica_PrecoPlano
         else
             with QueryValorProcedimento do
               begin
                 VAchouValor := true;
                 Close;
                 ParamByName('Tabela').asInteger := QueryPrecoGrupoTabelaPreco.asInteger;
                 ParamByName('Servico').asInteger := QueryServicosAuxiliarCodigo.asInteger;
                 Open;
                 Valor_Servico := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 Valor_Bruto := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 AchaVrDentistaProtetico;
               end; // Neste momento tenho o codigo do servico e da tabela
       end;
end;

procedure TFormOrcamentos.Verifica_CoberturaGrupo(dtIniCobertura: Tdatetime);
begin
    Data_Base := dm.Date;// Pega Data do Sistema
     with QueryCoberturaGrupo do
       begin
         Close;
         ParamByName('Grupo_Contratante').asInteger := QueryContratanteGrupo_Contratante.asInteger;
         Open;
         if RecordCount = 0 then
            Verifica_CoberturaPlano(dtIniCobertura)
         else
             with QueryCoberturaProcedimento do
                begin
                  Close;
                  ParamByName('Tabela').asInteger := QueryCoberturaGrupoTabela_Cobertura.asInteger;
                  ParamByName('Servico').asInteger := QueryServicosAuxiliarCodigo.asInteger;
                  Open;
                  while not eof do
                    if (Data_Base - dtIniCobertura) >= QueryCoberturaProcedimentoDias.asInteger then
                       begin
                         Valor_Servico := (Valor_Servico - (Valor_Servico * QueryCoberturaProcedimentoPercentual.asFloat / 100));
                         break;
                       end
                    else
                       Next;
                end;
       end;
end;

procedure TFormOrcamentos.Verifica_PrecoPlano;
begin
     with QueryPrecoPlano do
       begin
         Close;
         ParamByName('Codigo_Plano').asInteger := QueryContratantePlano.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            //MessageDlg('Não foi Possível Encontrar um Valor p/ o Serviço !!!!', mtError, [mbOk], 0)
         else
             with QueryValorProcedimento do
               begin
                 VAchouValor := true;
                 Close;
                 ParamByName('Tabela').asInteger := QueryPrecoPlanoTabelaPreco.asInteger;
                 ParamByName('Servico').asInteger := QueryServicosAuxiliarCodigo.asInteger;
                 Open;
                 Valor_Servico := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 Valor_Bruto := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;;
                 AchaVrDentistaProtetico;
               end; // Neste momento tenho o codigo do servico e da tabela
       end;
end;

procedure TFormOrcamentos.Verifica_CoberturaPlano(dtIniCobertura : TDatetime);
begin
     Data_Base := dm.Date;// Pega Data do Sistema
     with QueryCoberturaPlano do
       begin
         Close;
         ParamByName('Codigo_Plano').asInteger := QueryContratantePlano.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
//            MessageDlg('Não foi Possível Encontrar Cobertura p/ este Contratante !!!!', mtError, [mbOk], 0)
         else
             with QueryCoberturaProcedimento do
                begin
                  Close;
                  ParamByName('Tabela').asInteger := QueryCoberturaPlanoTabela_Cobertura.asInteger;
                  ParamByName('Servico').asInteger := QueryServicosAuxiliarCodigo.asInteger;
                  Open;
                  while not eof do
                    if (Data_Base - dtIniCobertura) >= QueryCoberturaProcedimentoDias.asInteger then
                       begin
                         Valor_Servico := (Valor_Servico - (Valor_Servico * QueryCoberturaProcedimentoPercentual.asFloat / 100));
                         break;
                       end
                    else
                       Next;
                end;
       end;
end;

procedure TFormOrcamentos.VerificaAtraso;
var Dias_Atraso : Real;

begin
     Atraso := '0';
     Data_Atual := dm.Date;
     Flag_Receber := True;
     with QueryReceber2 do
       begin
         Close;
         ParamByName('Codigo_Contratante').asInteger := VUsuario;
         SQL[2] := (' and Data_Pagamento is null');
         SQL[3] := ('order by Data_Vencimento');
         Open;
         if RecordCount <> 0 then begin
           Dias_Atraso := (Int(Data_Atual) - int(QueryReceber2Data_Vencimento.asDateTime));
           if Dias_Atraso > 0 then
           begin

              if QueryReceber2Saldo.asCurrency > 0 then
                 begin
                   Atraso := FloatToStr(Dias_Atraso);
                   EnvMsgAtraso('O Usuário possui Títulos com ' + Atraso + ' dias',clRed,false);
                end;
           end;
         end;
       end;

     if Vusuario <> QueryUsuariosContratante_Titular.asInteger then begin
        with QueryReceber2 do
          begin
            Close;
            ParamByName('Codigo_Contratante').asInteger := QueryUsuariosContratante_Titular.asInteger;
            SQL[2] := (' and Data_Pagamento is null');
            SQL[3] := ('order by Data_Vencimento');
            Open;
            if RecordCount <> 0 then begin
              Dias_Atraso := (Int(Data_Atual) - int(QueryReceber2Data_Vencimento.asDateTime));
              if Dias_Atraso > 0 then
              begin

                 if QueryReceber2Saldo.asCurrency > 0 then
                    begin
                      Atraso := FloatToStr(Dias_Atraso);
                      EnvMsgAtraso('    Usuário possui Títulos com ' + Atraso + ' dias',clBlue,true);
                    end;
              end;
            end;
          end;
     end;
end;
procedure TFormOrcamentos.EnvMsgAtraso(PMsg:string;PCor : Tcolor;HabLabelEmp:Boolean);
begin
     Application.CreateForm(TFormMensagemAtraso, FormMensagemAtraso);
     MensagemAtraso.FormMensagemAtraso.Label1.Caption := PMsg;
     FormMensagemAtraso.LabelEmpresa.Visible := HabLabelEmp;
     FormMensagemAtraso.Color := Pcor;
     FormMensagemAtraso.ShowModal;
     FmSenhaOdonto := TFmSenhaOdonto.Create(self);
     
     FmSenhaOdonto.caption := Atraso + ' dias em atraso';
     FmSenhaOdonto.showModal;

     FormMensagemAtraso.Free;
     Flag_Receber := False;
     VUsuAutAtraso := 0;
     if FmSenhaOdonto.tag = 0 then
     begin
        QueryOrcamentos.cancel;
        Abort;
     end;
     FmSenhaOdonto.free;
     VUsuAutAtraso := FmSenhaOdonto.tag;
end;

procedure TFormOrcamentos.QueryItensOrcamentoAfterInsert(
  DataSet: TDataSet);
begin
   QueryItensOrcamentoOrcamento.asInteger := QueryOrcamentosNumero.asInteger;
end;
procedure TFormOrcamentos.PVerificaPacote(POrcamento,Pcd_pacote : integer;PdenteFace:String; cdDentista: String );
Var VcdNivelServico : char;
     VQtservico : smallint;
//     VPacote : integer;
begin
   // verifica se para esse dentista lança pacotes de odontograma automaticamente..
   if dm.execmd('select count(*) q from dentista where codigo = ' + cdDentista + ' and lanca_pkg_orcamento = ''S''','q') = '0' then
     exit;
   PIncluindoPkg := true;
   QueryPacote.Close;
   QueryPacote.sql[1] := IntToStr(Pcd_pacote);
   QueryPacote.Open;
   While not QueryPacote.Eof do
   begin
      //VPacote := StrToInt(dm.ExecutaComando('select max(pacote) + 1 q from itens_orcamento','q'));
      VcdNivelServico := dm.ExecutaComando('select cd_nivel_servico a from servicos where codigo = ' +
                         QueryPacote.FieldByName('cd_servico').AsString,'a')[1];

      // Verifica se o serviço é executado no dente X Face para informar o dente face para o serviço
      // Se Tiver que informar o dente incluir uma linha pra cada servico com qtde 1 e infomar o dente.

//      if (VcdNivelServico in ['D','F']) and (dm.GetParam('VALDEN') = 'S')  then
      if (dm.GetParam('VALDEN') = 'S')  then
      begin
         for VQtservico := 1 to QueryPacote.FieldByName('qt_servico').AsInteger do
         begin
            QueryItensOrcamento.Insert;
            QueryItensOrcamentoServico.AsInteger    := QueryPacote.FieldByName('cd_servico').AsInteger;
            QueryItensOrcamentoQuantidade.AsInteger := 1;
            QueryItensOrcamentoDenteFace.AsString   :=  PdenteFace;
            //QueryItensOrcamentoPacote.AsInteger     :=  VPacote;
            try
               QueryItensOrcamento.Post;
            except
            on E: Exception do
            begin
               if VGRALOG then
                  Dm.GravaLog('TFormOrcamentos','PVerificaPacote','#ORC# ' + QueryOrcamentosNumero.AsString + '#ITEMORC# ' + QueryItensOrcamentoServico.AssTRING +    e.message);

               if Pos('TRVALIDADTEXSERV',e.Message) > 0 then
               begin
                  ShowMessage(copy(E.message,Pos('TRVALIDADTEXSERV',e.Message) + 1,Length(e.message)));
                  QueryItensOrcamento.Cancel;
                  abort;
               end
               else
               ShowMessage('Erro na Gravação do item do pacote, print essa tela salve no word e envie para o responsável pelo sistema !!!' +  E.message);

            end;
            end;
         end;
      end
      else
      begin
         QueryItensOrcamento.Insert;
         QueryItensOrcamentoServico.AsInteger    := QueryPacote.FieldByName('cd_servico').AsInteger;
         QueryItensOrcamentoQuantidade.AsInteger := QueryPacote.FieldByName('qt_servico').AsInteger;
         //QueryItensOrcamentoPacote.AsInteger     :=  VPacote;
         try
            QueryItensOrcamento.Post;
         except
         on E: Exception do
         begin
            if VGRALOG then
               Dm.GravaLog('TFormOrcamentos','PVerificaPacote','#ORC# ' + QueryOrcamentosNumero.AsString + '#ITEMORC# ' + QueryItensOrcamentoServico.AssTRING +    e.message);

            ShowMessage('Erro na Gravação do item do pacote, print essa tela salve no word e envie para o responsável pelo sistema !!!' +  E.message);

         end;
         end;

      end;
      QueryPacote.Next;
   end;
   PIncluindoPkg := False;
end;
procedure TFormOrcamentos.gravaEventoOdontograma(VIincremento1 : integer);
var Vcont : byte;
begin
   if dm.GetParam('CRIODO') = 'S' then
   begin
      for Vcont := 1 to 20 do

         if REvent[Vcont].Orcamento > 0 then
         begin

         // nessa procedure se existir atualiza caso contrario inclui o evento

            if (dm.execmd('select count(*) q from operador where codigo = ' + IntToStr(REvent[Vcont].Operador),'q') = '0') then
            begin
               ShowMessage('Erro na rotina PGravarEventoOdont, codigo de operador invalido ' +  intTostr(REvent[Vcont].Operador) + ' Ptp_evento : ' + REvent[Vcont].TpEvento + ' PcdCriterio : ' + REvent[Vcont].TxEvento + ' Ptx_evento : ' + REvent[Vcont].TxEvento + ' log : ' + REvent[Vcont].log);
               dm.GravaLog('FormOrcamento','PGravarEventoOdont','Erro na rotina PGravarEventoOdont, codigo de operador invalido ' +  intTostr(REvent[Vcont].Operador) + ' Ptp_evento : ' + REvent[Vcont].TpEvento + ' PcdCriterio : ' + REvent[Vcont].TxEvento + ' Ptx_evento : ' + REvent[Vcont].TxEvento + ' log : ' + REvent[Vcont].log);
               exit;
            end ;

            sp_Upd_EventOdonto.Parameters[1].Value  := REvent[Vcont].Orcamento;
            REvent[Vcont].Orcamento := 0;
            sp_Upd_EventOdonto.Parameters[2].Value := VIincremento1;
            sp_Upd_EventOdonto.Parameters[3].Value := REvent[Vcont].TpEvento;
            sp_Upd_EventOdonto.Parameters[4].Value := REvent[Vcont].Operador;
            sp_Upd_EventOdonto.Parameters[5].Value := REvent[Vcont].TxEvento;
            sp_Upd_EventOdonto.Parameters[6].Value := REvent[Vcont].Criterio;
            sp_Upd_EventOdonto.Parameters[7].Value := REvent[Vcont].tp_criterio;
            sp_Upd_EventOdonto.ExecProc;
         end;
      if (atraso <> '0') then
      begin

         if dm.execmd('select count(*) q from EventOdontograma where orcamento = ' + QueryOrcamentosNumero.AsString + ' and tp_criterio = ''Atraso''','q') = '0' then
         begin
            if (dm.execmd('select count(*) q from operador where codigo = ' + IntToStr(VUsuAutAtraso),'q') = '0') then
            begin
               ShowMessage('Erro na rotina PGravarEventoOdont, codigo de operador invalido ' +  IntToStr(VUsuAutAtraso) + ' rotina de atraso orcamento : ' + QueryOrcamentosNumero.AsString  + ' dias em atraso : ' + atraso) ;
               dm.GravaLog('FormOrcamento','PGravarEventoOdont','Erro na rotina PGravarEventoOdont, codigo de operador invalido ' +  IntToStr(VUsuAutAtraso) + ' rotina de atraso orcamento : ' + QueryOrcamentosNumero.AsString + ' dias em atraso : ' + atraso);
               exit;
            end ;

            sp_Upd_EventOdonto.Parameters[1].Value  := QueryOrcamentosNumero.AsInteger;
            sp_Upd_EventOdonto.Parameters[2].Value  := 0;
            sp_Upd_EventOdonto.Parameters[3].Value  := 'S';
            sp_Upd_EventOdonto.Parameters[4].Value  := VUsuAutAtraso;
            sp_Upd_EventOdonto.Parameters[5].Value  := 'Usuário possui títulos em atraso com ' + Atraso + ' dias. Autorizado com senha';
            sp_Upd_EventOdonto.Parameters[6].Value  := 0;
            sp_Upd_EventOdonto.Parameters[7].Value  := 'Atraso';
            sp_Upd_EventOdonto.ExecProc;
         end;

            atraso := '0';
         end;

         VId := 1; // reinicia a variave que controla o vetor.
   end;

end;
procedure TFormOrcamentos.QueryItensOrcamentoAfterPost(DataSet: TDataSet);
Var VIincremento : Integer; // qdo for inclusao pega o incremento do ultimo registro
                              // qdo for atualizacao pega do registro atual

begin
   if revalorizando then
      exit;
   VIincremento := 0;

   if dm.GetParam('VERPKG') = 'S' then
   begin
      if PIncluindoPkg then
         exit;
      PVerificaPacote(QueryItensOrcamentoOrcamento.AsInteger,QueryItensOrcamentoServico.AsInteger,QueryItensOrcamentoDenteFace.AsString,QueryOrcamentosDentista.AsString );
   end;

   if not QueryItensOrcamentoIncremento.IsNull then
      VIincremento := QueryItensOrcamentoIncremento.AsInteger;

   with QueryItensOrcamento do
   begin
      Close;
      ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
      Open;
      Last;
      if VIincremento = 0 then
         VIincremento := QueryItensOrcamentoIncremento.AsInteger;
   end;

   // náo pode mudar a ordem da queryItensOrcamento
   // esta aqui pq o campo Incremento eh autoincremento e tem integridade referencial
   gravaEventoOdontograma(VIincremento);
end;

procedure TFormOrcamentos.BitBtnPesquisarClick(Sender: TObject);
begin
     GroupBoxProcura.Visible := True;
     GroupBoxProcura.Left := 560;
     GroupBoxProcura.Top := 3;
     EditProcura.Text := '';
     LabelNumero.Caption := 'Digite o Nº';
     if EditProcura.CanFocus then
        EditProcura.SetFocus;
end;

procedure TFormOrcamentos.EditProcuraExit(Sender: TObject);
begin
  if EditProcura.text = '' then
   exit;
  VAutorizando := false;
   with QueryOrcamentos do
     begin
       Close;
       SQL[1] := ('where Numero = :Numero_Orcamento');
       Params[0].DataType := ftInteger;
       Params[0].ParamType := ptInput;
       ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
       Open;
       if RecordCount = 0 then
          ShowMessage('Orçamento Não Encontrado !!!!')
       else
         Status := QueryOrcamentosStatus.AsInteger;
         if QueryOrcamentosAutorizado.asBoolean then
            begin
              MessageDlg('Orçamento Já Autorizado !!!!', mtInformation, [mbOk], 0);
              BitBtnAutorizar.Enabled := False;
            end
         else
          begin
           BitBtnAutorizar.Enabled := True;
           RevalorizaOrcamento;
          end;
     end;

   EditNomeOperador.Text := '';
   EditNomeDigitador.Text := '';

   with QueryOperador do
     begin
       Close;
       ParamByName('Operador').asInteger := QueryOrcamentosOperador_Cadastro.asInteger;
       Open;
       if RecordCount <> 0 then
          EditNomeDigitador.Text := QueryOperadorApelido.asString;
     end;


   if QueryOrcamentosOperador_Aprovacao.asString <> '' then
      with QueryOperador do
        begin
          Close;
          ParamByName('Operador').asInteger := QueryOrcamentosOperador_Aprovacao.asInteger;
          Open;
          if RecordCount <> 0 then
             EditNomeOperador.Text := QueryOperadorApelido.asString;
        end;
   GroupBoxProcura.Visible := False;

   if BitBtnImprimir.canfocus and  FormOrcamentos.Visible then
      BitBtnImprimir.SetFocus;
end;

procedure TFormOrcamentos.BitBtnPrestacoesClick(Sender: TObject);
begin
     QueryOrcamentos.DisableControls;
     MontaTotal;

     try
       QueryOrcamentos.Post
     except
       on E: Exception do
       begin
         if VGRALOG then
            Dm.GravaLog('TFormOrcamentos','BitBtnPrestacoesClick(','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);

         ShowMessage('Erro Gravação da Tabela de Títulos !!!' + e.message);
         QueryOrcamentos.Cancel;
       end;
     end;

     QueryOrcamentos.EnableControls;

     if QueryOrcamentosNumero_Parcelas.asString = '' then
        exit;
     Application.CreateForm(TFormPrestacoes, FormPrestacoes);
     FormPrestacoes.ShowModal;
     FormPrestacoes.Free;
end;

procedure TFormOrcamentos.EditProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9',#22, #13, #8]) then
        key := #0;
end;

procedure TFormOrcamentos.BitBtnPesquisaDentistaClick(Sender: TObject);
begin
     if QueryOrcamentos.State in [dsbrowse] then
        exit;

     Application.CreateForm(TFormPesquisaDentistas, FormPesquisaDentistas);
     FormPesquisaDentistas.ShowModal;
     with QueryDentista do
       begin
         Close;
         ParamByName('Dentista').asInteger := PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.asInteger;
         Open;
       end;
     FormPesquisaDentistas.QueryDentistas.Close;
     FormPesquisaDentistas.Query50.Close;
     FormPesquisaDentistas.Free;
     QueryOrcamentosDentista.asInteger := QueryDentistaCodigo.asInteger;
     DBEditDentista.SetFocus;
end;

procedure TFormOrcamentos.DBEditPrestacoesExit(Sender: TObject);
begin
     if QueryOrcamentos.state in [dsbrowse] then
        exit;

     if MessageDlg('Dados Ok ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        exit
     else
       begin
         try
          QueryOrcamentos.Post
         except
           on E: Exception do
           begin
              if VGRALOG then
                 Dm.GravaLog('TFormOrcamentos','DBEditPrestacoesExit','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);

             ShowMessage('Erro Gravação da Tabela de Títulos !!!' + e.message);
             QueryOrcamentos.Cancel;
           end;
         end;
       end;
     if BitBtnImprimir.canfocus then
        BitBtnImprimir.SetFocus;
end;

procedure TFormOrcamentos.BitBtnAutorizarClick(Sender: TObject);
var bloqueioAux,Numero_Str : String;
    cdPagtoDesFolha : integer;
    DiasVentoGuia, DataValidade:string;

begin
    if QueryOrcamentosNumero.IsNull then
       exit;

     if dm.execmd('select count(*) qt from prestacoes where tipoCobranca is null and orcamento = ' + QueryOrcamentosNumero.AsString,'qt') <> '0' then
     begin
        ShowMessage('há parcelas sem tipo de cobrança informado, por favor entre nas parcelas e coloque o tipo de cobrança');
        exit;
     end;

  if dm.execmd('select count(*) q from usuario u where u.codigo_completo =  ' + QueryOrcamentosUsuario.AsString + ' and u.contratante_titular <> ' + QueryOrcamentosContratante_Titular.AsString,'q') <> '0' then
  begin
     //ShowMessage('Ocorreu um erro no orçamento contratante titular do orçamento defere do contratante titular do usuário');
     FmMensagem := TFmMensagem.create(self);
     FmMensagem.Memo1.lines.Add('Ocorreu um erro no orçamento contratante titular do orçamento defere do contratante titular do usuário!!!!!');
     FmMensagem.Memo1.lines.add('QueryOrcamentosContratante_Titular : ' + QueryOrcamentosContratante_Titular.AsString);
     FmMensagem.Memo1.lines.add('QueryOrcamentosUsuario.AsString : ' + QueryOrcamentosUsuario.AsString);
     FmMensagem.Memo1.lines.add('variavel Usuario : ' + IntToStr(VUsuario));
     FmMensagem.Memo1.lines.add('numero orcamento : ' + QueryOrcamentosNUmero.AsString );
     FmMensagem.Memo1.lines.add('DBEditUsuario : ' + DBEditUsuario.Text);

     FmMensagem.Memo1.lines.add('QueryUsuarios.sql : ' + QueryUsuarios.text);
     FmMensagem.Memo1.lines.add('QueryUsuarios.ParamByName(codigo_completo).asString : ' + QueryUsuarios.ParamByName('codigo_completo').asString);


     FmMensagem.ShowModal;
     dm.enviaEmail('problema bug contratante titular multibucal ', FmMensagem.Memo1.Text,'eniorp@gmail.com');
     FmMensagem.Free;
     abort;

  end;
     

     VerifStatusUsu(false,true);
     bloqueioAux := '';
     if (dm.execmd('select distinct count(b.cd_Grupo_contrat) qt from contratante c, bloqueio_grupoContrat b where c.Codigo = ' + QueryUsuariosCodigo.AsString +
                   //' and c.Grupo_Contratante = b.cd_grupo_contrat ','qt') <> '0') then
                   ' and c.Grupo_Contratante = b.cd_grupo_contrat and convert(char(10),GETDATE(),103) between dt_ini_bloqueio and isnull(dt_fim_gloqueio,''01/01/2079'') ','qt') <> '0') then
         bloqueioAux := 'ATENÇÃO GRUPO DE CONTRATANTE BLOQUEADO, NÃO É PERMITIDO AUTORIZAÇÃO DE ORÇAMENTO'
     else
        if(dm.execmd('set dateformat dmy select count(*) q from bloqueio_contratante where cd_contratante = ' + QueryUsuariosCodigo.AsString + ' and convert(char(10),getdate(),103) between dt_ini_bloqueio and isnull(dt_fim_bloqueio,''01/01/2079'')','q') <> '0')  then
           bloqueioAux := 'ATENÇÃO CONTRATANTE BLOQUEADO, NÃO É PERMITIDO AUTORIZAÇÃO DE ORÇAMENTO';
        if bloqueioAux <> '' then
        begin
           repeat
            until application.MessageBox(pchar(bloqueioAux),'Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk;
            exit;
        end;

//         if dm.execmd('set dateformat dmy select count(*) q from bloqueio_contratante where cd_contratante = ' + QueryUsuariosCodigo.AsString + ' and convert(char(10),getdate(),103) between dt_ini_bloqueio and isnull(dt_fim_bloqueio,''01/01/2079'')','q') <> '0'  then
//         begin
  //          repeat
    //         until application.MessageBox('ATENÇÃO CONTRATANTE BLOQUEADO, NÃO PODE AUTORIZAR ORÇAMENTO PARA ELE','Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk;

      //       exit;

        // end;
   if FormOrcamentos.Tag = 1 then
      exit;
     if HaDifVrParcelas(Numero_Str) then // to usando Numero_Str para aproveitar variavel
     begin
        ShowMessage(Numero_Str);
        exit;
     end;

     if QueryContratantelg_restricao.AsBoolean then
     begin
        FmMensagem := TFmMensagem.create(self);
        FmMensagem.Memo1.lines.Add('ATENÇÃO: Contratante com restrição!!!!!');
        FmMensagem.ShowModal;
        FmMensagem.Free;
     end;

     if (QueryOrcamentosDesconto.AsCurrency > 0) and (application.MessageBox(pchar('Confirma o desconto de ' + QueryOrcamentosDesconto.AsString + '% neste orçamento ?'),'Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrCancel) then
        exit;
     VAutorizando := true;
     QueryOrcamentos.DisableControls;
     MontaTotal;
     VerificaAtraso;

     if MessageDlg('Deseja autorizar o orçamento ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        exit;
     try
       if QueryOrcamentosTotal_Desconto.AsCurrency > 0 then
       begin
           // gabi pediu para alterar e enviar mensagem para pj e pf 22/02/2010
          if {(dm.execmd('select upper(fis_jur) pessoa from plano where codigo = ' + QueryContratantePlano.AsString,'pessoa') = 'FÍSICA') and}
             (dm.GetParam('MSGIR') = 'S') then
          begin
            if application.MessageBox('Será emitido informes de rendimento para este orçamento?','Alerta',MB_YESNO ) = Mryes then
               QueryOrcamentos.FieldByName('lg_ir').AsBoolean  := true
            else
               QueryOrcamentos.FieldByName('lg_ir').asBoolean := false;
          end;
       end;

       QueryOrcamentos.Post;

     except
       on E: Exception do
       begin
         if VGRALOG then
            Dm.GravaLog('TFormOrcamentos','BitBtnAutorizarClick 01','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);

         ShowMessage('Erro Gravação da Tabela de Orçamentos !!!' + e.message);
         QueryOrcamentos.Cancel;
         QueryOrcamentos.EnableControls;
         exit;
       end;
     end;

     QueryOrcamentos.EnableControls;

     if QueryOrcamentosAutorizado.asBoolean then
        begin
          MessageDlg('Orçamento Já Autorizado !!!!', mtInformation, [mbOk], 0);
          BitBtnAutorizar.Enabled := False;
          exit;
        end
     else
        BitBtnAutorizar.Enabled := True;


   if (dm.GetParam('CRIODO') = 'S') then
   begin
      QueryItensOrcamento.First;
      while (not QueryItensOrcamento.Eof) do
      begin

         PVerificaCritOdonto(QueryItensOrcamentoServico.AsString,
                             QueryItensOrcamentoDenteFace.asString,
                             QueryItensOrcamentosexante.AsString,false);
         gravaEventoOdontograma(QueryItensOrcamentoIncremento.AsInteger);
         QueryItensOrcamento.next;
      end;
   end;


     if QueryOrcamentosTotal_Desconto.AsString <> '0' then
       begin

         QueryReceber.Open;
         Application.CreateForm(TFormPrestacoes, FormPrestacoes);
         with Prestacoes.FormPrestacoes.QueryPrestacoes do
           begin
             Close;
             ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
             Open;
             First;
             if RecordCount = 0 then
                begin
                  MessageDlg('Não Existem Prestações Lançadas !!!!', mtError, [mbOk], 0);
                  FormPrestacoes.Free;
                  QueryReceber.Close;
                end
             else
             begin
                 // caso exista os titulos no contas a receber, exclui pois ainda nao foi autorizado
               if dm.execmd('select count(*) q from receber where numero_titulo between ' +
                    QueryOrcamentosNumero.AsString + '01 and ' + QueryOrcamentosNumero.AsString + '99','q') <> '0' then
               begin
                  if application.MessageBox('Já existe parcelas no contas a receber deste orçamento, pode ser devido a uma tentativa de autorização mal sucedida, confirma a exclusão desses títulos para nova tentativa de autorização?(Obs: Se o problema persistir feche o programa e abra novamente)"','Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk then
                  begin
                     dm.execmd('set dateformat dmy delete receber where numero_titulo between ' +
                     QueryOrcamentosNumero.AsString + '01 and ' + QueryOrcamentosNumero.AsString + '99 and codigo_contratante = ' + IntToStr(VUsuario));

                  end;
               end;
               cdPagtoDesFolha := StrToInt(dm.getParam('CPDEF'));
               while not eof do
                 begin

                  if Prestacoes.FormPrestacoes.QueryPrestacoesTipo_Pagamento.asInteger = cdPagtoDesFolha then
                  begin   // quando for desconto em folha não gera título no contas a receber, ao gerar o faturamento vai montar um título de mensalidade para o contratante
                         // referente as parcelas do orçamento com desconto em folha.
                      //FormPrestacoes.QueryPrestacoesper_ref_des_folha.AsString := getMesFatFolhaPagto(FormPrestacoes.QueryPrestacoesVencimento.AsDateTime);

                     //geraTTOrcDescFolha(QueryContratanteCodigo.AsInteger);
                     next;
                     continue;
                  end;
                  QueryReceber.Insert;
                  if Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asInteger >= 10 then
                     Numero_Str := Prestacoes.FormPrestacoes.QueryPrestacoesOrcamento.asString
                        + Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asString
                  else
                     Numero_Str := Prestacoes.FormPrestacoes.QueryPrestacoesOrcamento.asString
                        + '0' + Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asString;
                  QueryReceberNumero_Titulo.asInteger := StrtoInt(Numero_Str);
                  QueryReceberDesdobramento.asString := 'O';
                  QueryReceberTipo_Documento.asInteger := QueryTipoOrcamentoTipo_Documento.asInteger;
                  QueryReceberCodigo_Contratante.asInteger := VUsuario;
                  QueryReceberCodigo_Usuario.AsInteger := QueryOrcamentosUsuario.AsInteger;;
                  QueryReceberData_Emissao.asDateTime := dm.Date;
                  QueryReceberData_Vencimento.asDateTime := Prestacoes.FormPrestacoes.QueryPrestacoesVencimento.asDateTime;
                  QueryReceberValor.asCurrency := Prestacoes.FormPrestacoes.QueryPrestacoesValor.asCurrency;
                  QueryReceberSaldo.asCurrency := Prestacoes.FormPrestacoes.QueryPrestacoesValor.asCurrency;
                  if DBLookupComboBoxTipoCobranca.Text <> '' then
                    QueryReceberTipo_Cobranca.asInteger := QueryTipoCobrancaCodigo.AsInteger
                  else
                    QueryReceberTipo_Cobranca.asInteger := 51;
                  QueryReceberOperador.asInteger := Senha.Codigo_Operador;
                  QueryReceberOrcamento.asInteger := Prestacoes.FormPrestacoes.QueryPrestacoesOrcamento.asInteger;
                  QueryReceberStatus_Orcamento.asInteger := QueryOrcamentosStatus.asInteger;
                  QueryRecebernro_Cheque.AsString := Prestacoes.FormPrestacoes.QueryPrestacoesNro_Cheque.asString;
                  QueryReceberBanco_Cheque.AsString := Prestacoes.FormPrestacoes.QueryPrestacoesBanco_Cheque.asString;
                  QueryRecebernro_ContaCheque.AsString := Prestacoes.FormPrestacoes.QueryPrestacoesNro_ContaCheque.asString;
                  QueryReceberAgencia_Cheque.AsString := Prestacoes.FormPrestacoes.QueryPrestacoesAgencia_Cheque.asString;
                  QueryReceberTipo_Pagamento.AsInteger := Prestacoes.FormPrestacoes.QueryPrestacoesTipo_Pagamento.AsInteger;
                  try
                    QueryReceber.Post;
                  except
                    on E: Exception do
                    begin
                       if VGRALOG then
                          Dm.GravaLog('TFormOrcamentos','BitBtnAutorizarClick 02','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);

                       MessageDlg('Erro na Gravação do Registro (3) Nº ' + Numero_Str + ' no Contas !!!'+ e.message, mtError, [mbOk], 0);
                       MessageDlg('Favor Comunicar o Departamento Financeiro !!!' + e.message, mtInformation, [mbOk], 0);
                       Cancel;
                       exit;
                    end;
                  end;
                  Next;
                end;
              end;
           end;
         FormPrestacoes.Free;
       end
     else
       if QueryEmpresaCodigo.AsInteger = 2 then begin
         QueryReceber.Open;
         QueryOrcamentos.Edit;
         QueryOrcamentosNumero_Parcelas.AsInteger := 1;
         QueryOrcamentos.Post;
         Application.CreateForm(TFormPrestacoes, FormPrestacoes);
         with Prestacoes.FormPrestacoes.QueryPrestacoes do
           begin
             Close;
             ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
             Open;
             First;
             if RecordCount = 0 then
                begin
                  MessageDlg('Não Existem Prestações Lançadas !!!!', mtError, [mbOk], 0);
                  FormPrestacoes.Free;
                  QueryReceber.Close;
                end
             else
               while not eof do
                 begin
                  QueryReceber.Insert;
                  if Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asInteger > 10 then
                     Numero_Str := Prestacoes.FormPrestacoes.QueryPrestacoesOrcamento.asString
                        + Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asString
                  else
                     Numero_Str := Prestacoes.FormPrestacoes.QueryPrestacoesOrcamento.asString
                        + '0' + Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asString;
                  QueryReceberNumero_Titulo.asInteger := StrtoInt(Numero_Str);
                  QueryReceberDesdobramento.asString := 'O';
                  QueryReceberTipo_Documento.asInteger := QueryTipoOrcamentoTipo_Documento.asInteger;
                  QueryReceberCodigo_Contratante.asInteger := VUsuario;
                  QueryReceberCodigo_Usuario.AsInteger := QueryOrcamentosUsuario.AsInteger;;
                  QueryReceberData_Emissao.asDateTime := dm.Date;
                  QueryReceberData_Vencimento.asDateTime := Prestacoes.FormPrestacoes.QueryPrestacoesVencimento.asDateTime;
                  QueryReceberValor.asCurrency := Prestacoes.FormPrestacoes.QueryPrestacoesValor.asCurrency;
                  QueryReceberSaldo.asCurrency := Prestacoes.FormPrestacoes.QueryPrestacoesValor.asCurrency;
                  if DBLookupComboBoxTipoCobranca.Text <> '' then
                    QueryReceberTipo_Cobranca.asInteger := QueryTipoCobrancaCodigo.AsInteger
                  else
                    QueryReceberTipo_Cobranca.asInteger := 51;
                  QueryReceberOperador.asInteger := Senha.Codigo_Operador;
                  QueryReceberOrcamento.asInteger := Prestacoes.FormPrestacoes.QueryPrestacoesOrcamento.asInteger;
                  QueryReceberStatus_Orcamento.asInteger := QueryOrcamentosStatus.asInteger;
                  QueryRecebernro_Cheque.AsString := Prestacoes.FormPrestacoes.QueryPrestacoesNro_Cheque.asString;
                  QueryReceberBanco_Cheque.AsString := Prestacoes.FormPrestacoes.QueryPrestacoesBanco_Cheque.asString;
                  QueryRecebernro_ContaCheque.AsString := Prestacoes.FormPrestacoes.QueryPrestacoesNro_ContaCheque.asString;
                  QueryReceberAgencia_Cheque.AsString := Prestacoes.FormPrestacoes.QueryPrestacoesAgencia_Cheque.asString;
                  QueryReceberTipo_Pagamento.AsInteger := Prestacoes.FormPrestacoes.QueryPrestacoesTipo_Pagamento.AsInteger;
                  try
                    QueryReceber.Post;
                  except
                    on E: Exception do
                    begin
                       if VGRALOG then
                          Dm.GravaLog('TFormOrcamentos','BitBtnAutorizarClick 03','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);

                       MessageDlg('Erro na Gravação do Registro (4) Nº ' + Numero_Str + ' no Contas !!!' + e.message, mtError, [mbOk], 0);
                       MessageDlg('Favor Comunicar o Departamento Financeiro !!!' + e.message, mtInformation, [mbOk], 0);
                       Cancel;
                       exit;
                    end;
                  end;
                  Next;
                end;
           end;
         FormPrestacoes.Free;
       end;
     try
        if QueryOrcamentos.State in [dsbrowse] then
           QueryOrcamentos.Edit;

        QueryOrcamentosAutorizado.asBoolean := True;
        QueryOrcamentosOperador_Aprovacao.asInteger := Senha.Codigo_Operador;
         with QueryOperador do
         begin
            Close;
            ParamByName('Operador').asInteger := Senha.Codigo_Operador;
            Open;
            if RecordCount <> 0 then
               EditNomeOperador.Text := QueryOperadorApelido.asString;
           end;
         QueryOrcamentosData_Conferencia.asDateTime := dm.Date;
   // qdo for orcamnto de urgencia coloca o status para urgencia caso exista ele cadastrado no status_orcamento
         if QueryOrcamentosTipo.Asinteger = 6 then
         begin
            if dm.execmd('select count(*) q from status_orcamento where   descricao = ''URGENCIA''','q') <> '0' then
               QueryOrcamentosStatus.AsString := dm.execmd('select codigo from status_orcamento where   descricao = ''URGENCIA''','codigo')
            else
              QueryOrcamentosStatus.Asinteger := QueryPreferenciasStatus_Autorizado.asInteger;
         end
         else
            QueryOrcamentosStatus.asInteger := QueryPreferenciasStatus_Autorizado.asInteger;
     except
        on E: Exception do
        begin
            if VGRALOG then
               Dm.GravaLog('TFormOrcamentos','BitBtnAutorizarClick 04.','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);
            ShowMessage('erro ao autorizar o orçamento !!!' + e.message);
        end;
     end;
     FmPericiaInicial := TFmPericiaInicial.create(self);
     FmPericiaInicial.ShowModal;
     if FmPericiaInicial.tag = 1 then
        QueryOrcamentos.FieldByName('PericiaInicial').AsBoolean := FmPericiaInicial.RadioGroup1.ItemIndex = 0;
     FmPericiaInicial.Free;

      //TACIO 01/11/2020
     //INSERINDO DATA DE VALIDADE DE UMA GUIA
     DiasVentoGuia:=DM.ExecutaComando('select DiasVenctoOrc  from dentista where codigo = '+QueryOrcamentosDentista.AsString,'DiasVenctoOrc');
     if (DiasVentoGuia='') or (DiasVentoGuia='0') then
        DiasVentoGuia:=dm.GetParam('QTVCTO');
     QueryOrcamentosdata_validade.AsDateTime:=QueryOrcamentosData_Conferencia.AsDateTime+StrToInt(DiasVentoGuia);

     try

       QueryOrcamentos.Post;

       autorizandoOrcamento := true;
       RevalorizaOrcamento;
       autorizandoOrcamento := false;

     except
       on E: Exception do
       begin
         if VGRALOG then
            Dm.GravaLog('TFormOrcamentos','BitBtnAutorizarClick 04','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);
         if e.Message = 'Operation aborted' then
         begin
            QueryOrcamentos.Close;
            QueryOrcamentos.Open;
            QueryOrcamentos.Edit;
            QueryOrcamentosAutorizado.asBoolean := false;
            QueryOrcamentosOperador_Aprovacao.AsString := '';
            EditNomeOperador.Text := '';
            QueryOrcamentosData_Conferencia.AsString := '';
            QueryOrcamentos.post;
            exit;
         end
         else
         begin
            ShowMessage('Erro de Regravação na Tabela de Orçamentos !!!' + e.message);
            QueryOrcamentos.Cancel;
            exit;
         end;
       end;
     end;
     VAutorizando := false;
     MessageDlg('Autorização Efetuada com Sucesso !!!!', mtInformation, [mbOk], 0);


    if  Application.MessageBox('Deseja realizar a baixa das parcelas do contas a receber desse orçamento?','Contatos agendados',MB_YesNo + MB_DEFBUTTON2) = IdYes then
    begin
       dm.sp_baixaTitulosOrcamento.Parameters[1].Value := QueryOrcamentosNumero.AsString;
       dm.sp_baixaTitulosOrcamento.Parameters[2].Value := Senha.Codigo_Operador;
       dm.sp_baixaTitulosOrcamento.Parameters[3].Value := 0; // nr da Parcela ainda nao implementado caso seja necessario baixar apenas uma parcela
       dm.sp_baixaTitulosOrcamento.ExecProc;
       ShowMessage('Baixa realizada com sucesso');
       FmTitBaixSemRecibo := TFmTitBaixSemRecibo.create(self);
       FmTitBaixSemRecibo.Query1.close;
       FmTitBaixSemRecibo.Edit1.text := QueryOrcamentosContratante.AsString;
       FmTitBaixSemRecibo.MaskEdit1.text := dm.GetDataSrv;
       FmTitBaixSemRecibo.Button1Click(Sender);
       FmTitBaixSemRecibo.ShowModal;
       FmTitBaixSemRecibo.Free;
    end;

end;

procedure TFormOrcamentos.DBEditTipoExit(Sender: TObject);
begin
     if QueryOrcamentosTipo.asString = '' then
        exit;

     with QueryTipoOrcamento do
       begin
         Close;
         ParamByName('Tipo_Orcamento').asInteger := QueryOrcamentosTipo.asInteger;
         Open;
         if RecordCount = 0 then
            begin
              MessageDlg('Tipo Orçamento Não Cadastrado !!!!', mtError, [mbOk], 0);
              DBEditTipo.SetFocus;
              exit;
            end;
       end;
     EditTipo.Text := QueryTipoOrcamentoDescricao.AsString;
     if DBEditTipo.Text = '6' then
       begin
         GroupBoxProcura.Visible := True;
         GroupBoxProcura.Left := 560;
         GroupBoxProcura.Top := 3;
         GroupBoxProcura.Visible := True;
         EditProcura.Visible := False;
         DBEditUrgencia.Visible := True;
         LabelNumero.Caption := 'Urgencia Nº';
         DBEditUrgencia.SetFocus;
       end;
end;

procedure TFormOrcamentos.QueryItensOrcamentoQuantidadeValidate(
  Sender: TField);
begin
     AchaValor;
     AchaCobertura(QueryUsuariosdt_ini_cobertura.AsDateTime);
     QueryItensOrcamentoValor.asCurrency := Valor_Servico * QueryItensOrcamentoQuantidade.asFloat;
     QueryItensOrcamentoValor_Bruto.asCurrency := Valor_Bruto * QueryItensOrcamentoQuantidade.asFloat;
     QueryItensOrcamentoValor_Dentista.asCurrency := Valor_Dentista * QueryItensOrcamentoQuantidade.asFloat;
     QueryItensOrcamentoValor_Protetico.asCurrency := Valor_Protetico * QueryItensOrcamentoQuantidade.asFloat;
//     showmessage('tirar isso');
//     QueryItensOrcamentoValor_Dentista.asCurrency := 10;
end;

procedure TFormOrcamentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case key of
       vk_f2 : BitBtnPesquisarClick(Sender);
       vk_f9 : if QueryOrcamentos.State in [dsbrowse] then
                  QueryOrcamentos.Insert;

     end;
end;

procedure TFormOrcamentos.BitBtnPesquisaUsuarioClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
     FormPesquisaUsuarios.ShowModal;
     QueryOrcamentosUsuario.asString := (PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.AsString);
     FormPesquisaUsuarios.QueryUsuarios.close;
     FormPesquisaUsuarios.Free;
     DBEditUsuario.SetFocus;
end;
//estou alterando isso
//verificar queryservicosauxiliar
//colocar acha valor no quantidadeonvalidate
{procedure TFormOrcamentos.DataSourceItensOrcamentoDataChange(
  Sender: TObject; Field: TField);
begin
     Data_Base := dm.Date;// Pega Data do Sistema

     if QueryItensOrcamentoServico.asString = '' then
        exit;

     with QueryServicosAuxiliar do
       begin
         Close;
         ParamByName('Servico').asInteger := QueryItensOrcamentoServico.asInteger;
         Open;
         if RecordCount = 0 then
            begin
              MessageDlg('Serviço Não Cadastrado !!!!', mtError, [mbOk], 0);
//              QueryItensOrcamentoServico.FocusControl;
//              QueryItensOrcamentoServico.asInteger := 9999;
              exit;
            end;
         AchaValor;
         AchaCobertura;
//         QueryItensOrcamentoValor.asCurrency := Valor_Servico;
       end;
end;}

procedure TFormOrcamentos.QueryOrcamentosAfterInsert(DataSet: TDataSet);
begin
     QueryOrcamentosData.asDateTime             := dm.Date;
     QueryOrcamentosData_Hora.asDateTime        := dm.Now;
     QueryOrcamentosOperador_Cadastro.asInteger := Senha.Codigo_Operador;
     with QueryOperador do
       begin
         Close;
         ParamByName('Operador').asInteger := Senha.Codigo_Operador;
         Open;
         if RecordCount <> 0 then
            EditNomeDigitador.Text := QueryOperadorApelido.asString;
       end;
     QueryOrcamentosStatus.asInteger            := QueryPreferenciasStatus_Grava.asInteger;
     QueryOrcamentosStatus_Pagamento.asInteger  := 3;
     QueryOrcamentosAutorizado.asBoolean        := False;
     EditNomeUsuario.Text                       := '';
     EditNomeDentista.Text                      := '';
     //EditCdTab.clear;;


end;

procedure TFormOrcamentos.QueryOrcamentosAfterPost(DataSet: TDataSet);
var Data_Hora : TDateTime;
Numero, Operador : Integer;

begin
  if VAlterouParcOuDesc then // indica que houve alteração no nr de parcelas ou no desconto..neste caso exclui as parcelas
                            // para que o programa possa recria-las novamente
     dm.execmd('delete Prestacoes where Orcamento = ''' + QueryOrcamentosNumero.AsString + '''');



//   ReCriaPrestacoes;

     if QueryOrcamentosNumero.asString <> '' then
        Numero := QueryOrcamentosNumero.asInteger
     else Numero := 0;
     Data_Hora := QueryOrcamentosData_Hora.asDateTime;
     Operador  := QueryOrcamentosOperador_Cadastro.asInteger;
//     Numero_Orcamento := QueryOrcamentosAuxiliarNumero.asInteger;

     with QueryOrcamentos do
       begin
         Close;
         if Numero = 0 then
            begin
              SQL[1] := ('where Data_Hora = :Data_Hora and Operador_Cadastro = :Operador_Cadastro');
              Params[0].DataType := ftDateTime;
              Params[0].ParamType := ptInput;
              Params[1].DataType := ftInteger;
              Params[1].ParamType := ptInput;
              ParamByName('Data_Hora').asDateTime := Data_Hora;
              ParamByName('Operador_Cadastro').asInteger := Operador;
            end
         else
            begin
              SQL[1] := ('where Numero = :Numero and Data_Hora = :Data_Hora and Operador_Cadastro = :Operador_Cadastro');
              Params[0].DataType := ftInteger;
              Params[0].ParamType := ptInput;
              Params[1].DataType := ftDateTime;
              Params[1].ParamType := ptInput;
              Params[2].DataType := ftInteger;
              Params[2].ParamType := ptInput;
              ParamByName('Numero').asInteger := Numero;
              ParamByName('Data_Hora').asDateTime := Data_Hora;
              ParamByName('Operador_Cadastro').asInteger := Operador;
            end;
         Open;
       end;
  if  AlterouDentista and (dm.execmd('select count(*) qt from itens_orcamento where orcamento = ' + QueryOrcamentosNumero.AsString,'qt') <> '0') then
  begin
     AlterouDentista := false;
     RevalorizaOrcamento;
  end;

end;

procedure TFormOrcamentos.QueryOrcamentosBeforeDelete(DataSet: TDataSet);
begin
  if QueryOrcamentosAutorizado.AsBoolean then
    VerifPermissao;

   if FormOrcamentos.tag = 1 then
      Abort;
   with QueryEspeciais do
     begin
       Close;
       ParambyName('Operador').asInteger := Senha.Codigo_Operador;
       Open;
       if recordcount = 0 then
          exit;
     end;

     with QueryItensOrcamento do
       begin
         First;
         if RecordCount <> 0 then
            while not eof do
               Delete;
       end;

   if QueryOrcamentosTotal_Desconto.AsString <> '0' then
     begin
       Application.CreateForm(TFormPrestacoes, FormPrestacoes);
       with Prestacoes.FormPrestacoes.QueryPrestacoes do
         begin
           First;
           if RecordCount <> 0 then
              while not eof do
                 Delete;
         end;
       FormPrestacoes.Free;

       with QueryReceber do
         begin
          close;
          SQL[1] := 'Where orcamento = ' + QueryOrcamentosNumero.AsString;
          open;
          if recordcount <> 0 then
             while not eof do
               Delete;
         end;
     end;
end;
procedure TFormOrcamentos.VerifPermissao;
begin

   if (dm.GetParam('ALTORC') = 'S') or VAutorizando then
     exit;
   if not dm.VerifPermissao('2','4','50','120') then
   begin // regra : se nao tem permissao para alterar orcamento, verifica se tem permissao para alterar o status
      if dm.VerifPermissao('0','0','0','29') then
      begin // se tem permissao para alterar o status , verifica se esta tentanto alterar o status, se sim, altera apenas o staturs....
         if dm.execmd('select count(*) q from orcamento where numero = ' +  QueryOrcamentosNumero.AsString + ' and status <> ''' + QueryStatusCodigo.AsString + '''','q') <> '0' then
         begin

           dm.execmd('update orcamento set status = ''' + QueryOrcamentosStatus.AsString + ''' where numero = ' + QueryOrcamentosNumero.AsString );
           ShowMessage('Status alterado com sucesso. Obs importante : você tem permissão para alterar apenas o status do orçamento , caso esteja tentando alterar outra informacao não será possível');
           QueryOrcamentos.Close;
           QueryOrcamentos.Open;
           abort;
           exit;
         end;
      end;
      ShowMessage('Atenção!, este orçamento já está autorizado, você não tem permissão para alterar/excluir orçamentos autorizados! Operação cancelada !');
      abort;
   end;
{   if dm.execmd('select count(*) q from permissoes where codigo_grupo = 2 and codigo_procedimento = 4 and Codigo_SubProcedimento = 50 and codigo_operador = ' + intToStr(senha.Codigo_Operador),'q') = '0' then
   begin
      ShowMessage('Atenção!, este orçamento já está autorizado, você não tem permissão para alterar/excluir orçamentos autorizados! Operação cancelada !');
      abort;
   end;}
   if application.MessageBox('Este orçamento já foi autorizado, confirma operação?"','Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrCancel then
      abort;

end;

function TFormOrcamentos.HaDifVrParcelas(Var msg: string): Boolean;
var vrAux,vrDifTol : Real;
begin
     result := false;

     vrDifTol := StrToFloat(dm.GetParam('DIFTOL')) / 100;

     if not QueryOrcamentosNumero_Parcelas.IsNull then
     begin
        dm.execmd('select total_desconto v1, sum(valor) v2 from orcamento o left join prestacoes p on o.numero = p.orcamento  where  numero  = ' + QueryOrcamentosNumero.AsString + ' group by total_desconto','v1');
        vrAux := dm.QueryGlobal.FieldByName('v1').AsCurrency - dm.QueryGlobal.FieldByName('v2').AsCurrency;
        if (vrAux < (-1 * vrDifTol)) or (vrAux > vrDifTol) then
        begin

           msg := 'Há diferença de valores entre o orçamento(' + FormatFloat('R$ ###,###,##0.00', dm.QueryGlobal.FieldByName('v1').AsCurrency) + ') e as parcelas do orçamento(' + FormatFloat('R$ ###,###,##0.00', dm.QueryGlobal.FieldByName('v2').AsCurrency) + ') acima de ' + FormatFloat('R$ ###,###,##0.00',vrDifTol) + ' centavos, não é possível aprovar o orçamento, revise as parcelas do orçamento !';
           result := true;
        end;
     end;
end;

procedure TFormOrcamentos.ReCria_Prestacoes;
var vrAux : Real;
begin

     // o fato de criar esse form inclui as parcelas do orcamento
     if not QueryOrcamentosNumero_Parcelas.IsNull then
     begin
        dm.execmd('select total_desconto v1, sum(valor) v2 from orcamento o left join prestacoes p on o.numero = p.orcamento  where  numero  = ' + QueryOrcamentosNumero.AsString + ' group by total_desconto','v1');
        vrAux := dm.QueryGlobal.FieldByName('v1').AsCurrency - dm.QueryGlobal.FieldByName('v2').AsCurrency;
        if (vrAux < -0.05) or (vrAux > 0.05) then
        begin

           dm.execmd('delete Prestacoes where Orcamento = ''' + QueryOrcamentosNumero.AsString + '''');
           Application.CreateForm(TFormPrestacoes, FormPrestacoes);
           FormPrestacoes.free;
           VAlterouParcOuDesc := false;

        end;
     end;
end;
procedure TFormOrcamentos.QueryOrcamentosBeforePost(DataSet: TDataSet);
var aux : string;
cdContrat,qtAvisoDados,qtLimiteAviso, mostraAviso : string;
begin

   if not QueryOrcamentosNumero.IsNull then
   begin
      if (QueryOrcamentosTipo.AsInteger <> 5) then
      begin
         //if dm.ExecutaComando('select count(orcamento) q from itens_orcamento where orcamento = ' + QueryOrcamentosNumero.AsString + '  and servico in(1304, 1306, 1350,1357) ','q') <> '0' then
         if dm.ExecutaComando('select count(orcamento) q from itens_orcamento a, servicos b where a.servico = b.codigo and manutencaoAutomatica = 1 and orcamento = ' + QueryOrcamentosNumero.AsString,'q') <> '0' then
         begin
            ShowMessage('Este orçamento possui serviços que só podem ser incluídos em orçamentos classificados como tipo "Manutenção", operação cancelada !');
            abort;
         end;
      end;
      if dm.execmd('select usuario from orcamento where numero = ' + QueryOrcamentosNumero.AsString,'usuario') <> QueryOrcamentosUsuario.AsString then
      begin
         ShowMessage('Não é possível trocar o usuário do orçamento, devido as regras do odontograma, cancele este orçamento e faça um novo orçamento para o usuário');
         abort;
      end;
   end;

  if QueryOrcamentosAutorizado.AsBoolean then
    VerifPermissao;
  if QueryOrcamentosNumero.IsNull then
     aux := ''
  else
     aux := dm.execmd('select status from orcamento where numero = ' + QueryOrcamentosNumero.AsString,'status');
   {
  // tá cancelando ou paralizando o orçamento, e quando tá cancelando nao valida se o usuario ta excluido versoa 5.2
  if (QueryOrcamentosStatus.AsString = '7') and (aux <> '7') or
     (QueryOrcamentosStatus.AsString = '4') and (aux <> '4')
      then
  else
     VerifStatusUsu(false);
     }
  if QueryOrcamentosDesconto.asString <> '' then
     QueryOrcamentosTotal_Desconto.asCurrency := QueryOrcamentosTotal.asCurrency - (QueryOrcamentosTotal.asCurrency * QueryOrcamentosDesconto.asFloat / 100)
  else
     QueryOrcamentosTotal_Desconto.asCurrency := QueryOrcamentosTotal.asCurrency;
  QueryOrcamentosContratante.asInteger := VUsuario;
  QueryOrcamentosContratante_Titular.asInteger := QueryUsuariosContratante_Titular.asInteger;
  //if dm.execmd('select count(*) q from usuario u where u.codigo_completo =  ' + QueryOrcamentosUsuario.AsString + ' and u.contratante_titular <> 1' ,'q') <> '0' then
  if dm.execmd('select count(*) q from usuario u where u.codigo_completo =  ' + QueryOrcamentosUsuario.AsString + ' and u.contratante_titular <> ' + QueryOrcamentosContratante_Titular.AsString,'q') <> '0' then
  begin
     //ShowMessage('Ocorreu um erro no orçamento contratante titular do orçamento defere do contratante titular do usuário');
     FmMensagem := TFmMensagem.create(self);
     FmMensagem.Memo1.lines.Add('Ocorreu um erro no orçamento contratante titular do orçamento defere do contratante titular do usuário!!!!!');
     FmMensagem.Memo1.lines.add('QueryOrcamentosContratante_Titular : ' + QueryOrcamentosContratante_Titular.AsString);
     FmMensagem.Memo1.lines.add('QueryOrcamentosUsuario.AsString : ' + QueryOrcamentosUsuario.AsString);
     FmMensagem.Memo1.lines.add('variavel Usuario : ' + IntToStr(VUsuario));
     FmMensagem.Memo1.lines.add('numero orcamento : ' + QueryOrcamentosNUmero.AsString );
     FmMensagem.Memo1.lines.add('DBEditUsuario : ' + DBEditUsuario.Text);

     FmMensagem.Memo1.lines.add('QueryUsuarios.sql : ' + QueryUsuarios.text);
     FmMensagem.Memo1.lines.add('QueryUsuarios.ParamByName(codigo_completo).asString : ' + QueryUsuarios.ParamByName('codigo_completo').asString);
     FmMensagem.ShowModal;
     dm.enviaEmail('problema bug contratante titular multibucal ', FmMensagem.Memo1.Text,'eniorp@gmail.com');
     FmMensagem.Free;
     abort;

  end;
  QueryOrcamentoscd_tabela.AsString := GetTabPagtoDentista;
  if (QueryOrcamentos.State = DsInsert) then

     if QueryContratantelg_restricao.AsBoolean then
     begin
        FmMensagem := TFmMensagem.create(self);
        FmMensagem.Memo1.lines.Add('ATENÇÃO: Contratante com restrição!!!!!');
        FmMensagem.ShowModal;
        FmMensagem.Free;

     end
     else
     if dm.ExecutaComando('select count(*) qt from contratante where lg_restricao = 1 and codigo = ' + QueryUsuariosContratante_Titular.AsString,'qt') <> '0' then
     begin
        FmMensagem := TFmMensagem.create(self);
        FmMensagem.Panel1.Color := clblue;
        FmMensagem.Memo1.Color := clblue;
        FmMensagem.Color := clblue;
        FmMensagem.Memo1.lines.Add('ATENÇÃO: Contratante titular com restrição!!!!!');
        FmMensagem.ShowModal;
        FmMensagem.Free;

     end;
     if QueryOrcamentosTipo.IsNull then
     begin
        ShowMessage('Tipo deve ser preenchido !');
        DBEditTipo.SetFocus;
        abort;
     end;
     if QueryOrcamentosData.IsNull then
     begin
        ShowMessage('Data  deve ser preenchida !');
        DBEditData.SetFocus;
        abort;
     end;

   mostraAviso := dm.GetParam('MOAVCO');
  if (QueryOrcamentos.State = dsInsert) and (mostraAviso = 'S') then // se MOAVCO = S Mostra Aviso Contratante
  begin
        cdContrat := dm.execmd('select codigo from usuario where codigo_completo = ' + QueryOrcamentosUsuario.AsString,'codigo');

        if (dm.execmd('select count(*) qt from usuario where (cd_sus is null or ltrim(cd_sus) = '''') and codigo = ' + cdContrat ,'qt') <> '0') then
        begin

           fmAvisoContratante := TfmAvisoContratante.create(self);
           fmAvisoContratante.ADOQueryUsuario.close;
           fmAvisoContratante.ADOQueryUsuario.sql[1] := cdContrat;
           fmAvisoContratante.ADOQueryUsuario.open;

           fmAvisoContratante.ADOQueryAvisoContratante1.close;
           fmAvisoContratante.ADOQueryAvisoContratante1.sql[1] := cdContrat;
           fmAvisoContratante.ADOQueryAvisoContratante1.open;


           fmAvisoContratante.ADOQueryAvisoContratante.close;
           fmAvisoContratante.ADOQueryAvisoContratante.sql[1] := cdContrat;
           fmAvisoContratante.ADOQueryAvisoContratante.open;

           // PEGA A QTDE DE AVISOS DADOS A PARTIR DA DATA DE INCLUSÃO DO BENEFICIARIO MAIS ANTIGO SEM O CODIGO SUS

           qtAvisoDados := dm.execmd('select count(*) qt from aviso_contratante where cd_contratante = ' + cdContrat + ' and convert(datetime,convert(char(10),dt_aviso,103),103) > (select MIN(Data_Inclusao) from usuario where  (cd_sus is null or ltrim(cd_sus)  = '''') and codigo = ' + cdContrat + ')','qt');
           qtLimiteAviso := dm.GetParam('QTAVCS');

           fmAvisoContratante.Memo1.Clear;
           fmAvisoContratante.Memo1.Lines.add('Atenção');
           fmAvisoContratante.Memo1.Lines.add('');
           fmAvisoContratante.Memo1.Lines.add('Os Beneficiários abaixo não possuem cartão');

           fmAvisoContratante.ADOQueryAvisoContratante.Insert;
           fmAvisoContratante.ADOQueryAvisoContratantecd_contratante.AsString := cdContrat;
           fmAvisoContratante.ADOQueryAvisoContratantecd_tp_aviso.AsInteger := 1;
           fmAvisoContratante.ADOQueryAvisoContratantedt_aviso.AsDateTime := dm.now;
           fmAvisoContratante.ADOQueryAvisoContratantecd_operador.AsInteger := senha.Codigo_Operador;




           if StrToint(qtAvisoDados) >= StrToint(qtLimiteAviso) then
           begin
              repeat
              until application.MessageBox(pchar('ATENÇÃO. NÃO É POSSÍVEL EMITIR ORÇAMENTO PARA ESTE CONTRATANTE, ESTÁ FALTANDO INFORMAÇÃO DE CARTÃO SUS NO CADASTRO DE USUÁRIO. JÁ FORAM DADO ' + qtAvisoDados + ' AVISOS PARA ESTE CONTRATANTE. SERÁ ABERTO UMA TELA ONDE VOCÊ PODERÁ VISUALIZAR AS PESSOAS E DATAS QUE O AVISO FOI DADO!'),'Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk;

             // somente mostra aviso se na data de hoje não tiver avisado.
              if (dm.execmd('select count(*) q from aviso_contratante where cd_contratante = ' + cdContrat + ' and convert(char(10),dt_aviso,103) = convert(char(10),getdate(),103)','q') = '0') then
              begin

                 fmAvisoContratante.Memo1.Lines.add('SUS. Já foram dado ' + qtAvisoDados + ' avisos, portanto');
                 fmAvisoContratante.Memo1.Lines.add('não será permitido autorizar outro orçamento.');
                 fmAvisoContratante.ADOQueryAvisoContratante.Post;
                 fmAvisoContratante.ADOQueryAvisoContratante.edit;
                 fmAvisoContratante.ShowModal;
                 EditTipo.Clear;
                 EditNomeUsuario.Clear;
                 EditNomeDentista.Clear;
                 abort;
              end
              else
              begin
                 // sido avisado hoje mostra a mensagem de que não é possível mas deixa cadastrar outros orçamentos
                 fmAvisoContratante.ADOQueryAvisoContratante.cancel;
                 end;

           end
           else
           begin
             // somente mostra aviso se na data de hoje não tiver avisado.
              if (dm.execmd('select count(*) q from aviso_contratante where cd_contratante = ' + cdContrat + ' and convert(char(10),dt_aviso,103) = convert(char(10),getdate(),103)','q') = '0') then
              begin

                 fmAvisoContratante.Memo1.Lines.add('SUS. Este é o ' + IntToStr(StrtoInt(qtAvisoDados)+ 1) + 'º aviso. Após o ' + qtLimiteAviso + 'º aviso');
                 fmAvisoContratante.Memo1.Lines.add('não será permitido autorizar outro orçamento.');

                 fmAvisoContratante.ADOQueryAvisoContratante.Post;
                 fmAvisoContratante.ADOQueryAvisoContratante.edit;
                 fmAvisoContratante.ShowModal;
              end
              else
              fmAvisoContratante.ADOQueryAvisoContratante.cancel;
           end;
           fmAvisoContratante.free;
        end;

  end;
     
end;
function TFormOrcamentos.GetTabPagtoDentista: string;
var Dtaux, aux : string;
    plano : string;
begin
   if QueryOrcamentosDentista.IsNull then
   begin
     result := '';
     exit;
   end;
   if QueryOrcamentosData_Conferencia.IsNull  then

      Dtaux := QueryOrcamentosData.AsString

   else

      Dtaux :=  QueryOrcamentosData_Conferencia.AsString;

   plano := dm.execmd('select top 1 p.codigo_susep from contratante c, plano p where p.codigo = c.plano and c.codigo = ' + QueryUsuariosCodigo.AsString,'codigo_susep');

   aux := dm.execmd('set dateformat dmy select top 1 cd_tabela from TabPagXDentista where registroPlano = ' + plano + ' and  cd_dentista = ' + QueryOrcamentosDentista.AsString + ' and ''' + Dtaux  + ''' between dtini and dtfim + '' 23:59''','cd_tabela');

   if aux <> '' then // existe tabela específica para o plano.

      result := aux

   else // se nao tiver tabela específica para o plano então pega a tabela genérica.

     result := dm.execmd('set dateformat dmy select top 1 cd_tabela from TabPagXDentista where registroPlano is null and cd_dentista = ' + QueryOrcamentosDentista.AsString + ' and ''' + Dtaux  + ''' between dtini and dtfim + '' 23:59''','cd_tabela');

end;

procedure TFormOrcamentos.DataSourceOrcamentosDataChange(Sender: TObject;
  Field: TField);
begin
    if QueryOrcamentos.RecordCount = 0 then exit;

     if QueryOrcamentosAutorizado.asBoolean then
        BitBtnAutorizar.Enabled := False
     else
        BitBtnAutorizar.Enabled := True;

     if DBEditUsuario.Text <> '' then
        begin

          //Usuario := StrToInt(Copy(DBEditUsuario.Text,1, (Length(DBEditUsuario.Text)) - 1));
          //Digito := StrToInt(Copy(DBEditUsuario.Text, Length(DBEditUsuario.Text), 1));

          with QueryUsuarios do
            begin
              Close;
              ParamByName('codigo_completo').asString := DBEditUsuario.Text;
//              ParamByName('Digito_Usuario').asInteger := Digito;
              Open;
              if RecordCount = 0 then
                 begin
                   MessageDlg('Usuário Não Cadastrado !!!!', mtError, [mbOk], 0);
                   DBEditUsuario.SetFocus;
                   exit;
                 end
              else
              begin
                  if not  QueryOrcamentosUsuario.isnull then
                  begin
                    VUsuario := StrToInt(Dm.ExecutaComando('select codigo ,digito from usuario where codigo_completo = ' + QueryOrcamentosUsuario.AsString,'codigo'));
                    VDigito  := dm.QueryGlobal.FieldbyName('digito').asInteger;
                    EditNomeUsuario.Text := QueryUsuariosNome.asString;
                  end;
              end;

              //if QueryUsuariosData_Exclusao.asString <> '' then
               //  begin
                 //  MessageDlg('Usuário Excluído em(DS) ' + DateToStr(QueryUsuariosData_Exclusao.asDateTime) + ' !!!', mtError, [mbOk], 0);
                  // DBEditUsuario.SetFocus;
                  // exit;
                //end;

              with QueryContratante do
                begin
                  Close;
                  ParamByName('Codigo_Contrantante').asInteger := VUsuario;
                  Open;
                end;
            end;
        end;

     with QueryDentista do
       begin
         Close;
         ParamByName('Dentista').asInteger := QueryOrcamentosDentista.asInteger;
         Open;
         EditNomeDentista.Text := QueryDentistaNome.asString;
         //EditCdTab.Text := QueryDentistacd_tabela.AsString;
       end;

     with QueryTipoOrcamento do
       begin
         Close;
         ParamByName('Tipo_Orcamento').asInteger := QueryOrcamentosTipo.asInteger;
         Open;
         EditTipo.Text := QueryTipoOrcamentoDescricao.AsString;
       end;

//     if QueryOrcamentos.State in [dsInsert] then
//        exit;

     with QueryItensOrcamento do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         Open;
       end;
end;

procedure TFormOrcamentos.BitBtnImprimirClick(Sender: TObject);
var aux : string;
begin
     if QueryOrcamentosAutorizado.AsBoolean and HaDifVrParcelas(aux) then
       begin
          ShowMessage(aux);
          exit;
       end;
     Via_Cliente := false;
     Via_Convenio := false;
     Via_Dentista := false;
     Via_Protetico := false;
     Via_Ortodontia := false;
     Promissoria := false;
     ChequePre := false;
     Via_Apresentacao := false;

     QueryOrcamentos.DisableControls;
     // montao o total do orçamento para corrigir erro de imprimir com valor errado
     //MontaTotal;
     //try
     //  QueryOrcamentos.Post
     //except
     //  on E: Exception do
     //  begin
      //   if VGRALOG then
      //      Dm.GravaLog('TFormOrcamentos','BitBtnImprimirClick','#ORC# ' + QueryOrcamentosNumero.AsString + e.message);

      //   ShowMessage('Erro Gravação da Tabela de Títulos !!!' + e.message);
      //   QueryOrcamentos.Cancel;
     //  end;
     //end;

     QueryOrcamentos.EnableControls;

     {Imprimir}
     Application.CreateForm(TFormImpressaoOrcamento, FormImpressaoOrcamento);
     if QueryOrcamentosAutorizado.asBoolean then
        begin

           //FormImpressaoOrcamento.CheckBoxOrtodontia.Checked := QueryOrcamentosTipo.AsInteger = 5;
           FormImpressaoOrcamento.CheckBoxOrtodontia.Checked := dm.execmd('select count(orcamento) q from itens_orcamento a, servicos b where a.servico = b.codigo and habilitaViaOrtodontia = 1 and orcamento = ' + QueryOrcamentosNumero.AsString,'q') <> '0';

           FormImpressaoOrcamento.CheckBoxOrtodontia.Enabled := FormImpressaoOrcamento.CheckBoxOrtodontia.Checked;
           FormImpressaoOrcamento.CheckBoxProtetico.Checked := (StrToFloat(dm.execmd('select sum(valor_protetico) vr from  Itens_Orcamento where orcamento = ' + QueryOrcamentosNumero.AsString,'vr')) > 0);
           FormImpressaoOrcamento.CheckBoxPromissoria.Enabled := dm.execmd('select count(*) qt from Prestacoes where TIPO_PAGAMENTO in(3,25) and orcamento = ' + QueryOrcamentosNumero.AsString,'qt') <> '0';


        end
        else
        begin
           FormImpressaoOrcamento.CheckBoxCliente.Checked := true;
           //FormImpressaoOrcamento.CheckBoxApres.Checked := true;
           FormImpressaoOrcamento.CheckBoxConvenio.Checked := false;
           FormImpressaoOrcamento.CheckBoxDentista.Checked := false;
           FormImpressaoOrcamento.CheckBoxProtetico.Checked := false;
           FormImpressaoOrcamento.CheckBoxConvenio.Enabled := false;
           FormImpressaoOrcamento.CheckBoxDentista.Enabled := false;
           FormImpressaoOrcamento.CheckBoxProtetico.Enabled := false;

           FormImpressaoOrcamento.CheckBoxChequePre.Enabled := false;
           
           FormImpressaoOrcamento.CheckBoxChequePre.Enabled := false;
           FormImpressaoOrcamento.CheckBoxPromissoria.Enabled := false;
           FormImpressaoOrcamento.CheckBoxOrtodontia.Enabled := false;
           
        end;

      FormImpressaoOrcamento.ShowModal;
      FormImpressaoOrcamento.Free;

     FormOrcamentos.Enabled := False;
     if dm.GetParam('IMPGRA') = 'S' then
        Imprime_OrcamentoGraf
     else
     begin
        Application.CreateForm(TFormEmImpressao, FormEmImpressao);
        FormEmImpressao.Caption := 'Impressão do Orçamento';
        FormEmImpressao.Show;
        FormEmImpressao.Update;

        Imprime_Orcamento;
     end;

     FormOrcamentoS.Enabled := True;
     try
        FormEmImpressao.Hide;
        FormEmImpressao.Free;
     except
     end;
end;

{Impressao}
procedure TFormOrcamentos.Imprime_Orcamento;
var
   CaminhoImpressora : String[30];

begin

   Ini := TInifile.Create('C:\MultiOdonto\Impressora.Ini');
   try
      CaminhoImpressora := Ini.ReadString('IMPRESSORA', 'ImpressoraOrcamentoProvisorio', '');
   except
      ShowMessage('Não localizou o parametro ImpressoraOrcamento no arquivo c:\multiodonto\impressora.ini');
      CaminhoImpressora := '';
      Ini.Free;
   end;

   try
      Impressora := TGutenberg.Create(CaminhoImpressora,'Orçamento');
      try
         With Impressora do
         begin
            Filter:=gfConvert;
            SetFilterMasks ('áéíóúãõâôÃÂÁÉÊÍÓÔÕÚçÇ²³ªº°','aeiouaoaoAAAEEIOOOUcC23aoo');
            SendControls(#27#48); // Coloca a impressora em modo 1/8
            SendControls(#15); // Coloca a impressora em modo condensado
            Pagina := 0;
            if QueryOrcamentosAutorizado.asBoolean then
            begin
               if Via_Cliente   then Imprime_NaoAprovado;
               if Via_Convenio  then Imprime_OrcamentoConvenio;
               if Via_Dentista  then Imprime_OrcamentoDentista;
               if Via_Protetico then Imprime_OrcamentoProtetico;
               if Promissoria   then PDadosPromissoria;

               if ChequePre then
               begin
                  QRReciboChequesPre.Orcamento   := QueryOrcamentosNumero.AsInteger;
                  QRReciboChequesPre.Contratante := QueryOrcamentosContratante.AsInteger;
                  QRReciboChequesPre.Usuario := QueryOrcamentosUsuario.AsInteger;
                  Application.CreateForm(TQRRecChequesPre, QRRecChequesPre);
                  QRRecChequesPre.Print;
                  QRRecChequesPre.Free;
               end;
            end
            else
               Imprime_NaoAprovado;

            Impressora.SendControls(#27#48);
            Impressora.SendControls(#18);
            Eject;
         end;
      except
         ShowMessage('Erro durante a impressão !');
      end;
      try
         Impressora.Free;
      except
         ShowMessage('Erro fechando a impressora !');
      end;
   except
      ShowMessage ('Impressora Inválida ou erro de Spool');
   end;
end;

procedure TFormOrcamentos.Imprime_OrcamentoGraf;
var
   CaminhoImpressora : String[30];
   //VImpGra : Boolean;
begin
{
   if not QueryOrcamentosAutorizado.asBoolean then
   begin
      ImpGViaCliente;
      exit;
   end;
   }

   if Via_Apresentacao then
      impGViaApresentacao;
   if Via_Cliente then
      ImpGViaCliente;
   if Via_Dentista then
      ImpGViaDentista;
   if via_convenio then
       ImpGViaConv;

   IF Via_Protetico then
      ImpGViaProtetico;
   if Via_Ortodontia then
       ImpGViaOrtodontia;
   if not Promissoria and not ChequePre then
     exit;

//   if not Via_Convenio and not Via_Protetico and not Promissoria and not ChequePre then
//     exit;

   Ini := TInifile.Create('C:\MultiOdonto\Impressora.Ini');
   try
      CaminhoImpressora := Ini.ReadString('IMPRESSORA', 'ImpressoraOrcamento', '');
   except
      ShowMessage('Não localizou o parametro ImpressoraOrcamento no arquivo c:\multiodonto\impressora.ini');
      CaminhoImpressora := '';
      Ini.Free;
   end;

   try
      Impressora := TGutenberg.Create(CaminhoImpressora,'Orçamento');
      try
         With Impressora do
         begin
            Filter:=gfConvert;
            SetFilterMasks ('áéíóúãõâôÃÂÁÉÊÍÓÔÕÚçÇ²³ªº°','aeiouaoaoAAAEEIOOOUcC23aoo');
            SendControls(#27#48); // Coloca a impressora em modo 1/8
            SendControls(#15); // Coloca a impressora em modo condensado
            Pagina := 0;
            if QueryOrcamentosAutorizado.asBoolean then
            begin
               //if Via_Convenio then Imprime_OrcamentoConvenio;

               if Via_Protetico then Imprime_OrcamentoProtetico;
               if Promissoria then PDadosPromissoria;
               if ChequePre then
               begin
                  QRReciboChequesPre.Orcamento   := QueryOrcamentosNumero.AsInteger;
                  QRReciboChequesPre.Contratante := QueryOrcamentosContratante.AsInteger;
                  QRReciboChequesPre.Usuario := QueryOrcamentosUsuario.AsInteger;
                  Application.CreateForm(TQRRecChequesPre, QRRecChequesPre);
                  QRRecChequesPre.Print;
                  QRRecChequesPre.Free;
               end;
            end
            else
               ImpGViaCliente;

            Impressora.SendControls(#27#48);
            Impressora.SendControls(#18);
            Eject;
         end;
      except
         ShowMessage('Erro durante a impressão !');
      end;
      try
         Impressora.Free;
      except
         ShowMessage('Erro fechando a impressora !');
      end;
   except
      ShowMessage ('Impressora Inválida ou erro de Spool');
   end;
end;

procedure TFormOrcamentos.Imprime_Cabecalho;
begin
     Impressora.SendControls(#13);
     Pagina := Pagina + 1;
     Campo1 := '+----------------------------------------------------------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 01, '|');
     Impressora.GWritePos(Linha, 06, QueryEmpresaFantasia.asString);
     Impressora.GWritePos(Linha, 54, 'Emissao....: ');
     Impressora.GWritePos(Linha, 67, DateToStr(dm.Date));
     Impressora.GWritePos(Linha, 78, '|');
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 01, '|');
     Impressora.GWritePos(Linha, 06, 'ORCAMENTO ODONTOLOGICO..: ');
     Impressora.GWritePos(Linha, 32, QueryOrcamentosNumero.asString);
     Impressora.GWritePos(Linha, 42, '- Data...: ');
     Impressora.GWritePos(Linha, 53, QueryOrcamentosData.asString);
     Impressora.GWritePos(Linha, 63, '- Pagina.: ');
     Impressora.GWritePos(Linha, 76, IntToStr(Pagina));
     Impressora.GWritePos(Linha, 78, '|');
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     Campo1 := '+----------------------------------------------------------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 01, '|');
     Impressora.GWritePos(Linha, 02, 'BENEFIC....: ');
     Impressora.GWritePos(Linha, 15, Copy(EditNomeUsuario.Text, 01, 35));
     Impressora.GWritePos(Linha, 49, 'CODIGO DO BENEF.....: ');
     Impressora.GWritePos(Linha, 71, IntToStr(VUsuario) + '.' + IntToStr(Digito));
     Impressora.GWritePos(Linha, 78, '|');
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 01, '|');
     Impressora.GWritePos(Linha, 02, 'CONTRAT....: ');
     Impressora.GWritePos(Linha, 15, Copy(QueryContratanteNome.asString, 01, 35));
     Impressora.GWritePos(Linha, 49, 'CODIGO DO CONTRAT...: ');
     Impressora.GWritePos(Linha, 71, Copy(QueryContratanteCodigo.asString, 01, 05));
     Impressora.GWritePos(Linha, 78, '|');
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 01, '|');
     Impressora.GWritePos(Linha, 02, 'DENTISTA...: ');
     Impressora.GWritePos(Linha, 15, Copy(EditNomeDentista.Text, 01, 35));
     Impressora.GWritePos(Linha, 49, 'CODIGO DO DENTISTA..: ');
     Impressora.GWritePos(Linha, 71, Copy(DBEditDentista.Text, 01, 05));
     Impressora.GWritePos(Linha, 78, '|');
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     if QueryContratanteGrupo_Contratante.AsString <> '' then
        with QueryGrupoContratante do
          begin
            Close;
            ParamByName('Codigo_Grupo').asInteger := QueryContratanteGrupo_Contratante.AsInteger;
            Open;
          end
     else
        QueryGrupoContratante.close;

     if QueryUsuariosContratante_Titular.asString <> '' then
        with QueryContratante do
          begin
            Close;
            ParamByName('Codigo_Contrantante').asInteger := QueryUsuariosContratante_Titular.asInteger;
            Open;
          end;
     Impressora.SendControls(#13);
     Impressora.GWritePos(Linha, 01, '|');
     Impressora.GWritePos(Linha, 02, 'EMPRESA....: ');
     Impressora.GWritePos(Linha, 15, Copy(QueryContratanteNome.asString, 01, 35));
     Impressora.GWritePos(Linha, 49, 'CODIGO DA EMPRESA...: ');
     Impressora.GWritePos(Linha, 71, Copy(QueryContratanteCodigo.asString, 01, 05));
     Impressora.GWritePos(Linha, 78, '|');
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     Impressora.GWritePos(Linha, 01, '|');
     Impressora.GWritePos(Linha, 02, 'GRUPO......: ');
     Impressora.GWritePos(Linha, 15, Copy(QueryGrupoContratanteDescricao.asString, 01, 35));
     Impressora.GWritePos(Linha, 49, 'CODIGO DO GRUPO.....: ');
     Impressora.GWritePos(Linha, 71, Copy(QueryGrupoContratanteCodigo.asString, 01, 05));
     Impressora.GWritePos(Linha, 78, '|');
     Impressora.SendControls(#13);
     Linha := Linha + 1;
     Campo1 := '+----------------------------------------------------------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
end;


procedure TFormOrcamentos.Imprime_Promissoria;
begin
     Linha := 01;
     Application.CreateForm(TFormPrestacoes, FormPrestacoes);
     with Prestacoes.FormPrestacoes.QueryPrestacoes do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         Open;
         First;
         if RecordCount = 0 then
            begin
              MessageDlg('Não Existem Prestações Lançadas !!!!', mtError, [mbOk], 0);
              FormPrestacoes.Free;
              exit;
            end
         else
           while not eof do
             begin
              if Prestacoes.FormPrestacoes.QueryPrestacoesTipo_Pagamento.AsInteger = 3 then // nota promissória
              begin
                 if Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asInteger > 10 then
                    Numero_Str2 := Prestacoes.FormPrestacoes.QueryPrestacoesOrcamento.asString
                    + Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asString
                 else
                    Numero_Str2 := Prestacoes.FormPrestacoes.QueryPrestacoesOrcamento.asString
                       + '0' + Prestacoes.FormPrestacoes.QueryPrestacoesParcela.asString;
                 Imprime_Corpo(FmDadosNP.EditAss.text,FmDadosNP.EditEmit.text,FmDadosNP.EditEnder.text,FmDadosNP.Edit_CPF.text,FmDadosNP.EditFone.text,FmDadosNP.Edit_Rg.Text,FmDadosNP.MaskEditDtNasc.Text,FmDadosNP.EditNC.Text);
              end;
              Next;
            end;
       end;
     FormPrestacoes.Free;
end;

procedure TFormOrcamentos.Imprime_Corpo(PAssinatura,PEmitente,Pendereco,Pcpf,Pfone,rg,DtNasc,NadaConsta:String);
begin
     if Linha > 33 then
        Linha := 01;
     Impressora.SendControls(#13);

     Campo1 := '********************************************************************************';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'No. ORCAMENTO....: ');
     Impressora.GWritePos(Linha, 21, QueryOrcamentosNumero.asString);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'DATA APROVACAO...: ');
     Impressora.GWritePos(Linha, 21,  DateToStr(QueryOrcamentosData_Conferencia.asDateTime));
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'VALOR ORCAMENTO..: ');
     Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal_Desconto.asCurrency);
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 21, Valor_Str);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'VALOR PROMISSORIA: ');
     Valor_Str := FormatFloat('#,##0.00', Prestacoes.FormPrestacoes.QueryPrestacoesValor.asCurrency);
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 21, Valor_Str);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'VENCIMENTO.......: ');
     Data_Atual := Prestacoes.FormPrestacoes.QueryPrestacoesVencimento.asDateTime;
     Impressora.GWritePos(Linha, 21,  DateToStr(Data_Atual));
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'No. TITULO.......: ');
     Impressora.GWritePos(Linha, 21, Numero_Str2);
     Linha := Linha + 2;
     Impressora.SendControls(#13);
     Impressora.SendControls(#13);

     DecodeDate(Data_Atual, Ano, Mes, Dia);
     Impressora.GWritePos(Linha, 01, 'AOS, ');
     if Dia > 10 then
        Impressora.GWritePos(Linha, 06, '0' + IntToStr(Dia))
     else
        Impressora.GWritePos(Linha, 06, IntToStr(Dia));
     Impressora.GWritePos(Linha, 09, 'DIAS DO MES DE ');
     Mes_Str := FormatDateTime('MMMM', Data_Atual);
     Impressora.GWritePos(Linha, 24, UpperCase(Mes_Str));
     Impressora.GWritePos(Linha, 34, 'DO ANO DE');
     Impressora.GWritePos(Linha, 44, IntToStr(Ano));
     Impressora.GWritePos(Linha, 49, 'PAGAREI POR');
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'ESTA UNICA VIA DE NOTA PROMISSORIA A ' + QueryEmpresaRazao_Social.AsString + ',');
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'CGC: ' + QueryEmpresaCGC.AsString + ' OU A SUA ORDEM A QUANTIA DE R$ ');
     Impressora.GWritePos(Linha, 54, Valor_Str);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     TextoExtenso := ValorExtenso(Prestacoes.FormPrestacoes.QueryPrestacoesValor.asCurrency);
     TextoExtenso := TextoExtenso + StrAll(160 - Length(TextoExtenso),'*');
     Impressora.GwritePos(Linha, 01, '(' +  Copy(TextoExtenso, 1, 79));
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GwritePos(Linha, 01, Copy(TextoExtenso, 80, 79) + ')');
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GwritePos(Linha, 01, 'EM MOEDA CORRENTE DESTE PAIS.');
     Impressora.GwritePos(Linha, 58, 'CONTRATO:');
     Impressora.GwritePos(Linha, 68, QueryContratanteCodigo.asString);     
     Linha := Linha + 2;
     Impressora.SendControls(#13);
     Impressora.SendControls(#13);

     Data_Atual := dm.Date;
     DecodeDate(Data_Atual, Ano, Mes, Dia);
     Mes_Str := FormatDateTime('MMMM', Data_Atual);
     Mes_Str := UpperCase(Mes_Str);

     Impressora.GwritePos(Linha, 01, QueryEmpresaCidade.AsString + ',' + IntToStr(Dia) + ' DE ' + Mes_Str + ' DE ' + IntToStr(Ano) + '.');
     Linha := Linha + 4;
     Impressora.SendControls(#13);
     Impressora.SendControls(#13);
     Impressora.SendControls(#13);
     Impressora.SendControls(#13);

     Impressora.GwritePos(Linha, 01, '-----------------------------------------');
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GwritePos(Linha, 01,PAssinatura);
     Linha := Linha + 2;
     Impressora.SendControls(#13);
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'EMITENTE.........: ');
     Impressora.GwritePos(Linha, 21, Copy(PEmitente, 1, 35));

     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'BENEFICIARIO.....: ');
     Impressora.GwritePos(Linha, 21, Copy(EditNomeUsuario.Text, 1, 35));
     Impressora.GwritePos(Linha, 64, 'NC:');
     Impressora.GwritePos(Linha, 68, NadaConsta);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'ENDERECO.........: ');
     Impressora.GwritePos(Linha, 21, Copy(PEndereco, 1, 40));
     Impressora.GwritePos(Linha, 64, 'RG:');
     Impressora.GwritePos(Linha, 68, rg);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'CPF..............: ');
     Impressora.GwritePos(Linha, 21, Pcpf);
     Impressora.GwritePos(Linha, 64, 'DN:');
     Impressora.GwritePos(Linha, 68, DtNasc);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'FONE.............: ');
     Impressora.GwritePos(Linha, 21, PFone);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, 'DENTISTA.........: ');
     Impressora.GwritePos(Linha, 21, Copy(EditNomeDentista.Text, 1, 40));
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 3;
     Impressora.SendControls(#13);
     Impressora.SendControls(#13);
     Impressora.SendControls(#13);
end;

procedure TFormOrcamentos.Imprime_NaoAprovado;
begin
     Linha := 1;
     Imprime_Cabecalho;
     Imprime_ServicosNaoAprovado;
     Imprime_RodapeNaoAprovado;
end;

procedure TFormOrcamentos.Imprime_OrcamentoConvenio;
begin
     Linha := 1;
     Imprime_Cabecalho;
     Imprime_ServicosConvenio;
     Imprime_RodapeConvenio;
end;

procedure TFormOrcamentos.Imprime_OrcamentoDentista;
begin
     Linha := 1;
     Imprime_Cabecalho;
     Imprime_ServicosDentista;
     Imprime_RodapeDentista;
end;

procedure TFormOrcamentos.Imprime_OrcamentoProtetico;
//var Cont : Short;
begin
     Tem_Protetico := False;
     Numero_ViasProtetico := 0;

     with QueryItensOrcamento do
       begin
         First;
         while not eof do
           begin
             if QueryItensOrcamentoValor_Protetico.asCurrency <> 0 then
                begin
                  Tem_Protetico := True;
                  Numero_ViasProtetico := Numero_ViasProtetico + 1;
                end;
             Next;
           end;
         First;
       end;

     if Tem_Protetico then
//       for Cont := 0 to Numero_ViasProtetico do
           Imprime_ServicosProtetico;
end;

procedure TFormOrcamentos.Soma_Linha;
begin
     Linha := Linha + 1;
     if Linha > 66 then
        begin
          Imprime_Cabecalho;
          Linha := 10;
        end;
end;

procedure TFormOrcamentos.Imprime_ServicosNaoAprovado;
begin
     Linha := 11;
     Impressora.SendControls(#13);
     Impressora.GWritePos(Linha, 01, '| Servicos');
     Impressora.GWritePos(Linha, 78, '|');
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '+---------+---------------------------+------+---------------+---------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '| Codigo  | Descricao                 | Qtde |  Valor Bruto  | Com Desconto  |';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '+---------+---------------------------+------+---------------+---------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     with QueryItensOrcamento do
       begin
         First;
         while not eof do
           begin
             with Impressora do
               begin
                  GWritePos(Linha, 01, '|');
                  Numero_Str := IntToStr(QueryItensOrcamentoServico.asInteger);
                  Numero_Str := StrAll(06 - Length(Numero_Str), ' ') + Numero_Str;
                  GWritePos(Linha, 03, Numero_Str);
                  GWritePos(Linha, 11, '|');
                  GWritePos(Linha, 13, Copy(QueryItensOrcamentoDescricao_Servico.asString, 1, 25));
                  GWritePos(Linha, 39, '|');
                  Quantidade_Str := StrAll(03 - Length(QueryItensOrcamentoQuantidade.asString), ' ') + QueryItensOrcamentoQuantidade.asString;
                  GWritePos(Linha, 41, Quantidade_Str);
                  GWritePos(Linha, 46, '|');
                  Valor_Str := FormatFloat('#,##0.00', QueryItensOrcamentoValor_Bruto.asCurrency);
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 53, Valor_Str);
                  GWritePos(Linha, 62, '|');
                  Valor_Str := FormatFloat('#,##0.00', QueryItensOrcamentoValor.asCurrency);
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 69, Valor_Str);
                  GWritePos(Linha, 78, '|');
                  Soma_Linha;
                  Impressora.SendControls(#13);
                  Campo1 := '+---------+---------------------------+------+---------------+---------------+';
                  GWritePos(Linha, 01, Campo1);
                  Soma_Linha;
                  Impressora.SendControls(#13);
               end;
             Next;
           end;
       end;
end;

procedure TFormOrcamentos.Imprime_ServicosConvenio;
begin
     Linha := 11;
     Impressora.SendControls(#13);
     Impressora.GWritePos(Linha, 01, '| Servicos');
     Impressora.GWritePos(Linha, 78, '|');
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '+---------+----------------------------+-------+-----------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '| Codigo  | Descricao                  | Qtde  |                             |';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '+---------+----------------------------+-------+-----------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '|Val Un.|Val. Ser.|Val. Orc.|Unit. Dent|Tot. Dent|Unit. Prot|Tot Pro| Saldo  |';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '+-------+---------+---------+----------+---------+----------+-------+--------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     with QueryItensOrcamento do
       begin
         First;
         while not eof do
           begin
             with Impressora do
               begin
//| 1110    ENXERTO OSSEO                               2                        |
                  GWritePos(Linha, 01, '|');
                  Numero_Str := IntToStr(QueryItensOrcamentoServico.asInteger);
                  Numero_Str := StrAll(06 - Length(Numero_Str), ' ') + Numero_Str;
                  GWritePos(Linha, 03, Numero_Str);
                  GWritePos(Linha, 11, Copy(QueryItensOrcamentoDescricao_Servico.asString, 1, 29));
                  Quantidade_Str := StrAll(03 - Length(QueryItensOrcamentoQuantidade.asString), ' ') + QueryItensOrcamentoQuantidade.asString;
                  GWritePos(Linha, 40, '|');
                  GWritePos(Linha, 45, Quantidade_Str);
                  GWritePos(Linha, 50, '|');
                  GWritePos(Linha, 78, '|');
                  Soma_Linha;
                  Impressora.SendControls(#13);

//|1,420.00|1.420.00| 1.420.00| 1.420.00 | 1.420.00| 1.420.00 | 1.420.00|1.800.00|
//+-------+---------+---------+----------+---------+----------+---------+--------+';
                  GWritePos(Linha, 01, '|');
                  Valor_Str := FormatFloat('#,##0.00', (QueryItensOrcamentoValor_Bruto.asCurrency / QueryItensOrcamentoQuantidade.asFloat));
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 02, Valor_Str);
                  GWritePos(Linha, 10, '|');
                  Valor_Str := FormatFloat('#,##0.00', QueryItensOrcamentoValor_Bruto.asCurrency);
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 11, Valor_Str);
                  GWritePos(Linha, 19, '|');
                  Valor_Str := FormatFloat('#,##0.00', QueryItensOrcamentoValor.asCurrency);
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 21, Valor_Str);
                  GWritePos(Linha, 29, '|');
                  Valor_Str := FormatFloat('#,##0.00', (QueryItensOrcamentoValor_Dentista.asCurrency / QueryItensOrcamentoQuantidade.asFloat));
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 31, Valor_Str);
                  GWritePos(Linha, 40, '|');
                  Valor_Str := FormatFloat('#,##0.00', QueryItensOrcamentoValor_Dentista.asCurrency);
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 41, Valor_Str);
                  GWritePos(Linha, 50, '|');
                  Valor_Str := FormatFloat('#,##0.00', (QueryItensOrcamentoValor_Protetico.asCurrency / QueryItensOrcamentoQuantidade.asFloat));
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 52, Valor_Str);
                  GWritePos(Linha, 61, '|');
                  Valor_Str := FormatFloat('#,##0.00', QueryItensOrcamentoValor_Protetico.asCurrency);
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 61, Valor_Str);
                  GWritePos(Linha, 69, '|');
                  Valor_Str := FormatFloat('#,##0.00', (QueryItensOrcamentoValor.asCurrency - (QueryItensOrcamentoValor_Dentista.asCurrency + QueryItensOrcamentoValor_Protetico.asCurrency)));
                  Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                  GWritePos(Linha, 70, Valor_Str);
                  GWritePos(Linha, 78, '|');
                  Soma_Linha;
                  Impressora.SendControls(#13);

                  Campo1 := '+-------+---------+---------+----------+---------+----------+-------+--------+';
                  Impressora.GWritePos(Linha, 01, Campo1);
                  Soma_Linha;
                  Impressora.SendControls(#13);
               end;
             Next;
           end;
       end;
end;

procedure TFormOrcamentos.Imprime_ServicosDentista;
begin
     Linha := 11;
     Impressora.SendControls(#13);
     Impressora.GWritePos(Linha, 01, '| Servicos');
     Impressora.GWritePos(Linha, 78, '|');
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '+---------+--------------------------------------+----------+----------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '| Codigo  | Descricao                            |  Qtde    |                |';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);
     Campo1 := '+---------+--------------------------------------+----------+----------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Linha := Linha + 1;
     Impressora.SendControls(#13);

     with QueryItensOrcamento do
       begin
         First;
         while not eof do
           begin
             with Impressora do
               begin
//| 1110    ENXERTO OSSEO                               2                        |
                  GWritePos(Linha, 01, '|');
                  Numero_Str := IntToStr(QueryItensOrcamentoServico.asInteger);
                  Numero_Str := StrAll(06 - Length(Numero_Str), ' ') + Numero_Str;
                  GWritePos(Linha, 03, Numero_Str);
                  GWritePos(Linha, 13, Copy(QueryItensOrcamentoDescricao_Servico.asString, 1, 30));
                  Quantidade_Str := StrAll(03 - Length(QueryItensOrcamentoQuantidade.asString), ' ') + QueryItensOrcamentoQuantidade.asString;
                  GWritePos(Linha, 50, '|');
                  GWritePos(Linha, 55, Quantidade_Str);
                  GWritePos(Linha, 61, '|');
                  GWritePos(Linha, 78, '|');
                  Soma_Linha;
                  Impressora.SendControls(#13);
                  Campo1 := '+------------------------------------------------+----------+----------------+';
                  Impressora.GWritePos(Linha, 01, Campo1);
                  Soma_Linha;
                  Impressora.SendControls(#13);
               end;
             Next;
           end;
       end;
end;

procedure TFormOrcamentos.Imprime_ServicosProtetico;
var Aux : Boolean;
begin
     Aux := True;
     with QueryItensOrcamento do
       begin
         while not eof do
           begin
             with Impressora do
               begin
                  if QueryItensOrcamentoValor_Protetico.asCurrency <> 0 then
                     begin
                       if QueryEmpresaCodigo.asInteger = 1 then
                          Linha := 1
                       else begin
                         if Aux then
                           begin
                              Linha := 1;
                              Aux := False;
                           end
                         else
                           begin
                             Linha := Linha + 15;
                             Aux := True;
                           end;
                       end;
                       Imprime_Cabecalho;
                       Impressora.SendControls(#13);
                       Impressora.GWritePos(Linha, 01, '| Servicos');
                       Impressora.GWritePos(Linha, 78, '|');
                       Linha := Linha + 1;
                       Impressora.SendControls(#13);
                       Campo1 := '+---------+--------------------------------------+----------+----------------+';
                       Impressora.GWritePos(Linha, 01, Campo1);
                       Linha := Linha + 1;
                       Impressora.SendControls(#13);
                       Campo1 := '| Codigo  | Descricao                            |  Qtde    |                |';
                       Impressora.GWritePos(Linha, 01, Campo1);
                       Linha := Linha + 1;
                       Impressora.SendControls(#13);
                       Campo1 := '+---------+--------------------------------------+----------+----------------+';
                       Impressora.GWritePos(Linha, 01, Campo1);
                       Linha := Linha + 1;
                       Impressora.SendControls(#13);
                       GWritePos(Linha, 01, '|');
                       Numero_Str := IntToStr(QueryItensOrcamentoServico.asInteger);
                       Numero_Str := StrAll(06 - Length(Numero_Str), ' ') + Numero_Str;
                       GWritePos(Linha, 03, Numero_Str);
                       GWritePos(Linha, 13, Copy(QueryItensOrcamentoDescricao_Servico.asString, 1, 30));
                       Quantidade_Str := StrAll(03 - Length(QueryItensOrcamentoQuantidade.asString), ' ') + QueryItensOrcamentoQuantidade.asString;
                       GWritePos(Linha, 50, '|');
                       GWritePos(Linha, 55, Quantidade_Str);
                       GWritePos(Linha, 61, '|');
                       GWritePos(Linha, 78, '|');
                       Soma_Linha;
                       Impressora.SendControls(#13);
                       Campo1 := '+------------------------------------------------+----------+----------------+';
                       Impressora.GWritePos(Linha, 01, Campo1);
                       Soma_Linha;
                       Impressora.SendControls(#13);
                       Impressora.GWritePos(Linha, 01, '|');
                       Impressora.GWritePos(Linha, 78, '|');
                       Soma_Linha;
                       Impressora.SendControls(#13);
                       Impressora.GWritePos(Linha, 01, '|');
                       Impressora.GWritePos(Linha, 78, '|');
                       Soma_Linha;
                       Impressora.SendControls(#13);
                       Impressora.GWritePos(Linha, 01, '|PROTETICO............: ____________________________________________________ |');
                       Soma_Linha;
                       Impressora.SendControls(#13);
                       Impressora.GWritePos(Linha, 01, '|');
                       Impressora.GWritePos(Linha, 78, '|');
                       Soma_Linha;
                       Impressora.SendControls(#13);
                       Impressora.GWritePos(Linha, 01, '|ASSINATURA DENTISTA..: ____________________________________________________ |');
                       Soma_Linha;
                       Impressora.SendControls(#13);
                       Campo1 := '+----------------------------------------------------------------------------+';
                       Impressora.GWritePos(Linha, 01, Campo1);
                     end;
                    Next;
                end;
           end;
       end;
end;

procedure TFormOrcamentos.Imprime_RodapeConvenio;
Var VQtLinhasObs, cont : smallint;
begin
     Campo1 := '|                                                                            |';
     Impressora.GWritePos(Linha, 01, Campo1);
     Soma_Linha;
     Impressora.SendControls(#13);
     Campo1 := '+---------------------------+----------+---------+----------+-------+--------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Soma_Linha;
     Impressora.SendControls(#13);
     Campo1 := '| Total Geral.............: | Tt.Bruto | Tt.Orc. | Tt.Dent. |TotProt| TtSaldo|';
     Impressora.GWritePos(Linha, 01, Campo1);
     Soma_Linha;
     Impressora.SendControls(#13);
     Campo1 := '|                           |';
     Impressora.GWritePos(Linha, 01, Campo1);
     Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal_Bruto.asCurrency);
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 31, Valor_Str);
     Impressora.GWritePos(Linha, 40, '|');
     Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal.asCurrency);
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 42, Valor_Str);
     Impressora.GWritePos(Linha, 50, '|');
     Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal_Dentista.asCurrency);
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 52, Valor_Str);
     Impressora.GWritePos(Linha, 61, '|');
     Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal_Protetico.asCurrency);
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 61, Valor_Str);
     Impressora.GWritePos(Linha, 69, '|');
     Valor_Str := FormatFloat('##0.00', (QueryOrcamentosTotal.asCurrency - (QueryOrcamentosTotal_Dentista.asCurrency + QueryOrcamentosTotal_Protetico.asCurrency)));
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 70, Valor_Str);
     Impressora.GWritePos(Linha, 78, '|');
     Soma_Linha;
     Impressora.SendControls(#13);
     Campo1 := '+---------------------------+----------+---------+----------+----------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Soma_Linha;
     Impressora.SendControls(#13);
     Campo1 := '| Condicoes de Pagamento..: | Parcela  |  Valor  |Vencimento|NroTitulo       |';
     Impressora.GWritePos(Linha, 01, Campo1);
     Soma_Linha;
     Impressora.SendControls(#13);
     Campo1 := '+---------------------------+----------+---------+----------+----------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Soma_Linha;
     Impressora.SendControls(#13);

     with QueryPrestacoes do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asInteger;
         Open;
       end;

     if QueryPrestacoes.RecordCount <> 0 then
        begin
          with QueryPrestacoes do
              while not eof do
                 begin
                   Impressora.GWritePos(Linha, 01, '|');
                   Impressora.GWritePos(Linha, 34, QueryPrestacoesParcela.asString);
                   Impressora.GWritePos(Linha, 40, '|');
                   Valor_Str := FormatFloat('#,##0.00', QueryPrestacoesValor.asCurrency);
                   Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
                   Impressora.GWritePos(Linha, 42, Valor_Str);
                   Impressora.GWritePos(Linha, 50, '|');
                   Impressora.GWritePos(Linha, 51, QueryPrestacoesVencimento.asString);
                   Impressora.GWritePos(Linha, 61, '|');

                   if QueryPrestacoesParcela.asInteger > 10 then
                      Numero_Str := QueryPrestacoesOrcamento.asString + QueryPrestacoesParcela.asString
                   else
                      Numero_Str := QueryPrestacoesOrcamento.asString + '0' + QueryPrestacoesParcela.asString;
                   Impressora.GWritePos(Linha, 64, Numero_Str);
//                 Impressora.GWritePos(Linha, 72, '|');
                   Impressora.GWritePos(Linha, 78, '|');

                   Soma_Linha;
                   Impressora.SendControls(#13);

                   Next;
                 end;
          Campo1 := '+---------------------------+----------+---------+----------+----------------+';
          Impressora.GWritePos(Linha, 01, Campo1);
          Soma_Linha;
          Impressora.SendControls(#13);
        end;

     Campo1 := '+---------------------------+----------+---------+----------+---------+------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Soma_Linha;
     Impressora.SendControls(#13);

     Impressora.GWritePos(Linha, 01, '| ESTE ORCAMENTO FOI APROVADO EM : ');
     Impressora.GWritePos(Linha, 36, DateToStr(QueryOrcamentosData_Conferencia.asDateTime));
     Impressora.GWritePos(Linha, 78, '|');
     Soma_Linha;
     Impressora.SendControls(#13);

     if QueryOrcamentosOperador_Aprovacao.asString <> '' then
        with QueryOperador do
          begin
            Close;
            ParamByName('Operador').asInteger := QueryOrcamentosOperador_Aprovacao.asInteger;
            Open;
          end;

     Impressora.GWritePos(Linha, 01, '| Operador.:');
     Impressora.GWritePos(Linha, 14, QueryOperadorApelido.asString);
     Impressora.GWritePos(Linha, 78, '|');
     Soma_Linha;
     Impressora.SendControls(#13);

     Campo1 := '+----------------------------------------------------------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     if QueryOrcamentosStatus.asInteger = 9 then
        begin
          Soma_Linha;
          Impressora.SendControls(#13);

          Impressora.GWritePos(Linha, 01, ' ');
          Impressora.SendControls(#15#14); // Coloca a impressora em modo condensado/expandido
          Campo1 := ' Autorizado';

          Impressora.GWritePos(Linha, 01, Campo1);
          Impressora.SendControls(#13);
        end;
        
     VQtLinhasObs := StrToInt(dm.GetParam('QTLMEN'));
     for Cont := 1 to VQtLinhasObs do
     begin
        Soma_Linha;
        Campo1 := dm.GetParam('MENS' + IntToStr(Cont));
        Impressora.GWritePos(Linha, 01, Campo1);
        Impressora.SendControls(#13);
     end;
          Impressora.SendControls(#18);
end;

procedure TFormOrcamentos.Imprime_RodapeDentista;
begin
     Impressora.GWritePos(Linha, 01, '| ESTE ORCAMENTO FOI APROVADO EM : ');
     Impressora.GWritePos(Linha, 36, DateToStr(QueryOrcamentosData_Conferencia.asDateTime));
     Impressora.GWritePos(Linha, 78, '|');
     Soma_Linha;
     Impressora.SendControls(#13);

     if QueryOrcamentosOperador_Aprovacao.asString <> '' then
        with QueryOperador do
          begin
            Close;
            ParamByName('Operador').asInteger := QueryOrcamentosOperador_Aprovacao.asInteger;
            Open;
          end;

     Impressora.GWritePos(Linha, 01, '| Operador.:');
     Impressora.GWritePos(Linha, 14, QueryOperadorApelido.asString);
     Impressora.GWritePos(Linha, 78, '|');
     Soma_Linha;
     Impressora.SendControls(#13);

     Campo1 := '+----------------------------------------------------------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     if QueryOrcamentosStatus.asInteger = 9 then
        begin
          Soma_Linha;
          Impressora.SendControls(#13);

          Impressora.GWritePos(Linha, 01, ' ');
          Impressora.SendControls(#15#14); // Coloca a impressora em modo condensado/expandido
          Campo1 := ' Autorizado'; //QueryStatusDescricao.AsString;
          Impressora.GWritePos(Linha, 01, Campo1);
          Impressora.SendControls(#18);
        end;
     if dm.GetParam('CRIODO') = 'S' then
        PImprimeEventosOdonto;
end;

procedure TFormOrcamentos.Imprime_RodapeNaoAprovado;
begin
     Impressora.SendControls(#13);
     Impressora.GWritePos(Linha, 01, '| Total Geral....:');
     Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal_Bruto.asCurrency);
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 53, Valor_Str);
     Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal.asCurrency);
     Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
     Impressora.GWritePos(Linha, 69, Valor_Str);
     Impressora.GWritePos(Linha, 78, '|');
     Soma_Linha;
     Impressora.SendControls(#13);

     Campo1 := '+----------------------------------------------------------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);
     Soma_Linha;
     Impressora.SendControls(#13);

     if QueryOrcamentosNumero_Parcelas.asString <> '' then
        begin
          Impressora.GWritePos(Linha, 01, '| Condicoes de Pagamento:');
          Impressora.GWritePos(Linha, 27, QueryOrcamentosNumero_Parcelas.asString);
          Impressora.GWritePos(Linha, 30, '   Parcelas de ');
          Valor_Total := 0;
          if QueryOrcamentosNumero_Parcelas.asFloat <> 0 then
             Valor_Total := QueryOrcamentosTotal.asFloat / QueryOrcamentosNumero_Parcelas.asFloat;
          Valor_Str := FormatFloat('#,##0.00', Valor_Total);
          Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
          Impressora.GWritePos(Linha, 69, Valor_Str);
          Impressora.GWritePos(Linha, 78, '|');
          Soma_Linha;
          Impressora.SendControls(#13);

          Campo1 := '+----------------------------------------------------------------------------+';
          Impressora.GWritePos(Linha, 01, Campo1);
          Soma_Linha;
          Impressora.SendControls(#13);
        end;

     if QueryOrcamentosDesconto.asString <> '' then
        begin
          Impressora.GWritePos(Linha, 01, '| Desconto Pag. a Vista.:');
          Impressora.GWritePos(Linha, 27, QueryOrcamentosDesconto.asString);
          Impressora.GWritePos(Linha, 29, '%');
          Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal_Desconto.asCurrency);
          Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
          Impressora.GWritePos(Linha, 69, Valor_Str);
          Impressora.GWritePos(Linha, 78, '|');
          Soma_Linha;
          Impressora.SendControls(#13);

          Campo1 := '+----------------------------------------------------------------------------+';
          Impressora.GWritePos(Linha, 01, Campo1);
          Soma_Linha;
          Impressora.SendControls(#13);
        end;
     Impressora.GWritePos(Linha, 01, '| OBS.: O PRESENTE ORCAMENTO TEM VALIDADE NO MAXIMO ATE O DIA..:');
     Impressora.GWritePos(Linha, 66, DateToStr(dm.Date + 15));
     Impressora.GWritePos(Linha, 78, '|');
     Soma_Linha;
     Impressora.SendControls(#13);
     Campo1 := '+----------------------------------------------------------------------------+';
     Impressora.GWritePos(Linha, 01, Campo1);

//     if QueryOrcamentosStatus.asInteger = 9 then
     if not Flag_Receber then
        begin
          Soma_Linha;
          Impressora.SendControls(#13);
          Impressora.GWritePos(Linha, 01, ' ');
          Impressora.SendControls(#15#14); // Coloca a impressora em modo condensado/expandido
          Campo1 := QueryStatusDescricao.AsString;// ' Autorizado';
          Impressora.GWritePos(Linha, 01, Campo1);
        end;
     if (QueryEmpresaCodigo.AsInteger = 2) and (not QueryOrcamentosAutorizado.asBoolean)  then
        Imprime_Canhoto
     else
        Impressora.SendControls(#18);
   if dm.GetParam('CRIODO') = 'S' then
      PImprimeEventosOdonto;


end;

{---------+----------------------------+---------+-----------------------------+';
| Codigo  | Descricao                  |  Qtde   |                             |';
+---------+----------------------------+---------+-----------------------------+';
|Val Un.|Val. Ser.|Val. Orc.|Unit. Dent|Tot. Dent|Unit. Prot| Tot. Pro.| Saldo |';
+-------+---------+---------+----------+---------+----------+----------+-------+';
| 1110    ENXERTO OSSEO                |    2    |                             |
|1420.00|  1420.00| 1.420.00|  1420.00 |  1420.00|  1420.00 |  1420.00 | 800.00|
+-------+---------+---------+----------+---------+----------+----------+-------+';
| 1110    RASP. SUPRA GENGIVAL E POLIMENTO       |    2     |                  |
|1420.00|  1420.00| 1.420.00|  1420.00 |  1420.00|  1420.00 |  1420.00 | 800.00|
+-------+---------+---------+----------+---------+----------+----------+-------+';
| 1110    LIMPEZA                                |    1     |                  |
|1420.00|  1420.00| 1.420.00|  1420.00 |  1420.00|  1420.00 |  1420.00 | 800.00|
+-------+---------+---------+----------+---------+----------+----------+-------+';
|                           | Tt.Bruto | Tt.Orc. | Tt.Dent. | Tt.Prot. |TtSaldo|
+---------------------------+----------+---------+----------+----------+-------+
| Total Geral.............: |  1420.00 |  1420.00|  1420.00 |  1420.00 | 800.00|
+---------------------------+----------+---------+----------+----------+-------+
| Condicoes de Pagamento..: | Parcela  |  Valor  |Vencimento|Nro.Titulo|       |
+---------------------------+----------+---------+----------+----------+-------+
|                           |    01    | 1.420,00|15/11/2001|  165955  |       |
|                           |    02    | 1.420,00|15/12/2001|  165956  |       |
|                           |    03    | 1.420,00|15/01/2002|  165957  |       |
+---------------------------+----------+---------+----------+----------+-------+
| ESTE ORCAMENTO FOI APROVADO EM : 18/11/2001                                  |
| Operador.: RENATO                                                            |
+------------------------------------------------------------------------------+}




procedure TFormOrcamentos.BitBtnUrgenciaClick(Sender: TObject);
begin
     if DBEditTipo.Text = '6' then
       begin
         GroupBoxProcura.Visible := True;
         GroupBoxProcura.Left := 560;
         GroupBoxProcura.Top := 3;
         GroupBoxProcura.Visible := True;
         EditProcura.Visible := False;
         DBEditUrgencia.Visible := True;
         LabelNumero.Caption := 'Urgencia Nº';
         DBEditUrgencia.SetFocus;
       end
     else
       showmessage('Tipo do Orçamento diferente de Urgência !');
end;

procedure TFormOrcamentos.DBEditUrgenciaExit(Sender: TObject);
begin
   GroupBoxProcura.Visible := False;
   DBEditUsuario.SetFocus;
end;

procedure TFormOrcamentos.QueryOrcamentosAfterDelete(DataSet: TDataSet);
begin
   EditTipo.Clear;
   EditNomeUsuario.Clear;
   DBEditData.SetFocus;
   EditNomeDentista.Clear;
   //EditCdTab.clear;
end;


procedure TFormOrcamentos.Imprime_Canhoto;
begin
   if (linha + 10) > 66 then begin
      Pagina := Pagina + 1;
      Linha  := 1;
   end
   else
      Linha := 51;
   Impressora.SendControls(#13);
   Campo1 := '+----------------------------------------------------------------------------+';
   Impressora.GWritePos(Linha, 01, Campo1);
   Linha := Linha + 1;
   Impressora.SendControls(#13);
   Impressora.GWritePos(Linha, 01, '|');
   Impressora.GWritePos(Linha, 06, QueryEmpresaFantasia.asString);
   Impressora.GWritePos(Linha, 54, 'Emissao....: ');
   Impressora.GWritePos(Linha, 67, DateToStr(dm.Date));
   Impressora.GWritePos(Linha, 78, '|');
   Impressora.SendControls(#13);
   Linha := Linha + 1;
   Impressora.GWritePos(Linha, 01, '|');
   Impressora.GWritePos(Linha, 06, 'ORCAMENTO ODONTOLOGICO..: ');
   Impressora.GWritePos(Linha, 32, QueryOrcamentosNumero.asString);
   Impressora.GWritePos(Linha, 42, '- Data...: ');
   Impressora.GWritePos(Linha, 53, QueryOrcamentosData.asString);
   Impressora.GWritePos(Linha, 63, '- Pagina.: ');
   Impressora.GWritePos(Linha, 76, IntToStr(Pagina));
   Impressora.GWritePos(Linha, 78, '|');
   Impressora.SendControls(#13);
   Linha := Linha + 1;
   Campo1 := '+----------------------------------------------------------------------------+';
   Impressora.GWritePos(Linha, 01, Campo1);
   Impressora.SendControls(#13);
   Linha := Linha + 1;
   Impressora.GWritePos(Linha, 01, '|');
   Impressora.GWritePos(Linha, 02, 'BENEFIC....: ');
   Impressora.GWritePos(Linha, 15, Copy(EditNomeUsuario.Text, 01, 35));
   Impressora.GWritePos(Linha, 49, 'CODIGO DO BENEF.....: ');
   Impressora.GWritePos(Linha, 71, IntToStr(VUsuario) + '.' + IntToStr(Digito));
   Impressora.GWritePos(Linha, 78, '|');
   Impressora.SendControls(#13);
   Linha := Linha + 1;
   Impressora.GWritePos(Linha, 01, '|');
   Impressora.GWritePos(Linha, 02, 'CONTRAT....: ');
   Impressora.GWritePos(Linha, 15, Copy(QueryContratanteNome.asString, 01, 35));
   Impressora.GWritePos(Linha, 49, 'CODIGO DO CONTRAT...: ');
   Impressora.GWritePos(Linha, 71, Copy(QueryContratanteCodigo.asString, 01, 05));
   Impressora.GWritePos(Linha, 78, '|');
   Impressora.SendControls(#13);
   Linha := Linha + 1;
   Impressora.GWritePos(Linha, 01, '|');
   Impressora.GWritePos(Linha, 02, 'DENTISTA...: ');
   Impressora.GWritePos(Linha, 15, Copy(EditNomeDentista.Text, 01, 35));
   Impressora.GWritePos(Linha, 49, 'CODIGO DO DENTISTA..: ');
   Impressora.GWritePos(Linha, 71, Copy(DBEditDentista.Text, 01, 05));
   Impressora.GWritePos(Linha, 78, '|');
   Impressora.SendControls(#13);

   if QueryContratanteGrupo_Contratante.AsString <> '' then
      with QueryGrupoContratante do
        begin
          Close;
          ParamByName('Codigo_Grupo').asInteger := QueryContratanteGrupo_Contratante.AsInteger;
          Open;
        end
   else
      QueryGrupoContratante.close;

   if QueryUsuariosContratante_Titular.asString <> '' then
      with QueryContratante do
        begin
          Close;
          ParamByName('Codigo_Contrantante').asInteger := QueryUsuariosContratante_Titular.asInteger;
          Open;
        end;
   Impressora.SendControls(#13);
   Linha := Linha + 1;
   Impressora.GWritePos(Linha, 01, '|');
   Impressora.GWritePos(Linha, 02, 'EMPRESA....: ');
   Impressora.GWritePos(Linha, 15, Copy(QueryContratanteNome.asString, 01, 35));
   Impressora.GWritePos(Linha, 49, 'CODIGO DA EMPRESA...: ');
   Impressora.GWritePos(Linha, 71, Copy(QueryContratanteCodigo.asString, 01, 05));
   Impressora.GWritePos(Linha, 78, '|');
   Impressora.SendControls(#13);
   Linha := Linha + 1;
   Impressora.GWritePos(Linha, 01, '|');
   Impressora.GWritePos(Linha, 02, 'GRUPO......: ');
   Impressora.GWritePos(Linha, 15, Copy(QueryGrupoContratanteDescricao.asString, 01, 35));
   Impressora.GWritePos(Linha, 49, 'CODIGO DO GRUPO.....: ');
   Impressora.GWritePos(Linha, 71, Copy(QueryGrupoContratanteCodigo.asString, 01, 05));
   Impressora.GWritePos(Linha, 78, '|');
   Linha := Linha + 1;
   Impressora.SendControls(#13);
   Campo1 := '+----------------------------------------------------------------------------+';
   Impressora.GWritePos(Linha, 01, Campo1);
   Linha := Linha + 1;
   Impressora.SendControls(#13);
   Impressora.GWritePos(Linha, 01, '| Valor....:');
   Valor_Str := FormatFloat('#,##0.00', QueryOrcamentosTotal.asCurrency);
   Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
   Impressora.GWritePos(Linha, 15, Valor_Str);
   Impressora.GWritePos(Linha, 78, '|');
   Linha := Linha + 1;
   Impressora.SendControls(#13);
   Campo1 := '+----------------------------------------------------------------------------+';
   Impressora.GWritePos(Linha, 01, Campo1);
   Linha := Linha + 1;
   Impressora.SendControls(#13);

   if QueryOrcamentosNumero_Parcelas.asString <> '' then
      begin
         Impressora.GWritePos(Linha, 01, '| Condicoes de Pagamento:');
         Impressora.GWritePos(Linha, 27, QueryOrcamentosNumero_Parcelas.asString);
         Impressora.GWritePos(Linha, 30, '   Parcelas de ');
         Valor_Total := 0;
         if QueryOrcamentosNumero_Parcelas.asFloat <> 0 then
            Valor_Total := QueryOrcamentosTotal.asFloat / QueryOrcamentosNumero_Parcelas.asFloat;
         Valor_Str := FormatFloat('#,##0.00', Valor_Total);
         Valor_Str := StrAll(08 - Length(Valor_Str), ' ') + Valor_Str;
         Impressora.GWritePos(Linha, 69, Valor_Str);
         Impressora.GWritePos(Linha, 78, '|');
         Linha := Linha + 1;
         Impressora.SendControls(#13);

         Campo1 := '+----------------------------------------------------------------------------+';
         Impressora.GWritePos(Linha, 01, Campo1);
         Linha := Linha + 1;
         Impressora.SendControls(#13);
         Impressora.SendControls(#18);
      end;
end;

procedure TFormOrcamentos.FormActivate(Sender: TObject);
begin
try
     if Contratante.Orc then begin
        EditProcura.SetFocus;
        if BitBtnImprimir.canfocus then
           BitBtnImprimir.SetFocus;
     end;
except
end;

end;

procedure TFormOrcamentos.BitBtnPagDentistasClick(Sender: TObject);
begin
     Application.CreateForm(TFormOrcPagDentista, FormOrcPagDentista);
     FormOrcPagDentista.ShowModal;
     FormOrcPagDentista.Free;
end;

procedure TFormOrcamentos.QueryOrcamentosStatusChange(Sender: TField);
begin
   if status <> QueryOrcamentosStatus.AsInteger then
     begin
       QueryOrcamentosData_Status.AsDateTime := dm.Date;
       QueryOrcamentosOperador_Status.AsInteger := Senha.Codigo_Operador;
       status := QueryOrcamentosStatus.AsInteger;
     end;
end;

procedure TFormOrcamentos.BitBtnExcluiClick(Sender: TObject);
begin
{   with QueryEspeciais do
     begin
       Close;
       ParambyName('Operador').asInteger := Senha.Codigo_Operador;
       Open;
       if recordcount = 0 then
       begin
         Showmessage('Usuário não tem permissão para executar esta operação [ENTER]');
         exit;
       end
     end;}
  if not dm.VerifPermissao('2','4','40','121') then
  begin
      ShowMessage('Atenção!, Você não tem autorização para excluir orçamentos, operação cancelada !');
      abort;
   end;

{  if dm.execmd('select count(*) q from permissoes where codigo_grupo = 2 and codigo_procedimento = 4 and Codigo_SubProcedimento = 40 and codigo_operador = ' + intToStr(senha.Codigo_Operador),'q') = '0' then
   begin
      ShowMessage('Atenção!, Você não tem autorização para excluir orçamentos, operação cancelada !');
      abort;
   end;}

  if QueryOrcamentosAutorizado.AsBoolean then
      VerifPermissao;


  if MessageDlg('Confirma exclusão ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SP_DeleteOrcamento.Parameters[1].Value  := QueryOrcamentosNumero.AsInteger;
    SP_DeleteOrcamento.Parameters[2].Value  :=  senha.Codigo_Operador;
    SP_DeleteOrcamento.Parameters[3].Value  :=  inputbox('Motivo da exclusão','Motivo da exclusão','');
    if length(SP_DeleteOrcamento.Parameters[3].Value) < 5 then
    begin
       ShowMessage('Motivo de exclsão do orçamento deve ser preenchido !');
       exit;
    end;
    SP_DeleteOrcamento.ExecProc;
      QueryOrcamentos.close;
    QueryOrcamentos.open;
    QueryItensOrcamento.close;
    QueryItensOrcamento.open;
     EditNomeUsuario.Text                       := '';
     EditNomeDentista.Text                      := '';
     //EditCdTab.clear;
     EditTipo.Text                              := '';
    //QueryOrcamentos.Refresh;
  end;
end;

procedure TFormOrcamentos.FormShow(Sender: TObject);
begin
   revalorizando := false;
   DBCheckBoxEmissaoIR.Enabled := dm.GetParam('MSGIR') = 'S'; // se faz a pergunte "informes de rendimento para este orçamento?" habilita esse campo para alteração
   // se não emite a mensagem então campo fica desabilitado.

   AlterouDentista := false;
   InformandoSextante := false;
   AlterarStatus1.Enabled := dm.VerifPermissao('0','0','0','29'); // 29 eh a opção que habilita alterar status do orçamento
   BitBtnAlterarStatus.enabled := AlterarStatus1.Enabled;
   BitBtnContratante.Enabled := dm.VerifPermissao('0','0','0','13');
   BitBtnPagDentistas.Enabled := dm.VerifPermissao('0','0','0','144');

   //BitBtnPgDentista.enabled := dm.VerifPermissao('0','0','0','43');
   atraso := '0';
   VAlterouParcOuDesc := false;
   VAutorizando := false;
   VGRALOG := (dm.GetParam('GRALOG') = 'S');
   VId := 1;
   DBGridItens.Columns[2].Visible := (dm.executacomando('select vl_parametro a from parametro where cd_parametro = ''VERDEN''','a') = 'S');
   DBGridItens.Columns[7].Visible := DBGridItens.Columns[1].Visible;
   DBGridItens.Columns[8].Visible := DBGridItens.Columns[1].Visible;
   DBGridItens.Columns[9].Visible := DBGridItens.Columns[1].Visible;

//   try
//      //exclui orcamentos que nao possuem itens
//      dm.execmd('delete msg_odonto from orcamento o where o.numero = msg_odonto.orcamento  and o.data_hora < getdate() - 5  and not exists (select * from itens_orcamento i where msg_odonto.orcamento = i.orcamento)');
//      dm.execmd('delete orcamento  where orcamento.data_hora < getdate() - 5 and not exists (select * from itens_orcamento i where orcamento.numero = i.orcamento)');
//   except
//   end;
   if tag = 1 then
   begin
      AlterarStatus1.Enabled := false;
      BitBtnAlterarStatus.Enabled := false;
      DBGridItens.ReadOnly := true;
      DBNavigatorOrcamento.enabled := false;
      BitBtnExclui.enabled := false;
      BitBtnPagDentistas.enabled := false;
      //BitBtnTitulos.enabled := false;
      //BitBtnAntigos.enabled := false;
      BitBtnPrestacoes.enabled := false;
      BitBtnAutorizar.enabled := false;
      //BitBtnPgDentista.enabled := false;
      BitBtnImprimir.enabled := false;
      DBEditDesconto.readOnly := true;
      DBEditPrestacoes.readOnly := true;
      DBLookupComboBoxTipoCobranca.readOnly := true;
      DBLookupComboBoxStatus.readOnly := true;
      DBLookupComboBoxStatusPgto.readOnly := true;
      DBCheckBox1.readOnly := true;
      DBEditTotal.readOnly := true;
      DBEditNumero.readOnly := true;
      DBEditUsuario.readOnly := true;
      DBEditDentista.readOnly := true;
      DBEditData.readOnly := true;
      DBEditTipo.readOnly := true;
      BitBtnUrgencia.enabled := false;
      BitBtnPesquisarClick(Sender);
      DBGridItens.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
      DBGridItens.SetFocus;

   end;
   Desaprovaroramento1.Enabled := dm.VerifPermissao('0','0','0','159');   

end;

procedure TFormOrcamentos.PVerificaCritOdonto(PCdServico,PCdDenteXFace,PSexante:String; VerificaStatus: boolean);

begin
   QueryCritOdonto.Close;
   QueryCritOdonto.sql[9] := '''' + PCdServico + '''';
   QueryCritOdonto.Open;

   if not (QueryCritOdonto.Bof and QueryCritOdonto.Eof) and not PIncluindoPkg then
//   if not (QueryCritOdonto.Bof and QueryCritOdonto.Eof) then
   begin
      if QueryCritOdonto.FieldByName('nivel_crit').AsString[1] = 'D' then // D = Dente F = Face
         PVerificaRestricaoCritDente(PCdDenteXFace,QueryCritOdonto.FieldByName('cd_criterio').AsString,QueryCritOdonto.FieldByname('qtde').AsInteger,VerificaStatus)
      else
      if QueryCritOdonto.FieldByName('nivel_crit').AsString = 'F' then
         PVerificaRestricaoCritFace(PCdDenteXFace,QueryCritOdonto.FieldByName('cd_criterio').AsString,VerificaStatus)
      else
      if QueryCritOdonto.FieldByName('nivel_crit').AsString = 'C' then
         PVerificaRestricaoCritCliente(QueryCritOdonto.FieldByName('cd_criterio').AsString,VerificaStatus)
      else
      if QueryCritOdonto.FieldByName('nivel_crit').AsString = 'S' then
         PVerificaRestricaoCritSexante(QueryCritOdonto.FieldByName('cd_criterio').AsString,VerificaStatus)
      else
      if QueryCritOdonto.FieldByName('nivel_crit').AsString = 'H' then //Hemiarco
         PVerificaRestricaoCritHemiarco(QueryCritOdonto.FieldByName('cd_criterio').AsString,VerificaStatus)
      else
      if QueryCritOdonto.FieldByName('nivel_crit').AsString = 'A' then //Hemiarco
         PVerificaRestricaoCritArcada(QueryCritOdonto.FieldByName('cd_criterio').AsString,VerificaStatus)
      else
      begin
         PIncluindoPkg := false; // se interromper por segurança set esta variável para false
         Showmessage('Nível do Critério inválido, comunicar ao desenvolvedor do programa, procedure  PVerificaCritOdonto formorcamento');
         abort;
      end;
   end;
end;


 {
procedure TFormOrcamentos.PValidaFace(PDenteFaces: String);
Var VFace: String[5];
    I,Tam: byte;
    VErro: Boolean;
begin
   dm.PValidaDente(Copy(PDenteFaces,1,2)); // as 2 prim posicoes eh o dente

   VFace := copy(PDenteFaces,3,5);
   Tam   := Length(copy(PDenteFaces,3,5));
   VErro := False;

   if Tam = 0 then // face não informada
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Para este serviço é necessário informar o dente e a face!');
      QueryItensOrcamento.FieldByName('DenteFace').FocusControl;
      Abort;
   end;

   for i := 1 to Tam do
   begin
      if dm.ExecutaComando('select count(*) a from denteXface where cd_dente = ' +
      Copy(PDenteFaces,1,2) + ' and cd_face = ''' + VFace[i] + '''','a') = '0' then
         VErro := True;
   end;

   if VErro then
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('A(s) face(s) informada(s) (' + VFace + ') está(ão) inconsistente(s), ou há face que não pertence ao dentes, operação cancelada !');
      QueryItensOrcamento.FieldByName('DenteFace').FocusControl;
      abort;
   end;

   // Verifica se a qtde de faces informada é igual a qtde definida no servico

   I := StrToInt(dm.executacomando('select qt_face q from servicos where codigo = ' + QueryItensOrcamentoServico.AsString,'q'));

   if I <> Tam then // I contem a qt de faces do servico e Tam contem a qt de faces digitada
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Este serviço está parametrizado para ser executado em ' + IntToStr(I) + ' faces, porém foram informadas ' + IntToStr(Tam) + ' faces, verifique !');
      QueryItensOrcamento.FieldByName('DenteFace').FocusControl;
      abort;
   end;
   if dm.executacomando('select count(*) qt from servicoXface where cd_servico = ''' + QueryItensOrcamentoServico.AsString + '''','qt') <> '0' then
   begin
      for i := 1 to Tam do
      begin
         if dm.ExecutaComando('select count(*) a from ServicoXface where cd_servico = ' +
            QueryItensOrcamentoServico.AsString + ' and cd_face = ''' + VFace[i] + '''','a') = '0' then
         begin
            PIncluindoPkg := false; // se interromper por segurança set esta variável para false
            ShowMessage('Este serviço possui delimitação de faces. A face ' + VFace[i] + ' não está na relação de faces permitidas para este serviço, dúvidas consultar o cadastro deste serviço(Opção Delimitar Face)');
            Abort;
         end;
      end;
   end;

end;
}

procedure TFormOrcamentos.QueryItensOrcamentoBeforePost(DataSet: TDataSet);
var qtTuss : word ;
justificativaPanoramica:string;
begin

    if not QueryItensOrcamentoServico.IsNull and (dm.execmd('select count(*) q from servicos where manutencaoAutomatica = 1 and codigo = ' + QueryItensOrcamentoServico.AsString,'q' ) <> '0')
     and (QueryOrcamentosTipo.AsInteger <>  5) then
    begin
       ShowMessage('Este tipo de serviço só pode ser usado para manutenção(tipo 5)');
       abort;
    end;

    if not QueryItensOrcamentoServico.IsNull and (dm.execmd('select count(*) q from servicos where lgUrgencia = 1 and codigo = ' + QueryItensOrcamentoServico.AsString,'q' ) <> '0')
     and (QueryOrcamentosTipo.AsInteger <>  6) then
    begin
       ShowMessage('Serviço de urgência só pode ser usado em orçamentos do tipo "Urgência"');
       abort;
    end;
   // removido em 25/08/2019 conforme e-mail do taciano de 22/08/2019
{   if (QueryItensOrcamentoServico.asInteger = 5110) then
   begin
      if (QueryOrcamentosDentista.AsInteger >= 1000) and (dm.GetParam('IN5110') = 'S') then
      begin
       showMessage('Atenção, este serviço somente poderá ser lançado para este dentista  mediante senha de autorização!');
       FmSenhaOdonto := TFmSenhaOdonto.Create(self);
       FmSenhaOdonto.showModal;
       if FmSenhaOdonto.tag = 0 then
       begin
          QueryItensOrcamento.cancel;
          Abort;
       end
       else
          PGravarEventoOdont('S',IntToStr(FmSenhaOdonto.tag),'0','Serviço 5110 para dentistas novos, Liberado com senha','','log1');
     end;
   end;}

   if QueryOrcamentosAutorizado.AsBoolean then
      VerifPermissao;
   if QueryItensOrcamentoServico.isNull then
   begin
      QueryItensOrcamento.Cancel;
      abort;
   end;
   if dm.ExecutaComando('select count(*) q from servicos where codigo = ' + QueryItensOrcamentoServico.AsString,'q') = '0' then
   begin
      MessageDlg('Serviço Não Cadastrado !!!!', mtError, [mbOk], 0);
      Abort;
      exit;
    end;

  // VerifStatusUsu(true);


   // Parametro que indica se valida o servico X Dente X Face
   if (dm.GetParam('VALDEN') = 'S') and not (QueryItensOrcamentoServico.isnull) then
   begin
      PVerifDadosAdicionais(QueryItensOrcamentoServico.AsString); // Sexante e Hemiarco
      PValidaServicoXNivel;
   end;

   // Parametro que indica se verifica Criterio do odontograma...

   if (dm.GetParam('CRIODO') = 'S') and not (QueryItensOrcamentoServico.isnull) then
   begin
      PVerificaCritOdonto(QueryItensOrcamentoServico.AsString,
                          QueryItensOrcamentoDenteFace.asString,
                          QueryItensOrcamentosexante.AsString,true);
      PVerifiCritXIdade(QueryUsuariosCodigo_Completo.AsString, QueryItensOrcamentoServico.AsString,
                        QueryItensOrcamentoDenteFace.asString);

      // se o nivel do servico for dente ou face verifica se houve extração para o dente.
      if dm.execmd('select count(*) q from servicos where cd_nivel_servico in (''F'',''D'') AND codigo  = ''' + QueryItensOrcamentoServico.AsString + '''','q') = '1' then
         if PVerifExtracao(QueryOrcamentosUsuario.AsString,Copy(QueryItensOrcamentoDenteFace.asString,1,2)) then
            abort;
      // Obs: A Quantidade de servicos por orcamento esta sendo verificaca via trigger
      // duvidas verificar a trigger Tr_i_u_validacoesOdonto
      //PVerifQtPorOrcamento(QueryOrcamentosNumero.AsString,QueryItensOrcamentoServico.AsString,QueryItensOrcamentoQuantidade.AsString);

       // se for informado Dente Hemi ou Sexante a qtde deve ser 1
      {if ((QueryItensOrcamentoDenteFace.asString <> '') or
          (QueryItensOrcamentoHemiarco.AsString  <> '') or
          (QueryItensOrcamentosexante.AsString   <> '') or
          (QueryItensOrcamentoArcada.AsString    <> '')) and
         (QueryItensOrcamentoQuantidade.AsInteger <> 1) then }
      if QueryItensOrcamentoQuantidade.AsInteger <> 1 then
      begin
         PIncluindoPkg := false; // se interromper por segurança set esta variável para false
         ShowMessage('A Quantidade deve ser obrigatoriamente 1(um)');
         QueryItensOrcamentoQuantidade.FocusControl;
         Abort;
      end;

      if QueryItensOrcamentoServico.AsInteger = 2110 then
      begin
         if strtoInt(dm.execmd('select isnull(sum(quantidade),0) qt from orcamento o, itens_orcamento i where o.numero = i.orcamento and i.servico in(5110,5111) and usuario = ' + QueryOrcamentosUsuario.AsString  + ' and o.Data >= getdate() - 180','qt')) > 2 then
         begin
            FmMensagem := TFmMensagem.create(self);
            FmMensagem.Memo1.Text := 'ATENÇÃO - foi realizado 3 ou mais serviços 5110 para esse beneficiário no período de 6 meses, liberação somente com senha.';
            FmMensagem.ShowModal;
            FmMensagem.free;

            FmSenhaOdonto := TFmSenhaOdonto.Create(self);
            FmSenhaOdonto.showModal;
            if FmSenhaOdonto.tag <> 0 then
               PGravarEventoOdont('S',IntToStr(FmSenhaOdonto.tag),'0',' 2110 Liberado com senha, devido a mais de 3 ocorrências 5110 nos ultimos 6 meses','CARENCIA','log2')
            else
            begin
               FmSenhaOdonto.Free;
                Abort;
            end;
            FmSenhaOdonto.Free;
         end;
      end;


      //Tacio 19/12: Implementado verificação para procedimentos de panormica: 9144 e 9146
      //Se for os códigos de panoramica, verifica se dentista tem permissão para pedir sem justificar
      //por enquanto coloquei apenas em mode de inserção
      if QueryItensOrcamento.State=dsInsert then
      begin
          if  (QueryItensOrcamentoServico.AsString='9144') or (QueryItensOrcamentoServico.AsString='9146') then
          begin
            if DM.execmd('select count(*) qtd from dentista where autorizado_panoramica = 1 and codigo = '+
            QueryOrcamentosDentista.AsString,'qtd')='0' then
                if MessageDlg('O Dentista deste orçamento não tem permissão para pedir panoramica sem justificativa. '+ #13+#13+
                ' JÁ FOI PEDIDO JUSTIFICATIVA DESTA PANORAMICA PARA O DENTISTA?',mtWarning,[mbYes,mbNo],0)=mrNo then
                  abort
                else
                begin
                  //Tacio para Enio:  Precisa colocar aqui a msg de odontograma com o campo para colocar a justificativa do dentista.. pedido no email
                  //por enquanto vou colocar um envio de email para controle, visto que esse assunto é urgente
                  repeat
                  justificativaPanoramica:=InputBox('Justificativa','Digite a justificativa enviada pelo dentista','')
                  until (justificativaPanoramica<>'');
                  justificativaPanoramica:='Orçamento: '+QueryItensOrcamentoOrcamento.AsString+'   Dentista:  '+QueryOrcamentosDentista.AsString+'     Justificativa informada: '+justificativaPanoramica;
                  dm.enviaEmail('Orçamento com Panoramica',justificativaPanoramica,'gabis@multibucal.com.br');
                end;
          end;
      end;

   end
   else// seato não usa odontograma mas precisa validar esses serviços.
   if (QueryItensOrcamentoServico.AsInteger = 2110) or  (QueryItensOrcamentoServico.AsInteger = 2120) then
      PVerificaCritOdonto(QueryItensOrcamentoServico.AsString,'','',true);

   if (dm.GetParam('ACTUSS') = 'S') and (QueryItensOrcamento.State = DsInsert) and QueryItensOrcamentotuss_id.IsNull then
   begin
      qtTuss := strToInt(dm.execmd('select count(*) qt from tuss where servico_id = ' + QueryItensOrcamentoServico.AsString,'qt'));
      if qtTuss = 0 then
        ShowMessage('Não há código tuss associado à esse serviço')
      else
      if qtTuss = 1 then
         QueryItensOrcamentotuss_id.AsString := dm.execmd('select id from tuss where servico_id = ' + QueryItensOrcamentoServico.AsString,'id')
      else
      begin
           FmSelTuss := TFmSelTuss.Create(self);
           FmSelTuss.adoQueryTuss.close;
           FmSelTuss.adoQueryTuss.sql[1] := QueryItensOrcamentoServico.AsString;
           FmSelTuss.adoQueryTuss.Open;
           FmSelTuss.ShowModal;
           if(FmSelTuss.tag = 0) then
           begin
              FmSelTuss.Free;
              Showmessage('Selecione um código tuss correspondente ao serviço ' + QueryItensOrcamentoDescricao_Servico.AsString);
              abort;
           end
           else
              QueryItensOrcamentotuss_id.AsString := FmSelTuss.ADOQueryTuss.FieldByName('id').AsString;

           FmSelTuss.Free;

      end;
   end;
   if (QueryItensOrcamentoServico.AsInteger = 1010) OR (QueryItensOrcamentoServico.AsInteger = 1011) then
   begin
       if (copy(QueryItensOrcamentoDenteFace.AsString,1,2) <> '18') and
          (copy(QueryItensOrcamentoDenteFace.AsString,1,2) <> '28') and
          (copy(QueryItensOrcamentoDenteFace.AsString,1,2) <> '38') and
          (copy(QueryItensOrcamentoDenteFace.AsString,1,2) <> '48')  then
       begin
          FmMensagem := TFmMensagem.create(self);
          FmMensagem.Memo1.Text := 'Procedimento de incluso ou semi-incluso solicitado para um dente não SISO. Necessita passar para auditoria';
          FmMensagem.ShowModal;
          FmMensagem.free;
          FmSenhaOdonto := TFmSenhaOdonto.Create(self);
          FmSenhaOdonto.showModal;
          if FmSenhaOdonto.tag <> 0 then
             PGravarEventoOdont('S',IntToStr(FmSenhaOdonto.tag),'0', QueryItensOrcamentoServico.AsString + ' liberado com senha, para um dente não Siso(' + copy(QueryItensOrcamentoDenteFace.AsString,1,2) +  ' ) ','INCOMPAT','log2')
          else
          begin
             FmSenhaOdonto.Free;
              Abort;
          end;
          FmSenhaOdonto.Free;
       end;
   end;

//   if dm.ExecutaComando('select vl_parametro a from parametro where cd_parametro = ''CRIODO''','a') = 'S' then

end;

procedure TFormOrcamentos.DBGridItensKeyPress(Sender: TObject;
  var Key: Char);
begin
  key := upcase(key);
end;

procedure TFormOrcamentos.PVerificaRestricaoCritFace(PCdDenteXFace,Pcdcriterio:String;VerificaStatus: boolean);
var VCdDente:String[2];
    VFaces : String[7];
    I,Tam: byte;
    VMsg : TStrings;

begin
   VMsg := TStringlist.Create;
   VCdDente := copy(PCdDenteXFace,1,2);
   VFaces   := copy(PCdDenteXFace,3,5);
   Tam := Length(copy(PCdDenteXFace,3,5));
   for i := 1 to Tam do
   begin

      SPVerifCarenciaCrit.Close;
      SPVerifCarenciaCrit.Parameters[1].Value := QueryOrcamentos.FieldByName('usuario').AsInteger;
      SPVerifCarenciaCrit.Parameters[2].Value := dm.GetDataSrv;
      SPVerifCarenciaCrit.Parameters[3].Value := QueryItensOrcamento.FieldByName('servico').AsInteger;
      SPVerifCarenciaCrit.Parameters[4].Value := VCdDente;
      SPVerifCarenciaCrit.Parameters[5].Value := VFaces[i];
      SPVerifCarenciaCrit.Parameters[6].Value := QueryCritOdonto.FieldByName('qt_dias').AsInteger;
      SPVerifCarenciaCrit.Parameters[7].Value := 'F';
      SPVerifCarenciaCrit.Open;

      if not (SPVerifCarenciaCrit.Bof and SPVerifCarenciaCrit.Eof) then
      begin

         if  not VerificaStatus or ((QueryItensOrcamento.State = DsInsert) or
            ((QueryItensOrcamento.State = DsEdit) and (SPVerifCarenciaCrit.FieldByName('qtde').AsInteger > 1))) then
         begin

            VMsg.Text := 'O procedimento ' + QueryItensOrcamento.FieldByName('servico').AsString +
                    ' foi realizado a menos de ' + QueryCritOdonto.FieldByName('qt_dias').AsString + ' dias no dente/Face ' +
                     VCdDente + VFaces[i] + '. Verificar o orçamento(s) ';

            PAdicionaNrOrcamentos(VMsg,SPVerifCarenciaCrit);

            case QueryCritOdonto.FieldByName('nivel_restricao').asString[1] of

               'A': PAvisaRestrOdonto(VMsg,Pcdcriterio);
               'S': PExigeSenhaRestrOdonto(VMsg,Pcdcriterio);
               'B': PBloqRestrOdonto(VMsg,Pcdcriterio);

            end;
         end;
      end;
   end;
   VMsg.free;
end;

procedure TFormOrcamentos.PAdicionaNrOrcamentos(Var VMsg : TStrings; SpGenerica : TADOStoredProc);
begin
    While not SpGenerica.Eof do
    begin

    VMsg.Text := VMsg.Text +
      SpGenerica.FieldByName('numero').AsString + ' de ' + dm.ExecutaComando('select convert(char(10),data,103) + ''. Dentista : '' + cast(d.codigo as varchar(8)) + '' '' + d.Nome dt from orcamento o, dentista d  where o.Dentista = d.Codigo and o.numero =  ' + SpGenerica.FieldByName('numero').AsString,'dt') + ' ';
     SpGenerica.next;
    end;
    SpGenerica.First;

end;

procedure TFormOrcamentos.PValidaServicoXNivel;
Var VNvServico : string[1];
begin
//   nivel do servico aqui ta pegando de outro servico
   VNvServico := dm.ExecutaComando('select cd_nivel_servico a from servicos where codigo = ''' +
   QueryItensOrcamentoServico.AsString + '''','a');
   if VNvServico = 'D' then
   begin
      if not dm.PValidaDente(QueryItensOrcamentoDenteFace.asString) then
      begin
         PIncluindoPkg := false; // se interromper por segurança set esta variável para false
         QueryItensOrcamento.FieldByName('DenteFace').FocusControl;
         Abort;
      end;
   end
   else
   if VNvServico = 'F' then
   begin
      if not dm.PValidaFace(QueryItensOrcamentoDenteFace.asString,QueryItensOrcamentoServico.AsString,true) then
      begin
         PIncluindoPkg := false; // se interromper por segurança set esta variável para false
         QueryItensOrcamento.FieldByName('DenteFace').FocusControl;
         Abort;
      end;
   end
   else
   if VNvServico = 'H' then // Hemi-Arco
     PValidaHemiarco(QueryItensOrcamentoServico.AsString, QueryItensOrcamentoHemiarco.AsString)
   else
   if VNvServico = 'S' then // Sexante
      PValidaSexante(QueryItensOrcamentoSexante.AsInteger)
   else
   if VNvServico = 'A' then // Arcada
      PValidaArcada(QueryItensOrcamentoServico.AsString, QueryItensOrcamentoArcada.AsString)
   else
   if QueryItensOrcamentoDenteFace.asString <> '' then //critério válido para o cliente
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Este serviço é válido para o nível "Cliente", não é possível especificar o Dente X Face !');
      QueryItensOrcamento.FieldByName('DenteFace').FocusControl;
      abort;
   end;

   // Pega o tipo do dente no serviço e no cadastro de dente
   if VNvServico[1] in ['D','F'] then
      // PValidExecucaoDente verif. se confere Dente X Servico ref. a Oclusal1 Incisal ou Permanente Deciduo
     PValidExecucaoDente(Copy(QueryItensOrcamentoDenteFace.AsString,1,2),QueryItensOrcamentoServico.AsString)
   else
//      PValidExecBoca bolar como vai ser a validacao no hemi arco
end;

procedure TFormOrcamentos.PValidExecucaoDente(PDente,PServico : String);

var VOcluInc, VPermDec, VMoPreMo, VValorD : String[2]; //VValorS Pega valor Servico e VValorD pega Valor dente
//VValorS
    msg : string;

begin

   VOcluInc := dm.ExecutaComando('select tipo_dente a from servicos where codigo = ' + PServico,'a');

   if VOcluInc <> 'A' then // A = ambos
   begin

      VValorD := dm.ExecutaComando('select tipo_dente a from dente where cd_dente = ' + PDente ,'a');

      if VValorD <> VOcluInc then
      begin
         if VValorD = 'I' then
            msg := 'O dente informado é um dente Incisivo'
         else
            msg := 'O dente informado é um dente Oclusal';

         if VOcluInc = 'I' then
            msg := msg + ' e este serviço foi parametrizado para ser realizado em dentes Incisivos, verifique se o cadastro do serviço e do dente estão corretos'
         else
         if VOcluInc = 'O' then
            msg := msg + ' e este serviço foi parametrizado para ser realizado em dentes Oclusais, verifique se o cadastro do serviço e do dente estão corretos'
         else
             msg := msg + ' porém a parametrização(Inclusal ou Oclusal) do serviço, está incorreta, verifique o cadastro deste serviço';
         ShowMessage(msg);
         Abort;
      end;
   end;

   // Verifica Permante/Deciduo

   VPermDec := dm.ExecutaComando('select Perm_deci a from servicos where codigo = ' + PServico,'a');

   if VPermDec <> 'A' then
   begin
      VValorD := dm.ExecutaComando('select Perm_deci a from dente where cd_dente = ' + PDente ,'a');

      if VValorD <> VPermDec then
      begin
         if VValorD = 'P' then
            msg := 'O dente informado é um Permanente'
         else
            msg := 'O dente informado é um dente Decíduo(De Leite)';

         if VPermDec = 'P' then
            msg := msg + ' e este serviço foi parametrizado para ser realizado em dentes Permanentes, verifique se o cadastro do serviço e do dente estão corretos'
         else
         if VPermDec = 'D' then
            msg := msg + ' e este serviço foi parametrizado para ser realizado em dentes Decíduos(De leite), verifique se o cadastro do serviço e do dente estão corretos'
         else
             msg := msg + ' porém a parametrização(Permanente ou Decíduo) do serviço, está incorreta, verifique o cadastro deste serviço';
         ShowMessage(msg);
         QueryItensOrcamento.FieldByName('DenteFace').FocusControl;
         Abort;
      end;
   end;
   // Se o dente for permanente oclusal verifica se tem restricao premolar molar
   if (VPermDec = 'P') and (VOcluInc = 'O') then
   begin

      VMoPreMo := dm.ExecutaComando('select molar_premolar a from servicos where codigo = ' + PServico,'a');
      if VMoPreMo <> 'A' then
      begin
         VValorD := dm.ExecutaComando('select molar_premolar a from dente where cd_dente = ' + PDente ,'a');

         if VValorD <> VMoPreMo then
         begin
            if VValorD = 'M' then
               msg := 'O Dente informado é um Molar'
            else
            if VValorD = 'P' then
               msg := 'O Dente informado é um Pré molar'
            else
               msg := 'O Dente informado não é nem molar nem pré molar ';

            if VMoPreMo = 'M' then
               msg := msg + ' porém, este serviço foi parametrizado para ser realizado em dentes molares(dúvidas verifique o cadastro deste serviço)'
            else
            if VMoPreMo = 'P' then
               msg := msg + ' porém, este serviço foi parametrizado para ser realizado em dentes pré molares(dúvidas verifique o cadastro deste serviço)';
            ShowMessage(msg);
            QueryItensOrcamento.FieldByName('DenteFace').FocusControl;
            Abort;
         end;
      end
   end
end;

procedure TFormOrcamentos.PVerificaRestricaoCritDente(
  PCdDente,Pcdcriterio: String;QtPermitida: Smallint;VerificaStatus: boolean); // VerificaStatus indica se verifica o status da queryItensOrcamento, pois antes validava apenas para status insert, agora tem que validar na aprovação do orçamento(alterado 10/08/2015)

var VMsg : Tstrings;

begin
   VMsg := TStringlist.Create;
   SPVerifCarenciaCrit.Close;
   SPVerifCarenciaCrit.Parameters[1].Value := QueryOrcamentos.FieldByName('usuario').AsInteger;
   SPVerifCarenciaCrit.Parameters[2].Value := dm.GetDataSrv;
   SPVerifCarenciaCrit.Parameters[3].Value := QueryItensOrcamento.FieldByName('servico').AsInteger;
   SPVerifCarenciaCrit.Parameters[4].Value := PCdDente;
   SPVerifCarenciaCrit.Parameters[5].Value := '';
   SPVerifCarenciaCrit.Parameters[6].Value := QueryCritOdonto.FieldByName('qt_dias').AsInteger;
   SPVerifCarenciaCrit.Parameters[7].Value := 'D';
   SPVerifCarenciaCrit.Open;
   if not (SPVerifCarenciaCrit.Bof and SPVerifCarenciaCrit.Eof) then
   begin

      if  not VerificaStatus or ((QueryItensOrcamento.State = DsInsert) or
          ((QueryItensOrcamento.State = DsEdit) and (SPVerifCarenciaCrit.FieldByName('qtde').AsInteger > QtPermitida))) then
      begin

         VMsg.text := 'O procedimento ' + QueryItensOrcamento.FieldByName('servico').AsString +
                      ' foi realizado a menos de ' + QueryCritOdonto.FieldByName('qt_dias').AsString + ' dias no dente ' +
                      PCdDente  + '. Verificar o(s) orçamento(s) ';

         PAdicionaNrOrcamentos(VMsg,SPVerifCarenciaCrit);

         case QueryCritOdonto.FieldByName('nivel_restricao').asString[1] of

            'A': PAvisaRestrOdonto(VMsg,Pcdcriterio);
            'S': PExigeSenhaRestrOdonto(VMsg,Pcdcriterio);
            'B': PBloqRestrOdonto(VMsg,Pcdcriterio);

         end;
      end;
   end;
   VMsg.free;
end;

procedure TFormOrcamentos.PAvisaRestrOdonto(PMsg: TStrings; PCdCriterio:String);
begin
   FmMensagem := TFmMensagem.create(self);
   FmMensagem.Memo1.lines := PMsg;
   PGravarMsgOdont('A',PCdCriterio,PMsg.text ,'CARENCIA');
   PGravarEventoOdont('A',IntToSTr(Senha.Codigo_Operador),PCdCriterio, PMsg.text,'CARENCIA','log3');
   FmMensagem.ShowModal;
   FmMensagem.Free;
end;

procedure TFormOrcamentos.PBloqRestrOdonto(PMsg: TStrings; PCdCriterio:String);
begin
   FmMensagem := TFmMensagem.create(self);
   PGravarMsgOdont('B',PCdCriterio,PMsg.text ,'CARENCIA');
   FmMensagem.Memo1.lines := PMsg;

   FmMensagem.ShowModal;
   FmMensagem.free;
   PIncluindoPkg := false; // se interromper por segurança set esta variável para false
   Abort;
end;

procedure TFormOrcamentos.PExigeSenhaRestrOdonto(PMsg: TStrings; PCdCriterio:String);
begin
   FmMensagem := TFmMensagem.create(self);
   FmMensagem.Memo1.lines := PMsg;
   FmMensagem.Memo1.text := FmMensagem.Memo1.text + ' É necessário autorização com senha para liberar este procedimento';
   FmMensagem.ShowModal;
   FmMensagem.free;
   FmSenhaOdonto := TFmSenhaOdonto.Create(self);
   FmSenhaOdonto.showModal;
   if FmSenhaOdonto.tag <> 0 then
      PGravarEventoOdont('S',IntToStr(FmSenhaOdonto.tag),PCdCriterio,PMsg.text + 'Liberado com senha, conforme exige o critério','CARENCIA','log4')
   else
   begin
      if autorizandoOrcamento then
      begin
          QueryOrcamentos.Edit;
          QueryOrcamentosAutorizado.AsBoolean := false;
          QueryOrcamentosOperador_Aprovacao.asString := '';
          QueryOrcamentosData_Conferencia.asString := '';
          QueryOrcamentos.post;
      end;

      PGravarMsgOdont('S',PCdCriterio,PMsg.text ,'CARENCIA');
      FmSenhaOdonto.Free;
      QueryItensOrcamento.Cancel;
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      Abort;
   end;
   FmSenhaOdonto.Free;
end;

procedure TFormOrcamentos.PGravarEventoOdont(Ptp_evento:char;Pcd_operador,PcdCriterio,Ptx_evento:String;Ptp_criterio:string;log:string);
begin

   if dm.GetParam('GRAEV') = 'N' then // GRAEV = GRAVA EVENTO SE FOR N NÃO GRAVA EVENTO
      exit;
   if (dm.execmd('select count(*) q from operador where codigo = ' + Pcd_operador,'q') = '0') then
   begin
      ShowMessage('Erro na rotina PGravarEventoOdont, codigo de operador invalido ' +  Pcd_operador + ' Ptp_evento : ' + Ptp_evento + ' PcdCriterio : ' + PcdCriterio + ' Ptx_evento : ' + Ptx_evento + ' log : ' + log);
      dm.GravaLog('FormOrcamento','PGravarEventoOdont','Erro na rotina PGravarEventoOdont, codigo de operador invalido ' +  Pcd_operador + ' Ptp_evento : ' + Ptp_evento + ' PcdCriterio : ' + PcdCriterio + ' Ptx_evento : ' + Ptx_evento + ' log : ' + log);
      exit;
   end ;

   REvent[VId].Orcamento  := QueryItensOrcamentoOrcamento.AsInteger;
   REvent[VId].TpEvento   := Ptp_evento;
   REvent[VId].Operador   := StrToInt(Pcd_operador);
   REvent[VId].Criterio   := StrToInt(PcdCriterio);
   REvent[VId].TxEvento   := Ptx_evento;
   REvent[VId].tp_criterio := Ptp_criterio;
   REvent[VId].log         := log;
end;


procedure TFormOrcamentos.QueryOrcamentosUsuarioValidate(Sender: TField);
begin
   Dm.VerificaMsg(QueryOrcamentosUsuario.AsString,'O');
end;

procedure TFormOrcamentos.VerifStatusUsu(Aborta: Boolean; pedeSenha : Boolean);

begin
   if QueryUsuariosData_Exclusao.asString <> '' then
   begin
      FmMensagem := TFmMensagem.create(self);
      FmMensagem.Memo1.clear;
      FmMensagem.Memo1.lines.add('');
      FmMensagem.Memo1.lines.add('');
      FmMensagem.Memo1.lines.add(StrAll(35,' ') + 'Usuário Excluído em ' + DateToStr(QueryUsuariosData_Exclusao.asDateTime) + ' !');
      FmMensagem.ShowModal;
      FmMensagem.Free;
      if pedeSenha then
      begin
          FmSenhaOdonto := TFmSenhaOdonto.Create(self);
          FmSenhaOdonto.caption := 'Usuário excluído';
          FmSenhaOdonto.showModal;
          if FmSenhaOdonto.tag = 0 then
          begin
             ShowMessage('Senha Inválida');
             abort;
          end;


          FmSenhaOdonto.free;
      end;

      if Aborta then
         Abort;
  end;
end;

procedure TFormOrcamentos.QueryOrcamentosAfterScroll(DataSet: TDataSet);
begin
   //VerifStatusUsu(False);
   VAlterouParcOuDesc := false;
 end;

procedure TFormOrcamentos.PVerificaRestricaoCritCliente(
  Pcdcriterio: String;VerificaStatus: boolean);
var VMsg : Tstrings;

begin
   VMsg := TStringlist.Create;
   SPVerifCarenciaCrit.Close;
   SPVerifCarenciaCrit.Parameters[1].Value  := QueryOrcamentos.FieldByName('usuario').AsInteger;
   SPVerifCarenciaCrit.Parameters[2].Value  := dm.GetDataSrv;
   SPVerifCarenciaCrit.Parameters[3].Value  := QueryItensOrcamento.FieldByName('servico').AsInteger;
   SPVerifCarenciaCrit.Parameters[4].Value  := '' ;
   SPVerifCarenciaCrit.Parameters[5].Value  := '';
   SPVerifCarenciaCrit.Parameters[6].Value  := QueryCritOdonto.FieldByName('qt_dias').AsInteger;
   SPVerifCarenciaCrit.Parameters[7].Value  := 'C';
   SPVerifCarenciaCrit.Open;
   if not (SPVerifCarenciaCrit.Bof and SPVerifCarenciaCrit.Eof) then

   begin
      // pode ser que foi digitado o servico mais de uma vez neste orcamento

      if  not VerificaStatus or ((QueryItensOrcamento.State = DsInsert) or
         ((QueryItensOrcamento.State = DsEdit) and (SPVerifCarenciaCrit.FieldByName('qtde').AsInteger > 1))) then
      begin


         VMsg.text := 'O procedimento ' + QueryItensOrcamento.FieldByName('servico').AsString +
                 ' foi realizado a menos de ' + QueryCritOdonto.FieldByName('qt_dias').AsString + ' dias para este cliente ' +
                 '. Verificar o(s) orçamento(s) ';

         PAdicionaNrOrcamentos(VMsg,SPVerifCarenciaCrit);

         case QueryCritOdonto.FieldByName('nivel_restricao').asString[1] of

            'A': PAvisaRestrOdonto(VMsg,Pcdcriterio);
            'S': PExigeSenhaRestrOdonto(VMsg,Pcdcriterio);
            'B': PBloqRestrOdonto(VMsg,Pcdcriterio);

         end;
      end;
   end;
   VMsg.free;
end;

procedure TFormOrcamentos.QueryItensOrcamentoBeforeDelete(
  DataSet: TDataSet);
begin
  if QueryOrcamentosAutorizado.AsBoolean then
    VerifPermissao;

   if FormOrcamentos.tag = 1 then
      Abort;
   FormFundo.DatabaseMultiOdonto.StartTransaction;
   dm.ExecutaComando('delete faceXorcamento where orcamento = ' + QueryItensOrcamentoOrcamento.AsString +
                     ' and incremento = ' + QueryItensOrcamentoIncremento.AsString);
   dm.ExecutaComando('delete DenteXorcamento where orcamento = ' + QueryItensOrcamentoOrcamento.AsString +
                     ' and incremento = ' + QueryItensOrcamentoIncremento.AsString);
   dm.ExecutaComando('delete EventOdontograma where orcamento = ' + QueryItensOrcamentoOrcamento.AsString +
                     ' and incremento = ' + QueryItensOrcamentoIncremento.AsString);

  VIncrementoItem := QueryItensOrcamentoIncremento.asInteger + 1;                     
end;

procedure TFormOrcamentos.QueryItensOrcamentoAfterDelete(
  DataSet: TDataSet);
begin
   FormFundo.DatabaseMultiOdonto.Commit;
   MontaTotal;
   if not queryItensOrcamento.Locate('incremento',VIncrementoItem,[]) then
     queryItensOrcamento.last;
end;

procedure TFormOrcamentos.PVerifiCritXIdade(PcdUsu, PCdServico,
  PCdDenteXFace: String);
var VIdade : Word;
    VMsg: TStrings;
    VAux: String;
    VQtaux : Integer;
begin

   VIdade := StrToInt(dm.ExecutaComando('select datediff(dd,data_nascimento,getdate()) / 365 as idade from usuario where codigo_completo = ' + PcdUsu,'idade'));
   VAux := dm.ExecutaComando('select IdadeMax I from servicos where codigo = ''' + PCdServico + '''','I');
   if (VAux <> '0') and (VIdade > StrToInt(VAux)) then
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Este serviço não pode ser executado em usuários com idade superior a ' + VAux + ' anos. Este usuário possui '+ IntToStr(VIdade) + ' anos');
      abort;
   end;

//   showMessage('verificar idade maxima na tabela de serviço');
   VMsg := TStringlist.Create;
   QueryCritIdade.Close;
   QueryCritIdade.sql[09] := '''' + PCdServico + '''';
   QueryCritIdade.sql[11] := IntToStr(VIdade);
   //MODIFICAR QUERY QueryCritIdade DAR O SELECT NO CRITERIO E VERIFICAR SE A IDADE DO USUARIO
   //ESTA ENTRE O LIMITE DO CRITERIO(PODE HAVER MAIS DE UM CRITERIO PARA UM SERVICO)

   QueryCritIdade.Open;

   if not (QueryCritIdade.Bof and QueryCritIdade.Eof) then
   begin

      // Verifica se a idade esta dentro do cadastrado no criterio


      if not (VIdade in [QueryCritIdade.FieldByName('idadeIni').AsInteger..QueryCritIdade.FieldByName('idadeFim').AsInteger]) then
      begin
         VMsg.text := 'Este serviço está parametrizado para ser realizado em usuários com idade entre ' +
                      QueryCritIdade.FieldByName('idadeIni').AsString + ' e ' + QueryCritIdade.FieldByName('idadeFim').AsString +
                     ' anos. Este usuário possui ' + IntToStr(VIdade) + ' anos ';

         case QueryCritIdade.FieldByName('nivel_restricao').asString[1] of

            'A': PAvisaRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);
            'S': PExigeSenhaRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);
            'B': PBloqRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);

         end;

      end;

      // verifica se o dente esta sendo executado no local parametrizado

      //verificar se tem dente se não tem pula essa parte..
      if copy(PCdDenteXFace,1,2) <> '' then
      begin
         QueryDente.Close;
         QueryDente.SQL[1] := copy(PCdDenteXFace,1,2);
         QueryDente.Open;

         if ((QueryCritIdade.FieldByName('inclu_oclu').AsString <> 'T') and (QueryCritIdade.FieldByName('inclu_oclu').AsString <>  QueryDente.FieldByname('tipo_dente').asString)) or
            ((QueryCritIdade.FieldByName('Perm_deci' ).AsString <> 'T') and (QueryCritIdade.FieldByName('Perm_deci' ).AsString <>  QueryDente.FieldByname('Perm_deci').asString)) then
         begin
            if QueryDente.FieldByname('tipo_dente').asString = 'I' then
               VAux := 'Inclusal'
            else
               VAux := 'Oclusal';
            if QueryDente.FieldByname('Perm_deci').asString = 'P' then
               VAux := VAux + ' Permanente'
            else
               VAux := VAux + ' Decíduo';

            VMsg.text := 'O dente informado é ' +  VAux;

            if QueryCritIdade.FieldByname('inclu_oclu').asString = 'I' then
               VAux := 'Inclusal'
            else
               VAux := 'Oclusal';
            if QueryCritIdade.FieldByname('Perm_deci').asString = 'P' then
               VAux := VAux + ' Permanente'
            else
               VAux := VAux + ' Decíduo';

            VMsg.text := VMsg.text + ', este serviço só pode ser executado em dentes ' + VAux;
            if PCdServico = '2140' then
               vmsg.text := '  Acima de 6 anos nao aprova pra dente decíduo;  e acima de 15 anos nao aprova   para dente permanente';
            case QueryCritIdade.FieldByName('nivel_restricao').asString[1] of

               'A': PAvisaRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);
               'S': PExigeSenhaRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);
               'B': PBloqRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);

            end;
         end;
      end;
         // Verifica a qtde de servicos, qtde zero indica que nao tem limite de qtde
      // email do taciano dia 13/07
      if (QueryOrcamentosDentista.AsInteger <> 1235) and (QueryCritIdade.FieldByName('qtde').AsInteger > 0) then
      begin

//         se é inserção não tem o numero incrmeento ainda, então não tem como deixar de somar a qtde do item atual
//         se é edição eu tenho o incremento
//         ver um jeito de resolver isso, ver nas procedures de validação de carencia do criterio tb

         VQtAux := StrToInt(dm.ExecutaComando('select isnull(sum(Quantidade),0) q from itens_orcamento i , orcamento o where o.numero = i.orcamento and o.usuario = ' +
         PcdUsu + ' and i.servico = ' +  PCdServico ,'q'));

         VQtaux := FQtdeTotal(vQtAnt,QueryItensOrcamentoQuantidade.AsInteger,VQtaux,QueryItensOrcamento.State);

         if VQtaux > QueryCritIdade.FieldByName('qtde').AsInteger then
         begin
            VMsg.text := 'Quantidade máxima de serviço ultrapassada. Este serviço só pode ser executado ' + QueryCritIdade.FieldByName('qtde').AsString + ' por usuário!';

            case QueryCritIdade.FieldByName('nivel_restricao').asString[1] of

               'A': PAvisaRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);
               'S': PExigeSenhaRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);
               'B': PBloqRestrOdonto(VMsg,QueryCritIdade.FieldByName('cd_criterio').asString);

            end;
         end;
      end;
   end;
   VMsg.free;
end;

{procedure TFormOrcamentos.PVerifQtPorOrcamento(PNrOrcamento, PCdServico,
  PQtServico: String);
  Var VQtServico : Integer;
begin
   // o campo qt_orcamento indica a qtde maxima que um determinado servico pode constar em um unico orcamento
   // se a qt_orcamento for zero nao tem limite de qtde por orcamento

   VQtServico := StrToInt(dm.ExecutaComando('select qt_orcamento qt from servicos where codigo = ' + PCdServico,'qt'));
   if VQtServico > 0 then
   begin
      if
      StrToInt(dm.ExecutaComando('select sum(quantidade) + ' + PQtServico + ' qt from itens_orcamento where orcamento = ' + PNrOrcamento +
      ' and servico = ' + Pcdservico,'qt')) > VQtServico then
      begin
         ShowMessage('Quantidade máxima do serviço ' + PCdServico + ' por orçamento ultrapassada ! Quantidade máxima desse serviço por orçamento permitida ' + IntToStr(VQtServico));
         Abort;
      end;
   end;
end;}


procedure TFormOrcamentos.QueryItensOrcamentoAfterScroll(
  DataSet: TDataSet);
begin
  // Parametro odontograma indica se valida dente Sexante ou hemi-arco
//   if dm.GetParam('VALDEN') = 'S'then
//   begin
//      if not QueryItensOrcamentoServico.IsNull then
//         HabilitaCamposGrid(QueryItensOrcamentoServico.AsString);
//   end;
end;

procedure TFormOrcamentos.PValidaHemiarco(PCdServico,PHemiarco: String);
var VHemiServ : String[2];
begin
   if (PHemiArco <> 'SD') and (PHemiArco <> 'SE') and
      (PHemiArco <> 'ID') and (PHemiArco <> 'IE') then
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Tipo de Hemi-Arco informado é inválido, são permitido apenas SD(Superior Direito), SE(Superior Esquerdo), ID(Inferior Direito) e IE(Inferior Esquerdo)' + #13 +
                  'Obs: Para este serviço é obrigatório informar o Hemi-Arco');
      Abort;
   end;
   VHemiServ := dm.ExecutaComando('select hemiarco h from servicos where codigo = ' + PCdServico,'h');
   if (VHemiServ <> 'TD') and (VHemiServ <> PHemiarco) then
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Hemi-arco informado(' + PHemiarco + ') diferente do Hemi-arco que este serviço pode ser executado(' + VHemiServ + '). Operação Cancelada !');
      Abort;
   end;
end;

procedure TFormOrcamentos.PValidaSexante(PSexante: integer);
begin
   if not (Psexante in [1..6]) then
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Sexante informada inválida, sexante deve ter um valor entre 1 e 6');
      Abort;
   end;
end;

procedure TFormOrcamentos.PVerificaRestricaoCritSexante(Pcdcriterio: String;VerificaStatus: boolean);
var VMsg : Tstrings;

begin
   VMsg := TStringlist.Create;
   SPVerifCarenciaCrit.Close;
   SPVerifCarenciaCrit.Parameters[1].Value := QueryOrcamentos.FieldByName('usuario').AsInteger;
   SPVerifCarenciaCrit.Parameters[2].Value := dm.GetDataSrv;
   SPVerifCarenciaCrit.Parameters[3].Value := QueryItensOrcamento.FieldByName('servico').AsInteger;
   SPVerifCarenciaCrit.Parameters[4].Value := '';
   SPVerifCarenciaCrit.Parameters[5].Value := '';
   SPVerifCarenciaCrit.Parameters[6].Value := QueryCritOdonto.FieldByName('qt_dias').AsInteger;
   SPVerifCarenciaCrit.Parameters[7].Value := 'S';
   SPVerifCarenciaCrit.Parameters[8].Value := QueryItensOrcamento.FieldByName('sexante').AsInteger;
   SPVerifCarenciaCrit.Open;
   if not (SPVerifCarenciaCrit.Bof and SPVerifCarenciaCrit.Eof) then
   begin
      if  not VerificaStatus or ((QueryItensOrcamento.State = DsInsert) or
         ((QueryItensOrcamento.State = DsEdit) and (SPVerifCarenciaCrit.FieldByName('qtde').AsInteger > 1))) then
      begin

         VMsg.text := 'O procedimento ' + QueryItensOrcamento.FieldByName('servico').AsString +
                 ' foi realizado a menos de ' + QueryCritOdonto.FieldByName('qt_dias').AsString + ' dias para esta sexante ' +
                 '. Verificar o(s) orçamento(s) ';

         PAdicionaNrOrcamentos(VMsg,SPVerifCarenciaCrit);

         case QueryCritOdonto.FieldByName('nivel_restricao').asString[1] of

            'A': PAvisaRestrOdonto(VMsg,Pcdcriterio);
            'S': PExigeSenhaRestrOdonto(VMsg,Pcdcriterio);
            'B': PBloqRestrOdonto(VMsg,Pcdcriterio);

         end;
      end;
   end;
   VMsg.free;
end;

procedure TFormOrcamentos.PVerifDadosAdicionais(Pcdservico : string);
var VTpServico : String[1];
begin
   VTpServico := dm.ExecutaComando('select cd_nivel_servico nivel from servicos where codigo = ''' + Pcdservico + '''','nivel');
   FmSexHemOrcamento := TFmSexHemOrcamento.create(self);
   if (VTpServico  = 'H') then // H = Hemi-Arco
   begin
      FmSexHemOrcamento.DBRHemiArco.BringToFront;
      FmSexHemOrcamento.ShowModal;
      QueryItensOrcamentoHemiarco.AsString := FmSexHemOrcamento.DBRHemiArco.Value;
      if FmSexHemOrcamento.DBRHemiArco.ItemIndex = -1 then
      begin
         PIncluindoPkg := false; // se interromper por segurança set esta variável para false
         ShowMessage('É necessário informar o Hemi-Arco para este serviço !');
         abort;
      end;
   end
   else
   if (VTpServico = 'S') then // S = Sexante
   begin
      if QueryItensOrcamentoSexante.IsNull then
      begin
         ShowMessage('ATENÇÃO !!! Operação cancelada . Para incluir serviço executado em Sextante utilize a opção F7.');
         abort;
      end;
{      FmSexHemOrcamento := TFmSexHemOrcamento.create(self);
      FmSexHemOrcamento.DBRGSexante.BringToFront;
      FmSexHemOrcamento.ShowModal;
      QueryItensOrcamentoSexante.AsString := FmSexHemOrcamento.DBRGSexante.value;
      if FmSexHemOrcamento.DBRGSexante.ItemIndex = -1 then
      begin
         PIncluindoPkg := false; // se interromper por segurança set esta variável para false
         ShowMessage('É necessário informar a Sexante para este serviço !');
         abort;
      end;}
   end
   else
   if (VTpServico = 'A') then // A = Arcada
   begin
      if QueryItensOrcamentoArcada.IsNull then
      begin
         FmSexHemOrcamento := TFmSexHemOrcamento.create(self);
         FmSexHemOrcamento.DBRGArcada.BringToFront;
         FmSexHemOrcamento.ShowModal;
         QueryItensOrcamentoArcada.AsString := FmSexHemOrcamento.DBRGArcada.value;
         if FmSexHemOrcamento.DBRGArcada.ItemIndex = -1 then
         begin
            PIncluindoPkg := false; // se interromper por segurança set esta variável para false
            ShowMessage('É necessário informar a Arcada para este serviço !');
            abort;
         end;
      end;
   end;

   FmSexHemOrcamento.Free;
end;

procedure TFormOrcamentos.QueryItensOrcamentoNewRecord(DataSet: TDataSet);
begin
//   QueryItensOrcamentoQuantidade.AsInteger := 1;
   vQtAnt := 0;
   VAutorizando := false;
   QueryItensOrcamentoStatus.AsString := 'A';
end;

procedure TFormOrcamentos.PValidaArcada(PCdServico, PArcada: String);
var VArcada: String[2];
begin
   if (PArcada <> 'AS') and (PArcada <> 'AI') then // AS = Arcada Superior, AI = Arcada Inferior
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Tipo de Arcada informada é inválida, são permitida apenas AS(Arcada Superior), AI(Arcada Inferior)' + #13 +
                  'Obs: Para este serviço é obrigatório informar a Arcada');
      Abort;
   end;
   VArcada := dm.ExecutaComando('select arcada a from servicos where codigo = ' + PCdServico,'a');
   if (VArcada <> 'AM') and (VArcada <> PArcada) then
   begin
      PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      ShowMessage('Arcada informada(' + PArcada + ') diferente da Arcada em que este serviço pode ser executado(' + VArcada + '). Operação Cancelada !');
      Abort;
   end;
end;

procedure TFormOrcamentos.PVerificaRestricaoCritArcada(
  Pcdcriterio: String;VerificaStatus: boolean);
var VMsg : Tstrings;

begin
   VMsg := TStringlist.Create;
   SPVerifCarenciaCrit.Close;
   SPVerifCarenciaCrit.Parameters[1].Value := QueryOrcamentos.FieldByName('usuario').AsInteger;
   SPVerifCarenciaCrit.Parameters[2].Value := dm.GetDataSrv;
   SPVerifCarenciaCrit.Parameters[3].Value := QueryItensOrcamento.FieldByName('servico').AsInteger;
   SPVerifCarenciaCrit.Parameters[4].Value := '';
   SPVerifCarenciaCrit.Parameters[5].Value := '';
   SPVerifCarenciaCrit.Parameters[6].Value := QueryCritOdonto.FieldByName('qt_dias').AsInteger;
   SPVerifCarenciaCrit.Parameters[7].Value := 'A';
   SPVerifCarenciaCrit.Parameters[10].Value := QueryItensOrcamento.FieldByName('arcada').AsString;
   SPVerifCarenciaCrit.Open;
   if not (SPVerifCarenciaCrit.Bof and SPVerifCarenciaCrit.Eof) then
   begin
      if  not VerificaStatus or ((QueryItensOrcamento.State = DsInsert) or
         ((QueryItensOrcamento.State = DsEdit) and (SPVerifCarenciaCrit.FieldByName('qtde').AsInteger > 1))) then
      begin

         VMsg.text := 'O procedimento ' + QueryItensOrcamento.FieldByName('servico').AsString +
                 ' foi realizado a menos de ' + QueryCritOdonto.FieldByName('qt_dias').AsString + ' dias para esta Arcada ' +
                 '. Verificar o(s) orçamento(s) ';

         PAdicionaNrOrcamentos(VMsg,SPVerifCarenciaCrit);

         case QueryCritOdonto.FieldByName('nivel_restricao').asString[1] of

            'A': PAvisaRestrOdonto(VMsg,Pcdcriterio);
            'S': PExigeSenhaRestrOdonto(VMsg,Pcdcriterio);
            'B': PBloqRestrOdonto(VMsg,Pcdcriterio);

         end;
      end;
   end;
   VMsg.free;
end;


procedure TFormOrcamentos.PVerificaRestricaoCritHemiarco(
  Pcdcriterio: String;VerificaStatus: boolean);
var VMsg : Tstrings;

begin
   VMsg := TStringlist.Create;
   SPVerifCarenciaCrit.Close;
   SPVerifCarenciaCrit.Parameters[1].Value := QueryOrcamentos.FieldByName('usuario').AsInteger;
   SPVerifCarenciaCrit.Parameters[2].Value := dm.GetDataSrv;
   SPVerifCarenciaCrit.Parameters[3].Value := QueryItensOrcamento.FieldByName('servico').AsInteger;
   SPVerifCarenciaCrit.Parameters[4].Value := '';
   SPVerifCarenciaCrit.Parameters[5].Value := '';
   SPVerifCarenciaCrit.Parameters[6].Value := QueryCritOdonto.FieldByName('qt_dias').AsInteger;
   SPVerifCarenciaCrit.Parameters[7].Value := 'H';
   SPVerifCarenciaCrit.Parameters[9].Value := QueryItensOrcamento.FieldByName('hemiarco').AsString;
   SPVerifCarenciaCrit.Open;
   if not (SPVerifCarenciaCrit.Bof and SPVerifCarenciaCrit.Eof) then
   begin
      if  not VerificaStatus or ((QueryItensOrcamento.State = DsInsert) or
         ((QueryItensOrcamento.State = DsEdit) and (SPVerifCarenciaCrit.FieldByName('qtde').AsInteger > 1))) then
      begin

         VMsg.text := 'O procedimento ' + QueryItensOrcamento.FieldByName('servico').AsString +
                 ' foi realizado a menos de ' + QueryCritOdonto.FieldByName('qt_dias').AsString + ' dias para este hemiarco ' +
                 '. Verificar o(s) orçamento(s) ';

         PAdicionaNrOrcamentos(VMsg,SPVerifCarenciaCrit);

         case QueryCritOdonto.FieldByName('nivel_restricao').asString[1] of

            'A': PAvisaRestrOdonto(VMsg,Pcdcriterio);
            'S': PExigeSenhaRestrOdonto(VMsg,Pcdcriterio);
            'B': PBloqRestrOdonto(VMsg,Pcdcriterio);

         end;
      end;
   end;
   VMsg.free;
end;

procedure TFormOrcamentos.QueryItensOrcamentoBeforeEdit(DataSet: TDataSet);
begin
   if FormOrcamentos.tag = 1 then
      Abort;
   vQtAnt := QueryItensOrcamentoQuantidade.AsInteger;
end;

Function TFormOrcamentos.FQtdeTotal(PQtIAnt,PQtIAtual,PQtTotal: Integer; PStatus: TDataSetState): Integer;

// Calcula a qtde de X que o usuario executou este servico
// Devido ao problema de estar validando no BeforePost
// Qdo está inserindo soma o que ja foi inserido em outros
// orçamentos + a qtde do registro atual
// agora qdo esta editando, soma a qtde da base(inclusive a qtde do item atual
// soma com a qtde atual e subtrai a qtde anterior.

begin
   if PStatus = DsInsert then
      Result := PQtTotal + PQtIAtual
   else
   if PStatus = DsEdit then
      Result := (PQtTotal + PQtIAtual) - PQtIAnt
   else
      Result := 0;
end;

procedure TFormOrcamentos.BitBtn1Click(Sender: TObject);
begin
   FmConsultaTrat := TFmConsultaTrat.create(self);
   if DBEditUsuario.Text <> '' then
   begin
      FmConsultaTrat.EditCdUsuario.text := DBEditUsuario.Text;
      FmConsultaTrat.BitBtn1Click(Sender);
   end;

//   consertar o relatorio QRListaOrcamentos na coluna total tem que calcular o desconto
//   consertar a tab do contratante onde aparece a coluna total, tambem nao ta calculando o desconto

   FmConsultaTrat.Hint := 'Dê um duplo clique para visualizar o orçamento na tela de orçamento';
   FmConsultaTrat.ShowHint := true;
   FmConsultaTrat.tag := 1;
   FmConsultaTrat.ShowModal;
   if FmConsultaTrat.tag = 2 then
   begin
      BitBtnPesquisarClick(Sender);
      EditProcura.text := FmConsultaTrat.Query1.FieldByName('numero').AsString;
      EditProcuraExit(Sender); 
   end;
   try
     FmConsultaTrat.Free;
   except
   end;
end;

procedure TFormOrcamentos.QueryOrcamentosNewRecord(DataSet: TDataSet);
begin
   EditNomeOperador.clear;
   VAutorizando := false;
   atraso := '0';
   queryorcamentosTipo.AsInteger := 1;
   if dm.GetParam('ORCIR') = 'S' then
      QueryOrcamentos.FieldByName('lg_ir').AsBoolean := true
   else
      QueryOrcamentos.FieldByName('lg_ir').AsBoolean := false;
   DBEditTipoExit(DBEditTipo);
   DBEditUsuario.SetFocus;
end;

//onde parai

// criei trigger para inibir alteracao
// alterar rotinas para validar o campo qtde do criterio do orcamento
// falta também validar
procedure TFormOrcamentos.SpeedButton1Click(Sender: TObject);
begin
//  SpeedButton1.Caption := '0';
end;

procedure TFormOrcamentos.OdontogramaAntigo1Click(Sender: TObject);
begin
   Application.CreateForm(TFormOdontograma, FormOdontograma);
   FormOdontograma.ShowModal;
   FormOdontograma.Free;
end;

procedure TFormOrcamentos.PImprimeEventosOdonto;
var Qtde : byte;
    col : Word;
    Msg : String;
begin
   Impressora.SendControls(#15#14); // Coloca a impressora em modo condensado/expandido
   soma_linha;
   Qtde := 1;
   QueryEvent.close;
   QueryEvent.sql[4] := QueryOrcamentosNumero.AsString;
   QueryEvent.open;
   if not (QueryEvent.bof and QueryEvent.Eof) then
   begin
      Impressora.GWritePos(Linha, 35, 'OBSERVAÇÕES');
      soma_linha;
      Impressora.GWritePos(Linha, 35, '-----------');
      soma_linha;
      soma_linha;

      While not QueryEvent.eof do
      begin
         Col := 1;
         Msg := QueryEvent.FieldByName('tx_evento').AsString;
         Impressora.GWritePos(Linha, 01, IntToStr(Qtde) + ') ' + Copy(msg,col,79));
         inc(col,79);
         soma_linha;
         While Copy(msg,col,79) <> '' do
         begin
            Impressora.GWritePos(Linha, 01, Copy(msg,col,79));
            inc(col,79);
            soma_linha;
         end;
         QueryEvent.next;
         inc(qtde);
      end;
   end;

end;

procedure TFormOrcamentos.PGravarMsgOdont(Ptp_evento: char; PcdCriterio,
  Ptx_evento, Ptp_criterio: string);
begin
   if dm.GetParam('GRAEV') = 'N' then // GRAEV = GRAVA EVENTO SE FOR N NÃO GRAVA EVENTO, SERVE PARA MENSAGEM TAMBÉM
      exit;
   try
      if dm.ExecutaComando('select count(*) qt from Msg_odonto where orcamento = ' +
         QueryItensOrcamentoOrcamento.AsString + ' and cd_servico = ' +
         QueryItensOrcamentoServico.AsString   + ' and cd_criterio = ' +
         PcdCriterio,'qt') = '0' then
      begin
         dm.ExecutaComando('insert into Msg_odonto values (' +
         QueryItensOrcamentoOrcamento.AsString + ',' +
         QueryItensOrcamentoServico.AsString   + ',''' +
         Ptp_evento + ''',''' +
         Ptx_evento + ''','   +
         PcdCriterio + ','''  +
         Ptp_criterio + ''')');
      end;
   except
      on E: Exception do
         if VGRALOG then
            Dm.GravaLog('TFormOrcamentos','PGravarMsgOdont','#ORC# ' + QueryOrcamentosNumero.AsString +  '#ITEMORC# ' + QueryItensOrcamentoServico.ASsTRING + e.message);

   end;
end;

procedure TFormOrcamentos.impGViaApresentacao;
begin
   QrViaApres := TQrViaApres.create(self);
   QrViaApres.QRLabel25.Enabled := not QueryOrcamentosAutorizado.AsBoolean;
   QrViaApres.QRLabel28.Enabled := QrViaApres.QRLabel25.Enabled;
   QrViaApres.QRImage1.Enabled := (dm.GetParam('IMGOVL') = 'IMG1');
   QrViaApres.QRImage2.Enabled := (dm.GetParam('IMGOVL') = 'IMG2');
   QrViaApres.QRLabelvIA.caption := 'APRESENTAÇÃO';
   QrViaApres.QRLabelLocal.enabled := true;
   QrViaApres.QRDBTextLocal.enabled := true;
   QrViaApres.QRLabelp1.caption := '';
   QrViaApres.QRLabelv1.caption := '';
   QrViaApres.QRLabeld1.caption := '';
   QrViaApres.QRLabelt_1.caption := '';
   QrViaApres.QRLabelp2.caption := '';
   QrViaApres.QRLabelv2.caption := '';
   QrViaApres.QRLabeld2.caption := '';
   QrViaApres.QRLabelt2.caption := '';
   QrViaApres.QRLabelp3.caption := '';
   QrViaApres.QRLabelv3.caption := '';
   QrViaApres.QRLabeld3.caption := '';
   QrViaApres.QRLabelt3.caption := '';
   QrViaApres.QRLabelp4.caption := '';
   QrViaApres.QRLabelv4.caption := '';
   QrViaApres.QRLabeld4.caption := '';
   QrViaApres.QRLabelt4.caption := '';
   QrViaApres.QRLabelp5.caption := '';
   QrViaApres.QRLabelv5.caption := '';
   QrViaApres.QRLabeld5.caption := '';
   QrViaApres.QRLabelt5.caption := '';
   QrViaApres.QRLabelp6.caption := '';
   QrViaApres.QRLabelv6.caption := '';
   QrViaApres.QRLabeld6.caption := '';
   QrViaApres.QRLabelt6.caption := '';
   QrViaApres.QRLabelp7.caption := '';
   QrViaApres.QRLabelv7.caption := '';
   QrViaApres.QRLabeld7.caption := '';
   QrViaApres.QRLabelt7.caption := '';
   QrViaApres.QRLabelp8.caption := '';
   QrViaApres.QRLabelv8.caption := '';
   QrViaApres.QRLabeld8.caption := '';
   QrViaApres.QRLabelt8.caption := '';
   QrViaApres.QRLabelp9.caption := '';
   QrViaApres.QRLabelv9.caption := '';
   QrViaApres.QRLabeld9.caption := '';
   QrViaApres.QRLabelt9.caption := '';
   QrViaApres.QRLabelp10.caption := '';
   QrViaApres.QRLabelv10.caption := '';
   QrViaApres.QRLabeld10.caption := '';
   QrViaApres.QRLabelt10.caption := '';
   QrViaApres.QRLabelp11.caption := '';
   QrViaApres.QRLabelv11.caption := '';
   QrViaApres.QRLabeld11.caption := '';
   QrViaApres.QRLabelt11.caption := '';
   QrViaApres.QRLabelp12.caption := '';
   QrViaApres.QRLabelv12.caption := '';
   QrViaApres.QRLabeld12.caption := '';
   QrViaApres.QRLabelt12.caption := '';
   QrViaApres.QueryOrcamento.close;
   QrViaApres.QueryOrcamento.sql[52] := QueryOrcamentosNumero.AsString;
   QrViaApres.QueryOrcamento.open;
   QrViaApres.QueryPrestacoes.Close;
   QrViaApres.QueryPrestacoes.sql[2] := QueryOrcamentosNumero.AsString;
   QrViaApres.QueryPrestacoes.open;
   QrViaApres.QRLabelClinica.Caption := dm.execmd('select c.descricao clinica from dentista d, clinicas c where d.codigo_clinica = c.codigo and d.codigo = ' + QueryOrcamentosDentista.AsString,'clinica');
   QrViaApres.QRLabel22.caption := 'OBS: O PRESENTE ORÇAMENTO TEM VALIDADE NO MÁXIMO ATÉ O DIA ' + DateToStr(QueryOrcamentos.FieldByName('data').AsDatetime + StrToInt(dm.GetParam('VALORC'))) ;
   QrViaApres.SummaryBand1.Height := 400;

   if dm.GetParam('VCVSRO') = 'N' then // este parametro defini se vizualiza ou não o campo Valor do serviço quando a tabela de preço = 3
   begin
      if dm.execmd('select count (plano) q from TabPrecoXPlano where tabelaPreco = 3 and plano = ' +   QueryContratantePlano.AsString,'q') <> '0' then
      begin


         QrViaApres.QRExpr5.enabled := false;

         QrViaApres.QRExpr5.enabled := false;
      end
      else // duvidas verificar e-mail do tácio do dia 28/09/2011
      if dm.execmd('select count (plano) q from TabPrecoXPlano where tabelaPreco in(1,2) and plano = ' +   QueryContratantePlano.AsString,'q') <> '0' then
      begin
         QrViaApres.QRExpr5.enabled := false;
         QrViaApres.QRExpr5.enabled := true;
      end;
   end;

   QrViaApres.ReportTitle := UpperCase(senha.Empresa);

   if DebugHook = 0 then
      QrViaApres.Print
   else
      QrViaApres.Preview;


   QrViaApres.free;

end;

procedure TFormOrcamentos.ImpGViaCliente;
begin
   QrViaConv := TQrViaConv.create(self);
   QrViaConv.QRImage1.Enabled := (dm.GetParam('IMGOVL') = 'IMG1');
   QrViaConv.QRImage2.Enabled := (dm.GetParam('IMGOVL') = 'IMG2');
   QrViaConv.QRLabelvIA.caption := 'CLIENTE';
   QrViaConv.QRLabelLocal.enabled := true;
   QrViaConv.QRDBTextLocal.enabled := true;
   QrViaConv.QRLabelp1.caption := '';
   QrViaConv.QRLabelv1.caption := '';
   QrViaConv.QRLabeld1.caption := '';
   QrViaConv.QRLabelt_1.caption := '';
   QrViaConv.QRLabelp2.caption := '';
   QrViaConv.QRLabelv2.caption := '';
   QrViaConv.QRLabeld2.caption := '';
   QrViaConv.QRLabelt2.caption := '';
   QrViaConv.QRLabelp3.caption := '';
   QrViaConv.QRLabelv3.caption := '';
   QrViaConv.QRLabeld3.caption := '';
   QrViaConv.QRLabelt3.caption := '';
   QrViaConv.QRLabelp4.caption := '';
   QrViaConv.QRLabelv4.caption := '';
   QrViaConv.QRLabeld4.caption := '';
   QrViaConv.QRLabelt4.caption := '';
   QrViaConv.QRLabelp5.caption := '';
   QrViaConv.QRLabelv5.caption := '';
   QrViaConv.QRLabeld5.caption := '';
   QrViaConv.QRLabelt5.caption := '';
   QrViaConv.QRLabelp6.caption := '';
   QrViaConv.QRLabelv6.caption := '';
   QrViaConv.QRLabeld6.caption := '';
   QrViaConv.QRLabelt6.caption := '';
   QrViaConv.QRLabelp7.caption := '';
   QrViaConv.QRLabelv7.caption := '';
   QrViaConv.QRLabeld7.caption := '';
   QrViaConv.QRLabelt7.caption := '';
   QrViaConv.QRLabelp8.caption := '';
   QrViaConv.QRLabelv8.caption := '';
   QrViaConv.QRLabeld8.caption := '';
   QrViaConv.QRLabelt8.caption := '';
   QrViaConv.QRLabelp9.caption := '';
   QrViaConv.QRLabelv9.caption := '';
   QrViaConv.QRLabeld9.caption := '';
   QrViaConv.QRLabelt9.caption := '';
   QrViaConv.QRLabelp10.caption := '';
   QrViaConv.QRLabelv10.caption := '';
   QrViaConv.QRLabeld10.caption := '';
   QrViaConv.QRLabelt10.caption := '';
   QrViaConv.QRLabelp11.caption := '';
   QrViaConv.QRLabelv11.caption := '';
   QrViaConv.QRLabeld11.caption := '';
   QrViaConv.QRLabelt11.caption := '';
   QrViaConv.QRLabelp12.caption := '';
   QrViaConv.QRLabelv12.caption := '';
   QrViaConv.QRLabeld12.caption := '';
   QrViaConv.QRLabelt12.caption := '';
   QrViaConv.QRLabelSaldo.enabled := false;
   QrViaConv.QRLabelTotProt.enabled := false;
   QrViaConv.QRLabelTotDent.enabled := false;
   QrViaConv.QRDBTextSaldo.enabled := false;
   QrViaConv.QRDBTextTotProt.enabled := false;
   QrViaConv.QRDBTextTotDent.enabled := false;
   QrViaConv.QRExprDent.enabled := false;
   QrViaConv.QRExprTotProt.enabled := false;
   QrViaConv.QRExprSaldo.enabled := false;
   QrViaConv.QueryOrcamento.close;
   QrViaConv.QueryOrcamento.sql[52] := QueryOrcamentosNumero.AsString;
   QrViaConv.QueryOrcamento.open;
   QrViaConv.QueryPrestacoes.Close;
   QrViaConv.QueryPrestacoes.sql[2] := QueryOrcamentosNumero.AsString;
   QrViaConv.QueryPrestacoes.open;
   QrViaConv.QRLabel22.caption := 'OBS: O PRESENTE ORÇAMENTO TEM VALIDADE NO MÁXIMO ATÉ O DIA ' + DateToStr(QueryOrcamentos.FieldByName('data').AsDatetime + StrToInt(dm.GetParam('VALORC'))) ;
   QrViaConv.SummaryBand1.Height := 400;
   QrViaConv.QRLabelClinica.Caption := dm.execmd('select c.descricao clinica from dentista d, clinicas c where d.codigo_clinica = c.codigo and d.codigo = ' + QueryOrcamentosDentista.AsString,'clinica');

   {if QueryOrcamentosAutorizado.asBoolean then

      QrViaConv.SummaryBand1.Height := 400
   else
   begin
      QrViaConv.SummaryBand1.Height := 600;
      ImprimeCanhoto;
   end;}

   if dm.GetParam('VCVSRO') = 'N' then // este parametro defini se vizualiza ou não o campo Valor do serviço quando a tabela de preço = 3
   begin
      if dm.execmd('select count (plano) q from TabPrecoXPlano where tabelaPreco = 3 and plano = ' +   QueryContratantePlano.AsString,'q') <> '0' then
      begin
         QrViaConv.QRLabel28.enabled := false;
         QrViaConv.QRDBText23.enabled := false;
         QrViaConv.QRExpr5.enabled := false;

         QrViaConv.QRExpr5.enabled := false;
      end
      else // duvidas verificar e-mail do tácio do dia 28/09/2011
      if dm.execmd('select count (plano) q from TabPrecoXPlano where tabelaPreco in(1,2) and plano = ' +   QueryContratantePlano.AsString,'q') <> '0' then
      begin
         QrViaConv.QRLabel28.enabled := true;
         QrViaConv.QRDBText23.enabled := false;
         QrViaConv.QRExpr5.enabled := false;
         QrViaConv.QRExpr5.enabled := true;
      end;

   end;

   QrViaConv.ReportTitle := UpperCase(senha.Empresa) + ' - VIA CONVENIO';

   if DebugHook = 0 then
      QrViaConv.Print
   else
      QrViaConv.Preview;


   QrViaConv.free;

{   QrOrcClienteXDentista := TQrOrcClienteXDentista.create(self);
   QrOrcClienteXDentista.QRLabelvIA.caption := 'CLIENTE';
   QrOrcClienteXDentista.QueryOrcamento.close;
   QrOrcClienteXDentista.QRLabel22.caption := 'OBS: O PRESENTE ORÇAMENTO TEM VALIDADE NO MÁXIMO ATÉ O DIA ' + DateToStr(QueryOrcamentos.FieldByName('data').AsDatetime + StrToInt(dm.GetParam('VALORC'))) ;
   QrOrcClienteXDentista.QueryOrcamento.sql[49] := QueryOrcamentosNumero.AsString;
   QrOrcClienteXDentista.QueryOrcamento.Open;

   QrOrcClienteXDentista.print;
   QrOrcClienteXDentista.free;}
end;

procedure TFormOrcamentos.ImpGViaDentista;
var DtValid : string[10];
begin
  // o relatorio chama QrOrcClienteXDentista pq antes era impresso para o dentista e para o cliente
  // agora o relatorio da via do cliente eh QrViaConv
   QrOrcClienteXDentista := TQrOrcClienteXDentista.create(self);
   QrOrcClienteXDentista.QRImage1.Enabled := (dm.GetParam('IMGOVL') = 'IMG1');
   QrOrcClienteXDentista.QRImage2.Enabled := (dm.GetParam('IMGOVL') = 'IMG2');

   QrOrcClienteXDentista.QRLabelvIA.caption := 'DENTISTA';
   QrOrcClienteXDentista.QRLabel17.enabled := false;
   QrOrcClienteXDentista.QRLabel18.enabled := false;
   QrOrcClienteXDentista.QRDBText15.enabled := false;
   QrOrcClienteXDentista.QRDBText16.enabled := false;
   QrOrcClienteXDentista.QRExpr1.enabled := false;
   QrOrcClienteXDentista.QRExpr2.enabled := false;
   QrOrcClienteXDentista.QRShape3.enabled := false;
   QrOrcClienteXDentista.QRShape4.enabled := false;
   QrOrcClienteXDentista.QRLabel20.enabled := false;
   QrOrcClienteXDentista.QRDBText18.enabled := false;
   QrOrcClienteXDentista.QRLabel21.enabled := false;
   QrOrcClienteXDentista.QRDBText19.enabled := false;
   QrOrcClienteXDentista.QRLabel19.enabled := false;
   QrOrcClienteXDentista.QRShape6.enabled := true;
   QrOrcClienteXDentista.QRLabel25.enabled := true;
   QrOrcClienteXDentista.QRLabel26.enabled := true;
   DtValid := dm.execmd('SET DATEFORMAT DMY SELECT DATEADD(MONTH,6,''' + QueryOrcamentosData_Conferencia.AsString + ''') DT','DT');
   QrOrcClienteXDentista.QRLabel22.caption := 'ESTE ORÇAMENTO FOI APROVADO EM : ' + QueryOrcamentosData_Conferencia.AsString +

//   '. ORÇAMENTO VÁLIDO ATÉ ' + DtValid +
   '         OPERADOR : ' +  dm.executacomando('select apelido a from operador where codigo = ''' + QueryOrcamentosOperador_Aprovacao.AsString + '''','a');
   QrOrcClienteXDentista.QueryOrcamento.close;
   QrOrcClienteXDentista.QueryOrcamento.sql[49] := QueryOrcamentosNumero.AsString;
   QrOrcClienteXDentista.QRRichText1.Visible := false;
   QrOrcClienteXDentista.QRRichText1.Enabled := false;
   QrOrcClienteXDentista.QueryOrcamento.Open;
   QrOrcClienteXDentista.QRLabelClinica.Caption := dm.execmd('select c.descricao clinica from dentista d, clinicas c where d.codigo_clinica = c.codigo and d.codigo = ' + QueryOrcamentosDentista.AsString,'clinica');
   //QrOrcClienteXDentista.Preview;
   if DebugHook = 0 then
         QrOrcClienteXDentista.print
   else
         QrOrcClienteXDentista.Preview;

   QrOrcClienteXDentista.free;
end;

function TFormOrcamentos.PVerifExtracao(Pusuario,Pdente: String) : boolean; // se retornar true aborta
var rs : boolean;
begin
   rs := false;
   if PIncluindoPkg then
      exit;
   QueryExtracao.Close;
   QueryExtracao.sql[16] := PUsuario;
   QueryExtracao.sql[18] := PDente;
   QueryExtracao.Open;
   if not (QueryExtracao.bof and QueryExtracao.eof) then
   begin
      FmMensagem := TFmMensagem.create(self);
      FmMensagem.Memo1.lines.add('ATENÇÃO >> Consta no orçamento ' + QueryExtracao.FieldByName('numero').AsString + ' que o Dente ' + PDente + ' já foi extraído, procedimento exige autorização com senha');
      FmMensagem.ShowModal;
      FmSenhaOdonto := TFmSenhaOdonto.Create(self);
      FmSenhaOdonto.showModal;
      if FmSenhaOdonto.tag <> 0 then
         PGravarEventoOdont('S',IntToStr(FmSenhaOdonto.tag),'0',
         'Consta no orçamento ' + QueryExtracao.FieldByName('numero').AsString + ' que o Dente ' + PDente + ' já foi extraído, ' +
         'Liberado com senha','CARENCIA','log7')
      else
      begin
         rs := true; // significa que tem que abortar operacao
         PGravarMsgOdont('S','0','Consta no orçamento ' + QueryExtracao.FieldByName('numero').AsString + ' que o Dente ' + PDente + ' já foi extraído.' ,'CARENCIA');
         PIncluindoPkg := false; // se interromper por segurança set esta variável para false
      end;
      FmMensagem.Free;
   end;
   result := rs;
end;

procedure TFormOrcamentos.QueryItensOrcamentoPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
   if VGRALOG then
   begin
      ShowMessage('Erro na Gravação do item , print essa tela salve no word e envie para o responsável pelo sistema !!!' +  E.message);
   end;

end;

procedure TFormOrcamentos.ImpGViaConv;
begin
   QrViaConv := TQrViaConv.create(self);

   QrViaConv.QRImage1.Enabled := (dm.GetParam('IMGOVL') = 'IMG1');
   QrViaConv.QRImage2.Enabled := (dm.GetParam('IMGOVL') = 'IMG2');
   QrViaConv.QRDBTextDenteFace.enabled := true;
   QrViaConv.QRLabelDenteFace.enabled := true;
   QrViaConv.QRLabelvIA.caption := 'CONVÊNIO';
   QrViaConv.QRLabelp1.caption := '';
   QrViaConv.QRLabelv1.caption := '';
   QrViaConv.QRLabeld1.caption := '';
   QrViaConv.QRLabelt_1.caption := '';
   QrViaConv.QRLabelp2.caption := '';
   QrViaConv.QRLabelv2.caption := '';
   QrViaConv.QRLabeld2.caption := '';
   QrViaConv.QRLabelt2.caption := '';
   QrViaConv.QRLabelp3.caption := '';
   QrViaConv.QRLabelv3.caption := '';
   QrViaConv.QRLabeld3.caption := '';
   QrViaConv.QRLabelt3.caption := '';
   QrViaConv.QRLabelp4.caption := '';
   QrViaConv.QRLabelv4.caption := '';
   QrViaConv.QRLabeld4.caption := '';
   QrViaConv.QRLabelt4.caption := '';
   QrViaConv.QRLabelp5.caption := '';
   QrViaConv.QRLabelv5.caption := '';
   QrViaConv.QRLabeld5.caption := '';
   QrViaConv.QRLabelt5.caption := '';
   QrViaConv.QRLabelp6.caption := '';
   QrViaConv.QRLabelv6.caption := '';
   QrViaConv.QRLabeld6.caption := '';
   QrViaConv.QRLabelt6.caption := '';
   QrViaConv.QRLabelp7.caption := '';
   QrViaConv.QRLabelv7.caption := '';
   QrViaConv.QRLabeld7.caption := '';
   QrViaConv.QRLabelt7.caption := '';
   QrViaConv.QRLabelp8.caption := '';
   QrViaConv.QRLabelv8.caption := '';
   QrViaConv.QRLabeld8.caption := '';
   QrViaConv.QRLabelt8.caption := '';
   QrViaConv.QRLabelp9.caption := '';
   QrViaConv.QRLabelv9.caption := '';
   QrViaConv.QRLabeld9.caption := '';
   QrViaConv.QRLabelt9.caption := '';
   QrViaConv.QRLabelp10.caption := '';
   QrViaConv.QRLabelv10.caption := '';
   QrViaConv.QRLabeld10.caption := '';
   QrViaConv.QRLabelt10.caption := '';
   QrViaConv.QRLabelp11.caption := '';
   QrViaConv.QRLabelv11.caption := '';
   QrViaConv.QRLabeld11.caption := '';
   QrViaConv.QRLabelt11.caption := '';
   QrViaConv.QRLabelp12.caption := '';
   QrViaConv.QRLabelv12.caption := '';
   QrViaConv.QRLabeld12.caption := '';
   QrViaConv.QRLabelt12.caption := '';
   QrViaConv.QueryOrcamento.close;
   QrViaConv.QueryOrcamento.sql[52] := QueryOrcamentosNumero.AsString;
   QrViaConv.QueryOrcamento.open;
   QrViaConv.QueryPrestacoes.Close;
   QrViaConv.QueryPrestacoes.sql[2] := QueryOrcamentosNumero.AsString;
   QrViaConv.QueryPrestacoes.open;
   QrViaConv.QRLabel22.caption := 'ESTE ORÇAMENTO FOI APROVADO EM : ' + QueryOrcamentosData_Conferencia.AsString +
   '         OPERADOR : ' +  dm.executacomando('select apelido a from operador where codigo = ''' + QueryOrcamentosOperador_Aprovacao.AsString + '''','a');
   QrViaConv.QRLabelPer1.Enabled := true; // aviso de pericia
   QrViaConv.QRLabelPer2.Enabled := true;
   QrViaConv.QRLabelPer3.Enabled := true;
   QrViaConv.QRLabelPer4.Enabled := true;
   QrViaConv.QRLabelPer5.Enabled := true;
   QrViaConv.QRShape8.Enabled := true;
   QrViaConv.QRShape7.Enabled := true;
   QrViaConv.QRLabelAlerta.Enabled := true;
   QrViaConv.QRLabelAlerta.Caption := ' ';


   QrViaConv.QRLabel18.Enabled := true;


   
   if QueryOrcamentosTipo.AsInteger = 7 then // renovação
      QrViaConv.QRLabelAlerta.Caption := 'RENOVAÇÃO';

    if dm.execmd('SELECT COUNT(ORCAMENTO) q FROM EventOdontograma WHERE ORCAMENTO = ' + QueryOrcamentosNumero.AsString + ' AND TP_EVENTO = ''S''','q') <> '0' then
    begin
       QrViaConv.DetailBand1.Height := 50;
       QrViaConv.QRDBRichText1.enabled := true;
       if QrViaConv.QRLabelAlerta.Caption <> '' then
          QrViaConv.QRLabelAlerta.Caption := QrViaConv.QRLabelAlerta.Caption + ' - ';

       QrViaConv.QRLabelAlerta.Caption :=  QrViaConv.QRLabelAlerta.Caption + ' AUTORIZADO COM SENHA';
    end;

   if QueryOrcamentosAutorizado.asBoolean then

      QrViaConv.SummaryBand1.Height := 400
   else
   begin
      QrViaConv.SummaryBand1.Height := 600;
      ImprimeCanhoto;
   end;

   if dm.GetParam('VCVSR1') = 'N' then // este parametro da via do convênio defini se vizualiza ou não o campo Valor do serviço quando a tabela de preço = 3
   begin
      if dm.execmd('select count (plano) q from TabPrecoXPlano where tabelaPreco = 3 and plano = ' +   QueryContratantePlano.AsString,'q') <> '0' then
      begin
         QrViaConv.QRLabel28.enabled := false;
         QrViaConv.QRDBText23.enabled := false;
         QrViaConv.QRExpr5.enabled := false;

         QrViaConv.QRExpr5.enabled := false;
      end
      else // duvidas verificar e-mail do tácio do dia 28/09/2011
      if dm.execmd('select count (plano) q from TabPrecoXPlano where tabelaPreco in(1,2) and plano = ' +   QueryContratantePlano.AsString,'q') <> '0' then
      begin
         QrViaConv.QRLabel28.enabled := true;
         QrViaConv.QRDBText23.enabled := false;
         QrViaConv.QRExpr5.enabled := false;
         QrViaConv.QRExpr5.enabled := true;
      end;

   end;
   QrViaConv.QRLabelClinica.Caption := dm.execmd('select c.descricao clinica from dentista d, clinicas c where d.codigo_clinica = c.codigo and d.codigo = ' + QueryOrcamentosDentista.AsString,'clinica');
   if DebugHook = 0 then
      QrViaConv.Print
   else
      QrViaConv.Preview;
   QrViaConv.free;

end;
procedure TFormOrcamentos.ImprimeCanhoto;
begin
QrViaConv.QRSysDataCan.enabled := true;
QrViaConv.QRLabel34Can.enabled := true;
QrViaConv.QRDBTextCan.enabled := true;
QrViaConv.QRLabelCan.enabled := true;
QrViaConv.QRSysData8Can.enabled := true;
QrViaConv.QRShapeCan.enabled := true;
QrViaConv.QRLabel38Can.enabled := true;
QrViaConv.QRLabel39Can.enabled := true;
QrViaConv.QRLabel40Can.enabled := true;
QrViaConv.QRLabel41Can.enabled := true;
QrViaConv.QRLabel43Can.enabled := true;
QrViaConv.QRLabel44Can.enabled := true;
QrViaConv.QRLabel45Can.enabled := true;
QrViaConv.QRDBText21Can.enabled := true;
QrViaConv.QRDBText27Can.enabled := true;
QrViaConv.QRDBText28Can.enabled := true;
QrViaConv.QRDBText31Can.enabled := true;
QrViaConv.QRDBText32Can.enabled := true;
QrViaConv.QRDBText33Can.enabled := true;
QrViaConv.QRExpr2Can.enabled := true;
QrViaConv.QRShape12Can.enabled := true;
end;
procedure  TFormOrcamentos.PDadosPromissoria;
begin

    FmDadosNP := TFmDadosNP.create(self);
   if dm.getparam('DNPA') = 'S' then
   begin
      QueryContratante.Close;
      QueryContratante.ParamByName('Codigo_Contrantante').asInteger := VUsuario;
      QueryContratante.Open;

      FmDadosNP.EditAss.text := EditNomeUsuario.Text;
      FmDadosNP.EditEmit.text := QueryContratanteNome.asString;
      FmDadosNP.EditEnder.text := QueryContratanteEndereco_Residencial.asString;
      FmDadosNP.Edit_CPF.text  := QueryContratanteCGC_CPF.asString;
      FmDadosNP.EditFone.text  := QueryContratanteFone1.asString;
      FmDadosNP.MaskEditDtNasc.Text := dm.execmd('select convert(char(10),data_nascimento,103) dtnasc from usuario where codigo_completo = ' + QueryUsuariosCodigo_Completo.AsString,'dtnasc');	  
   end;
    FmDadosNP.ShowModal;
    Imprime_Promissoria;
    FmDadosNP.Free;
end;
procedure TFormOrcamentos.QueryOrcamentosNumero_ParcelasValidate(
  Sender: TField);
begin
  //evento acionado para o campo desconto tb
  if (QueryOrcamentosNumero_Parcelas.AsInteger > 0) and (QueryOrcamentosDesconto.Ascurrency = 0)  then
     QueryOrcamentosDesconto.AsString := dm.GetParam('DESCOR');
  VAlterouParcOuDesc := true;

end;

procedure TFormOrcamentos.QueryOrcamentosDescontoValidate(Sender: TField);
begin
  VAlterouParcOuDesc := true;
end;

procedure TFormOrcamentos.DBEditUsuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (DBEditUsuario.text = '') then
      BitBtnPesquisaUsuarioClick(sender);
end;

procedure TFormOrcamentos.DBEditDentistaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (DBEditDentista.text = '') then
      BitBtnPesquisaDentistaClick(sender);

end;

procedure TFormOrcamentos.QueryItensOrcamentoBeforeInsert(
  DataSet: TDataSet);
begin
   if FormOrcamentos.tag = 1 then
      Abort;
end;

procedure TFormOrcamentos.QueryOrcamentosBeforeEdit(DataSet: TDataSet);
begin
   if FormOrcamentos.tag = 1 then
      Abort;
end;

procedure TFormOrcamentos.QueryOrcamentosBeforeInsert(DataSet: TDataSet);
begin
   if FormOrcamentos.tag = 1 then
      Abort;
end;

procedure TFormOrcamentos.BitBtnSairClick(Sender: TObject);
begin
  FormOrcamentos.close;
end;

procedure TFormOrcamentos.EventosOramentoOdontograma1Click(
  Sender: TObject);
begin
   FmConsEventoOdonto := TFmConsEventoOdonto.create(self);
   if not QueryOrcamentosNumero.IsNull then
   begin
      FmConsEventoOdonto.EditProcura.Text := QueryOrcamentosNumero.AsString;
      FmConsEventoOdonto.Button1Click(sender);
   end;
   FmConsEventoOdonto.ShowModal;
   FmConsEventoOdonto.free;
end;

procedure TFormOrcamentos.InformarSexantes1Click(Sender: TObject);
var s1,s2,s3,s4,s5,s6 : boolean;
    cdservico : Integer;
begin
   try
      InformandoSextante := true;
      cdServico := StrToInt(inputbox('Informe o código do serviço(5110 ou 5111)','Informe o código do serviço(5110 ou 5111)','5110'));
      if ((cdServico <> 5110) and (cdServico <> 5111)) then
      begin
        ShowMessage('Informe o código do serviço, pode ser apenas 5110 ou 5111');
        exit;
      end;
   except

     ShowMessage('Informe o código do serviço, pode ser apenas 5110 ou 5111');
     exit;
   end;

   //cdServico := QueryItensOrcamentoServico.AsInteger;
   if QueryOrcamentosNumero.IsNull then
      exit;
   QueryItensOrcamento.cancel;
   FmSexHemOrcamento := TFmSexHemOrcamento.create(self);
   FmSexHemOrcamento.GroupBoxSexanteN.BringToFront;
   FmSexHemOrcamento.CheckBoxTodasSex.Visible := true;
   FmSexHemOrcamento.ShowModal;

   s1 := FmSexHemOrcamento.CheckBoxS1.Checked;
   s2 := FmSexHemOrcamento.CheckBoxS2.Checked;
   s3 := FmSexHemOrcamento.CheckBoxS3.Checked;
   s4 := FmSexHemOrcamento.CheckBoxS4.Checked;
   s5 := FmSexHemOrcamento.CheckBoxS5.Checked;
   s6 := FmSexHemOrcamento.CheckBoxS6.Checked;

   if s1 then
      IncluiSex(1,cdServico);
   if s2 then
      IncluiSex(2,cdServico);
   if s3 then
      IncluiSex(3,cdServico);
   if s4 then
      IncluiSex(4,cdServico);
   if s5 then
      IncluiSex(5,cdServico);
   if s6 then
      IncluiSex(6,cdServico);
   try
      FmSexHemOrcamento.free;
   except
   end;

end;

procedure TFormOrcamentos.IncluiSex(Sex: Byte; cdServico : Integer);
begin
   if cdServico = 0 then
     cdServico := 5110;
   QueryItensOrcamento.insert;
   QueryItensOrcamentoServico.AsInteger := cdServico; // hoje somente esse servico é sexante se existir outro servico sexante tem que solicitar via inputbox por exemplo
   QueryItensOrcamentoSexante.AsInteger := Sex;
   QueryItensOrcamentoQuantidade.AsInteger := 1;
   QueryItensOrcamento.Post;
end;

procedure TFormOrcamentos.ReestabelecerconexocomBD1Click(Sender: TObject);
begin
   FormOrcamentos.Caption := '1';
   if formFundo.DatabaseMultiOdonto.Connected then
      ShowMessage('Status atual = conectado');
   FormOrcamentos.Caption := '1-2';
   formFundo.DatabaseMultiOdonto.Close;
   FormOrcamentos.Caption := '1-2-3';
   dm.execmd('select getdate()');
   FormOrcamentos.Caption := '1-2-3-4';
end;

procedure TFormOrcamentos.AlterarStatus1Click(Sender: TObject);
begin
  NrOrcamento := QueryOrcamentosNumero.AsString;
  AtalhoAltSt := true;
  close;
end;

procedure TFormOrcamentos.GetTabPagtoDentistaNova(Full:boolean);
var indiceAux : string;

begin

   if not Full then
   begin

      indiceAux := dm.execmd('select indice from TabPagDentistaXProcedimento t where t.cd_dentista = ' + QueryOrcamentosDentista.AsString + ' and t.cd_procedimento = ' + QueryItensOrcamentoServico.AsString + ' and dtFim is null','indice' );
      if indiceAux = '' then
      begin
         ShowMessage('nao foi possivel localizar a tabela da TabPagDentistaXProcedimento  para este dentista, operacao cancelada');
         abort;
      end;
      if QueryItensOrcamento.State = dsBrowse then
      begin
        QueryItensOrcamento.Edit;
        QueryItensOrcamentoindiceTabPagDentista.AsString := indiceAux;
        revalorizando := true;
        QueryItensOrcamento.post;
        revalorizando := false;
      end
      else
         QueryItensOrcamentoindiceTabPagDentista.AsString := indiceAux;
      exit;
   end;
   QueryItensOrcamento.First;
   while not QueryItensOrcamento.Eof do
   begin

      indiceAux := dm.execmd('select indice from TabPagDentistaXProcedimento t where t.cd_dentista = ' + QueryOrcamentosDentista.AsString + ' and t.cd_procedimento = ' + QueryItensOrcamentoServico.AsString + ' and dtFim is null','categoria' );
      QueryItensOrcamentoindiceTabPagDentista.AsString := indiceAux;
      revalorizando := true;
      QueryItensOrcamento.post;
      revalorizando := false;
      QueryItensOrcamento.next;
   end;

end;


procedure TFormOrcamentos.RevalorizaOrcamento;
var vr_servico,vr_bruto,vr_dentista,vr_Protetico:string;
begin
   queryorcamentos.Edit;
   QueryOrcamentoscd_tabela.AsString := GetTabPagtoDentista;
   queryorcamentos.Post;
   QueryItensOrcamento.First;

   while not QueryItensOrcamento.Eof do
   begin
      AchaValor;
      AchaCobertura(QueryUsuariosdt_ini_cobertura.AsDateTime);
      {
        tacio 27/10/2020: bloco a baixo foi alterado pois dava muito o erro:
        Informações Incorretas ou insuficientes sobre a coluna chave. Muitas linhas foram afetadas pela atualização.
        * vou colocar um comando update ao invéz de uma adoquery atualizando
      ADOQueryItensOrcUpd.close;
      ADOQueryItensOrcUpd.sql[1] := QueryItensOrcamentoOrcamento.AsString;
      ADOQueryItensOrcUpd.sql[3] := QueryItensOrcamentoIncremento.AsString;
      ADOQueryItensOrcUpd.Open;
      ADOQueryItensOrcUpd.edit;
      ADOQueryItensOrcUpd.FieldByName('Valor').asCurrency := Valor_Servico * QueryItensOrcamentoQuantidade.asFloat;
      ADOQueryItensOrcUpd.FieldByName('Valor_Bruto').asCurrency := Valor_Bruto * QueryItensOrcamentoQuantidade.asFloat;
      ADOQueryItensOrcUpd.FieldByName('Valor_Dentista').asCurrency := Valor_Dentista * QueryItensOrcamentoQuantidade.asFloat;
      ADOQueryItensOrcUpd.FieldByName('Valor_Protetico').asCurrency := Valor_Protetico * QueryItensOrcamentoQuantidade.asFloat;
      ADOQueryItensOrcUpd.Post;
        * estou trocando pelo bloco a baixo
      }
      //puxando o valor para uma variavel string
      vr_servico := FloatToStrF(Valor_Servico * QueryItensOrcamentoQuantidade.asFloat,ffNumber,10,2);
      Vr_Bruto := FloatToStrF(Valor_Bruto * QueryItensOrcamentoQuantidade.asFloat,ffNumber,10,2);
      vr_dentista := FloatToStrF(Valor_Dentista * QueryItensOrcamentoQuantidade.asFloat,ffNumber,10,2);
      vr_Protetico := FloatToStrF(Valor_Protetico * QueryItensOrcamentoQuantidade.asFloat,ffNumber,10,2);
      //ajustando, tirando pontos, e substituindo virgula por ponto
      vr_servico:=StringReplace(vr_servico,'.','',[rfReplaceAll,rfIgnoreCase]);
      vr_servico:=StringReplace(vr_servico,',','.',[rfReplaceAll,rfIgnoreCase]);
      Vr_Bruto:=StringReplace(Vr_Bruto,'.','',[rfReplaceAll,rfIgnoreCase]);
      Vr_Bruto:=StringReplace(Vr_Bruto,',','.',[rfReplaceAll,rfIgnoreCase]);
      vr_dentista:=StringReplace(vr_dentista,'.','',[rfReplaceAll,rfIgnoreCase]);
      vr_dentista:=StringReplace(vr_dentista,',','.',[rfReplaceAll,rfIgnoreCase]);
      vr_Protetico:=StringReplace(vr_Protetico,'.','',[rfReplaceAll,rfIgnoreCase]);
      vr_Protetico:=StringReplace(vr_Protetico,',','.',[rfReplaceAll,rfIgnoreCase]);
      //comando para atualizar tabela com campos string ajustados
      DM.ExecutaComando('update itens_orcamento set valor = '+vr_servico+'  where orcamento = '+QueryItensOrcamentoOrcamento.AsString+' and incremento = '+QueryItensOrcamentoIncremento.AsString);
      DM.ExecutaComando('update itens_orcamento set Valor_Bruto   = '+vr_bruto+'  where orcamento = '+QueryItensOrcamentoOrcamento.AsString+' and incremento = '+QueryItensOrcamentoIncremento.AsString);
      DM.ExecutaComando('update itens_orcamento set Valor_Dentista   = '+vr_dentista+'  where orcamento = '+QueryItensOrcamentoOrcamento.AsString+' and incremento = '+QueryItensOrcamentoIncremento.AsString);
      DM.ExecutaComando('update itens_orcamento set Valor_Protetico  = '+vr_Protetico+'  where orcamento = '+QueryItensOrcamentoOrcamento.AsString+' and incremento = '+QueryItensOrcamentoIncremento.AsString);

      gravaEventoOdontograma(QueryItensOrcamentoIncremento.AsInteger);
      QueryItensOrcamento.Next;
   end;
   QueryItensOrcamento.close;
   QueryItensOrcamento.open;
   MontaTotal;
end;

procedure TFormOrcamentos.RevalorizaOramento1Click(Sender: TObject);
begin
   if QueryOrcamentosAutorizado.AsBoolean then
      ShowMessage('Orcamento já autorizado, não pode mais ser revalorizado')
   else
     RevalorizaOrcamento;
end;

procedure TFormOrcamentos.QueryOrcamentosDentistaValidate(Sender: TField);
begin
  AlterouDentista := true;
end;

procedure TFormOrcamentos.Oramentoscommesmoprocedimento1Click(
  Sender: TObject);
begin
  if QueryItensOrcamentoServico.IsNull then
    exit;
  FmServCoincidentes := TFmServCoincidentes.create(self);
  FmServCoincidentes.ADOQuery1.SQL[26] := QueryOrcamentosUsuario.AsString;
  FmServCoincidentes.ADOQuery1.SQL[23] := dm.execmd('select cd_grupo from servicos where codigo = ' + QueryItensOrcamentoServico.AsString,'cd_grupo');
  FmServCoincidentes.ADOQuery1.SQL[29] := QueryOrcamentosNumero.AsString;
  FmServCoincidentes.ADOQuery1.open;
  FmServCoincidentes.Caption := 'Serviços do mesmo grupo do serviço ' + QueryItensOrcamentoServico.AsString + ' existentes em outros orçamentos desse clente';
  FmServCoincidentes.ShowModal;
  FmServCoincidentes.free;
end;

procedure TFormOrcamentos.BitBtnContratanteClick(Sender: TObject);
var key : word;
begin
     //Application.CreateForm(TFormContratante, FormContratante);
     Application.CreateForm(TFormPesquisaPlanos, FormPesquisaPlanos);
     Application.CreateForm(TFormPesquisaVendedor, FormPesquisaVendedor);
     FormContratante.FormCreate(sender);
     FormContratante.ButtonVisualizaOrc.Visible := false; // por que nesse botão ele volta pro orçamento 


     if not QueryContratanteCodigo.IsNull then
     begin
        FormContratante.HabilitaPesquisa(false);
        FormContratante.EditPesquisa.Text := QueryContratanteCodigo.AsString;
        key := word(#13);
        FormContratante.EditPesquisaKeyDown(Sender, Key,[]);
        FormContratante.PanelPesquisa.Visible := False;
     end;
     FormContratante.ShowModal;
     FormContratante.fechaQuerys();

     //FormContratante.Free;
     FormPesquisaPlanos.QueryPlanos.open;
     FormPesquisaPlanos.QueryPlanos.Close;
     FormPesquisaPlanos.Query50.Close;
     FormPesquisaPlanos.Free;
     FormPesquisaVendedor.QueryVendedores.close;
     FormPesquisaVendedor.Query50.Close;
     FormPesquisaVendedor.Free;
end;

procedure TFormOrcamentos.BitBtnPgDentista_Click(Sender: TObject);
begin
   Application.CreateForm(TFormPagDentista, FormPagDentista);
   FormPagDentista.Tag := QueryOrcamentosNumero.AsInteger;
   FormPagDentista.ReadOnly := not dm.VerifPermissao('0','0','0','37'); // se nao tem permissao entao deixa read only 
   FormPagDentista.ShowModal;
   FormPagDentista.Free;
end;

procedure TFormOrcamentos.ImpGViaProtetico;
begin
   fmFrViaProteticoGraf := TfmFrViaProteticoGraf.create('' ,senha.Empresa,self);

   fmFrViaProteticoGraf.RLImage1.Visible := (dm.GetParam('IMGOVL') = 'IMG1');
   fmFrViaProteticoGraf.RLImage2.Visible := (dm.GetParam('IMGOVL') = 'IMG2');
   fmFrViaProteticoGraf.RLLabel3.Caption := 'OP: ' +  Senha.Apelido;
   if(dm.GetDataSrv <> DBEditDataConferencia.Text) then
      fmFrViaProteticoGraf.RLLabel23.Caption := 'VIA PROTÉTICO(2ª VIA)';
   fmFrViaProteticoGraf.ADOQueryOrc.Close;
   fmFrViaProteticoGraf.ADOQueryOrc.SQL[45] := QueryOrcamentosNumero.AsString;
   fmFrViaProteticoGraf.ADOQueryOrc.Open;
   fmFrViaProteticoGraf.RLLabelClinica.Caption := dm.execmd('select c.descricao clinica from dentista d, clinicas c where d.codigo_clinica = c.codigo and d.codigo = ' + QueryOrcamentosDentista.AsString,'clinica');
   if DebugHook = 0 then
         fmFrViaProteticoGraf.RLReportH.print
   else
         fmFrViaProteticoGraf.RLReportH.Preview;

//   fmFrViaProteticoGraf.RLReportH.Print;
   //fmFrViaProteticoGraf.RLReportH.PreviewModal;
   fmFrViaProteticoGraf.free;
end;

procedure TFormOrcamentos.ImpGViaOrtodontia;
begin
   fmFrViaOrtodontGraf := TfmFrViaOrtodontGraf.create('' ,senha.Empresa,self);

   fmFrViaOrtodontGraf.RLImage1.Visible := (dm.GetParam('IMGOVL') = 'IMG1');
   fmFrViaOrtodontGraf.RLImage2.Visible := (dm.GetParam('IMGOVL') = 'IMG2');

   fmFrViaOrtodontGraf.ADOQueryOrc.Close;
   fmFrViaOrtodontGraf.ADOQueryOrc.SQL[45] := QueryOrcamentosNumero.AsString;
   fmFrViaOrtodontGraf.ADOQueryOrc.Open;
   fmFrViaOrtodontGraf.RLLabelAutorizadoEm.Caption := 'AUTORIZADO EM : ' + DBEditDataConferencia.Text + ' POR : ' + EditNomeDigitador.Text;
   fmFrViaOrtodontGraf.RLReportH.PreviewModal;
   fmFrViaOrtodontGraf.RLLabelClinica.Caption := dm.execmd('select c.descricao clinica from dentista d, clinicas c where d.codigo_clinica = c.codigo and d.codigo = ' + QueryOrcamentosDentista.AsString,'clinica');

   fmFrViaOrtodontGraf.free;
end;

procedure TFormOrcamentos.QueryContratanteAfterScroll(DataSet: TDataSet);
begin
   DBCheckBoxEmissaoIR.Enabled :=  dm.execmd('select upper(fis_jur) pessoa from plano where codigo = ''' + QueryContratantePlano.AsString + '''','pessoa') = 'FÍSICA';
   if not DBCheckBoxEmissaoIR.Enabled then
   begin
      if (QueryOrcamentos.State in [DsEdit,DsInsert]) and QueryOrcamentoslg_ir.AsBoolean  then
        QueryOrcamentoslg_ir.AsBoolean := false;
   end;
end;

procedure TFormOrcamentos.fechaQuerys;
var I : Word;
begin

   for I := 0 to ComponentCount - 1 do
   begin
      if (Components[I] is TQuery) then
         (Components[I] as TQuery).close
      else
         if (Components[I] is TADOQuery) then
            (Components[I] as TADOQuery).close
         else
            if (Components[I] is TADOStoredProc) then
               (Components[I] as TADOStoredProc).close;
   end;

end;

{
function TFormOrcamentos.getMesFatFolhaPagto(DtVencto: TDate) : string;

// essa rotina verifica qual mes a parcela é para gerar a fatura

var DiaCorteFat : Integer;
    y,m,d : Word;

begin

    if (dm.queryGlobal.eof and dm.QueryGlobal.Bof) then
    begin
        DiaCorteFat := StrToInt(dm.getParam('DIACF'));  // eh o dia do mes que é enviado os relatorios de provisão para os contratantes
        // é estabelecido que nenhum beneficiario podera ser excluido ou incluido apos essa data
        // entao seguiremos a mesma regra aqui. Orçamentos com débito em folha emitidos até esse dia serão incluidos no contas a receber do mes corrente
        // ser for maior ou igual ao a esse dia será incluido no contas a receber do mes seguinte
        decodeDate(DtVencto,y,m,d);

        if d >= DiaCorteFat then
        begin
          if m = 12 then
          begin
            m := 1;
            inc(y);
          end;

        end;

        result := lpad(IntToStr(m),2,'0') + '/' + IntToStr(y);

    end;
end;
}
procedure TFormOrcamentos.Panel1Exit(Sender: TObject);
begin
   if not QueryOrcamentosNumero.IsNull then
   begin
      if dm.execmd('select count(*) q from itens_orcamento where orcamento = ' + QueryOrcamentosNumero.AsString,'q') = '0' then
      begin
         VerifStatusUsu(false,true);
      end;
   end;
end;

procedure TFormOrcamentos.Desaprovaroramento1Click(Sender: TObject);
begin
   if not QueryOrcamentosAutorizado.AsBoolean then
   begin
     ShowMessage('Orcaçamento ainda não foi autorizado');
     exit;
   end;
   if QueryOrcamentosData_Conferencia.AsDateTime <> dm.Date then
   begin
      ShowMessage('Opção de desaprovar orçamento só é permitida no mesmo dia da aprovação');
      exit;
   end;
   if dm.execmd('select count(*) q from receber where codigo_contratante = ' + QueryOrcamentosContratante.AsString + ' and codigo_usuario = ' + QueryOrcamentosUsuario.AsString + ' and orcamento = ' + QueryOrcamentosNumero.AsString + ' and data_pagamento is not null ','q' ) <> '0' then
   begin
      ShowMessage('Existem parcelas já quitadas desse orçamento, desautorização não permitida');
      exit;
   end;


   if Application.MessageBox('Confirma desautorizar orçamento?','Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) <> MrOk then
     exit;

   dm.execmd('delete  receber where codigo_contratante = ' + QueryOrcamentosContratante.AsString + ' and codigo_usuario = ' + QueryOrcamentosUsuario.AsString + ' and orcamento = ' + QueryOrcamentosNumero.AsString + ' and data_pagamento is null ');
   dm.execmd('update orcamento set autorizado = 0, operador_aprovacao = null, data_conferencia = null, data_validade = null where numero = ' + QueryOrcamentosNumero.AsString);
   QueryOrcamentos.Close;
   QueryOrcamentos.Open;

end;

{procedure TFormOrcamentos.valida5110_e_2110(cdUsuario: string);
var qt5110 : integer;
    qt2110 : integer;
    strMes : string;
begin
   qt5110 := dm.execmd('select isnull(sum(i.Quantidade),0) qtde from orcamento o, itens_orcamento i where o.numero = i.orcamento and o.usuario = ' + cdUsuario + ' and i.servico = 5110 and datediff(day,o.data,getdate()) <= 180','qtde');
   if(qt5110 >= 4) then
   begin
      qt2110 := dm.execmd('select isnull(sum(i.Quantidade),0) qtde from orcamento o, itens_orcamento i where o.numero = i.orcamento and o.usuario = ' + cdUsuario + ' and i.servico = 2110 and datediff(day,o.data,getdate()) <= 180','qtde');
      if (qt2110 > 0) then
      begin
         dm.execmd('select distinct o.numero from orcamento o, itens_orcamento i where o.numero = i.orcamento and o.usuario = ' + cdUsuario + ' and i.servico in(5110,2110) and datediff(day,o.data,getdate()) <= 180','numero');



      end;
   end;

end;}
procedure TFormOrcamentos.PesquisaproCdigoTUSS1Click(Sender: TObject);
begin
   FmSelTuss := TFmSelTuss.create(self);
   FmSelTuss.GroupBox1.Visible := true;
   FmSelTuss.Label1.Visible := false;
   FmSelTuss.ShowModal;
   if (QueryOrcamentos.RecordCount > 0) and (FmSelTuss.Tag = 2)  then
   begin
      if QueryItensOrcamento.State = dsBrowse then
         QueryItensOrcamento.Insert;

      QueryItensOrcamentoServico.AsString := FmSelTuss.ADOQueryTuss.fieldByName('servico_id').AsString;
      QueryItensOrcamentotuss_id.Value := FmSelTuss.ADOQueryTuss.fieldByName('id').Value;
   end;
   FmSelTuss.free;
end;

procedure TFormOrcamentos.GerenciamentodeLEADS1Click(Sender: TObject);
begin
   FmGerenciamentoLEADS := TFmGerenciamentoLEADS.create(self);
   FmGerenciamentoLEADS.ShowModal;
   FmGerenciamentoLEADS.free;

end;
function TFormOrcamentos.getMaiorValorServicoProtetico(cdServico: String) : string; // segudno regra passada e-mail tacio em 06/11/2020, como nao se sabe o protetico nesse moment
// pegar o maior valor do serviço
begin
   if cdservico <> '' then
     result := dm.execmd('select isnull(max(vrUs * qtUs),0) vr from TabPagProteticoXProcedimento t, servicoXqtUs s , protetico p ' +
               ' where s.cd_servico = ' + cdServico  +
               ' and t.cd_procedimento = s.cd_servico ' +
               ' and p.cd_tabelaQTUS = s.cd_tabela ' +
               ' and t.dtfim is null ' +
               ' and t.cd_protetico = p.Codigo ' +
               ' and p.Data_Exclusao is null ','vr')
   else
      result := '0';
end;
procedure TFormOrcamentos.QueryOrcamentosAfterOpen(DataSet: TDataSet);
begin
  LogarInfoDentista(QueryOrcamentosDentista.AsString);
end;

end.


