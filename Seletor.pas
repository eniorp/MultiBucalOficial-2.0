{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Seletor do Sistema                                        }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

unit Seletor;

interface
                            

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus, ComCtrls, OleCtrls, Buttons, ToolWin, Isp3,
  Db, DBTables, ImgList, jpeg, ExtDlgs,Printers,Biblio,enio,ShellApi;


type
    Registro = record
       NmUsuario : String[35];
       Endereco  : String[34];
       Bairro    : String[20];
       Cidade    : String[35];
       Estado    : String[02];
       CEP       : String[12];
       Numero    : String[10];
       Compl     : String[22];
    end;

  TFormSeletor = class(TForm)
    NavigatorImages: TImageList;
    NavigatorHotImages: TImageList;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    ToolButtonCadastros: TToolButton;
    PanelSeletor: TPanel;
    ToolButtonContratantes: TToolButton;
    ToolButtonRelatorios: TToolButton;
    ToolButtonHelp: TToolButton;
    ToolButtonSair: TToolButton;
    MainMenu1: TMainMenu;
    Opcoes: TMenuItem;
    Utilitarios: TMenuItem;
    Sobre1: TMenuItem;
    Servicos: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Preferencias: TMenuItem;
    RegistrodoSoftware: TMenuItem;
    Janela1: TMenuItem;
    Cascata1: TMenuItem;
    LadoaLado1: TMenuItem;
    MinimizeTodas1: TMenuItem;
    Calculadora: TMenuItem;
    FecharTodas1: TMenuItem;
    Minimizar1: TMenuItem;
    N9: TMenuItem;
    N3: TMenuItem;
    EfetuarLogon: TMenuItem;
    Cadastros: TMenuItem;
    QueryPermissoes: TQuery;
    Image1: TImage;
    Contratos: TMenuItem;
    Financeiro1: TMenuItem;
    ContasReceber: TMenuItem;
    ContasPagar: TMenuItem;
    GerenciadorFaturamento: TMenuItem;
    TitulosAberto: TMenuItem;
    BaixaBanco: TMenuItem;
    Relaciona: TMenuItem;
    Fornecedores: TMenuItem;
    PrecosContratante: TMenuItem;
    RelatoriosFinanceiro: TMenuItem;
    TitulosAberto2: TMenuItem;
    ToolButton1: TToolButton;
    ConsultaTitulos: TMenuItem;
    TitulosBaixados: TMenuItem;
    TabelaProcedimento: TMenuItem;
    PrecosPlano: TMenuItem;
    PrecosGrupo: TMenuItem;
    Operadores: TMenuItem;
    Vendas1: TMenuItem;
    RelatoriosVendas: TMenuItem;
    Representantes: TMenuItem;
    Vendedores: TMenuItem;
    VendasAnalitico: TMenuItem;
    Comissao: TMenuItem;
    ProcessaMensalidades: TMenuItem;
    Dentistas: TMenuItem;
    Proteticos: TMenuItem;
    Oramentos2: TMenuItem;
    Orcamentos: TMenuItem;
    RelatoriosOrcamento: TMenuItem;
    OrcamentosPeriodo: TMenuItem;
    Manutencao: TMenuItem;
    Carteirinhas: TMenuItem;
    Individual: TMenuItem;
    Relatrios4: TMenuItem;
    CarteirinhaContratante: TMenuItem;
    Contas: TMenuItem;
    RelatorioManutencao: TMenuItem;
    EtiquetasContratante: TMenuItem;
    EtiquetasDentista: TMenuItem;
    EtiquetasProtetico: TMenuItem;
    CadastroDentista: TMenuItem;
    PagamentoDentista: TMenuItem;
    RelatorioPagamentoDentista: TMenuItem;
    Contratantes: TMenuItem;
    RelatorioContratantes: TMenuItem;
    CadastroProtetico: TMenuItem;
    PagamentoProtetico: TMenuItem;
    RelatorioPagamentoProtetico: TMenuItem;
    QueryPermissoesCodigo_Operador: TSmallintField;
    QueryPermissoesCodigo_Grupo: TSmallintField;
    QueryPermissoesCodigo_Procedimento: TSmallintField;
    QueryPermissoesCodigo_SubProcedimento: TSmallintField;
    RelatorioCancelados: TMenuItem;
    BaixaAutomticaBanespa1: TMenuItem;
    RelatorioAniversariantes: TMenuItem;
    ToolButtonAgenda: TToolButton;
    N1: TMenuItem;
    Sinistralidade1: TMenuItem;
    CoberturaContratante: TMenuItem;
    CoberturaPlano: TMenuItem;
    CoberturaGrupoContratante: TMenuItem;
    CoberturaProcedimento: TMenuItem;
    VendasSintetico: TMenuItem;
    RepresentanteContratante: TMenuItem;
    VendasVencimento: TMenuItem;
    ManutencaoPeriodoNovo: TMenuItem;
    OrcamentosFinalizados: TMenuItem;
    VendasAnaliticoVencimento: TMenuItem;
    RelatorioContratosCanceladosRepresentante: TMenuItem;
    RelatorioManutencoes: TMenuItem;
    RelatorioContratosIncluidos: TMenuItem;
    DesativaInadinplentes: TMenuItem;
    TabelaPrecoPlano: TMenuItem;
    ANS1: TMenuItem;
    DiopsSIP: TMenuItem;
    TaxaSuplementar: TMenuItem;
    OrcamentosSIP: TMenuItem;
    OrcamentosTotal: TMenuItem;
    Image2: TImage;
    SucepArquivo: TMenuItem;
    TitulosBaixados2: TMenuItem;
    RelatoriosReceber: TMenuItem;
    RelatoriosPagar: TMenuItem;
    CancelaUltimoSucep: TMenuItem;
    RelatorioDentistas: TMenuItem;
    RelatorioProteticos: TMenuItem;
    CadastroVendedor: TMenuItem;
    RelatorioVendedor: TMenuItem;
    CadastroRepresentantes: TMenuItem;
    RelatorioRepresentantes: TMenuItem;
    RelatorioImpostoRenda: TMenuItem;
    RelatorioContratantesBairro: TMenuItem;
    ContasBancarias: TMenuItem;
    RelatriodeContratosIncludosComisso1: TMenuItem;
    RelatrioManutenoSeato1: TMenuItem;
    EtiquetaContratanteUn1: TMenuItem;
    RegistrosAuxiliares1: TMenuItem;
    RelatorioContratosIncludosEnd: TMenuItem;
    RelatorioProcedimentosPagos: TMenuItem;
    OrcamentosFinalizadosAtraso: TMenuItem;
    TtulosCancelados: TMenuItem;
    PopupMenuRapido1: TPopupMenu;
    Contratante1: TMenuItem;
    Oramentos1: TMenuItem;
    Agenda1: TMenuItem;
    Relatrios1: TMenuItem;
    Cordofundo1: TMenuItem;
    ColorDialog: TColorDialog;
    OpenPictureDialog: TOpenPictureDialog;
    Figura1: TMenuItem;
    Escolher1: TMenuItem;
    Semfigura1: TMenuItem;
    Financeiro2: TMenuItem;
    Ttulosemaberto1: TMenuItem;
    TtulosCancelados1: TMenuItem;
    QuerySalvaCor: TQuery;
    QuerySalvaCorcor: TStringField;
    QuerySalvaCorCodigo: TIntegerField;
    QuerySalvaCorNome: TStringField;
    QuerySalvaCorApelido: TStringField;
    QuerySalvaCorEndereco: TStringField;
    QuerySalvaCorBairro: TStringField;
    QuerySalvaCorCidade: TStringField;
    QuerySalvaCorUF: TStringField;
    QuerySalvaCorCep: TStringField;
    QuerySalvaCorFone: TStringField;
    QuerySalvaCorSenha: TStringField;
    QuerySalvaCorBanco_Dados: TStringField;
    QueryOperadorAux: TQuery;
    QueryOperadorAuxCor: TStringField;
    Corpadro1: TMenuItem;
    Cor1: TMenuItem;
    QuerySalvaImagem: TQuery;
    Oramentopdentista1: TMenuItem;
    AtualizaDB1: TMenuItem;
    ArquivoRPC1: TMenuItem;
    Precos: TMenuItem;
    PreospUsurio1: TMenuItem;
    Coberturas1: TMenuItem;
    Verificausuriossemmensalidade1: TMenuItem;
    Or1: TMenuItem;
    ExcluirOramentos: TMenuItem;
    DivergnciaValoresCrianas1: TMenuItem;
    N4: TMenuItem;
    ConfernciaANS1: TMenuItem;
    GeraarquivoSIB1: TMenuItem;
    GeraarquivoSIBNovo1: TMenuItem;
    Odontograma1: TMenuItem;
    Parmetros1: TMenuItem;
    N5: TMenuItem;
    Critrios1: TMenuItem;
    N6: TMenuItem;
    Oramentosapagar1: TMenuItem;
    Cidade1: TMenuItem;
    Diversos1: TMenuItem;
    N8: TMenuItem;
    GeraExclusodenoIdentificados1: TMenuItem;
    N10: TMenuItem;
    Consultas1: TMenuItem;
    Tratamentos1: TMenuItem;
    N11: TMenuItem;
    Executacomando: TMenuItem;
    Mensagens1: TMenuItem;
    Pacotes1: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    Manutenesematraso1: TMenuItem;
    CritServioporIdade1: TMenuItem;
    Parametros1: TMenuItem;
    AbrirRelatrioQRP1: TMenuItem;
    QtdeOrporStatus1: TMenuItem;
    VendasAnalticoUsurio1: TMenuItem;
    BaixaCNAB: TMenuItem;
    FormadePagtoBOLETOCNAB1: TMenuItem;
    N14: TMenuItem;
    BaixasPorAtendente1: TMenuItem;
    N15: TMenuItem;
    ConferenciaFaturamento: TMenuItem;
    N16: TMenuItem;
    EstatsticaGerencialFaturamento1: TMenuItem;
    N17: TMenuItem;
    ConsultaPagamentoDentista1: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    RelatriodeUsuriosCanceladosRepresentante1: TMenuItem;
    MenuDinamico: TMenuItem;
    N20: TMenuItem;
    TtulosBaixadossemRecibo1: TMenuItem;
    CancelarRecibo1: TMenuItem;
    EfetivaPagtoDentista1: TMenuItem;
    N21: TMenuItem;
    EfetivaoPagtoProttico1: TMenuItem;
    N22: TMenuItem;
    GeraAutorizaoDbAutomticoFEBRABAN1501: TMenuItem;
    EtiquetaDeUsurios1: TMenuItem;
    UsuriosXServios1Veznoano1: TMenuItem;
    QtdeServioPagonoPerodo1: TMenuItem;
    N23: TMenuItem;
    RelatriodeContratantesInadimplentes: TMenuItem;
    EndereoDentistas1: TMenuItem;
    SaveDialog1: TSaveDialog;
    ConfrenciadeBaixasdecartes1: TMenuItem;
    ReimpressodeBoleto1: TMenuItem;
    AlterarStatusOrcamento1: TMenuItem;
    BaixaAutomticaPadroCNAB400Bancoob: TMenuItem;
    GerarFaturamentoindividual: TMenuItem;
    N24: TMenuItem;
    Novo1: TMenuItem;
    ControledeVidasEmpresariais1: TMenuItem;
    GrficoInclusesXExcluses1: TMenuItem;
    N7: TMenuItem;
    OramentosExcludos1: TMenuItem;
    MainMenu2: TMainMenu;
    Cadastro1: TMenuItem;
    Contratos1: TMenuItem;
    Oramentos3: TMenuItem;
    Dentistas1: TMenuItem;
    Vendas2: TMenuItem;
    Financeiro3: TMenuItem;
    Odontograma2: TMenuItem;
    ANS2: TMenuItem;
    Utilitrios1: TMenuItem;
    Diversos2: TMenuItem;
    Procedimentos1: TMenuItem;
    Planos1: TMenuItem;
    Cidade2: TMenuItem;
    ipodePagamento1: TMenuItem;
    ipodeLigao1: TMenuItem;
    ipodeContato1: TMenuItem;
    ipodeCobrana1: TMenuItem;
    ipodeDocumento1: TMenuItem;
    FormasdeLIquidao1: TMenuItem;
    Cadastro2: TMenuItem;
    Valores1: TMenuItem;
    Cobertura1: TMenuItem;
    Preos1: TMenuItem;
    Cobertura2: TMenuItem;
    MenusDesativados1: TMenuItem;
    Contratantes1: TMenuItem;
    Cadastro3: TMenuItem;
    ConsultadeTtulso1: TMenuItem;
    Sinistralidade2: TMenuItem;
    ConsultaTratamento1: TMenuItem;
    Mensagens2: TMenuItem;
    Etiquetas1: TMenuItem;
    Usurios1: TMenuItem;
    Contratante2: TMenuItem;
    Relatrios2: TMenuItem;
    Aniversariantes1: TMenuItem;
    Incluses1: TMenuItem;
    pBairro1: TMenuItem;
    PorPlano1: TMenuItem;
    Cancelamentos1: TMenuItem;
    ImpostodeRenda1: TMenuItem;
    Inadimplentes1: TMenuItem;
    Oramentos4: TMenuItem;
    Relatrios3: TMenuItem;
    Oramentos5: TMenuItem;
    ExcluirOramentos1: TMenuItem;
    AlterarStatus1: TMenuItem;
    PorPerodo1: TMenuItem;
    Finalizados1: TMenuItem;
    EmAtraso1: TMenuItem;
    QtdeOramentosPorStatus1: TMenuItem;
    ProcedimentosPagos1: TMenuItem;
    OramentosPagos1: TMenuItem;
    Dentista1: TMenuItem;
    Ortondontia1: TMenuItem;
    Protticos1: TMenuItem;
    EtiquetasDentistas1: TMenuItem;
    EndereoDentista1: TMenuItem;
    CadastroDentista1: TMenuItem;
    PagamentoDentista1: TMenuItem;
    RelatrioPagamentoDentista1: TMenuItem;
    RelatrioDentista1: TMenuItem;
    ConsultaPagamentoDentista2: TMenuItem;
    EfetivaPagamentoDentista1: TMenuItem;
    ManutenoPerodoPagamento1: TMenuItem;
    Cadastro4: TMenuItem;
    RelatrioManutenoEmatraso1: TMenuItem;
    Cadastro5: TMenuItem;
    Pagamento1: TMenuItem;
    RelatrioPagamentoProttico1: TMenuItem;
    RelatrioProttico1: TMenuItem;
    EfetivaPagamentoProttico1: TMenuItem;
    Cadastro6: TMenuItem;
    Relatrios5: TMenuItem;
    Representantes1: TMenuItem;
    Vendedores1: TMenuItem;
    ComissesPorPerodo1: TMenuItem;
    AnalticoUsurio1: TMenuItem;
    ControleDevendasPorContratante1: TMenuItem;
    ControledeVidasEmpresariais2: TMenuItem;
    GrficoInclusesXExcluses2: TMenuItem;
    Faturamento1: TMenuItem;
    Banco1: TMenuItem;
    ContasaReceber1: TMenuItem;
    Controle1: TMenuItem;
    Relatrios6: TMenuItem;
    GerenciadorFaturamento1: TMenuItem;
    GerenciadorFaturamentousurio1: TMenuItem;
    PreferenciaDadosBancrios1: TMenuItem;
    ContasBancrias1: TMenuItem;
    GeraAutorizao1: TMenuItem;
    FormaPagamentoBoletoFrancesinhaCaixa1: TMenuItem;
    tulosemAberto1: TMenuItem;
    tulosCancelados1: TMenuItem;
    tulosBaixados1: TMenuItem;
    CancelarRecibos1: TMenuItem;
    BaixaAutomticaPadroCNABCEF1: TMenuItem;
    tulosBaixadosSRecibo1: TMenuItem;
    ConfernciaFaturamento1: TMenuItem;
    EstatsticaGeral1: TMenuItem;
    BaixaPorAtendente1: TMenuItem;
    Contas1: TMenuItem;
    ConferenciaBaixaCartesRelatriodeBaixas1: TMenuItem;
    PreospContratante1: TMenuItem;
    PreospPlano1: TMenuItem;
    PreospGrupoContratante1: TMenuItem;
    PreospUsurio2: TMenuItem;
    abelaPreopPlano1: TMenuItem;
    CoberturapContratante1: TMenuItem;
    CoberturapPlano1: TMenuItem;
    CoberturapGrupoContratante1: TMenuItem;
    CoberturapProcedimento1: TMenuItem;
    N25: TMenuItem;
    EtiquetaProtetico1: TMenuItem;
    N26: TMenuItem;
    BaixaAutomticaPadroCNAB4001: TMenuItem;
    FormadePagtoBOLETOCNAB: TMenuItem;
    Parmetros2: TMenuItem;
    Critrios2: TMenuItem;
    Pacotes2: TMenuItem;
    CritriodeServiosporIdade1: TMenuItem;
    DiopsSIP1: TMenuItem;
    axaSuplementar1: TMenuItem;
    OramentosSIP1: TMenuItem;
    OramentosTotal1: TMenuItem;
    SusepGeraArquivo1: TMenuItem;
    GeraExclusodenoIdentificados2: TMenuItem;
    N27: TMenuItem;
    GeraarquivoSIBNovo2: TMenuItem;
    GeraarquivoSIB2: TMenuItem;
    CancelaltimoSucep1: TMenuItem;
    RegistrosAuxiliares2: TMenuItem;
    ArquivoRPC2: TMenuItem;
    UsuriosXServios1Veznoano2: TMenuItem;
    QtdeServioPagonoPerodo2: TMenuItem;
    N28: TMenuItem;
    ConfernciaANS2: TMenuItem;
    Parmetros3: TMenuItem;
    AtualizaBancodeDadosNovaVerso1: TMenuItem;
    Operadores1: TMenuItem;
    ExecutaComando1: TMenuItem;
    EfetuaLogon1: TMenuItem;
    N29: TMenuItem;
    Sair2: TMenuItem;
    MenuDinmico1: TMenuItem;
    Sair3: TMenuItem;
    Sobre2: TMenuItem;
    CadastrodeGrupodeOperadores1: TMenuItem;
    CadastrodeFuncionrios1: TMenuItem;
    RelatriodeCustocomoramentos1: TMenuItem;
    RelatriodeCustoComOramentos2: TMenuItem;
    FichaFinanceira1: TMenuItem;
    FichaFinanceira2: TMenuItem;
    N30: TMenuItem;
    EspOdontologicas: TMenuItem;
    Clinicas: TMenuItem;
    N31: TMenuItem;
    CadastrodePlanos1: TMenuItem;
    GraudeParentesco1: TMenuItem;
    PlanoXGrauParentesco1: TMenuItem;
    GrupodeContratante1: TMenuItem;
    DescontoXNUsurios1: TMenuItem;
    AcrscimoPlanoAumento1: TMenuItem;
    Diversos3: TMenuItem;
    Sip1: TMenuItem;
    Diversos4: TMenuItem;
    Dentes1: TMenuItem;
    Face1: TMenuItem;
    DentesXFaces1: TMenuItem;
    N32: TMenuItem;
    Ocorrncias2: TMenuItem;
    GrauParentescp1: TMenuItem;
    N33: TMenuItem;
    DadosdaEmpresa1: TMenuItem;
    Cobrana1: TMenuItem;
    Pagamento2: TMenuItem;
    FichaFinanceiraEmpresa1: TMenuItem;
    Dentista2: TMenuItem;
    Prottico1: TMenuItem;
    Cobrana2: TMenuItem;
    ContratosCancelados1: TMenuItem;
    UsuriosCanceladosRepresentante1: TMenuItem;
    AniversariantesportempodeEmpresa: TMenuItem;
    MotivoCancelamento1: TMenuItem;
    N34: TMenuItem;
    Carteirinhas1: TMenuItem;
    N35: TMenuItem;
    AssociaodeCCO: TMenuItem;
    CargaArquivodeErroSIB: TMenuItem;
    //ReimpressodeBoletoSicoob: TMenuItem;
    itemMenutraco: TMenuItem;
    ReimpressodeBoletoSicoob: TMenuItem;
    EnviodealteraesParagrfica1: TMenuItem;
    ProtticosAniversariantesportempodeempresa1: TMenuItem;
    N36: TMenuItem;
    PesquisarOramentosexcludos1: TMenuItem;
    Impresso1: TMenuItem;
    Estattiscadesolicitaes1: TMenuItem;
    RelMensalPacientesDMED1: TMenuItem;
    ServiosIncompativeis1: TMenuItem;
    N37: TMenuItem;
    DescrioCobertura1: TMenuItem;
    RetiradadeCarteirinhapordata1: TMenuItem;
    abelasPagto1: TMenuItem;
    Cobertura3: TMenuItem;
    VendasAnalticoVencimento: TMenuItem;
    tiulosPagosdeContratantescomRestricao: TMenuItem;
    N38: TMenuItem;
    SimulaodePreoPorplano1: TMenuItem;
    N39: TMenuItem;
    EmissodeCarteirinhas1: TMenuItem;
    MotivosdeGlosas: TMenuItem;
    RelatriodeGlosas: TMenuItem;
    RelatrioPagamentoDentistaPorperodo1: TMenuItem;
    RelatriodeGlosaPorDentistaPerodo1: TMenuItem;
    ManutenesAtivasdeUsuriosExcludos1: TMenuItem;
    OramentosemtratamentodeUsuriosexcludos1: TMenuItem;
    RelatriodeManutenesqueiniciarameterminaramemperdo1: TMenuItem;
    ComissoesPorPerododataIncUsu: TMenuItem;
    QtdeUsurioFsicaJurdicaatdeterminadadata1: TMenuItem;
    ContratantesExcludos1: TMenuItem;
    GrficoPorVendedor1: TMenuItem;
    RelatriodeDentista1: TMenuItem;
    ImprimirViaConvnioemlote1: TMenuItem;
    GerenciamentodeLEADS1: TMenuItem;
    GerenciamentodeLEADS2: TMenuItem;
    GrficoCancelamentoPorVendedor1: TMenuItem;
    DentistaXCidade1: TMenuItem;
    GrfioPorRepresentante1: TMenuItem;
    GrficoDentistaXProtticoXManutena1: TMenuItem;
    DescontoProgressivoporIdade1: TMenuItem;
    Contratantescommaisde4Ttulosemaberto1: TMenuItem;
    RelatriodeRecursodeGlosa1: TMenuItem;
    N40: TMenuItem;
    EnviodeDadosANS1: TMenuItem;
    RelatrioRpido1: TMenuItem;
    VidasConfirmadas1: TMenuItem;
    RelatriodeTtulosaVencer1: TMenuItem;
    ListagemdeCelularesxTitulosemAberto1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Cascata1Click(Sender: TObject);
    procedure LadoaLado1Click(Sender: TObject);
    procedure MinimizeTodas1Click(Sender: TObject);
    procedure CalculadoraClick(Sender: TObject);
    procedure FecharTodas1Click(Sender: TObject);
    procedure Minimizar1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure EfetuarLogonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PreferenciasClick(Sender: TObject);
    procedure RegistrodoSoftwareClick(Sender: TObject);
    procedure TitulosAbertoClick(Sender: TObject);
    procedure BaixaBancoClick(Sender: TObject);
    procedure GerenciadorFaturamentoClick(Sender: TObject);
    procedure RelacionaClick(Sender: TObject);
    procedure FornecedoresClick(Sender: TObject);
    procedure PrecosContratanteClick(Sender: TObject);
    procedure TitulosAberto2Click(Sender: TObject);
    procedure ConsultaTitulosClick(Sender: TObject);
    procedure TitulosBaixadosClick(Sender: TObject);
    procedure PrecosPlanoClick(Sender: TObject);
    procedure PrecosGrupoClick(Sender: TObject);
    procedure OperadoresClick(Sender: TObject);
    procedure ServicosClick(Sender: TObject);
    procedure VendasAnaliticoClick(Sender: TObject);
    procedure ComissaoClick(Sender: TObject);
    procedure ProcessaMensalidadesClick(Sender: TObject);
    procedure OrcamentosPeriodoClick(Sender: TObject);
    procedure ManutencaoClick(Sender: TObject);
    procedure IndividualClick(Sender: TObject);
    procedure ContasClick(Sender: TObject);
    procedure RelatorioManutencaoClick(Sender: TObject);
    procedure EtiquetasContratanteClick(Sender: TObject);
    procedure EtiquetasDentistaClick(Sender: TObject);
    procedure EtiquetasProteticoClick(Sender: TObject);
    procedure CadastroDentistaClick(Sender: TObject);
    procedure PagamentoDentistaClick(Sender: TObject);
    procedure RelatorioPagamentoDentistaClick(Sender: TObject);
    procedure ContratantesClick(Sender: TObject);
    procedure RelatorioContratantesClick(Sender: TObject);
    procedure OrcamentosClick(Sender: TObject);
    procedure RelatorioCanceladosClick(Sender: TObject);
    procedure PagamentoProteticoClick(Sender: TObject);
    procedure CadastroProteticoClick(Sender: TObject);
    procedure RelatorioPagamentoProteticoClick(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure BaixaAutomticaBanespa1Click(Sender: TObject);
    procedure RelatorioAniversariantesClick(Sender: TObject);
    procedure ToolButtonAgendaClick(Sender: TObject);
    procedure Sinistralidade1Click(Sender: TObject);
    procedure CoberturaContratanteClick(Sender: TObject);
    procedure CoberturaPlanoClick(Sender: TObject);
    procedure CoberturaGrupoContratanteClick(Sender: TObject);
    procedure CoberturaProcedimentoClick(Sender: TObject);
    procedure BaixaAutomticaTodosBancos1Click(Sender: TObject);
    procedure VendasSinteticoClick(Sender: TObject);
    procedure RepresentanteContratanteClick(Sender: TObject);
    procedure VendasVencimentoClick(Sender: TObject);
    procedure ManutencaoPeriodoNovoClick(Sender: TObject);
    procedure OrcamentosFinalizadosClick(Sender: TObject);
    procedure VendasAnaliticoVencimentoClick(Sender: TObject);
    procedure RelatorioContratosCanceladosRepresentanteClick(
      Sender: TObject);
    procedure RelatorioManutencoesClick(Sender: TObject);
    procedure RelatorioContratosIncluidosClick(Sender: TObject);
    procedure DesativaInadinplentesClick(Sender: TObject);
    procedure OrcamentosSIPClick(Sender: TObject);
    procedure TabelaPrecoPlanoClick(Sender: TObject);
    procedure OramentosSIP1Click(Sender: TObject);
    procedure OrcamentosTotalClick(Sender: TObject);
    procedure DiopsSIPClick(Sender: TObject);
    procedure TaxaSuplementarClick(Sender: TObject);
    procedure TitulosBaixados2Click(Sender: TObject);
    procedure RelatoriosReceberClick(Sender: TObject);
    procedure RelatoriosPagarClick(Sender: TObject);
    procedure CancelaUltimoSucepClick(Sender: TObject);
    procedure RelatorioDentistasClick(Sender: TObject);
    procedure RelatorioProteticosClick(Sender: TObject);
    procedure CadastroVendedorClick(Sender: TObject);
    procedure RelatorioVendedorClick(Sender: TObject);
    procedure CadastroRepresentantesClick(Sender: TObject);
    procedure RelatorioRepresentantesClick(Sender: TObject);
    procedure RelatorioContratantesBairroClick(Sender: TObject);
    procedure ContasBancariasClick(Sender: TObject);
    procedure RelatriodeContratosIncludosComisso1Click(Sender: TObject);
    procedure RelatrioManutenoSeato1Click(Sender: TObject);
    procedure EtiquetaContratanteUn1Click(Sender: TObject);
    procedure RegistrosAuxiliares1Click(Sender: TObject);
    procedure RelatorioContratosIncludosEndClick(Sender: TObject);
    procedure RelatorioProcedimentosPagosClick(Sender: TObject);
    procedure OrcamentosFinalizadosAtrasoClick(Sender: TObject);
    procedure TtulosCanceladosClick(Sender: TObject);
    procedure Cadsatros1Click(Sender: TObject);
    procedure Contratante1Click(Sender: TObject);
    procedure Oramentos1Click(Sender: TObject);
    procedure Agenda1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
    procedure Cordofundo1Click(Sender: TObject);
    procedure Escolher1Click(Sender: TObject);
    procedure Semfigura1Click(Sender: TObject);
    procedure Ttulosemaberto1Click(Sender: TObject);
    procedure TtulosCancelados1Click(Sender: TObject);
    procedure Corpadro1Click(Sender: TObject);
    procedure AtualizaDB1Click(Sender: TObject);
    procedure ArquivoRPC1Click(Sender: TObject);
    procedure PreospUsurio1Click(Sender: TObject);
    procedure Verificausuriossemmensalidade1Click(Sender: TObject);
    procedure ExcluirOramentosClick(Sender: TObject);
    procedure DivergnciaValoresCrianas1Click(Sender: TObject);
    procedure ConfernciaANS1Click(Sender: TObject);
    procedure GeraarquivoSIB1Click(Sender: TObject);
    procedure GeraarquivoSIBNovo1Click(Sender: TObject);
    procedure Critrios1Click(Sender: TObject);
    procedure Oramentosapagar1Click(Sender: TObject);
    procedure Diversos1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Parmetros1Click(Sender: TObject);
    procedure GeraExclusodenoIdentificados1Click(Sender: TObject);
    procedure Tratamentos1Click(Sender: TObject);
    procedure ExecutacomandoClick(Sender: TObject);
    procedure Mensagens1Click(Sender: TObject);
    procedure Pacotes1Click(Sender: TObject);
    procedure Manutenesematraso1Click(Sender: TObject);
    procedure CritServioporIdade1Click(Sender: TObject);
    procedure Parametros1Click(Sender: TObject);
    procedure AbrirRelatrioQRP1Click(Sender: TObject);
    procedure QtdeOrporStatus1Click(Sender: TObject);
    procedure VendasAnalticoUsurio1Click(Sender: TObject);
    procedure BaixaCNABClick(Sender: TObject);
    procedure FormadePagtoBOLETOCNAB1Click(Sender: TObject);
    procedure BaixasPorAtendente1Click(Sender: TObject);
    procedure ConferenciaFaturamentoClick(Sender: TObject);
    procedure EstatsticaGerencialFaturamento1Click(Sender: TObject);
    procedure ConsultaPagamentoDentista1Click(Sender: TObject);
    procedure RelatriodeUsuriosCanceladosRepresentante1Click(
      Sender: TObject);
    procedure TtulosBaixadossemRecibo1Click(Sender: TObject);
    procedure CancelarRecibo1Click(Sender: TObject);
    procedure EfetivaPagtoDentista1Click(Sender: TObject);
    procedure EfetivaoPagtoProttico1Click(Sender: TObject);
    procedure GeraAutorizaoDbAutomticoFEBRABAN1501Click(Sender: TObject);
    procedure EtiquetaDeUsurios1Click(Sender: TObject);
    procedure UsuriosXServios1Veznoano1Click(Sender: TObject);
    procedure QtdeServioPagonoPerodo1Click(Sender: TObject);
    procedure RelatriodeContratantesInadimplentesClick(Sender: TObject);
    procedure EndereoDentistas1Click(Sender: TObject);
    procedure ToolButtonHelpClick(Sender: TObject);
    procedure ConfrenciadeBaixasdecartes1Click(Sender: TObject);
    procedure ReimpressodeBoleto1Click(Sender: TObject);
    procedure AlterarStatusOrcamento1Click(Sender: TObject);
    procedure BaixaAutomticaPadroCNAB400BancoobClick(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure ControledeVidasEmpresariais1Click(Sender: TObject);
    procedure GrficoInclusesXExcluses1Click(Sender: TObject);
    procedure OramentosExcludos1Click(Sender: TObject);
    procedure ConferenciaBaixaCartesRelatriodeBaixas1Click(
      Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Sair3Click(Sender: TObject);
    procedure CadastrodeGrupodeOperadores1Click(Sender: TObject);
    procedure RelatriodeCustocomoramentos1Click(Sender: TObject);
    procedure FichaFinanceira1Click(Sender: TObject);
    procedure EspOdontologicasClick(Sender: TObject);
    procedure ClinicasClick(Sender: TObject);
    procedure ipodePagamento1Click(Sender: TObject);
    procedure Sip1Click(Sender: TObject);
    procedure ipodeLigao1Click(Sender: TObject);
    procedure ipodeContato1Click(Sender: TObject);
    procedure ipodeCobrana1Click(Sender: TObject);
    procedure ipodeDocumento1Click(Sender: TObject);
    procedure FormasdeLIquidao1Click(Sender: TObject);
    procedure Dentes1Click(Sender: TObject);
    procedure Face1Click(Sender: TObject);
    procedure DentesXFaces1Click(Sender: TObject);
    procedure GrauParentescp1Click(Sender: TObject);
    procedure CadastrodePlanos1Click(Sender: TObject);
    procedure PlanoXGrauParentesco1Click(Sender: TObject);
    procedure GrupodeContratante1Click(Sender: TObject);
    procedure DescontoXNUsurios1Click(Sender: TObject);
    procedure AcrscimoPlanoAumento1Click(Sender: TObject);
    procedure DadosdaEmpresa1Click(Sender: TObject);
    procedure Ocorrncias2Click(Sender: TObject);
    procedure Cobrana1Click(Sender: TObject);
    procedure Pagamento2Click(Sender: TObject);
    procedure FichaFinanceiraEmpresa1Click(Sender: TObject);
    procedure Prottico1Click(Sender: TObject);
    procedure AniversariantesportempodeEmpresaClick(Sender: TObject);
    procedure MotivoCancelamento1Click(Sender: TObject);
    procedure AssociaodeCCOClick(Sender: TObject);
    procedure CargaArquivodeErroSIBClick(Sender: TObject);
    procedure EnviodealteraesParagrfica1Click(Sender: TObject);
    procedure ProtticosAniversariantesportempodeempresa1Click(
      Sender: TObject);
    procedure PesquisarOramentosexcludos1Click(Sender: TObject);
    procedure Estattiscadesolicitaes1Click(Sender: TObject);
    procedure Impresso1Click(Sender: TObject);
    procedure RelMensalPacientesDMED1Click(Sender: TObject);
    procedure ServiosIncompativeis1Click(Sender: TObject);
    procedure DescrioCobertura1Click(Sender: TObject);
    procedure RetiradadeCarteirinhapordata1Click(Sender: TObject);
    procedure abelasPagto1Click(Sender: TObject);
    procedure Cobertura3Click(Sender: TObject);
    procedure VendasAnalticoVencimentoClick(Sender: TObject);
    procedure tiulosPagosdeContratantescomRestricaoClick(Sender: TObject);
    procedure SimulaodePreoPorplano1Click(Sender: TObject);
    procedure EmissodeCarteirinhas1Click(Sender: TObject);
    procedure MotivosdeGlosasClick(Sender: TObject);
    procedure RelatriodeGlosasClick(Sender: TObject);
    procedure RelatrioPagamentoDentistaPorperodo1Click(Sender: TObject);
    procedure RelatriodeGlosaPorDentistaPerodo1Click(Sender: TObject);
    procedure ManutenesAtivasdeUsuriosExcludos1Click(Sender: TObject);
    procedure OramentosemtratamentodeUsuriosexcludos1Click(
      Sender: TObject);
    procedure RelatriodeManutenesqueiniciarameterminaramemperdo1Click(
      Sender: TObject);
    procedure ComissoesPorPerododataIncUsuClick(Sender: TObject);
    procedure QtdeUsurioFsicaJurdicaatdeterminadadata1Click(
      Sender: TObject);
    procedure ContratantesExcludos1Click(Sender: TObject);
    procedure GrficoPorVendedor1Click(Sender: TObject);
    procedure RelatriodeDentista1Click(Sender: TObject);
    procedure ImprimirViaConvnioemlote1Click(Sender: TObject);
    procedure GerenciamentodeLEADS1Click(Sender: TObject);
    procedure GerenciamentodeLEADS2Click(Sender: TObject);
    procedure GrficoCancelamentoPorVendedor1Click(Sender: TObject);
    procedure DentistaXCidade1Click(Sender: TObject);
    procedure GrfioPorRepresentante1Click(Sender: TObject);
    procedure GrficoDentistaXProtticoXManutena1Click(Sender: TObject);
    procedure DescontoProgressivoporIdade1Click(Sender: TObject);
    procedure Contratantescommaisde4Ttulosemaberto1Click(Sender: TObject);
    procedure RelatriodeRecursodeGlosa1Click(Sender: TObject);
    procedure EnviodeDadosANS1Click(Sender: TObject);
    procedure RelatrioRpido1Click(Sender: TObject);
    procedure VidasConfirmadas1Click(Sender: TObject);
    procedure RelatriodeTtulosaVencer1Click(Sender: TObject);
    procedure ListagemdeCelularesxTitulosemAberto1Click(Sender: TObject);


private
    //procedure AlteraStatusOrc(NrOr:string);
    procedure AbreFormDiversos(Tab : TtabSheet);
    procedure InibeMenusDesativados;
    procedure MontaMenuDinamico;
    procedure MontaSeletor;
    procedure DesabilitaSeletor;
    procedure DesabilitaMenu;
    procedure MontaMenu;



public
  procedure GeraEtiquetas(QueryTitulo: TQuery;Flag: Boolean);
end;

var
  FormSeletor: TFormSeletor;
  NomeArquivo, DiretorioCorrente : String;
  Flague: Integer;

implementation

uses Fundo, Senha, Cadastro, Contratante, Representantes, Vendedores,
  TituloReceber, BaixaBanco, Informacoes, GeraReceber, Francesa, Fornecedor,
  PrecoContratante, Orcamentos, PesquisaServicos, PesquisaDentista, TituloPagar,
  ConsultaTitulos, PesquisaContratante, TituloBaixados, ValorProcedimento,
  PrecoPlano, PrecoGrupo, Usuarios, Servicos, QRVendasPeriodo, RelVendas,
  RelComissao, Processa, Preferencias, Filtro, Dentistas, Proteticos,
  RelOrcamentos, Manutencao, PesquisaPlanos, PesquisaVendedor,
  CarteirinhaIndividual, RelManutencao, Etiquetas, EtiquetasDentista,
  EtiquetasProteticos, PagDentista, RelPagamentos, RelContratantePlano,
  RelExcluidos, PagProtetico, RelPagamentosProteticos, Agenda, Sobre,
  BaixaAutomatica, RelAniversariantes, SelParamSinistralidade,
  CoberturaContratante, CoberturaPlano, CoberturaGrupo, CoberturaProcedimento,
  QRRetorno, RelContratanteRepresentante, RelOrcamentosFinalizados,
  RelContratanteInclusao, Desabilita, RelOrcamentosSip, TabPrecoXPlano,
  ArqSusep, TituloPagos, RelatoReceber, RelatoPagar, CancArqSusep,
  QRDentistas, QRProteticos, QRVendedores, QRRepresentantes,
  RelContratanteImposto, QRContratoBairro, Contas_Bancos,
  QRManutencaoCadastroSeato, EtiquetaContratante, RegistrosAuxiliares,
  RelProcedimentosPagos, RelAtivosInativos, RelContratantesBairro,
  CanceladosReceber, MudarCor, UAtualizaDB, SelContratEtiquetasCobr,
  ArqANSRPC, PrecoXUsuario, UsuarioSemMens, exclusaoOrcamentos,
  RelDivergenciaVrCrianca, udm, ConfANS, ArqSusepNovo,
  CadCriterioOdonto, ParaMOrcAPagar, Cadcidades, parametro, GeraPerdidosANS,
  ConsultaTratamento, ExecutaSql, CadMensagens, CadPacotes,
  ParamManutAtraso, CritServicoXIdade, RelAbrir, QtdeOrcStatus,
  ErroAtualizacao, RetornoCnab240, PesqLocalPgCNAB, ParamBaixaAtend,
  confereFaturamento, ParamRelEstatFat, ReciboBaixa,
  PesqTitBaixadoSemRecibo, PesqTitbaixSemRecGeral, ReimpressaoRecibo,
  EfetivaPagto, CadDebCef, RelOrcClienteXDentista, teste,
  AnsUsuXServicoPorAno, ANS_qtdePagaServico, ParamContrInad,
  SimulacaoPgtit, ParamRelConfCart, BoletoBancoob, BaixaCnab400,
  ControleFaturamento, ParamRelContVidasEmp, GraficoIngressosXExclusoes,
  relEtiquetas, ParamDtRelOrcExc, CadGrupoFunc, ParamRelCustoDent,
  RelFichaFinan, CadTabPagto , paramNiverIncDent, Associa_cco, ArqErroSib,
  EnvDentistaGrafica, PesqOrcamentosExc, RelfrContratSolicReciboIR,
  ParamDatas, relfrDmed, CadServicosImcompativeisOdonto,
  relRetiradaCarteira, dmed, ParamRelTitPgContratRestricao,
  FmParamVrServPorPlano, SelRPS,
  cadMotivoGlosa, relGlosasPorPeriodo, ParamRelPagDentista,
  ParamRelGlosaDentista, frRelUsuExcluidosManutAtivas,
  frRelUsuExcluidosOrcTratamento, FrRelManutencoesPorPeriodo, frQtUsuarios,
  FrRelContratosExcluidos, ParamRelExcluidos, grafVendas, paramRelDentista,
  selOrcImpressao, gerenciamentoDeLED, grafCancVendedor,
  ParamRelDentistaCidade, grafVendasRepresentante,
  GraficoDentistaXProteticoXManut, cadDescontoProgressivo, relInadimplente,
  RelatorioRecursoGlosa,Tacio, RelatorioRapido, VidasConfirmadas,
  reltitulosAvencer , emissaoCarteirinha, RelCarteirinha,
  CelularesXTitEmAberto;



{$R *.DFM}

procedure TFormSeletor.Sair1Click(Sender: TObject);
begin
//if MessageDlg('Tem certeza que deseja sair?', mtconfirmation, [mbyes] + [mbno], 0) = MrYes then
   close;
//Application.Terminate;
end;

procedure TFormSeletor.FormCreate(Sender: TObject);
begin
     Left := 1;
     Top := 1;
     Case Senha.Cod_Empresa of
       1: begin
            Image1.Visible := True;
            Image2.Visible := False;
          end;
       2: begin
            Image1.Visible := False;
            Image2.Visible := True;
          end;
     end;
     if FormSenha.FechouAplic then
       exit;

     if FormSeletor.Menu = MainMenu1 then
     begin
        QueryPermissoes.Close;
        QueryPermissoes.ParamByName('Operador').asInteger := Senha.Codigo_Operador;
        QueryPermissoes.Open;
        DesabilitaSeletor;
        MontaSeletor;
        QueryPermissoes.Close;
     end
     else
     begin
        DesabilitaMenu;
        MontaMenu;
     end;



//     If (ParamStr(1) <> 'D') and (Application.MessageBox('Deseja Visualizar os Contatos Agendados ? ','Contatos agendados',MB_YesNo + MB_DEFBUTTON2)
//     = IdYes) then
//      begin
//         Application.CreateForm(TFormAgenda, FormAgenda);
//         FormAgenda.ShowModal;
//         FormAgenda.Free;
//      end;
     QueryOperadorAux.Active := true;

   with QueryOperadorAux do
   begin
     close;
     parambyname('codigo').asinteger := senha.Codigo_Operador;
     open;
     if (QueryOperadorAuxCor.asstring <> '') then
       formfundo.Color := StringToColor(QueryOperadorAuxCor.asstring)
     else
     formfundo.Color := clBackground;
   end;

end;

procedure TFormSeletor.FormActivate(Sender: TObject);
begin
    if FormFundo.MDIChildCount <> 0 then
       exit;

     GetDir(0, DiretorioCorrente);
//     DiretorioCorrenteBackup := DiretorioCorrente;
end;


procedure TFormSeletor.Cascata1Click(Sender: TObject);
begin
     FormFundo.Cascade;
end;

procedure TFormSeletor.LadoaLado1Click(Sender: TObject);
begin
     FormFundo.Tile;
end;

procedure TFormSeletor.MinimizeTodas1Click(Sender: TObject);
var
  I: Integer;
begin
  with FormFundo do
    for I := MDIChildCount - 1 downto 0 do
      MDIChildren[I].WindowState := wsMinimized;
end;

procedure TFormSeletor.CalculadoraClick(Sender: TObject);
begin
     WinExec('Calc.exe', SW_SHOWNA);
     FmCadMensagens := TFmCadMensagens.create(self);
     FmCadMensagens.ShowModal;
     FmCadMensagens.Free;
end;

procedure TFormSeletor.FecharTodas1Click(Sender: TObject);
var J: Integer;
begin
  with FormFundo do
    for J := MDIChildCount - 1 downto 0 do
      MDIChildren[J].Close;
end;

procedure TFormSeletor.Minimizar1Click(Sender: TObject);
begin
   Application.Minimize;
end;

procedure TFormSeletor.FormResize(Sender: TObject);
begin
     if WindowState = wsMinimized then
        FormFundo.WindowState := wsMinimized
     else
       if WindowState = wsNormal then
          FormFundo.WindowState := wsNormal;
end;

procedure TFormSeletor.EfetuarLogonClick(Sender: TObject);
begin
    Application.CreateForm(TFormSenha, FormSenha);
    FormSenha.ShowModal;
     with QueryPermissoes do
       begin
         Close;
         ParamByName('Operador').asInteger := Senha.Codigo_Operador;
         Open;
       end;

     if FormSeletor.Menu = MainMenu1 then
     begin
        DesabilitaSeletor;
        MontaSeletor;
     end
     else
     begin
        DesabilitaMenu;
        MontaMenu;
     end;

    QueryPermissoes.Close;
    FormSenha.Free;
end;

procedure TFormSeletor.FormShow(Sender: TObject);
Var VerExe, VerBco : real;
begin
//   if (FormSenha.EditUsuario.Text = 'ENIO') then
//      showMessage('Explicar para Kelly que deve ser cadastrado as ocorrencias do banco real e CEF também no cadastro diversos/ocorrencias solicitar ao banco');
   FormSeletor.Width := Formfundo.Width;
   try
      if (FormSenha.EditUsuario.Text = 'ENIO') and
         (dm.ExecutaComando('select count(*) q from erro_atualizacao where revisada = 0','q') <> '0') then
      begin
         FmErroAtualizacao := TFmErroAtualizacao.create(self);
         FmErroAtualizacao.ShowModal;
         FmErroAtualizacao.Free;
      end;

   except;
   end;
   Image1.visible := false;
   PanelSeletor.visible := false;
   if Uppercase(copy(GetNmMaquina,1,11)) = 'ANALISTA_02' then
   begin
      Image1.visible := false;
      Image2.visible := false;
      PanelSeletor.visible := false;
   end;

   if FormFundo.Timer2.Enabled then // Significa que está em prototipo
   begin
      ToolBar1.Flat := False;
      Caption := 'Controle Administrativo     ' + 'Operador : ( ' + Senha.FormSenha.EditUsuario.Text + ' )'
        + '   Logon ' + DateToStr(dm.Now) + ' ' + TimeToStr(dm.Now)  + '   Base : ( ' + Senha.FormSenha.ComboBoxBanco.Text + ' )' + ' - "P R O T Ó T I P O "';

   end
   else
      Caption := 'Controle Administrativo     ' + 'Operador : ( ' + Senha.FormSenha.EditUsuario.Text + ' )'
            + '   Logon ' + DateToStr(dm.Now) + ' ' + TimeToStr(dm.Now)  + '   Base : ( ' + Senha.FormSenha.ComboBoxBanco.Text + ' )';

   try
      Caption := Caption +' versão : ' + GetBuildInfo;
   except;
   end;

   // Verifica versão do programa com o banco de dados

   if ParamStr(1) <> 'D' then
     try
        VerExe := StrToFloat(TiraChar(GetBuildInfo,'.'));
        VerBco := StrToFloat(TiraChar(dm.Executacomando('select versao v from preferencia','v'),'.'));

        if VerExe <> VerBco then
        begin
          repeat until
             Application.MessageBox(Pchar('                 A T E N Ç Ã O  !' + #13 + #13 +
           ' A versão do programa está desatualizada! '    + #13 + #13 +
           ' Versão atual           : ' + GetBuildInfo + #13 +
           ' Versão solicitada   : ' + dm.Executacomando('select versao v from preferencia','v') +
            #13 + 'Deseja continuar?') ,
           'Alerta',MB_YesNo  + MB_DEFBUTTON2) = Idyes;


           if AtualizaBancodeDadosNovaVerso1.enabled then
           begin
              if (VerExe > VerBco) then
              begin
                 if (Application.MessageBox('Deseja executar a rotina "Atualiza DB" agora?','Rotina de atualiza banco de dados',MB_YesNo) = IdYes) then
                    AtualizaDB1Click(Sender);
              end
              else ShowMessage('Versão do executável menor que a versão do banco de dados');
           end
           else ShowMessage('sem permissão para atualizar banco de dados');


           // verifica se a versão foi atualizada

           VerExe := StrToFloat(TiraChar(GetBuildInfo,'.'));
           VerBco := StrToFloat(TiraChar(dm.Executacomando('select versao v from preferencia','v'),'.'));

           if (VerExe <> VerBco) and (dm.GetParam('EXIVER') = 'S') then
           begin
              ShowMessage('Atualize a versão deste computador para poder entrar no sistema!');
              if DebugHook = 0 then
                 Application.terminate;
           end;
        end

     except
     end;

   if AniversariantesportempodeEmpresa.Enabled then
      dm.AvisaSobreTrocaDeTabelasDentisa;
   if ProtticosAniversariantesportempodeempresa1.Enabled then
      dm.AvisaSobreTrocaDeTabelasProtetico;
end;

procedure TFormSeletor.MontaMenuDinamico;
var NewItem: TMenuItem;
begin
   dm.ExecutaComando('select * from menu_dinamico where cd_usuario = ' + IntToStr(Senha.Codigo_Operador)+ ' order by sequencia','cd_usuario');
   MainMenu1.Items[09].Clear;
   While not Dm.QueryGlobal.Eof do
   begin
     NewItem := TMenuItem.Create(Self);
     NewItem.Caption :=  Dm.QueryGlobal.Fieldbyname('nm_menu').asString;
     NewItem.Tag := Dm.QueryGlobal.Fieldbyname('cd_script').AsInteger;
     NewItem.OnClick := ExecutacomandoClick;
     MainMenu1.Items[09].Add(NewItem);
     dm.QueryGlobal.next;
   end;
end;

procedure TFormSeletor.MontaSeletor;
begin
     try
        MontaMenuDinamico;
     except
     end;
     with QueryPermissoes do
       begin
         First;
         while not eof do
            begin
              if QueryPermissoesCodigo_Grupo.asInteger = 1 then   // Opções
                 begin
                   case QueryPermissoesCodigo_Procedimento.asInteger of
                      1 : Cadastros.Enabled := True;
                      2 : Servicos.Enabled := True;
                      3 : PrecosContratante.Enabled := True;
                      4 : PrecosPlano.Enabled := True;
                      5 : PrecosGrupo.Enabled := True;
                      6 : CoberturaContratante.Enabled := True;
                      7 : CoberturaPlano.Enabled := True;
                      8 : CoberturaGrupoContratante.Enabled := True;
                      9 : CoberturaProcedimento.Enabled := True;
                      10 : Contratos.Enabled := True;
                      11 : Dentistas.Enabled := True;
                      12 : Proteticos.Enabled := True;
                      13 : TabelaProcedimento.Enabled := True;
                      14 : Operadores.Enabled := True;
                      15 : TabelaPrecoPlano.Enabled := True;
                      16 : PreospUsurio1.Enabled := True;
                      17 : Verificausuriossemmensalidade1.Enabled := True;
                      18 : Parametros1.Enabled := True;
                      19 : ConsultaPagamentoDentista1.Enabled := True;
                      20 : begin
                              EfetivaPagtoDentista1.Enabled := True;
                              EfetivaoPagtoProttico1.Enabled := True;
                           end;
                   end;
                   case QueryPermissoesCodigo_SubProcedimento.asInteger of
                      101 : Contratantes.Enabled := True;
                      102 : RelatorioContratantes.Enabled := True;
                      103 : RelatorioCancelados.Enabled := True;
                      104 : RelatorioAniversariantes.Enabled := True;
                      105 : begin
                               RelatorioContratosCanceladosRepresentante.Enabled := True;
                               RelatriodeUsuriosCanceladosRepresentante1.Enabled := True;
                            end;
                      106 : RelatorioContratosIncluidos.Enabled := True;
                      107 : RelatorioImpostoRenda.Enabled := True;
                      108 : RelatorioContratantesBairro.Enabled := True;
                      //109 : RelatorioContratosIncludosEnd.Enabled := True;
                      109 : RelatriodeContratantesInadimplentes.enabled := true; 
                      111 : CadastroDentista.Enabled := True;
                      112 : PagamentoDentista.Enabled := True;
                      113 : RelatorioPagamentoDentista.Enabled := True;
                      114 : RelatorioDentistas.Enabled := True;
                      121 : CadastroProtetico.Enabled := True;
                      122 : PagamentoProtetico.Enabled := True;
                      123 : RelatorioPagamentoProtetico.Enabled := True;
                      124 : RelatorioProteticos.Enabled := True;
                   end;
                 end;

              if QueryPermissoesCodigo_Grupo.asInteger = 2 then  // Orçamentos
                 begin
                   case QueryPermissoesCodigo_Procedimento.asInteger of
                      1 : Orcamentos.Enabled := True;
                      2 : Manutencao.Enabled := True;
                      3 : RelatoriosOrcamento.Enabled := True;
                      4 : ExcluirOramentos.Enabled := true;
                      5 : AlterarStatusOrcamento1.Enabled := true;
                   end;
                   case QueryPermissoesCodigo_SubProcedimento.asInteger of
                      31 : OrcamentosPeriodo.Enabled           := True;
                      32 : OrcamentosFinalizados.Enabled       := True;
                      33 : RelatorioManutencoes.Enabled        := True;
                      34 : OrcamentosSIP.Enabled               := True;
                      36 : RelatorioProcedimentosPagos.Enabled := True;
                      37 : OrcamentosFinalizadosAtraso.Enabled := True;
                   end;
                 end;

              if QueryPermissoesCodigo_Grupo.asInteger = 3 then  // Financeiro
                 begin
                   case QueryPermissoesCodigo_Procedimento.asInteger of
                      1 : ContasReceber.Enabled := True;
                      2 : ContasPagar.Enabled := True;
                      3 : ConsultaTitulos.Enabled := True;
                      4 : GerenciadorFaturamento.Enabled := True;
                      5 : RelatoriosFinanceiro.Enabled := True;
                      6 : ContasBancarias.Enabled := True;
                      7 : ConferenciaFaturamento.Enabled := True;
                      8 : FormadePagtoBOLETOCNAB1.Enabled := true;
                      9 : BaixasPorAtendente1.Enabled := true;
                     10 : EstatsticaGerencialFaturamento1.Enabled := true;
                     11 : TtulosBaixadossemRecibo1.enabled := true;
                     12 : CancelarRecibo1.enabled := true;
                     13 : GeraAutorizaoDbAutomticoFEBRABAN1501.enabled := true;
                     15 : GerarFaturamentoindividual.enabled := true;
                   end;
                   case QueryPermissoesCodigo_SubProcedimento.asInteger of
                      11 : TitulosAberto.Enabled := True;
                      12 : TitulosBaixados.Enabled := True;
                      13 : Relaciona.Enabled := True;
                      14 : BaixaBanco.Enabled := True;
                      15 : RelatoriosReceber.Enabled := True;
                      21 : Fornecedores.Enabled := True;
                      22 : TitulosAberto2.Enabled := True;
                      23 : TitulosBaixados2.Enabled := True;
                      24 : RelatoriosPagar.Enabled := True;
                      //51 : Contas.Enabled := True;
                      52 : RelatorioManutencao.Enabled := True;
                      53 : ManutencaoPeriodoNovo.Enabled := True;
                   end;
                 end;


              if QueryPermissoesCodigo_Grupo.asInteger = 4 then   // Vendas
                 begin
                   case QueryPermissoesCodigo_Procedimento.asInteger of
                      1 : Representantes.Enabled := True;
                      2 : Vendedores.Enabled := True;
                      3 : RelatoriosVendas.Enabled := True;
                   end;
                   case QueryPermissoesCodigo_SubProcedimento.asInteger of
                      11 : CadastroRepresentantes.Enabled := True;
                      12 : RelatorioRepresentantes.Enabled := True;
                      21 : CadastroVendedor.Enabled := True;
                      22 : RelatorioVendedor.Enabled := True;
                      31 : Comissao.Enabled := True;
                      32 : VendasAnalitico.Enabled := True;
                      33 : VendasSintetico.Enabled := True;
                      34 : RepresentanteContratante.Enabled := True;
                      35 : VendasVencimento.Enabled := True;
                      36 : VendasAnaliticoVencimento.Enabled := True;
                      37 : VendasAnalticoUsurio1.Enabled := True;
                   end;
                 end;

              if QueryPermissoesCodigo_Grupo.asInteger = 5 then  // Relatórios
                 begin
                   case QueryPermissoesCodigo_Procedimento.asInteger of
                      1 : Carteirinhas.Enabled := True;
                      2 : EtiquetasContratante.Enabled := True;
                      3 : EtiquetasDentista.Enabled := True;
                      4 : EtiquetasProtetico.Enabled := True;
                      6 : EndereoDentistas1.enabled := true;
                   end;
                   case QueryPermissoesCodigo_SubProcedimento.asInteger of
                      11 : Individual.Enabled := True;
                      12 : CarteirinhaContratante.Enabled := True;
                   end;
                 end;

              if QueryPermissoesCodigo_Grupo.asInteger = 6 then // Utilitários
                 begin
                   case QueryPermissoesCodigo_Procedimento.asInteger of
                      1 : Preferencias.Enabled := True;
                      2 : ProcessaMensalidades.Enabled := True;
                      3 : DesativaInadinplentes.Enabled := True;
                      4 : AtualizaDB1.Enabled := True;
                      5 : Executacomando.Enabled := True;
                   end;
                 end;
              if QueryPermissoesCodigo_Grupo.asInteger = 7 then  // ANS
                 begin
                   case QueryPermissoesCodigo_Procedimento.asInteger of
                      1 : DiopsSIP.Enabled := True;
                      2 : TaxaSuplementar.Enabled := True;
                      3 : OrcamentosSIP.Enabled := True;
                      4 : OrcamentosTotal.Enabled := True;
                      5 : SucepArquivo.Enabled := True;
                      6 : CancelaUltimoSucep.Enabled := True;
                      7 : UsuriosXServios1Veznoano1.enabled := true;
                      8 : QtdeServioPagonoPerodo1.enabled := true;
                   end;
                 end;
              if QueryPermissoesCodigo_Grupo.asInteger = 8 then  // Odontograma
                 begin
                   case QueryPermissoesCodigo_Procedimento.asInteger of
                      1 : Parmetros1.Enabled := true;
                      2 : Critrios1.Enabled := true;
                      3 : Pacotes1.Enabled := true;
                      4 : CritServioporIdade1.Enabled := true;
                      5 : Consultas1.Enabled := true;
                   end;
                 end;


              Next;
            end;
          Close;
       end;
//    HabilitaMenuPorNome;
   InibeMenusDesativados;
end;

procedure TFormSeletor.MontaMenu;
var I : Word;
   aux : currency;
begin
   try
        //tabelas permissao_funcionario pf, permissao_grupo, menu_disponivel
      dm.ADOQueryMontaMenu.Close;
      dm.ADOQueryMontaMenu.sql[14] := IntToStr(Senha.Codigo_Operador);
      dm.ADOQueryMontaMenu.sql[32] := dm.ADOQueryMontaMenu.sql[14];
//      dm.ADOQueryMontaMenu.sql[32] := 'dsdsds=dde11 if';
      dm.ADOQueryMontaMenu.open;

   except
     AtualizaDB1Click(AtualizaDB1);
     OperadoresClick(AtualizaDB1);

   end;

   for I := 0 to ComponentCount - 1 do
      if (Components[I] is TMenuItem) and ((Components[I] as TMenuItem).enabled = false) then
      begin
         if dm.ADOQueryMontaMenu.Locate('nm_menu',(Components[I] as TMenuItem).Name,[]) then
            (Components[I] as TMenuItem).enabled := true;
      end;
   Contratante1.Enabled := Cadastro3.Enabled;
   Oramentos1.Enabled := Oramentos5.Enabled;
   GerenciamentodeLEADS1.Enabled := true;
   Agenda1.Enabled := ToolButtonAgenda.Enabled;
   Relatrios1.Enabled := ToolButtonRelatorios.Enabled;
   Ttulosemaberto1.Enabled := tulosemAberto1.Enabled;
   TtulosCancelados1.Enabled := tulosCancelados1.Enabled;
   MotivosdeGlosas.Enabled := PagamentoDentista1.Enabled;
   RelatriodeGlosas.Enabled := PagamentoDentista1.Enabled;
   RelatriodeGlosaPorDentistaPerodo1.Enabled := PagamentoDentista1.Enabled;
   RelatriodeRecursodeGlosa1.Enabled:=PagamentoDentista1.Enabled;
   RelatrioPagamentoDentistaPorperodo1.Enabled := RelatrioPagamentoDentista1.Enabled;
   ManutenesAtivasdeUsuriosExcludos1.Enabled := RelatrioManutenoEmatraso1.Enabled;
   OramentosemtratamentodeUsuriosexcludos1.Enabled := OramentosPagos1.enabled;
   RelatriodeManutenesqueiniciarameterminaramemperdo1.Enabled := OramentosPagos1.enabled;
   ComissoesPorPerododataIncUsu.Enabled := ComissesPorPerodo1.Enabled;
   QtdeUsurioFsicaJurdicaatdeterminadadata1.Enabled := Aniversariantes1.Enabled;
   ContratantesExcludos1.Enabled := Aniversariantes1.Enabled;
   DentistaXCidade1.Enabled := EndereoDentista1.Enabled;
   GrficoPorVendedor1.Enabled := GrficoInclusesXExcluses2.Enabled;
   RelatriodeDentista1.Enabled := RelatriodeGlosaPorDentistaPerodo1.Enabled;
   GrficoCancelamentoPorVendedor1.Enabled := GrficoPorVendedor1.Enabled;
   GrfioPorRepresentante1.Enabled := GrficoPorVendedor1.Enabled;
   GrficoDentistaXProtticoXManutena1.Enabled := CadastrodeGrupodeOperadores1.Enabled;
   DescontoProgressivoporIdade1.Enabled := DescontoXNUsurios1.Enabled;

   //permissões permissoes permissao permissão
   //ImprimirViaConvnioemlote1.Enabled := ExcluirOramentos1.Enabled;



   //verifica se esta na data de avisar sobre a troca de tabelas do dentista

end;

procedure TFormSeletor.InibeMenusDesativados;
var I : Word;
begin

   for I := 0 to ComponentCount - 1 do
      if (Components[I] is TMenuItem) then
         (Components[I] as TMenuItem).Visible := (dm.execmd('select count(*) q from menus_Desativados where NmOpcao = ''' +    TiraChar((Components[I] as TMenuItem).Caption,'&') + '''','q') = '0');

end;
procedure TFormSeletor.DesabilitaSeletor;
begin
    AlterarStatusOrcamento1.Enabled := false;
    EndereoDentistas1.enabled := false;
    RelatriodeContratantesInadimplentes.enabled := false;
    UsuriosXServios1Veznoano1.enabled := false;
    QtdeServioPagonoPerodo1.enabled := false;
    GeraAutorizaoDbAutomticoFEBRABAN1501.enabled := false;
    EfetivaPagtoDentista1.Enabled := false;
    EfetivaoPagtoProttico1.Enabled := false;

    CancelarRecibo1.enabled := false;
    TtulosBaixadossemRecibo1.enabled := false;
    PreospUsurio1.Enabled := false;
    Verificausuriossemmensalidade1.Enabled := false;
     Cadastros.Enabled := False;
     Servicos.Enabled := False;
     PrecosContratante.Enabled := False;
     PrecosPlano.Enabled := False;
     PrecosGrupo.Enabled := False;
     CoberturaContratante.Enabled := False;
     CoberturaPlano.Enabled := False;
     CoberturaGrupoContratante.Enabled := False;
     CoberturaProcedimento.Enabled := False;
     Contratos.Enabled := False;
     Dentistas.Enabled := False;
     Proteticos.Enabled := False;
     Orcamentos.Enabled := False;
     ExcluirOramentos.Enabled := False;
     TabelaProcedimento.Enabled := False;
     Operadores.Enabled := False;
     Contratantes.Enabled := False;
     RelatorioContratantes.Enabled := False;
     RelatorioCancelados.Enabled := False;
     RelatorioAniversariantes.Enabled := False;
     CadastroDentista.Enabled := False;
     ConsultaPagamentoDentista1.Enabled := False;
     PagamentoDentista.Enabled := False;
     RelatorioPagamentoDentista.Enabled := False;
     CadastroProtetico.Enabled := False;
     PagamentoProtetico.Enabled := False;
     RelatorioPagamentoProtetico.Enabled := False;
     Orcamentos.Enabled := False;
     Manutencao.Enabled := False;
     RelatoriosOrcamento.Enabled := False;
     OrcamentosPeriodo.Enabled := False;
     OrcamentosFinalizados.Enabled := False;
     OrcamentosFinalizadosAtraso.Enabled := False;
     ContasReceber.Enabled := False;
     ContasPagar.Enabled := False;
     ConsultaTitulos.Enabled := False;
     GerenciadorFaturamento.Enabled := False;
     GerarFaturamentoindividual.enabled := false;
     RelatoriosFinanceiro.Enabled := False;
     TitulosAberto.Enabled := False;
     TitulosBaixados.Enabled := False;
     Relaciona.Enabled := False;
     BaixaBanco.Enabled := False;
     Fornecedores.Enabled := False;
     TitulosAberto2.Enabled := False;
     //Contas.Enabled := False;
     RelatorioManutencao.Enabled := False;
     Representantes.Enabled := False;
     Vendedores.Enabled := False;
     RelatoriosVendas.Enabled := False;
     Comissao.Enabled := False;
     VendasAnalitico.Enabled := False;
     VendasAnalticoUsurio1.Enabled := False;
     VendasSintetico.Enabled := False;
     RepresentanteContratante.Enabled := False;
     VendasVencimento.Enabled := False;
     VendasAnaliticoVencimento.Enabled := False;
     Carteirinhas.Enabled := False;
     EtiquetasContratante.Enabled := False;
     EtiquetasDentista.Enabled := False;
     EtiquetasProtetico.Enabled := False;
     Individual.Enabled := False;
     CarteirinhaContratante.Enabled := False;
     Preferencias.Enabled:= False;
     RegistrodoSoftware.Enabled := False;
     ProcessaMensalidades.Enabled := False;
     RelatorioContratosCanceladosRepresentante.Enabled := False;
     RelatriodeUsuriosCanceladosRepresentante1.Enabled := false;
     RelatorioManutencoes.Enabled := False;
     RelatorioContratosIncluidos.Enabled := False;
     DesativaInadinplentes.Enabled := False;
     TabelaPrecoPlano.Enabled := False;
     DiopsSIP.Enabled := False;
     TaxaSuplementar.Enabled := False;
     OrcamentosSIP.Enabled := False;
     OrcamentosTotal.Enabled := False;
     SucepArquivo.Enabled := False;
     TitulosBaixados2.Enabled := False;
     RelatoriosReceber.Enabled := False;
     RelatoriosPagar.Enabled := False;
     CancelaUltimoSucep.Enabled := False;
     RelatorioDentistas.Enabled := False;
     RelatorioProteticos.Enabled := False;
     CadastroVendedor.Enabled := False;
     RelatorioVendedor.Enabled := False;
     CadastroRepresentantes.Enabled := False;
     RelatorioRepresentantes.Enabled := False;
     RelatorioImpostoRenda.Enabled := False;
     RelatorioContratantesBairro.Enabled := False;
     RelatorioContratosIncludosEnd.Enabled := False;
     ContasBancarias.Enabled := False;
     RelatorioProcedimentosPagos.Enabled := False;
     AtualizaDB1.Enabled := False;
     Executacomando.Enabled := False;
     Parmetros1.Enabled := False;
     Critrios1.Enabled := False;
     Pacotes1.Enabled := False;
     CritServioporIdade1.Enabled := False;
     Consultas1.Enabled := False;
     Parametros1.Enabled := False;
     ConferenciaFaturamento.Enabled := false;
     FormadePagtoBOLETOCNAB1.Enabled := false;
     BaixasPorAtendente1.Enabled := false;
     EstatsticaGerencialFaturamento1.Enabled := false;

end;

procedure TFormSeletor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryPermissoes.Close;
     FormFundo.close;
end;

procedure TFormSeletor.PreferenciasClick(Sender: TObject);
begin
     Application.CreateForm(TFormPreferencias, FormPreferencias);
     FormPreferencias.ShowModal;
     FormPreferencias.Free;
end;

procedure TFormSeletor.RegistrodoSoftwareClick(Sender: TObject);
begin
   //  Application.CreateForm(TFormRegistro, FormRegistro);
    // FormRegistro.ShowModal;
    // FormRegistro.Free;
end;

procedure TFormSeletor.TitulosAbertoClick(Sender: TObject);
begin
//    if not ContasReceber.Enabled then
//        exit;
     dm.ADOConn.Close;
     dm.ADOConn.open;
     FormFundo.DatabaseMultiOdonto.close;
     FormFundo.DatabaseMultiOdonto.open;
     FormTituloReceber := TFormTituloReceber.Create(Self);
     FormTituloReceber.ShowModal;
     FormTituloReceber.free;
     
end;

procedure TFormSeletor.BaixaBancoClick(Sender: TObject);
begin
     Application.CreateForm(TFormBaixaTitulo, FormBaixaTitulo);
     FormBaixaTitulo.ShowModal;
     FormBaixaTitulo.Free;
end;

procedure TFormSeletor.GerenciadorFaturamentoClick(Sender: TObject);
begin
   FMUsuarioSemMens := TFMUsuarioSemMens.create(self);
   FMUsuarioSemMens.OnShow(sender);
   if not (FMUsuarioSemMens.Query1.Bof and FMUsuarioSemMens.Query1.Eof) then
   begin
      ShowMessage('Existe usuário que não possui valor mensalidade processo não permitido');
      FMUsuarioSemMens.ShowModal;
      exit;
   end;
      FMUsuarioSemMens.Free;
      Application.CreateForm(TFormInformacoes, FormInformacoes);
      if Informacoes.FormInformacoes.QueryPreferenciasMostrar_Informacoes.asBoolean then
         FormInformacoes.ShowModal;
      FormInformacoes.Free;

     Application.CreateForm(TFormGeraReceber, FormGeraReceber);
     FormGeraReceber.tag := (Sender as TMenuItem).Tag;
     if FormGeraReceber.tag = 10 then
        FormGeraReceber.caption := 'Central do Faturamento(Individual)';
     FormGeraReceber.ShowModal;

     FormGeraReceber.Free;
end;

procedure TFormSeletor.RelacionaClick(Sender: TObject);
begin
     Application.CreateForm(TFormFrancesa, FormFrancesa);
     FormFrancesa.ShowModal;
     FormFrancesa.Free;
end;

procedure TFormSeletor.FornecedoresClick(Sender: TObject);
begin
     FormFornecedor := TFormFornecedor.Create(Self);
     FormFornecedor.Show;
end;

procedure TFormSeletor.PrecosContratanteClick(Sender: TObject);
begin
     FormPrecoContratante := TFormPrecoContratante.Create(Self);
     FormPrecoContratante.Show;
end;

procedure TFormSeletor.TitulosAberto2Click(Sender: TObject);
begin
     FormTituloPagar := TFormTituloPagar.Create(Self);
     FormTituloPagar.Show;
end;

procedure TFormSeletor.ConsultaTitulosClick(Sender: TObject);
begin
     FormConsultaReceber := TFormConsultaReceber.Create(Self);
     FormConsultaReceber.Show;
end;

procedure TFormSeletor.TitulosBaixadosClick(Sender: TObject);
begin
     FormTituloBaixados := TFormTituloBaixados.Create(Self);
     FormTituloBaixados.BitBtnCanRec.Enabled :=  CancelarRecibo1.enabled;
     FormTituloBaixados.Show;
end;

procedure TFormSeletor.PrecosPlanoClick(Sender: TObject);
begin
     Application.CreateForm(TFormPrecoPlano, FormPrecoPlano);
     FormPrecoPlano.ShowModal;
     FormPrecoPlano.Free;
end;

procedure TFormSeletor.PrecosGrupoClick(Sender: TObject);
begin
     Application.CreateForm(TFormPrecoGrupo, FormPrecoGrupo);
     FormPrecoGrupo.ShowModal;
     FormPrecoGrupo.Free;
end;

procedure TFormSeletor.OperadoresClick(Sender: TObject);
begin
     Application.CreateForm(TFormUsuarios, FormUsuarios);
     FormUsuarios.ShowModal;
     FormUsuarios.Free;
end;

procedure TFormSeletor.ServicosClick(Sender: TObject);
begin
     Application.CreateForm(TFormServicos, FormServicos);
     FormServicos.ShowModal;
     FormServicos.Free;
end;

procedure TFormSeletor.VendasAnaliticoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelVendas, FormRelVendas);
     RelVendas.FormRelVendas.Tag := 0;
     FormRelVendas.ShowModal;
     FormRelVendas.Free;
end;

procedure TFormSeletor.ComissaoClick(Sender: TObject);
begin
     Application.CreateForm(TFmRelComissao, FmRelComissao);
     FmRelComissao.Tag := 4;
     FmRelComissao.ShowModal;
     FmRelComissao.Free;
end;

procedure TFormSeletor.ProcessaMensalidadesClick(Sender: TObject);
begin
     Application.CreateForm(TFormProcessa, FormProcessa);
     FormProcessa.ShowModal;
     FormProcessa.Free;
end;

procedure TFormSeletor.OrcamentosPeriodoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelOrcamentos, FormRelOrcamentos);
     RelOrcamentos.FormRelOrcamentos.Tag := 1;
     FormRelOrcamentos.ShowModal;
     FormRelOrcamentos.Free;
end;

procedure TFormSeletor.ManutencaoClick(Sender: TObject);
begin
     Application.CreateForm(TFormManutencoes, FormManutencoes);
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     Application.CreateForm(TFormPesquisaDentistas, FormPesquisaDentistas);
     FormManutencoes.ShowModal;
     FormManutencoes.Free;
end;

procedure TFormSeletor.IndividualClick(Sender: TObject);
begin
     Application.CreateForm(TFormCarteirinhaIndividual, FormCarteirinhaIndividual);
     FormCarteirinhaIndividual.ShowModal;
     FormCarteirinhaIndividual.Free;
end;

procedure TFormSeletor.ContasClick(Sender: TObject);
begin
//     if not Contas.Enabled then
//        exit;
     Application.CreateForm(TFormRelatoriosReceber, FormRelatoriosReceber);
     FormRelatoriosReceber.ShowModal;
     FormRelatoriosReceber.Free;
end;

procedure TFormSeletor.RelatorioManutencaoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelManutencao, FormRelManutencao);
     RelManutencao.FormRelManutencao.Tag := 0;
     FormRelManutencao.ShowModal;
     FormRelManutencao.Free;
end;

procedure TFormSeletor.EtiquetasContratanteClick(Sender: TObject);
var
    arq : textFile;
    arqBat,arqEtiq,linha1,linha2,linha3,linha4,linha5: string;

begin
   FmSelContrEtiqCobr := TFmSelContrEtiqCobr.Create(Self);
   FmSelContrEtiqCobr.tag := 2;
   //FmSelContrEtiqCobr.Label2.caption := 'Cód. Usuário';
   FmSelContrEtiqCobr.ShowModal;
   if FmSelContrEtiqCobr.tag = 1 then
   begin
      FmFrEtiquetas := TFmFrEtiquetas.create(self);
      FmFrEtiquetas.RLDetailGrid1.Height := strToInt(dm.GetParam('ALETQ'));
      FmFrEtiquetas.RLReport1.Margins.TopMargin := strToInt(dm.GetParam('MSETQ'));
      FmFrEtiquetas.RLReport1.PageSetup.PaperHeight := StrToFloat(dm.GetParam('APETQ'));

      FmFrEtiquetas.DsEtiq.DataSet := FmFrEtiquetas.sp_listaEtiqContrat;
      FmFrEtiquetas.sp_listaEtiqContrat.Close;
      FmFrEtiquetas.sp_listaEtiqContrat.Parameters[1].value := FmSelContrEtiqCobr.VInstrucaoSql;
      FmFrEtiquetas.sp_listaEtiqContrat.open;

      //FmFrEtiquetas.RLReport1.PreviewModal;

      arqEtiq := 'c:\temp\etiqContrat' + FormatDatetime('ddmmyyhhmmss',dm.now) + '.txt';
      AssignFile(arq,arqEtiq);
      reWrite(arq);
      writeln(arq,'');// pula primeira etiqueta
      writeln(arq,'');
      writeln(arq,'');
      writeln(arq,'');
      writeln(arq,'');
      writeln(arq,'');
      writeln(arq,'');



      while(not FmFrEtiquetas.sp_listaEtiqContrat.eof) do
      begin
          linha1 := Rpad(FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('cdUsuario').asstring + '-' + copy(FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('nome').asstring,1,30),70,' ');
          linha2 := Rpad(FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('endereco').asstring + ', N.' + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('numero').asstring,70,' ');
          linha3 := Rpad(FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('compl').asstring,70,' ');
          linha4 := Rpad(FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('bairro').asstring + ' CEP: ' + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('cep').asstring,70,' ');
          linha5 := Rpad(FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('cidade').asstring + ' - ' + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('estado').asstring,70,' ');
          FmFrEtiquetas.sp_listaEtiqContrat.next;
          if not FmFrEtiquetas.sp_listaEtiqContrat.eof then
          begin
             linha1 := linha1 + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('cdUsuario').asstring + '-' + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('nome').asstring;
             linha2 := linha2 + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('endereco').asstring + ', N.' + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('numero').asstring;
             linha3 := linha3 + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('compl').asstring;
             linha4 := linha4 + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('bairro').asstring + ' CEP: ' + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('cep').asstring;
             linha5 := linha5 + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('cidade').asstring  + ' - ' + FmFrEtiquetas.sp_listaEtiqContrat.FieldByName('estado').asstring;
          end;


          writeln(arq,'');
          writeln(arq,dm.Tira_acento(linha1));
          writeln(arq,dm.Tira_acento(linha2));
          writeln(arq,dm.Tira_acento(linha3));
          writeln(arq,dm.Tira_acento(linha4));
          writeln(arq,dm.Tira_acento(linha5));
          writeln(arq,'');
          writeln(arq,'');
          writeln(arq,'');


          FmFrEtiquetas.sp_listaEtiqContrat.next;
      end;
      CloseFile(arq);
      if application.MessageBox('Verifique se a impressora está configurada em modo Draft Condensed e se o papel está posicionado corretamente', 'alerta', MB_OKCANCEL + MB_DEFBUTTON2 ) <> MrOk then
      begin
         DeleteFile(arqEtiq);
         FmFrEtiquetas.free;
         exit;
      end;

      arqBat := 'c:\temp\etiqContrat' + FormatDatetime('ddmmyyhhmmss',dm.now) + '.bat';
      AssignFile(arq,arqBat);
      ReWrite(arq);
      Writeln(arq,'copy ' + arqEtiq + ' \\srvfwl\epsonlx-' );
      Writeln(arq,'pause');

      CloseFile(arq);
      WinExec(pchar(arqBat), SW_SHOWNORMAL);
      //DeleteFile(arqEtiq);
      //DeleteFile(arqBat);
      //FmFrEtiquetas.free;
   end

{   FmSelContrEtiqCobr := TFmSelContrEtiqCobr.Create(Self);
   FmSelContrEtiqCobr.tag := 2;
   FmSelContrEtiqCobr.ShowModal;
   if FmSelContrEtiqCobr.tag = 1 then
   begin
      FormFundo.QueryGenerica.Close;
      FormFundo.QueryGenerica.Sql.Clear;
      FormFundo.QueryGenerica.Sql.add('select * from contratante where codigo in ('
      + FmSelContrEtiqCobr.VInstrucaoSql + ')');
      //memo1.Lines.Add(FormFundo.QueryGenerica.Text);
      FormFundo.QueryGenerica.Open;
      GeraEtiquetas(FormFundo.QueryGenerica,False);
   end}

//     Application.CreateForm(TFormEtiquetas, FormEtiquetas);
//     FormEtiquetas.ShowModal;
//     FormEtiquetas.Free;
end;

procedure TFormSeletor.EtiquetasDentistaClick(Sender: TObject);
begin
     Application.CreateForm(TFormEtiquetasDentistas, FormEtiquetasDentistas);
     FormEtiquetasDentistas.ShowModal;
     FormEtiquetasDentistas.Free;
end;

procedure TFormSeletor.EtiquetasProteticoClick(Sender: TObject);
begin
     Application.CreateForm(TFormEtiquetasProteticos, FormEtiquetasProteticos);
     FormEtiquetasProteticos.ShowModal;
     FormEtiquetasProteticos.Free;
end;

procedure TFormSeletor.CadastroDentistaClick(Sender: TObject);
begin
     FormDentistas := TFormDentistas.Create(Self);
     FormDentistas.Show;
end;

procedure TFormSeletor.PagamentoDentistaClick(Sender: TObject);
begin
     Application.CreateForm(TFormPagDentista, FormPagDentista);
     FormPagDentista.ShowModal;
     FormPagDentista.Free;
end;

procedure TFormSeletor.RelatorioPagamentoDentistaClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelPagamentos, FormRelPagamentos);
     FormRelPagamentos.ShowModal;
     FormRelPagamentos.Free;
end;

procedure TFormSeletor.ContratantesClick(Sender: TObject);
begin
     if FormSeletor.Menu = MainMenu1 then
     begin
        if not Contratantes.Enabled then
          exit;
     end
     else
     begin
      if not Cadastro3.Enabled then
         exit;
     end;

     Application.CreateForm(TFormContratante, FormContratante);
     Application.CreateForm(TFormOrcamentos, FormOrcamentos);
     Application.CreateForm(TFormPesquisaPlanos, FormPesquisaPlanos);
     Application.CreateForm(TFormPesquisaVendedor, FormPesquisaVendedor);
     FormContratante.ShowModal;
     //ta dando erro primary key ao  gravar TR_U_LOG_USUARIO
     FreeAndNil(FormContratante);
     FreeAndNil(FormOrcamentos);
     //FormContratante.Free;
     FormPesquisaPlanos.QueryPlanos.open;
     FormPesquisaPlanos.QueryPlanos.Close;
     FormPesquisaPlanos.Query50.Close;

     FormPesquisaPlanos.Free;
     FormPesquisaVendedor.QueryVendedores.close;
     FormPesquisaVendedor.Query50.Close;
     FormPesquisaVendedor.Free;
end;

procedure TFormSeletor.RelatorioContratantesClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelContratantePlano, FormRelContratantePlano);
     FormRelContratantePlano.ShowModal;
     FormRelContratantePlano.Free;
end;

procedure TFormSeletor.OrcamentosClick(Sender: TObject);
var NrOrc : string;

begin
     if FormSeletor.Menu = MainMenu1 then
     begin
        if not Orcamentos.Enabled then
          exit;
     end
     else
     begin
       if not Oramentos5.enabled then
          exit;
     end;
     Application.CreateForm(TFormContratante, FormContratante);
     Application.CreateForm(TFormOrcamentos, FormOrcamentos);
     //FormOrcamentos.BitBtnPgDentista.enabled := ConsultaPagamentoDentista1.Enabled;
     FormOrcamentos.Tag := 0;
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     Application.CreateForm(TFormPesquisaDentistas, FormPesquisaDentistas);
     FormOrcamentos.ShowModal;
     // clicou no ataho para alterar status

      if FormOrcamentos.AtalhoAltSt then
     begin
        NrOrc := FormOrcamentos.NrOrcamento;
        //FormOrcamentos.Free;
        FreeAndNil(FormOrcamentos);
        dm.AlteraStatusOrc(NrOrc);

        Application.CreateForm(TFormOrcamentos, FormOrcamentos);
        FormOrcamentos.GroupBoxProcura.Visible := true;
        FormOrcamentos.EditProcura.Text := NrOrc;
        FormOrcamentos.EditProcuraExit(FormOrcamentos);
        FormOrcamentos.GroupBoxProcura.Visible := false;
        //FormOrcamentos.BitBtnPgDentista.enabled := ConsultaPagamentoDentista1.Enabled;
        FormOrcamentos.Tag := 0;
        Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
        Application.CreateForm(TFormPesquisaDentistas, FormPesquisaDentistas);
        FormOrcamentos.ShowModal;
     end
     else
     begin
        FreeAndNil(FormOrcamentos);
        FreeAndNil(FormContratante);
        //FormOrcamentos.Free;
        //Application.CreateForm(TFormContratante, FormContratante);
     end;
end;

procedure TFormSeletor.RelatorioCanceladosClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelCancelamento, FormRelCancelamento);
     FormRelCancelamento.Tag := 0;
     FormRelCancelamento.ShowModal;
     FormRelCancelamento.Free;
end;

procedure TFormSeletor.PagamentoProteticoClick(Sender: TObject);
begin
     Application.CreateForm(TFormPagProtetico, FormPagProtetico);
     FormPagProtetico.ShowModal;
     FormPagProtetico.Free;
end;

procedure TFormSeletor.CadastroProteticoClick(Sender: TObject);
begin
     FormProteticos := TFormProteticos.Create(Self);
     FormProteticos.Show;
end;

procedure TFormSeletor.RelatorioPagamentoProteticoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelPagamentosProteticos, FormRelPagamentosProteticos);
     FormRelPagamentosProteticos.ShowModal;
     FormRelPagamentosProteticos.Free;
end;

procedure TFormSeletor.Sobre1Click(Sender: TObject);
begin
     Application.CreateForm(TFormSobre, FormSobre);
     FormSobre.ShowModal;
     FormSobre.Free;
end;

procedure TFormSeletor.BaixaAutomticaBanespa1Click(Sender: TObject);
begin
     Application.CreateForm(TFormBaixaBanespa, FormBaixaBanespa);
     FormBaixaBanespa.ShowModal;
     FormBaixaBanespa.Free;
end;

procedure TFormSeletor.RelatorioAniversariantesClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelAniversariantes, FormRelAniversariantes);
     FormRelAniversariantes.ShowModal;
     FormRelAniversariantes.Free;
end;

procedure TFormSeletor.ToolButtonAgendaClick(Sender: TObject);
begin
     Application.CreateForm(TFormAgenda, FormAgenda);
     FormAgenda.ShowModal;
     FormAgenda.Free;
end;

procedure TFormSeletor.Sinistralidade1Click(Sender: TObject);
begin
   Application.CreateForm(TFormParamSinistralidade, FormParamSinistralidade);
   FormParamSinistralidade.ShowModal;
   FormParamSinistralidade.Free;

end;

procedure TFormSeletor.CoberturaContratanteClick(Sender: TObject);
begin
     Application.CreateForm(TFormCoberturaContratante, FormCoberturaContratante);
     FormCoberturaContratante.ShowModal;
     FormCoberturaContratante.Free;
end;

procedure TFormSeletor.CoberturaPlanoClick(Sender: TObject);
begin
     Application.CreateForm(TFormCoberturaPlano, FormCoberturaPlano);
     FormCoberturaPlano.ShowModal;
     FormCoberturaPlano.Free;
end;

procedure TFormSeletor.CoberturaGrupoContratanteClick(Sender: TObject);
begin
     Application.CreateForm(TFormCoberturaGrupo, FormCoberturaGrupo);
     FormCoberturaGrupo.ShowModal;
     FormCoberturaGrupo.Free;
end;

procedure TFormSeletor.CoberturaProcedimentoClick(Sender: TObject);
begin
     Application.CreateForm(TFormCoberturaProcedimento, FormCoberturaProcedimento);
     FormCoberturaProcedimento.ShowModal;
     FormCoberturaProcedimento.Free;
end;

procedure TFormSeletor.BaixaAutomticaTodosBancos1Click(Sender: TObject);
begin
     Application.CreateForm(TQRListaRetorno, QRListaRetorno);
     QRRetorno.QRListaRetorno.QRLabelBanco.Caption := 'Bradesco';
     QRListaRetorno.Preview;
     QRListaRetorno.Free;
end;

procedure TFormSeletor.VendasSinteticoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelVendas, FormRelVendas);
     RelVendas.FormRelVendas.Tag := 1;
     FormRelVendas.ShowModal;
     FormRelVendas.Free;
end;

procedure TFormSeletor.RepresentanteContratanteClick(Sender: TObject);
begin
   Application.CreateForm(TFormRelContratanteRepresentante, FormRelContratanteRepresentante);
   FormRelContratanteRepresentante.ShowModal;
   FormRelContratanteRepresentante.Free;
end;

procedure TFormSeletor.VendasVencimentoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelVendas, FormRelVendas);
     RelVendas.FormRelVendas.Tag := 2;
     FormRelVendas.ShowModal;
     FormRelVendas.Free;
end;

procedure TFormSeletor.ManutencaoPeriodoNovoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelManutencao, FormRelManutencao);
     FormRelManutencao.Tag := 1;
     FormRelManutencao.ShowModal;
     FormRelManutencao.Free;
end;

procedure TFormSeletor.OrcamentosFinalizadosClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelOrcamentosFinalizados, FormRelOrcamentosFinalizados);
     RelOrcamentosFinalizados.FormRelOrcamentosFinalizados.Tag := 1;
     FormRelOrcamentosFinalizados.ShowModal;
     FormRelOrcamentosFinalizados.Free;
end;

procedure TFormSeletor.VendasAnaliticoVencimentoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelVendas, FormRelVendas);
     RelVendas.FormRelVendas.Tag := 3;
     FormRelVendas.ShowModal;
     FormRelVendas.Free;
end;

procedure TFormSeletor.RelatorioContratosCanceladosRepresentanteClick(
  Sender: TObject);
begin
     Application.CreateForm(TFormRelCancelamento, FormRelCancelamento);
     FormRelCancelamento.Tag := 1;
     FormRelCancelamento.ShowModal;
     FormRelCancelamento.Free;
end;

procedure TFormSeletor.RelatorioManutencoesClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelManutencao, FormRelManutencao);
     RelManutencao.FormRelManutencao.Tag := 2;
     FormRelManutencao.ShowModal;
     FormRelManutencao.Free;
end;

procedure TFormSeletor.RelatorioContratosIncluidosClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelContratanteInclusao, FormRelContratanteInclusao);
     FormRelContratanteInclusao.Tag := 0;
     FormRelContratanteInclusao.ShowModal;
     FormRelContratanteInclusao.Free;
end;

procedure TFormSeletor.DesativaInadinplentesClick(Sender: TObject);
begin
   Application.CreateForm(TFormDesabilita, FormDesabilita);
   FormDesabilita.ShowModal;
   FormDesabilita.Free;
end;

procedure TFormSeletor.OrcamentosSIPClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelOrcamentosSip, FormRelOrcamentosSip);
     FormRelOrcamentosSip.ShowModal;
     FormRelOrcamentosSip.Free;
end;

procedure TFormSeletor.TabelaPrecoPlanoClick(Sender: TObject);
begin
     Application.CreateForm(TFormTabPrecoXPlano, FormTabPrecoXPlano);
     FormTabPrecoXPlano.ShowModal;
     FormTabPrecoXPlano.Free;
end;

procedure TFormSeletor.OramentosSIP1Click(Sender: TObject);
begin
     Application.CreateForm(TFormRelOrcamentosSip, FormRelOrcamentosSip);
     FormRelOrcamentosSip.Tag := 1;
     FormRelOrcamentosSip.ShowModal;
     FormRelOrcamentosSip.Free;
end;

procedure TFormSeletor.OrcamentosTotalClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelOrcamentos, FormRelOrcamentos);
     RelOrcamentos.FormRelOrcamentos.Tag := 1;
     FormRelOrcamentos.ShowModal;
     FormRelOrcamentos.Free;
end;

procedure TFormSeletor.DiopsSIPClick(Sender: TObject);
var buffer : string;
begin
    buffer :=  dm.GetParam('LNKSIP');
    ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);

  {   Application.CreateForm(TFormRelOrcamentosSip, FormRelOrcamentosSip);
     FormRelOrcamentosSip.Caption := 'Relatório de Diops/SIP';
     FormRelOrcamentosSip.Tag := 2;
     FormRelOrcamentosSip.ShowModal;
     FormRelOrcamentosSip.Free;}
end;

procedure TFormSeletor.TaxaSuplementarClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelOrcamentosSip, FormRelOrcamentosSip);
     FormRelOrcamentosSip.Caption := 'Relatório de Taxa Suplementar';
     FormRelOrcamentosSip.Tag := 3;
     FormRelOrcamentosSip.Label5.Visible := true;
     FormRelOrcamentosSip.Edit1.Visible := true;
     FormRelOrcamentosSip.ShowModal;
     FormRelOrcamentosSip.Free;
end;

procedure TFormSeletor.TitulosBaixados2Click(Sender: TObject);
begin
     FormTituloPagos := TFormTituloPagos.Create(Self);
     FormTituloPagos.Show;
end;

procedure TFormSeletor.RelatoriosReceberClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelatoriosReceber, FormRelatoriosReceber);
     FormRelatoriosReceber.ShowModal;
     FormRelatoriosReceber.Free;
end;

procedure TFormSeletor.RelatoriosPagarClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelatoriosPagar, FormRelatoriosPagar);
     FormRelatoriosPagar.ShowModal;
     FormRelatoriosPagar.Free;
end;

procedure TFormSeletor.CancelaUltimoSucepClick(Sender: TObject);
begin
     Application.CreateForm(TFormCancArqSusep, FormCancArqSusep);
     FormCancArqSusep.ShowModal;
     FormCancArqSusep.Free;
end;

procedure TFormSeletor.RelatorioDentistasClick(Sender: TObject);
begin
   Application.CreateForm(TFormRelAtivosInativo, FormRelAtivosInativo);
   FormRelAtivosInativo.Caption := 'Relatório de Dentistas';
   FormRelAtivosInativo.Tag := 0;
   FormRelAtivosInativo.CheckBox1.Visible:=True;
   FormRelAtivosInativo.ShowModal;
   FormRelAtivosInativo.Free;
end;

procedure TFormSeletor.RelatorioProteticosClick(Sender: TObject);
begin
   Application.CreateForm(TFormRelAtivosInativo, FormRelAtivosInativo);
   FormRelAtivosInativo.Caption := 'Relatório de Protéticos';
   FormRelAtivosInativo.Tag := 1;
   FormRelAtivosInativo.ShowModal;
   FormRelAtivosInativo.Free;
end;

procedure TFormSeletor.CadastroVendedorClick(Sender: TObject);
begin
     FormVendedores := TFormVendedores.Create(Self);
     FormVendedores.Show;
end;

procedure TFormSeletor.RelatorioVendedorClick(Sender: TObject);
begin
   Application.CreateForm(TFormRelAtivosInativo, FormRelAtivosInativo);
   FormRelAtivosInativo.Caption := 'Relatório de Vendedores';
   FormRelAtivosInativo.Tag := 3;
   FormRelAtivosInativo.ShowModal;
   FormRelAtivosInativo.Free;
end;

procedure TFormSeletor.CadastroRepresentantesClick(Sender: TObject);
begin
     FormRepresentantes := TFormRepresentantes.Create(Self);
     FormRepresentantes.Show;
end;

procedure TFormSeletor.RelatorioRepresentantesClick(Sender: TObject);
begin
   Application.CreateForm(TFormRelAtivosInativo, FormRelAtivosInativo);
   FormRelAtivosInativo.Caption := 'Relatório de Representantes';
   FormRelAtivosInativo.Tag := 2;
   FormRelAtivosInativo.ShowModal;
   FormRelAtivosInativo.Free;
end;

procedure TFormSeletor.RelatorioContratantesBairroClick(
  Sender: TObject);
begin
   Application.CreateForm(TFormRelContratantesBairro, FormRelContratantesBairro);
   FormRelContratantesBairro.ShowModal;
   FormRelContratantesBairro.Free;
end;

procedure TFormSeletor.ContasBancariasClick(Sender: TObject);
begin
     Application.CreateForm(TFormContas_Bancos, FormContas_Bancos);
     FormContas_Bancos.ShowModal;
     FormContas_Bancos.Free;
end;

procedure TFormSeletor.RelatriodeContratosIncludosComisso1Click(
  Sender: TObject);
begin
     Application.CreateForm(TFormRelContratanteInclusao, FormRelContratanteInclusao);
     FormRelContratanteInclusao.Tag := 1;
     FormRelContratanteInclusao.ShowModal;
     FormRelContratanteInclusao.Free;
end;

procedure TFormSeletor.RelatrioManutenoSeato1Click(Sender: TObject);
begin
   Application.CreateForm(TQRListaManutencaoCadastroSeato, QRListaManutencaoCadastroSeato);
   QRListaManutencaoCadastroSeato.Preview;
   QRListaManutencaoCadastroSeato.Free;
end;

procedure TFormSeletor.EtiquetaContratanteUn1Click(Sender: TObject);
begin
     Application.CreateForm(TFormEtiquetaContratante, FormEtiquetaContratante);
     FormEtiquetaContratante.ShowModal;
     FormEtiquetaContratante.Free;
end;

procedure TFormSeletor.RegistrosAuxiliares1Click(Sender: TObject);
begin
     Application.CreateForm(TFormRegistrosAuxiliares, FormRegistrosAuxiliares);
     FormRegistrosAuxiliares.ShowModal;
     FormRegistrosAuxiliares.Free;
end;

procedure TFormSeletor.RelatorioContratosIncludosEndClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelContratanteInclusao, FormRelContratanteInclusao);
     FormRelContratanteInclusao.Tag := 2;
     FormRelContratanteInclusao.ShowModal;
     FormRelContratanteInclusao.Free;
end;

procedure TFormSeletor.RelatorioProcedimentosPagosClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelProcedimentosPagos, FormRelProcedimentosPagos);
     FormRelProcedimentosPagos.ShowModal;
     FormRelProcedimentosPagos.Free;
end;

procedure TFormSeletor.OrcamentosFinalizadosAtrasoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelOrcamentosFinalizados, FormRelOrcamentosFinalizados);
     RelOrcamentosFinalizados.FormRelOrcamentosFinalizados.Tag := 2;
     FormRelOrcamentosFinalizados.ShowModal;
     FormRelOrcamentosFinalizados.Free;
end;

procedure TFormSeletor.TtulosCanceladosClick(Sender: TObject);
begin
    Application.CreateForm(TFormCanceladosReceber, FormCanceladosReceber);
    FormCanceladosReceber.ShowModal;
    FormCanceladosReceber.Free;
end;

procedure TFormSeletor.Cadsatros1Click(Sender: TObject);
begin
     if not Cadastros.Enabled then
       exit;

     FormDiversos := TFormDiversos.Create(Self);
     FormDiversos.Show;
end;

procedure TFormSeletor.Contratante1Click(Sender: TObject);
begin
   if not Contratantes.Enabled then
       exit;

     Application.CreateForm(TFormContratante, FormContratante);
     Application.CreateForm(TFormPesquisaPlanos, FormPesquisaPlanos);
     Application.CreateForm(TFormPesquisaVendedor, FormPesquisaVendedor);
     FormContratante.ShowModal;
     FormContratante.Free;
     FormPesquisaPlanos.QueryPlanos.open;
     FormPesquisaPlanos.QueryPlanos.Close;
     FormPesquisaPlanos.Query50.Close;
     FormPesquisaPlanos.Free;
     FormPesquisaVendedor.QueryVendedores.close;
     FormPesquisaVendedor.Query50.Close;
     FormPesquisaVendedor.Free;
end;

procedure TFormSeletor.Oramentos1Click(Sender: TObject);
begin
  if not Orcamentos.Enabled then
       exit;
     Application.CreateForm(TFormOrcamentos, FormOrcamentos);
     FormOrcamentos.Tag := 0;
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     Application.CreateForm(TFormPesquisaDentistas, FormPesquisaDentistas);
     FormOrcamentos.ShowModal;
     FormOrcamentos.Free;
end;

procedure TFormSeletor.Agenda1Click(Sender: TObject);
begin
   Application.CreateForm(TFormAgenda, FormAgenda);
   FormAgenda.ShowModal;
   FormAgenda.Free;
end;

procedure TFormSeletor.Relatrios1Click(Sender: TObject);
begin
   if not Contas.Enabled then
     exit;
   Application.CreateForm(TFormRelatoriosReceber, FormRelatoriosReceber);
   FormRelatoriosReceber.ShowModal;
   FormRelatoriosReceber.Free;
end;

procedure TFormSeletor.Cordofundo1Click(Sender: TObject);
begin
   if  ColorDialog.Execute then begin
     formfundo.Color  := ColorDialog.Color;
     formfundo.PanelClear.Visible := true;
     formfundo.PanelClear.Visible := false;
     formfundo.PanelFiguraFundo.Color := ColorDialog.Color;
   with QuerySalvaCor do
     begin
       Parambyname('cor').asstring := colortostring(colordialog.color);
       Parambyname('cod').asinteger := senha.Codigo_Operador;
     end;
   QuerySalvaCor.ExecSQL;
   end;
end;

procedure TFormSeletor.Escolher1Click(Sender: TObject);
begin
   if   OpenPictureDialog.execute then begin
     formfundo.ImageFundo.Picture.LoadFromFile(OpenPictureDialog.Filename);
     formfundo.PanelFiguraFundo.Color := formfundo.Color;
     FormFundo.PanelFiguraFundo.Visible := true;
{   with QuerySalvaImagem do
     begin
       Parambyname('Fundo').asstring := OpenPictureDialog.Filename;
       Parambyname('cod').asinteger := senha.Codigo_Operador;
   end;
   QuerySalvaImagem.ExecSQL;}
   end;
end;

procedure TFormSeletor.Semfigura1Click(Sender: TObject);
begin
   formfundo.PanelFiguraFundo.Visible := false;
end;

procedure TFormSeletor.Ttulosemaberto1Click(Sender: TObject);
begin
   FormTituloReceber := TFormTituloReceber.Create(self);
   FormTituloReceber.Show;
end;

procedure TFormSeletor.TtulosCancelados1Click(Sender: TObject);
begin
   Application.CreateForm(TFormCanceladosReceber, FormCanceladosReceber);
   FormCanceladosReceber.ShowModal;
   FormCanceladosReceber.Free;
end;

procedure TFormSeletor.Corpadro1Click(Sender: TObject);
begin
   formfundo.Color := clBackground;
   formfundo.PanelClear.Visible := true;
   formfundo.PanelClear.Visible := false;
   formfundo.PanelFiguraFundo.Color := clBackground;
   with QuerySalvaCor do
     begin
       Parambyname('cor').asstring := colortostring(Formfundo.Color);
       Parambyname('cod').asinteger := senha.Codigo_Operador;
     end;
   QuerySalvaCor.ExecSQL;
end;

procedure TFormSeletor.AtualizaDB1Click(Sender: TObject);
begin
     FmAtualizaDB := TFmAtualizaDB.Create(Self);
     FmAtualizaDB.showModal;
     FmAtualizaDB.Free;
end;

procedure TFormSeletor.GeraEtiquetas(QueryTitulo: TQuery; Flag: Boolean);
var F : TextFile;
   VTxt : String;
   Vreg, Vreg1 : Registro;
   QtEtiq, QtCol, QtRow,I : Byte;

procedure AlimentaRegistro(Var Reg: Registro);
Begin
   reg.NmUsuario :=
   StrAll(6 - length(QueryTitulo.FieldByName('codigo').AsString),'0') +
   QueryTitulo.FieldByName('codigo').AsString + ' ' +
   Copy(QueryTitulo.FieldByName('Nome').AsString,1,29);

   if QueryTitulo.FieldByName('tipo_correspondencia').AsString = 'Comercial' then
   begin
     reg.Endereco  := QueryTitulo.FieldByName('Endereco_comercial').AsString;
     reg.Bairro    := QueryTitulo.FieldByName('Bairro_Comercial'  ).AsString;
     reg.Cidade    := QueryTitulo.FieldByName('Cidade_Comercial'  ).AsString;
     reg.Estado    := QueryTitulo.FieldByName('Estado_Comercial'  ).AsString;
     reg.CEP       := QueryTitulo.FieldByName('CEP_Comercial'     ).AsString;
     reg.Numero    := QueryTitulo.FieldByName('numero_com'        ).AsString;
     reg.compl     := QueryTitulo.FieldByName('complemento_com'   ).AsString;
   end
   else
   begin
     reg.Endereco  := QueryTitulo.FieldByName('Endereco_residencial').AsString;
     reg.Bairro    := QueryTitulo.FieldByName('Bairro_residencial'  ).AsString;
     reg.Cidade    := QueryTitulo.FieldByName('Cidade_residencial'  ).AsString;
     reg.Estado    := QueryTitulo.FieldByName('Estado_residencial'  ).AsString;
     reg.CEP       := QueryTitulo.FieldByName('CEP_residencial'     ).AsString;
     reg.Numero    := QueryTitulo.FieldByName('numero_res'          ).AsString;
     reg.compl     := QueryTitulo.FieldByName('complemento_res'     ).AsString;
   end;
end;
begin
    QtCol := StrToInt(dm.GetParam('ETCOL'));

    if Flag then
       AssignPrn(F)
    else
       AssignFile(F,'c:\etiquetas.txt');

    ReWrite(F);
    QueryTitulo.first;
    QtEtiq := 0;
    While not QueryTitulo.eof do
    begin
      QtRow := StrToInt(dm.GetParam('ETROW'));
      AlimentaRegistro(VReg);
      QueryTitulo.next;
      inc(QtEtiq);
      AlimentaRegistro(VReg1);
      if not QueryTitulo.Eof then
      begin
         VTxt :=
         Vreg.NmUsuario + StrAll(QtCol - length(Vreg.NmUsuario), ' ') + Vreg1.NmUsuario;
         Writeln(F,VTxt);
         dec(qtRow);
         VTxt := Vreg.Endereco + StrAll(QtCol - (length(Vreg.Endereco)), ' ') + Vreg1.Endereco;
         Writeln(F,VTxt);
         dec(qtRow);

         if Vreg.Compl = '' then
            VTxt := 'Nº ' + Vreg.Numero + StrAll((QtCol - 3) - length(Vreg.Numero),' ')
         else
         begin
            VTxt := 'Nº ' + Vreg.Numero + '/ ' + Vreg.Compl;
            VTxt := Vtxt + StrAll((QtCol - 4) - (length(Vreg.Numero) + length(Vreg.Compl)),' ');
            //VTxt := 'Nº ' + Vreg.Numero + '/ ' + Vreg.Compl + StrAll(32 - (length(Vreg.Numero) + length(Vreg.Compl)),' ');
         end;
         if Vreg1.Compl = '' then
            VTxt :=  VTxt + 'Nº ' + Vreg1.Numero
         else
            VTxt := VTxt + 'Nº ' + Vreg1.Numero + '/ ' + Vreg1.Compl;

         Writeln(F,VTxt);
         dec(qtRow);
         VTxt := Vreg.bairro + ' - ' +  Vreg.CEP   + StrAll((QtCol - 3) - (length(Vreg.bairro) + length(Vreg.CEP)) ,' ') + Copy(Vreg1.Bairro,1,20) + ' - ' + copy(VReg1.CEP,1,12);
         Writeln(F,VTxt);
         dec(qtRow);
         VTxt := Vreg.cidade + ' - ' + Vreg.estado + StrAll((QtCol - 3) - (length(Vreg.cidade) + length(vreg.Estado))   ,' ') + Copy(VReg1.cidade,1,33) + ' - ' + VReg1.Estado;
         Writeln(F,VTxt);
         dec(qtRow);
         
         if QtEtiq = 11 then //gambi monstra..pra alinhar as etiquetas..prescisa fazer as etiq. no quick report. enio 04/08/07
            dec(qtRow);
         for I := 1 to qtRow do
            Writeln(F,'');


      end
      else
      begin
         Writeln(F,Vreg.NmUsuario                     );
         Writeln(F,Vreg.Endereco                      );
         Writeln(F,'Nº ' + Vreg.numero + '/' + Vreg.Compl);
         Writeln(F,Vreg.bairro   + ' - ' + Vreg.CEP   );
         Writeln(F,Vreg.cidade   + ' - ' + Vreg.estado);
         Writeln(F,''                                 );
      end;

      QueryTitulo.next;
      inc(QtEtiq);
    end;

    if not Flag then
    begin
       closeFile(F);
       WinExec('notepad c:\etiquetas.txt',SW_SHOW);
    end;

//    If Application.MessageBox(Pchar('A impressora está preparada para imprimir etiquetas? (' +
//    IntToStr(QueryTitulo.Recordcount) + ' etiquetas serão impressas)')
//    ,'Impressão de etiquetas',MB_YesNo) = IdYes then
//    begin
//       if not Flag then
//       begin
//          AssignFile(F,'c:\imprime.bat');
//          ReWrite(F);
//          Writeln(F,'copy c:\etiquetas.txt lpt1');
//          CloseFile(F);
//          WinExec('c:\imprime.bat',sw_Hide);
//       end
//       else
//          System.CloseFile(F);
//    end;
    //           WinExec('command.com /c type c:\vacina\temp.txt > prn',sw_Hide);
    //tirar00
    //colocar comando para imprimir o arquivo c:\etiquetas.txt
end;

procedure TFormSeletor.ArquivoRPC1Click(Sender: TObject);
begin
   FmGeraArqRPCANS := TFmGeraArqRPCANS.Create(self);
   FmGeraArqRPCANS.ShowModal;
   FmGeraArqRPCANS.Free;
end;

procedure TFormSeletor.PreospUsurio1Click(Sender: TObject);
begin
   FmPrecoXusuario := TFmPrecoXusuario.Create(self);
//   FmPrecoXusuario.ShowModal;
//   FmPrecoXusuario.free;
end;

procedure TFormSeletor.Verificausuriossemmensalidade1Click(
  Sender: TObject);
begin
   FMUsuarioSemMens := TFMUsuarioSemMens.create(self);
   FMUsuarioSemMens.ShowModal;
   FMUsuarioSemMens.Free;
end;

procedure TFormSeletor.ExcluirOramentosClick(Sender: TObject);
begin
   FmExclusaoOrcamentos := TFmExclusaoOrcamentos.Create(self);
   FmExclusaoOrcamentos.ShowModal;
   FmExclusaoOrcamentos.Free;
end;

procedure TFormSeletor.DivergnciaValoresCrianas1Click(Sender: TObject);
Var Vaux : String;
begin
     Vaux := DateToStr(dm.date);
     VAux := copy(Vaux,1,2) + copy(Vaux,4,2) + copy(Vaux,9,2);

     if inputquery('Informe a data formato DDMMAA','Data Base no formato DDMMAA',VAux) then
     begin
        VAux := copy(Vaux,1,2) + '/' + copy(Vaux,3,2) + '/20' + copy(Vaux,5,2);
        try
           StrToDate(VAux);
        except
           ShowMessage('Data inválida informe uma data no formato DDMMAA');
           exit;
        end;

        QrDiverVrCrianca := TQrDiverVrCrianca.create(self);
        QrDiverVrCrianca.QRLabelDtBase.Caption := VAux;
        QrDiverVrCrianca.sp_verifiValorCrianca.Close;
        QrDiverVrCrianca.sp_verifiValorCrianca.ParamByName('@DtBase').asString := VAux;
        QrDiverVrCrianca.sp_verifiValorCrianca.Open;
        QrDiverVrCrianca.Preview;
        QrDiverVrCrianca.Free;
     end;
end;

procedure TFormSeletor.ConfernciaANS1Click(Sender: TObject);
begin
  FmConfANS := TFmConfANS.create(self);
  FmConfANS.Showmodal;
  FmConfANS.free;
end;

procedure TFormSeletor.GeraarquivoSIB1Click(Sender: TObject);
begin
//     Application.CreateForm(TFormArqSusep, FormArqSusep);
//     FormArqSusep.ShowModal;
//     FormArqSusep.Free;
end;

procedure TFormSeletor.GeraarquivoSIBNovo1Click(Sender: TObject);
var buffer : string;
begin
   buffer :=  dm.GetParam('LNKSIB');
   ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);

//   ShellExecute(Handle, 'open', 'www.ig.com.br', '', '', 1);
{  Application.CreateForm(TFormArqSusepNovo, FormArqSusepNovo);
   FormArqSusepNovo.ShowModal;
   FormArqSusepNovo.Free;
}
end;

procedure TFormSeletor.Critrios1Click(Sender: TObject);
begin
   FmCadCriterioOdonto := TFmCadCriterioOdonto.create(self);
   FmCadCriterioOdonto.ShowModal;
   FmCadCriterioOdonto.free;
end;

procedure TFormSeletor.Oramentosapagar1Click(Sender: TObject);
begin
   FmParamOrcAPagar := TFmParamOrcAPagar.create(self);
   FmParamOrcAPagar.showModal;
   FmParamOrcAPagar.free;
end;

procedure TFormSeletor.Diversos1Click(Sender: TObject);
begin
     if not Cadastros.Enabled then
       exit;

     FormDiversos := TFormDiversos.Create(Self);
     FormDiversos.Show;
end;

procedure TFormSeletor.Cidade1Click(Sender: TObject);
begin
   FmCadCidade := TFmCadCidade.create(self);
   FmCadCidade.show;
end;

procedure TFormSeletor.Parmetros1Click(Sender: TObject);
begin
   FmParametro := TFmParametro.create(self);
   FmParametro.Caption := 'Manuteção de Parâmetros do Odontograma';
   FmParametro.QueryParametro.sql.clear;
   FmParametro.QueryParametro.sql.add('select * from parametro where tipo = ''U'' and modulo = ''ODONTOGRAMA'' order by cd_parametro');
   FmParametro.ShowModal;
   FmParametro.Free;
end;

procedure TFormSeletor.GeraExclusodenoIdentificados1Click(Sender: TObject);
begin
   FmGeraPerdidosANS := TFmGeraPerdidosANS.create(self);
   FmGeraPerdidosANS.ShowModal;
   FmGeraPerdidosANS.free;
end;

procedure TFormSeletor.Tratamentos1Click(Sender: TObject);
begin
   FmConsultaTrat := TFmConsultaTrat.create(self);
   FmConsultaTrat.ShowModal;
   FmConsultaTrat.Free;
end;

procedure TFormSeletor.ExecutacomandoClick(Sender: TObject);
begin
   FmExecutaSql := TFmExecutaSql.create(self);
   if (Sender As TMenuItem).tag <> 0 then
   begin
      FmExecutaSql.Memo1.Lines.add(dm.ExecutaComando('select script s from script where cd_script = '  +  IntTostr((Sender As TMenuItem).tag),'s'));
      FmExecutaSql.Button1Click(Sender);
      FmExecutaSql.Caption  := (Sender As TMenuItem).Caption;
      FmExecutaSql.Button4.Visible := false;
      FmExecutaSql.Button5.Visible := false;      
   end;

   FmExecutaSql.ShowModal;
   MontaMenuDinamico;
   FmExecutaSql.Free;
end;

procedure TFormSeletor.Mensagens1Click(Sender: TObject);
begin
   FmCadMensagens := TFmCadMensagens.create(self);
   FmCadMensagens.ShowModal;
   FmCadMensagens.Free;
end;

procedure TFormSeletor.Pacotes1Click(Sender: TObject);
begin
   FmCadPacotes := TFmCadPacotes.create(self);
   FmCadPacotes.showModal;
   FmCadPacotes.Free;
end;

procedure TFormSeletor.Manutenesematraso1Click(Sender: TObject);
begin
   FmParamManutAtraso := TFmParamManutAtraso.create(self);
   FmParamManutAtraso.ShowModal;
   FmParamManutAtraso.Free;
end;

procedure TFormSeletor.CritServioporIdade1Click(Sender: TObject);
begin
   FmCritServicoXIdade := TFmCritServicoXIdade.create(self);
   FmCritServicoXIdade.ShowModal;
   FmCritServicoXIdade.Free;
end;

procedure TFormSeletor.Parametros1Click(Sender: TObject);
begin
   FmParametro := TFmParametro.create(self);
   FmParametro.ShowModal;
   FmParametro.Free;
end;

procedure TFormSeletor.AbrirRelatrioQRP1Click(Sender: TObject);
begin
   QrAbrir := TQrAbrir.create(self);
   QrAbrir.PrinterSetup;
   QrAbrir.PreviewModal;
   QrAbrir.Free;
end;

procedure TFormSeletor.QtdeOrporStatus1Click(Sender: TObject);
begin
   FmQtdeOrcamentoStatus := tFmQtdeOrcamentoStatus.create(self);
   FmQtdeOrcamentoStatus.showmodal;
   FmQtdeOrcamentoStatus.free;
end;

procedure TFormSeletor.VendasAnalticoUsurio1Click(Sender: TObject);
begin
     Application.CreateForm(TFormRelVendas, FormRelVendas);
     FormRelVendas.Label1.Caption := 'Data Venda : ';     
     RelVendas.FormRelVendas.Tag := 4;
     FormRelVendas.ShowModal;
     FormRelVendas.Free;
end;

procedure TFormSeletor.BaixaCNABClick(Sender: TObject);
begin
   FmRetornoCNAB := TFmRetornoCNAB.create(self);
   FmRetornoCNAB.ShowModal;
   FmRetornoCNAB.free;
end;
                    
procedure TFormSeletor.FormadePagtoBOLETOCNAB1Click(Sender: TObject);
begin
   FmPesqLocalPgCNAB := TFmPesqLocalPgCNAB.create(self);
   FmPesqLocalPgCNAB.ShowModal;
   FmPesqLocalPgCNAB.Free; 
end;

procedure TFormSeletor.BaixasPorAtendente1Click(Sender: TObject);
begin
   FmParamBaixaAtend := TFmParamBaixaAtend.create(self);
   FmParamBaixaAtend.ShowMOdal;
   FmParamBaixaAtend.Free;
   
end;

procedure TFormSeletor.ConferenciaFaturamentoClick(Sender: TObject);
begin
   FmConfFaturamento := TFmConfFaturamento.create(self);
   FmConfFaturamento.ShowModal;
   FmConfFaturamento.Free;
end;

procedure TFormSeletor.EstatsticaGerencialFaturamento1Click(
  Sender: TObject);
begin
   FmParamRelEstatFat := TFmParamRelEstatFat.create(self);
   FmParamRelEstatFat.ShowModal;
   FmParamRelEstatFat.Free;
end;

procedure TFormSeletor.ConsultaPagamentoDentista1Click(Sender: TObject);
begin
     Application.CreateForm(TFormPagDentista, FormPagDentista);
     FormPagDentista.Tag := 1;
     FormPagDentista.ShowModal;
     FormPagDentista.Free;

end;

procedure TFormSeletor.RelatriodeUsuriosCanceladosRepresentante1Click(
  Sender: TObject);
begin
     Application.CreateForm(TFormRelCancelamento, FormRelCancelamento);
     FormRelCancelamento.Tag := 2;
     FormRelCancelamento.Caption := 'REL. USUÁRIOS CANCELADOS';
     FormRelCancelamento.CheckBox1.Visible :=  true;
     FormRelCancelamento.ShowModal;
     FormRelCancelamento.Free;
end;

procedure TFormSeletor.TtulosBaixadossemRecibo1Click(Sender: TObject);
begin
   FmPesqTitbaixSemRecGeral := TFmPesqTitbaixSemRecGeral.create(self);
   FmPesqTitbaixSemRecGeral.showModal;
   FmPesqTitbaixSemRecGeral.Free;
end;

procedure TFormSeletor.CancelarRecibo1Click(Sender: TObject);
begin
   FmReimpressaoRec := TFmReimpressaoRec.create(self);
   FmReimpressaoRec.Caption := 'Cancelamento de Recibo';
   FmReimpressaoRec.BitBtn4.Visible := True;
   FmReimpressaoRec.showModal;
   FmReimpressaoRec.Free;
end;

procedure TFormSeletor.EfetivaPagtoDentista1Click(Sender: TObject);
begin
   FmEfetivaPagto := TFmEfetivaPagto.create(self);
   FmEfetivaPagto.ComboBoxTpPagto.ItemIndex := 0;
   FmEfetivaPagto.Query1.sql[1] := '''D''';
   FmEfetivaPagto.ShowModal;
   FmEfetivaPagto.free;
end;

procedure TFormSeletor.EfetivaoPagtoProttico1Click(Sender: TObject);
begin
   FmEfetivaPagto := TFmEfetivaPagto.create(self);
   FmEfetivaPagto.ComboBoxTpPagto.ItemIndex := 1;
   FmEfetivaPagto.Query1.sql[1] := '''P''';   
   FmEfetivaPagto.ShowModal;
   FmEfetivaPagto.free;

end;

procedure TFormSeletor.GeraAutorizaoDbAutomticoFEBRABAN1501Click(
  Sender: TObject);
begin
   FmCadDebCef := TFmCadDebCef.create(self);
   FmCadDebCef.ShowModal;
   FmCadDebCef.Free;
end;

procedure TFormSeletor.EtiquetaDeUsurios1Click(Sender: TObject);
var aux : string;
    arq : textFile;
    arqBat,arqEtiq,linha1,linha2,linha3,linha4,linha5: string;

begin


   FmSelContrEtiqCobr := TFmSelContrEtiqCobr.Create(Self);
   FmSelContrEtiqCobr.tag := 3;
   FmSelContrEtiqCobr.Label2.caption := 'Cód. Usuário';
   FmSelContrEtiqCobr.ShowModal;
   if FmSelContrEtiqCobr.tag = 1 then
   begin

      FmFrEtiquetas := TFmFrEtiquetas.create(self);
      FmFrEtiquetas.RLDetailGrid1.Height := strToInt(dm.GetParam('ALETQ'));
      FmFrEtiquetas.RLReport1.Margins.TopMargin := strToInt(dm.GetParam('MSETQ'));
      FmFrEtiquetas.RLReport1.PageSetup.PaperHeight := StrToFloat(dm.GetParam('APETQ'));

      FmFrEtiquetas.sp_listaEtiq.Close;
      FmFrEtiquetas.sp_listaEtiq.Parameters[1].value := FmSelContrEtiqCobr.dataHoraStr;
      FmFrEtiquetas.sp_listaEtiq.open;
      arqEtiq := 'c:\temp\etiq' + FormatDatetime('ddmmyyhhmmss',dm.now) + '.txt';
      AssignFile(arq,arqEtiq);
      reWrite(arq);
      writeln(arq,'');// pula primeira etiqueta
      writeln(arq,'');
      writeln(arq,'');
      writeln(arq,'');
      writeln(arq,'');
      writeln(arq,'');
      writeln(arq,'');



      while(not FmFrEtiquetas.sp_listaEtiq.eof) do
      begin
          linha1 := Rpad(FmFrEtiquetas.sp_listaEtiq.FieldByName('cdUsuario').asstring + '-' + copy(FmFrEtiquetas.sp_listaEtiq.FieldByName('nome').asstring,1,30),70,' ');
          linha2 := Rpad(FmFrEtiquetas.sp_listaEtiq.FieldByName('endereco').asstring + ', N.' + FmFrEtiquetas.sp_listaEtiq.FieldByName('numero').asstring,70,' ');
          linha3 := Rpad(FmFrEtiquetas.sp_listaEtiq.FieldByName('compl').asstring,70,' ');
          linha4 := Rpad(FmFrEtiquetas.sp_listaEtiq.FieldByName('bairro').asstring + ' CEP: ' + FmFrEtiquetas.sp_listaEtiq.FieldByName('cep').asstring,70,' ');
          linha5 := Rpad(FmFrEtiquetas.sp_listaEtiq.FieldByName('cidade').asstring + ' - ' + FmFrEtiquetas.sp_listaEtiq.FieldByName('estado').asstring,70,' ');
          FmFrEtiquetas.sp_listaEtiq.next;
          if not FmFrEtiquetas.sp_listaEtiq.eof then
          begin
             linha1 := linha1 + FmFrEtiquetas.sp_listaEtiq.FieldByName('cdUsuario').asstring + '-' + FmFrEtiquetas.sp_listaEtiq.FieldByName('nome').asstring;
             linha2 := linha2 + FmFrEtiquetas.sp_listaEtiq.FieldByName('endereco').asstring + ', N.' + FmFrEtiquetas.sp_listaEtiq.FieldByName('numero').asstring;
             linha3 := linha3 + FmFrEtiquetas.sp_listaEtiq.FieldByName('compl').asstring;
             linha4 := linha4 + FmFrEtiquetas.sp_listaEtiq.FieldByName('bairro').asstring + ' CEP: ' + FmFrEtiquetas.sp_listaEtiq.FieldByName('cep').asstring;
             linha5 := linha5 + FmFrEtiquetas.sp_listaEtiq.FieldByName('cidade').asstring  + ' - ' + FmFrEtiquetas.sp_listaEtiq.FieldByName('estado').asstring;
          end;


          writeln(arq,'');
          writeln(arq,dm.Tira_acento(linha1));
          writeln(arq,dm.Tira_acento(linha2));
          writeln(arq,dm.Tira_acento(linha3));
          writeln(arq,dm.Tira_acento(linha4));
          writeln(arq,dm.Tira_acento(linha5));
          writeln(arq,'');
          writeln(arq,'');
          writeln(arq,'');


          FmFrEtiquetas.sp_listaEtiq.next;
      end;
      CloseFile(arq);
      if application.MessageBox('Verifique se a impressora está configurada em modo Draft Condensed e se o papel está posicionado corretamente', 'alerta', MB_OKCANCEL + MB_DEFBUTTON2 ) <> MrOk then
      begin
         DeleteFile(arqEtiq);
         FmFrEtiquetas.free;
         exit;
      end;

      arqBat := 'c:\temp\etiq' + FormatDatetime('ddmmyyhhmmss',dm.now) + '.bat';
      AssignFile(arq,arqBat);
      ReWrite(arq);
      //Writeln(arq,'print /D:LPT1 ' + arqEtiq );
      Writeln(arq,'copy ' + arqEtiq + ' \\srvfwl\epsonlx-');
      Writeln(arq,'pause');

      CloseFile(arq);
      WinExec(pchar(arqBat), SW_SHOWNORMAL);
      //DeleteFile(arqEtiq);
      //DeleteFile(arqBat);



      //FmFrEtiquetas.RLReport1.PreviewModal;
      FmFrEtiquetas.free;
   end
{   if FmSelContrEtiqCobr.tag = 1 then
   begin
      FormFundo.QueryGenerica.Close;
      FormFundo.QueryGenerica.Sql.Clear;
      FormFundo.QueryGenerica.Sql.add('select u.nome, c.* from contratante c, usuario u where u.codigo = c.codigo and codigo_completo in ('
      + FmSelContrEtiqCobr.VInstrucaoSql + ')');
      FormFundo.QueryGenerica.Open;
      GeraEtiquetas(FormFundo.QueryGenerica,False);
   end}

end;

procedure TFormSeletor.UsuriosXServios1Veznoano1Click(Sender: TObject);
begin
   FmANSUsuXServPorAno := TFmANSUsuXServPorAno.create(self);
   FmANSUsuXServPorAno.showModal;
   FmANSUsuXServPorAno.free;
end;

procedure TFormSeletor.QtdeServioPagonoPerodo1Click(Sender: TObject);
begin
   FmANSListaqtPaga := TFmANSListaqtPaga.create(self);
   FmANSListaqtPaga.showModal;
   FmANSListaqtPaga.free;
end;

procedure TFormSeletor.RelatriodeContratantesInadimplentesClick(
  Sender: TObject);
begin
   FmParamContInad := TFmParamContInad.create(self);
   FmParamContInad.ShowModal;
   FmParamContInad.free;
end;

procedure TFormSeletor.EndereoDentistas1Click(Sender: TObject);
var Arq : textFile;
    NmDentista : STRING;
begin
   if not SaveDialog1.Execute then
     exit;
  try
     AssignFile(arq,SaveDialog1.FileName);
     Rewrite(arq);
  except
     on E: Exception do
     begin
        ShowMessage('Ocorreu um erro ao tentar gerar o arquivo ' + SaveDialog1.FileName + ' o erro foi o seguinte ' + e.Message);
        exit;
     end;
  end;
  dm.execmd('select d.codigo,d.nome, e.logradouro,e.bairro,e.cep,c.ds_cidade, c.uf from endereco_x_dentista e,	dentista d , cidade c where d.codigo = e.cd_dentista ' +
             ' and c.cd_cidade = e.cd_cidade and d.data_exclusao is null and (ds_endereco like ''%COMERCIAL%'' or ds_endereco like ''%CONSULTORIO%'' or ds_endereco like ''%CONSULTÓRIO%'') order by d.nome','nome');

   NmDentista := '';
   while not dm.queryglobal.eof do
   begin
      //Linha := ;
      if NmDentista <> dm.QueryGlobal.fieldByName('nome').AsString then
      begin
         Writeln(arq,dm.QueryGlobal.fieldByName('nome').AsString);
         Writeln(arq,dm.QueryGlobal.fieldByName('logradouro').AsString);
         Writeln(arq,dm.QueryGlobal.fieldByName('bairro').AsString + ' - ' + dm.QueryGlobal.fieldByName('cep').AsString);
         Writeln(arq,dm.QueryGlobal.fieldByName('ds_cidade').AsString + ' - ' + dm.QueryGlobal.fieldByName('uf').AsString);
         //Writeln(arq,'');
         //Writeln(arq,'');
      end;
      NmDentista := dm.QueryGlobal.fieldByName('nome').AsString;
      dm.queryglobal.next;
   end;
   CloseFile(arq);
   WinExec(pchar('notepad ' + SaveDialog1.filename),SW_SHOW);
end;

procedure TFormSeletor.ToolButtonHelpClick(Sender: TObject);


begin
//      FmfrContratSolicReciboIR := TFmfrContratSolicReciboIR.create(senha.Empresa,'ESTATÍTICA DE SOLICITAÇÕES DE REBIDO IR',SELF);
   exit;

//   if  dm.VerifPermissao('','90','11','') then
  //    ShowMessage('tem permissao');

   // dm.buscaCep('http://localhost:53724/BuscaCep.aspx?cep=14015080','xml','c:\temp\ola.xml');
//           repeat
//           until Application.MessageBox('Você está cadastrando ','Confirmção', MB_OKCANCEL + MB_DEFBUTTON1) = IdCancel;

   //FmSelRPS := TFmSelRPS.create(self);
   //FmSelRPS.ShowModal;
   //FmSelRPS.free;
   FmEmissaoCarteirinha := TFmEmissaoCarteirinha.create(self);
   FmEmissaoCarteirinha.showModal;
   FmEmissaoCarteirinha.free;
   exit;
   fmFrRelCarteirinha := TfmFrRelCarteirinha.create(self);
   fmFrRelCarteirinha.ADOQuery1.close;
   fmFrRelCarteirinha.ADOQuery1.sql[24] := inputbox('codigo completo','codigo completo','154491');
   fmFrRelCarteirinha.ADOQuery1.open;
   fmFrRelCarteirinha.RLReport1.preview;
   fmFrRelCarteirinha.Free;
//estou editando o arquivo h:\fontes\mt\menus.txt para montar as opçoes do menu
//   FmParamRelConfCart := TFmParamRelConfCart.create(self);
//   FmParamRelConfCart.ShowModal;
//   FmParamRelConfCart.free;

end;

procedure TFormSeletor.ConfrenciadeBaixasdecartes1Click(Sender: TObject);
begin
   FmParamRelConfCart := TFmParamRelConfCart.create(self);
   FmParamRelConfCart.ShowModal;
   FmParamRelConfCart.free;
end;

procedure TFormSeletor.ReimpressodeBoleto1Click(Sender: TObject);
begin
   FmBoletoBancoob := TFmBoletoBancoob.create(self);

   FmBoletoBancoob.Showmodal;
   FmBoletoBancoob.free;
end;

procedure TFormSeletor.AlterarStatusOrcamento1Click(Sender: TObject);
begin
    dm.AlteraStatusOrc('');
end;

procedure TFormSeletor.BaixaAutomticaPadroCNAB400BancoobClick(
  Sender: TObject);
begin
   FmBaixaCnab400 := TFmBaixaCnab400.create(self);
   FmBaixaCnab400.ShowModal;
   FmBaixaCnab400.free;
end;

procedure TFormSeletor.Novo1Click(Sender: TObject);
begin
     Application.CreateForm(TFormRelVendas, FormRelVendas);
     RelVendas.FormRelVendas.Tag := 5;
     FormRelVendas.Label1.caption := 'Data Venda';
     FormRelVendas.Caption := (Sender as TMenuItem).Caption;
     FormRelVendas.ShowModal;
     FormRelVendas.Free;


end;

procedure TFormSeletor.ControledeVidasEmpresariais1Click(Sender: TObject);
begin
   FmParamRelContVidasEmp := TFmParamRelContVidasEmp.create(self);
   FmParamRelContVidasEmp.ShowModal;
   FmParamRelContVidasEmp.free;
end;

procedure TFormSeletor.GrficoInclusesXExcluses1Click(Sender: TObject);
begin
   FmGraficIncXExc := TFmGraficIncXExc.create(self);
   FmGraficIncXExc.ShowMOdal;
   FmGraficIncXExc.free;
end;

procedure TFormSeletor.OramentosExcludos1Click(Sender: TObject);
begin
   FmParamDtRelOrcExc := TFmParamDtRelOrcExc.create(self,'','');
   FmParamDtRelOrcExc.ShowModal;
   FmParamDtRelOrcExc.Free;
end;

procedure TFormSeletor.ConferenciaBaixaCartesRelatriodeBaixas1Click(
  Sender: TObject);
begin
// parei aqui fazendo esse menu
 
end;

procedure TFormSeletor.Sair2Click(Sender: TObject);
begin
   Close;
end;

procedure TFormSeletor.Sair3Click(Sender: TObject);
begin
   Close;
end;

procedure TFormSeletor.CadastrodeGrupodeOperadores1Click(Sender: TObject);
begin
   FmCadGrupoFunc := TFmCadGrupoFunc.create(self);
   FmCadGrupoFunc.ShowModal;
   FmCadGrupoFunc.free;
end;

procedure TFormSeletor.RelatriodeCustocomoramentos1Click(Sender: TObject);
begin
   FmParamRelCustoDent := TFmParamRelCustoDent.create(self,'','');
   FmParamRelCustoDent.ShowModal;
   FmParamRelCustoDent.Free;
end;

procedure TFormSeletor.DesabilitaMenu;
var I : Word;
begin

   for I := 0 to ComponentCount - 1 do
      if (Components[I] is TMenuItem) and ((Components[I] as TMenuItem).Tag <> 100) then
         (Components[I] as TMenuItem).enabled := false;

end;

procedure TFormSeletor.FichaFinanceira1Click(Sender: TObject);
begin
   FmRelFichaFinan := TFmRelFichaFinan.create(self);
   FmRelFichaFinan.ShowModal;
   FmRelFichaFinan.free;
end;
procedure TFormSeletor.AbreFormDiversos(Tab : TtabSheet);
begin
     FormDiversos.PDesabilitaTab;
     FormDiversos.PageControlCadastro.ActivePage := Tab;
     tab.TabVisible := true;
//     FormDiversos.TabSheetEspOdonto.TabVisible := true;
     FormDiversos.ShowModal;
     FormDiversos.Free;
end;
procedure TFormSeletor.EspOdontologicasClick(Sender: TObject);
begin
   FormDiversos := TFormDiversos.Create(Self);
   AbreFormDiversos(FormDiversos.TabSheetEspOdonto);
end;

procedure TFormSeletor.ClinicasClick(Sender: TObject);
begin
   FormDiversos := TFormDiversos.Create(Self);
   AbreFormDiversos(FormDiversos.TabClinicas);
end;

procedure TFormSeletor.ipodePagamento1Click(Sender: TObject);
begin
   FormDiversos := TFormDiversos.Create(Self);
   AbreFormDiversos(FormDiversos.TabTiposPgto);
end;

procedure TFormSeletor.Sip1Click(Sender: TObject);
begin
   FormDiversos := TFormDiversos.Create(Self);
   AbreFormDiversos(FormDiversos.TabSip);
end;

procedure TFormSeletor.ipodeLigao1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabSheetTpLigacao);
end;

procedure TFormSeletor.ipodeContato1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabTipoContato);
end;

procedure TFormSeletor.ipodeCobrana1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabCobranca);
end;

procedure TFormSeletor.ipodeDocumento1Click(Sender: TObject);
begin
   FormDiversos := TFormDiversos.Create(Self);
   AbreFormDiversos(FormDiversos.TabDocumento);
end;

procedure TFormSeletor.FormasdeLIquidao1Click(Sender: TObject);
begin
   FormDiversos := TFormDiversos.Create(Self);
   AbreFormDiversos(FormDiversos.TabSheetFormaLiqCNAB);
end;

procedure TFormSeletor.Dentes1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabDentes);
end;

procedure TFormSeletor.Face1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabSheetFace);
end;

procedure TFormSeletor.DentesXFaces1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabDentesXFaces);
end;

procedure TFormSeletor.GrauParentescp1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabGrauParentesco);
end;

procedure TFormSeletor.CadastrodePlanos1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabPlanos);
end;

procedure TFormSeletor.PlanoXGrauParentesco1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    FormDiversos.QueryPlanoGrau.open;
    AbreFormDiversos(FormDiversos.TabPlanoGrau);
end;

procedure TFormSeletor.GrupodeContratante1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabGrupoContratante);
end;

procedure TFormSeletor.DescontoXNUsurios1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabDesconto);
end;

procedure TFormSeletor.AcrscimoPlanoAumento1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabAcrescimo);
end;

procedure TFormSeletor.DadosdaEmpresa1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabSheetCadEmp);
end;

procedure TFormSeletor.Ocorrncias2Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabOcorrencias);
end;

procedure TFormSeletor.Cobrana1Click(Sender: TObject);
begin
     Application.CreateForm(TFormValorProcedimento, FormValorProcedimento);
     FormValorProcedimento.ShowModal;
     FormValorProcedimento.Free;

end;

procedure TFormSeletor.Pagamento2Click(Sender: TObject);
begin
   if dm.GetParam('UFNVPD') = 'S' then
   begin
      ShowMessage('voce esta usando o novo metodo de valorização de pagamento de dentista, a interface de tabela ainda nao foi desenvolvida');
      exit;
   end;
   FmCadTabPagto := TFmCadTabPagto.create(self);
   FmCadTabPagto.ADOQueryTabPagto.SQL[1] := '''D''';
   FmCadTabPagto.TipoTabela := 'D';
   FmCadTabPagto.Caption := 'Cadastro de tabela de pagameto - Dentista';
   FmCadTabPagto.ShowModal;
   FmCadTabPagto.free;
end;

procedure TFormSeletor.FichaFinanceiraEmpresa1Click(Sender: TObject);
begin
   FmRelFichaFinan := TFmRelFichaFinan.create(self);
   FmRelFichaFinan.tag := 1;
   FmRelFichaFinan.GroupBox2.Caption := 'Empresa';
   FmRelFichaFinan.Caption := 'Ficha Financeira - Empresa';
   FmRelFichaFinan.ShowModal;
   FmRelFichaFinan.free;
end;

procedure TFormSeletor.Prottico1Click(Sender: TObject);
begin
   FmCadTabPagto := TFmCadTabPagto.create(self);
   FmCadTabPagto.TipoTabela := 'P';
   FmCadTabPagto.ADOQueryTabPagto.SQL[1] := '''P''';
   FmCadTabPagto.Caption := 'Cadastro de tabela de pagameto - Protético';
   FmCadTabPagto.ShowModal;
   FmCadTabPagto.free;
end;

procedure TFormSeletor.AniversariantesportempodeEmpresaClick(
  Sender: TObject);
begin
   FmParamNiverIncDent := TFmParamNiverIncDent.create(self);
   FmParamNiverIncDent.showModal;
   FmParamNiverIncDent.free;
end;

procedure TFormSeletor.MotivoCancelamento1Click(Sender: TObject);
begin
   FormDiversos := TFormDiversos.Create(Self);
   AbreFormDiversos(FormDiversos.TabCancelamento);
end;

procedure TFormSeletor.AssociaodeCCOClick(Sender: TObject);
begin
   FmAssociaCCO := TFmAssociaCCO.create(self);
   FmAssociaCCO.showModal;
   FmAssociaCCO.free;
end;

procedure TFormSeletor.CargaArquivodeErroSIBClick(Sender: TObject);
begin
   FmCargaErroSib := TFmCargaErroSib.create(self);
   FmCargaErroSib.ShowModal;
   FmCargaErroSib.Free;
end;

procedure TFormSeletor.EnviodealteraesParagrfica1Click(Sender: TObject);
begin
   FmEnvDentistaGrafica := TFmEnvDentistaGrafica.create(self);
   FmEnvDentistaGrafica.showModal;
   FmEnvDentistaGrafica.free;
end;

procedure TFormSeletor.ProtticosAniversariantesportempodeempresa1Click(
  Sender: TObject);
begin
   FmParamNiverIncDent := TFmParamNiverIncDent.create(self);
   FmParamNiverIncDent.tag := 1; // protetico
   FmParamNiverIncDent.Caption := 'Protéticos Aniversariantes do mês';
   FmParamNiverIncDent.showModal;
   FmParamNiverIncDent.free;
end;

procedure TFormSeletor.PesquisarOramentosexcludos1Click(Sender: TObject);
begin
  FmPesqOrcamentosExc := TFmPesqOrcamentosExc.create(self);
  FmPesqOrcamentosExc.showModal;
  FmPesqOrcamentosExc.Free;
end;

procedure TFormSeletor.Estattiscadesolicitaes1Click(Sender: TObject);
var aux : string;
begin
   aux := InputBox('Informe o ano','Informe o ano','');
   if aux <> '' then
   begin
      FmfrContratSolicReciboIR := TFmfrContratSolicReciboIR.create(senha.Empresa,'ESTATÍTICA DE SOLICITAÇÕES DE REBIDO IR',SELF);
      FmfrContratSolicReciboIR.ADOQuery1.Close;
      FmfrContratSolicReciboIR.ADOQuery1.sql[2] := ' and r.ano = '+ aux;
      FmfrContratSolicReciboIR.ADOQuery1.Open;
      if FmfrContratSolicReciboIR.ADOQuery1.bof and FmfrContratSolicReciboIR.ADOQuery1.eof then
        showMessage('Não há registros para mostrar!')
      else
      begin
        FmfrContratSolicReciboIR.RLLabel6.Caption := 'ANO BASE: ' +aux;
        FmfrContratSolicReciboIR.RLReportH.PreviewModal;
        FmfrContratSolicReciboIR.FREE;
      end;
   end;

end;

procedure TFormSeletor.Impresso1Click(Sender: TObject);
begin
     Application.CreateForm(TFormRelContratanteImposto, FormRelContratanteImposto);
     FormRelContratanteImposto.Tag := 1;
     FormRelContratanteImposto.ShowModal;
     FormRelContratanteImposto.Free;
end;

procedure TFormSeletor.RelMensalPacientesDMED1Click(Sender: TObject);
var aux : string;
begin
   FmDmed := TFmDmed.create(self);
   FmDmed.ShowModal;
   FmDmed.free;
   exit;
   aux := '';
   FmParamData := TFmParamData.create(self,'','');
   FmParamData.Caption := 'Rel. Mensal Pacientes - DMED';
   FmParamData.BitBtnOk.Enabled := false;
   FmParamData.GroupBox1.Caption := 'Intervalo de datas(Data Pagamento título)';
   if FmParamData.ShowModal = Mrok then
   begin
      FmFrRelDmed := TFmFrRelDmed.create(senha.Empresa,'RELATÓRIO MENSAL PACIENTES - DMED',self);
      FmFrRelDmed.SP_GERA_DMED.Close;
      FmFrRelDmed.SP_GERA_DMED.Parameters[1].Value := FmParamData.MaskEditDtIni.Text;
      FmFrRelDmed.SP_GERA_DMED.Parameters[2].Value := FmParamData.MaskEditDtFim.Text;
      case FmParamData.ComboBox1.ItemIndex of

        0 : begin // todos
               FmFrRelDmed.SP_GERA_DMED.Parameters[3].Value := 0;
               FmFrRelDmed.SP_GERA_DMED.Parameters[4].Value := 99999;
               aux := '';
            end;
        1 : begin //mensalidade
               FmFrRelDmed.SP_GERA_DMED.Parameters[3].Value := 1;
               FmFrRelDmed.SP_GERA_DMED.Parameters[4].Value := 1;
               aux := ' - Tipo Doc : Mensalidades ';
            end;
        2 : begin //orcamento
               FmFrRelDmed.SP_GERA_DMED.Parameters[3].Value := 2;
               FmFrRelDmed.SP_GERA_DMED.Parameters[4].Value := 2;
               aux := ' - Tipo Doc : Orçamentos ';
            end;

        3 : begin // manutencao
               FmFrRelDmed.SP_GERA_DMED.Parameters[3].Value := 5;
               FmFrRelDmed.SP_GERA_DMED.Parameters[4].Value := 5;
               aux := ' - Tipo Doc : Manutenção ';
            end;

        end;

      FmFrRelDmed.SP_GERA_DMED.Open;
      FmFrRelDmed.RLLabelPeriodo.Caption := 'PERÍODO : ' + FmParamData.MaskEditDtIni.Text + ' A ' + FmParamData.MaskEditDtFim.Text + aux; ;
      FmFrRelDmed.RLReportH.PreviewModal;
      FmFrRelDmed.Free;
   end;
   FmParamData.Free;
end;

procedure TFormSeletor.ServiosIncompativeis1Click(Sender: TObject);
begin
      FmCadServIncompativeisOdonto := TFmCadServIncompativeisOdonto.create(self);
      FmCadServIncompativeisOdonto.ShowModal;
      FmCadServIncompativeisOdonto.free;
end;

procedure TFormSeletor.DescrioCobertura1Click(Sender: TObject);
begin
    FormDiversos := TFormDiversos.Create(Self);
    AbreFormDiversos(FormDiversos.TabCobertura);
end;

procedure TFormSeletor.RetiradadeCarteirinhapordata1Click(Sender: TObject);
begin
  fmParamData := TfmParamData.create(self,'','');
  fmParamData.BitBtnOk.Enabled := false;
  fmParamData.ComboBox1.Visible := false;
  fmParamData.Label3_.Visible := false;

  if fmParamData.ShowModal = mrOk then
  begin
     FmFrRetiradaCarteira := TFmFrRetiradaCarteira.create(senha.Empresa,'RETIRADA DE CARTEIRINHA',self);
     FmFrRetiradaCarteira.ADOQuery1.Close;
     FmFrRetiradaCarteira.ADOQuery1.SQL[1] := '''' + fmParamData.MaskEditDtIni.Text + ''' and ''' + fmParamData.MaskEditDtFim.Text + ' 23:59''';
     FmFrRetiradaCarteira.ADOQuery1.Open;
//     InputBox('','',FmFrRetiradaCarteira.ADOQuery1.SQL.Text);
     FmFrRetiradaCarteira.RLLabel4.Caption := 'De : ' + fmParamData.MaskEditDtIni.Text + ' A ' + fmParamData.MaskEditDtFim.Text ;
     FmFrRetiradaCarteira.RLReportH.PreviewModal;
     FmFrRetiradaCarteira.Free;
  end;
  fmParamData.free;
end;

procedure TFormSeletor.abelasPagto1Click(Sender: TObject);
begin
   Pagamento2Click(Sender);
end;

procedure TFormSeletor.Cobertura3Click(Sender: TObject);
begin
   FormDiversos := TFormDiversos.Create(Self);
   AbreFormDiversos(FormDiversos.TabCobertura);
end;

procedure TFormSeletor.VendasAnalticoVencimentoClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelVendas, FormRelVendas);
     RelVendas.FormRelVendas.Tag := 3;
     FormRelVendas.Label3.visible := true;
     FormRelVendas.MaskEditDtBase.Visible := true;
     FormRelVendas.MaskEditDtBase.Text := dm.GetDataSrv;
     FormRelVendas.Label5.Visible := true;
     FormRelVendas.ComboBox1.Visible := true;
     FormRelVendas.ShowModal;
     FormRelVendas.Free;
end;

procedure TFormSeletor.tiulosPagosdeContratantescomRestricaoClick(
  Sender: TObject);
begin
   FmParamRelTitPgContratRestricao := TFmParamRelTitPgContratRestricao.create(self);
   FmParamRelTitPgContratRestricao.showModal;
   FmParamRelTitPgContratRestricao.free;
end;

procedure TFormSeletor.SimulaodePreoPorplano1Click(Sender: TObject);
begin
   FmParamServicoPorPLano := TFmParamServicoPorPLano.create(self);
   FmParamServicoPorPLano.ShowModal;
   FmParamServicoPorPLano.free;

end;

procedure TFormSeletor.EmissodeCarteirinhas1Click(Sender: TObject);
begin
  FmEmissaoCarteirinha := TFmEmissaoCarteirinha.create(self);
  FmEmissaoCarteirinha.ShowModal;
  FmEmissaoCarteirinha.free;
end;

procedure TFormSeletor.MotivosdeGlosasClick(Sender: TObject);
begin
    FmCadMotivoGlosa := TFmCadMotivoGlosa.create(self);
    FmCadMotivoGlosa.ADOQueryGlosa.Open;
    FmCadMotivoGlosa.ShowModal;
    FmCadMotivoGlosa.free;
end;

procedure TFormSeletor.RelatriodeGlosasClick(Sender: TObject);
begin
   FmParamData := TFmParamData.create(self,'','');
   FmParamData.Caption := 'Relatório de Glosas';
   FmParamData.BitBtnOk.Enabled := false;
   FmParamData.ComboBox1.Visible := false;
   FmParamData.Label3_.Visible := false;

   if FmParamData.ShowModal = Mrok then
   begin
      FmFrRelGlosas := TFmFrRelGlosas.create(senha.Empresa,'RELATÓRIO DE GLOSAS POR PERÍODO',self);
      FmFrRelGlosas.ADOQueryGlosa.close;
      FmFrRelGlosas.ADOQueryGlosa.SQL[23] := '''' + FmParamData.MaskEditDtIni.Text + ''' and ''' + FmParamData.MaskEditDtFim.Text + '''';
      FmFrRelGlosas.ADOQueryGlosa.Open;
      FmFrRelGlosas.RLLabel7.Caption :=  'INTERVALO : ' + FmParamData.MaskEditDtIni.Text + ' A ' + FmParamData.MaskEditDtFim.Text;
//      FmFrEtiquetas := TFmFrEtiquetas.create(self);
      FmFrRelGlosas.RLReportH.PreviewModal;
      FmFrRelGlosas.free;

   end;

end;

procedure TFormSeletor.RelatrioPagamentoDentistaPorperodo1Click(
  Sender: TObject);
begin
   FmParamRelPagDentista := TFmParamRelPagDentista.create(self);
   FmParamRelPagDentista.ShowModal;
   FmParamRelPagDentista.Free;
end;

procedure TFormSeletor.RelatriodeGlosaPorDentistaPerodo1Click(
  Sender: TObject);
begin
   FmParamRelGlosaDentista := TFmParamRelGlosaDentista.create(self);
   FmParamRelGlosaDentista.ShowModal;
   FmParamRelGlosaDentista.free;
end;

procedure TFormSeletor.ManutenesAtivasdeUsuriosExcludos1Click(
  Sender: TObject);
begin

   FmParamData := TFmParamData.create(self,DateToStr(dm.Date),'');
   FmParamData.Caption := 'Rel. Usu excluído com manut ativa';
   FmParamData.GroupBox1.Caption := 'Informe o intervalo de exclusão de benef';
//   FmParamData.MaskEditDtFim.Visible := false;
  // FmParamData.MaskEditDtIniChange(sender);
//   FmParamData.Label3_.Visible := false;
   FmParamData.ComboBox1.Visible := false;
   FmParamData.Label1.Caption := 'Início Excl';
   FmParamData.Label2.Caption := 'Fim Excl';

   if FmParamData.ShowModal = Mrok then
   begin
      FmfrRelUsuExcluidosManutAtivas := TFmfrRelUsuExcluidosManutAtivas.create(senha.Empresa,'Usuários excluídos com manutenções ativas',self);
      FmfrRelUsuExcluidosManutAtivas.ADOQuery1.Close;
      FmfrRelUsuExcluidosManutAtivas.ADOQuery1.SQL[13] := '''' + fMpARAMdATA.MaskEditDtIni.Text + ''' and ''' + fMpARAMdATA.MaskEditDtFim.Text + '''';
      FmfrRelUsuExcluidosManutAtivas.ADOQuery1.Open;
      FmfrRelUsuExcluidosManutAtivas.RLReportH.PreviewModal;
      FmfrRelUsuExcluidosManutAtivas.ADOQuery1.Close;
      FmfrRelUsuExcluidosManutAtivas.free;
   end;
   FmParamData.free;
end;

procedure TFormSeletor.OramentosemtratamentodeUsuriosexcludos1Click(
  Sender: TObject);
begin
   FmParamData := TFmParamData.create(self,DateToStr(dm.Date),'');
   FmParamData.Caption := 'Rel. Usu excluído com Orç tratamento';
   FmParamData.GroupBox1.Caption := 'Informe o intervalo de exclusão de benef';
   FmParamData.ComboBox1.Visible := false;
   FmParamData.Label1.Caption := 'Início Excl';
   FmParamData.Label2.Caption := 'Fim Excl';

   if FmParamData.ShowModal = Mrok then
   begin
      FmRelUsuExcluidosOrcAtivo := TFmRelUsuExcluidosOrcAtivo.create(senha.Empresa,'BENEFICIÁRIOS EXCLUÍDOS COM ORÇAMENTOS ATIVOS',self);
      FmRelUsuExcluidosOrcAtivo.ADOQuery1.SQL[12] := '''' + fMpARAMdATA.MaskEditDtIni.Text + ''' and ''' + fMpARAMdATA.MaskEditDtFim.Text + '''';
      FmRelUsuExcluidosOrcAtivo.ADOQuery1.Open;
      FmRelUsuExcluidosOrcAtivo.RLReportH.PreviewModal;
      FmRelUsuExcluidosOrcAtivo.Free;
   end;
end;

procedure TFormSeletor.RelatriodeManutenesqueiniciarameterminaramemperdo1Click(
  Sender: TObject);
begin
   FmParamData := TFmParamData.create(self,DateToStr(dm.Date),'');
   FmParamData.Caption := 'Rel. Manut que ini e term por período';
   FmParamData.Label3_.Visible := false;
   FmParamData.ComboBox1.Visible := false;
   if FmParamData.ShowModal = Mrok then
   begin
      FmFrRelManutencoesPorPeriodo := TFmFrRelManutencoesPorPeriodo.create(senha.Empresa,'MANUTENÇÕES QUE INICIARAM E TERMINARAM EM PERÍODO',self);
      FmFrRelManutencoesPorPeriodo.RLLabel1.Caption := 'PERÍODO : ' + FmParamData.MaskEditDtIni.Text + ' A ' + FmParamData.MaskEditDtFim.Text;
      FmFrRelManutencoesPorPeriodo.ADOQuery1.Close;
      FmFrRelManutencoesPorPeriodo.ADOQuery1.sql[8]  := '''' + FmParamData.MaskEditDtIni.Text + '''' + ' and ' + '''' + FmParamData.MaskEditDtFim.Text + '''';
      FmFrRelManutencoesPorPeriodo.ADOQuery1.sql[18] := '''' + FmParamData.MaskEditDtIni.Text + '''' + ' and ' + '''' + FmParamData.MaskEditDtFim.Text + '''';
      FmFrRelManutencoesPorPeriodo.ADOQuery1.Open;
      FmFrRelManutencoesPorPeriodo.RLReportH.PreviewModal;
      FmFrRelManutencoesPorPeriodo.Free;
   end;
   FmParamData.free;
end;

procedure TFormSeletor.ComissoesPorPerododataIncUsuClick(Sender: TObject);
begin
     Application.CreateForm(TFmRelComissao, FmRelComissao);

     FmRelComissao.Tag := 5;
     FmRelComissao.Label7.Visible := false;
     FmRelComissao.ComboBoxPlano.Visible := false;
     FmRelComissao.Label3.Enabled := true;
     FmRelComissao.ComboBoxTpPessoa.Enabled := true;
     FmRelComissao.ShowModal;
     FmRelComissao.Free;

end;

procedure TFormSeletor.QtdeUsurioFsicaJurdicaatdeterminadadata1Click(
  Sender: TObject);
begin
   FmParamData := TFmParamData.create(self,'','');
   FmParamData.Caption := 'Relatorio de Qtde Usuário';
   FmParamData.MaskEditDtFim.Visible := false;
   FmParamData.Label3_.Visible := false;
   FmParamData.ComboBox1.Visible := false;
   FmParamData.Label2.Visible := false;
   FmParamData.Label1.Caption := 'data Base';
   FmParamData.GroupBox1.Caption := 'Informe a data Base';
   if FmParamData.ShowModal = Mrok then
   begin

    FmFrQtUsuarios := TFmFrQtUsuarios.create(senha.Empresa,'QTDE BENEFICIÁRIOS PF/PJ ATÉ DETERMINADA DATA',self);
    FmFrQtUsuarios.ADOQuery1.Close;
    FmFrQtUsuarios.ADOQuery1.sql[2] :=  '''' + FmParamData.MaskEditDtIni.Text + '''';
    FmFrQtUsuarios.ADOQuery1.sql[4] :=  '''' + FmParamData.MaskEditDtIni.Text  + '''';
    FmFrQtUsuarios.ADOQuery1.open;
    FmFrQtUsuarios.RLReportH.PreviewModal;
    FmFrQtUsuarios.free;
    end;
end;

procedure TFormSeletor.ContratantesExcludos1Click(Sender: TObject);
begin
   FmParamRelExcluidos := TFmParamRelExcluidos.create(self);
   FmParamRelExcluidos.ShowModal;
   FmParamRelExcluidos.free;
end;

procedure TFormSeletor.GrficoPorVendedor1Click(Sender: TObject);
begin
   FmGrafVendas := TFmGrafVendas.create(self);
   FmGrafVendas.ShowModal;
   FmGrafVendas.free;

end;

procedure TFormSeletor.RelatriodeDentista1Click(Sender: TObject);
begin
   FmParamRelDentista := TFmParamRelDentista.create(self);
   FmParamRelDentista.ShowModal;
   FmParamRelDentista.Free;
end;

procedure TFormSeletor.ImprimirViaConvnioemlote1Click(Sender: TObject);
begin
    FmSelOrcImpressao := TFmSelOrcImpressao.create(self);
    FmSelOrcImpressao.ShowModal;
    FmSelOrcImpressao.free;

end;

procedure TFormSeletor.GerenciamentodeLEADS1Click(Sender: TObject);
begin
   FmGerenciamentoLEADS := TFmGerenciamentoLEADS.create(self);
   FmGerenciamentoLEADS.ShowModal;
   FmGerenciamentoLEADS.free;
end;

procedure TFormSeletor.GerenciamentodeLEADS2Click(Sender: TObject);
begin
   FmGerenciamentoLEADS := TFmGerenciamentoLEADS.create(self);
   fmGerenciamentoLEADS.Tag := 1;
   fmGerenciamentoLEADS.DBLookupComboBox2.Enabled := false;
   fmGerenciamentoLEADS.DBLookupComboBox1.Enabled := false;
   fmGerenciamentoLEADS.DBLookupComboBox3.Enabled := true;
   FmGerenciamentoLEADS.ShowModal;
   FmGerenciamentoLEADS.free;

end;

procedure TFormSeletor.GrficoCancelamentoPorVendedor1Click(
  Sender: TObject);
begin
    FmGrafCancVendedor := TFmGrafCancVendedor.create(self);
    FmGrafCancVendedor.ShowModal;
    FmGrafCancVendedor.free;
end;

procedure TFormSeletor.DentistaXCidade1Click(Sender: TObject);
begin
    FmParamDentistaXCidade := TFmParamDentistaXCidade.create(self);
    FmParamDentistaXCidade.ShowModal;
    FmParamDentistaXCidade.free;

end;

procedure TFormSeletor.GrfioPorRepresentante1Click(Sender: TObject);
begin
   FmGrafVendasRepresentante := TFmGrafVendasRepresentante.create(self);
   FmGrafVendasRepresentante.ShowModal;
   FmGrafVendasRepresentante.free;

end;

procedure TFormSeletor.GrficoDentistaXProtticoXManutena1Click(
  Sender: TObject);
begin
     fmGrafDentistaXProteticoXManut := TfmGrafDentistaXProteticoXManut.create(self);
     fmGrafDentistaXProteticoXManut.ShowModal;
     fmGrafDentistaXProteticoXManut.free;

end;

procedure TFormSeletor.DescontoProgressivoporIdade1Click(Sender: TObject);
begin
   FmCadDescontoProgressivo := TFmCadDescontoProgressivo.create(self);
   FmCadDescontoProgressivo.ShowModal;
   FmCadDescontoProgressivo.free;
end;

procedure TFormSeletor.Contratantescommaisde4Ttulosemaberto1Click(
  Sender: TObject);
begin
   FmFrContratInadimplente := TFmFrContratInadimplente.create(senha.Empresa,'CONTRATANTES COM MAIS DE 4 TÍTULOS EM ABERTO',self);
   FmFrContratInadimplente.sp_relContratInadimplente.Open;
   FmFrContratInadimplente.RLReportH.PreviewModal;
   FmFrContratInadimplente.Free;
end;

procedure TFormSeletor.RelatriodeRecursodeGlosa1Click(Sender: TObject);
var
  MesAno:string;
begin
   FmParamData := TFmParamData.create(self,'','');
   FmParamData.Caption := 'Relatório de Recurso de Glosas';
   FmParamData.BitBtnOk.Enabled := false;
   FmParamData.ComboBox1.Visible := false;
   FmParamData.Label3_.Visible := false;
   FmParamData.CheckBox_Excel.Visible:=True;


   if FmParamData.ShowModal = Mrok then
   begin
      MesAno:=MontaMesAnoVarios(StrToDate(FmParamData.MaskEditDtIni.Text),StrToDate(FmParamData.MaskEditDtFim.Text));
      FmFrRelRecursoGlosa := tFmFrRelRecursoGlosa.create(self);

      FmFrRelRecursoGlosa.QueryRecursoGlosa.close;
      FmFrRelRecursoGlosa.QueryRecursoGlosa.SQL[11] := '(' + MesAno +')';
      FmFrRelRecursoGlosa.QueryRecursoGlosa.Open;
      FmFrRelRecursoGlosa.RLReportH.Title:= 'RELATÓRIO RE RECURSO DE GLOSA(Por Periodo)';
      FmFrRelRecursoGlosa.RLLabel7.Caption :=  'INTERVALO : ' + FmParamData.MaskEditDtIni.Text + ' A ' + FmParamData.MaskEditDtFim.Text;

      if FmParamData.CheckBox_Excel.Checked then
        ToExcel(FmFrRelRecursoGlosa.QueryRecursoGlosa,'Recurso de Glosa')
      else
        FmFrRelRecursoGlosa.RLReportH.PreviewModal;
        
      FmFrRelRecursoGlosa.free;
   end;

end;

procedure TFormSeletor.EnviodeDadosANS1Click(Sender: TObject);
var buffer : string;
begin
   buffer :=  dm.GetParam('LNKMNT');
   ShellExecute(Application.Handle, nil, PChar(buffer), nil, nil, SW_SHOWNORMAL);
end;

procedure TFormSeletor.RelatrioRpido1Click(Sender: TObject);
begin
  FmRelatorioRapido:=tFmRelatorioRapido.create(self);
  FmRelatorioRapido.showmodal;
  FmRelatorioRapido.free;
end;

procedure TFormSeletor.VidasConfirmadas1Click(Sender: TObject);
begin
  FmVidasConfirmadas:=tFmVidasConfirmadas.create(self);
  FmVidasConfirmadas.showmodal;
  FmVidasConfirmadas.free;
end;

procedure TFormSeletor.RelatriodeTtulosaVencer1Click(Sender: TObject);
begin
   FmParamData := TFmParamData.create(self,'','');
   FmParamData.Caption := 'Rel. Titulos a vencer';
   FmParamData.BitBtnOk.Enabled := false;
   FmParamData.GroupBox1.Caption := 'Informe o intervalo de vencimento';
   FmParamData.Label3_.Visible := false;
   FmParamData.ComboBox1.Visible := false;
   if FmParamData.ShowModal = Mrok then
   begin
      FmFrTitulosAVencer := TFmFrTitulosAVencer.create(senha.empresa,'RELATÓRIO DE TÍTULOS A VENCER',SELF);
      FmFrTitulosAVencer.ADOQuery1.SQL[28] := '''' + FmParamData.MaskEditDtIni.Text + ''' AND ''' + FmParamData.MaskEditDtFim.Text + '''';
      FmFrTitulosAVencer.ADOQuery1.Open;
      FmFrTitulosAVencer.RLReportH.PreviewModal;
      FmFrTitulosAVencer.Free;
   end;
   FmParamData.Free;

end;

procedure TFormSeletor.ListagemdeCelularesxTitulosemAberto1Click(
  Sender: TObject);
begin
  FmRelCelXTitAbertos:=tFmRelCelXTitAbertos.create(Self);
  FmRelCelXTitAbertos.ShowModal;
  FmRelCelXTitAbertos.Free;
end;

end.
procedure TFormSeletor.GlosaseRecursos1Click(Sender: TObject);
begin

end;




