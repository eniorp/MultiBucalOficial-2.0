{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Cadastro/Manuten��o dos Contratantes / Usu�rios           }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

unit Contratante;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, ExtCtrls, DBCtrls, StdCtrls, Buttons, Mask,
  ComCtrls, ImgList, Menus,enio,Variants,IniFiles, ADODB, ExtDlgs,biblio;

type
  TFormContratante = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    QueryContratante_: TQuery;
    DataSourceContratante: TDataSource;
    Panel4: TPanel;
    Panel5: TPanel;
    DBNavigatorContratante1: TDBNavigator;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    PageControlContratantes: TPageControl;
    TabContratante: TTabSheet;
    TabUsuarios: TTabSheet;
    TabTitulos: TTabSheet;
    PanelContratante: TPanel;
    GroupBoxEnderecoCobranca: TGroupBox;
    Label12: TLabel;
    DBEditEndComercial: TDBEdit;
    Label15: TLabel;
    DBEditBairroCobranca: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEditEstadoComercial: TDBEdit;
    Label18: TLabel;
    DBEditCepComercial: TDBEdit;
    GroupBoxAdicionais: TGroupBox;
    Label20: TLabel;
    DBEditCNPJCPF: TDBEdit;
    Label21: TLabel;
    DBEditRG: TDBEdit;
    GroupBoxResidencial: TGroupBox;
    DBEditEstado: TDBEdit;
    DBEditCep: TDBEdit;
    Label9: TLabel;
    Label8: TLabel;
    DBEditBairro: TDBEdit;
    Label6: TLabel;
    DBEditEndereco: TDBEdit;
    Label3: TLabel;
    GroupBoxComplemento: TGroupBox;
    Label26: TLabel;
    GroupBoxFormaCobranca: TGroupBox;
    GroupBoxDebito: TGroupBox;
    Label29: TLabel;
    DBEditBanco: TDBEdit;
    Label30: TLabel;
    DBEditAgencia: TDBEdit;
    Label31: TLabel;
    DBEditConta: TDBEdit;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    LabelNome: TLabel;
    Label1: TLabel;
    BitBtnPesquisar: TBitBtn;
    Query501: TQuery;
    QueryContratanteAuxiliar: TQuery;
    QueryUsuarios: TQuery;
    Panel7: TPanel;
    DataSourceUsuarios: TDataSource;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Panel8: TPanel;
    DBNavigatorAfiliados: TDBNavigator;
    QueryPlanos: TQuery;
    DataSourcePlanos: TDataSource;
    Label51: TLabel;
    DataSourceVendedores: TDataSource;
    Label57: TLabel;
    DBEditInclusao: TDBEdit;
    QueryGrauParentesco: TQuery;
    DataSourceGrauParentesco: TDataSource;
    DBEditConsultor1: TDBEdit;
    QueryVendedores: TQuery;
    EditNomeVendedor1: TEdit;
    QueryContratanteAuxiliarCodigo: TIntegerField;
    Panel9: TPanel;
    GroupBox3: TGroupBox;
    DBGridBaixados: TDBGrid;
    Label64: TLabel;
    DBEditDigito: TDBEdit;
    TabOrcamentos: TTabSheet;
    DBGridAtendimentos: TDBGrid;
    SpeedButtonChecar: TSpeedButton;
    Query50Usuarios: TQuery;
    PopupMenuExtrato: TPopupMenu;
    ImprimeExtrato1: TMenuItem;
    TabContatos: TTabSheet;
    Panel10: TPanel;
    Panel11: TPanel;
    Label67: TLabel;
    DBEditDataContato: TDBEdit;
    Label68: TLabel;
    DBEditHoraContato: TDBEdit;
    Label69: TLabel;
    DBMemoTexto: TDBMemo;
    Label70: TLabel;
    Panel12: TPanel;
    DBNavigatorContatos: TDBNavigator;
    Label71: TLabel;
    Label19: TLabel;
    DBEditInscricao: TDBEdit;
    Label4: TLabel;
    DBEditExclusao: TDBEdit;
    Label5: TLabel;
    Label65: TLabel;
    DBEditContratoAnterior: TDBEdit;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosGrau_Parentesco: TSmallintField;
    QueryUsuariosData_Nascimento: TDateTimeField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryUsuariosContratante_Titular: TIntegerField;
    QueryUsuariosVendedor: TIntegerField;
    QueryUsuariosSexo: TStringField;
    QueryUsuariosInclusao_Susep: TDateTimeField;
    QueryUsuariosExclusao_Susep: TDateTimeField;
    QueryGrauParentescoCodigo: TSmallintField;
    QueryGrauParentescoDescricao: TStringField;
    QueryGrauParentescoIdade_Inicial: TSmallintField;
    QueryGrauParentescoIdade_Final: TSmallintField;
    QueryUsuariosNome_ContrantanteTitular: TStringField;
    QueryVendedoresCodigo: TIntegerField;
    QueryVendedoresNome: TStringField;
    Panel13: TPanel;
    DBLookupComboBoxGrauParentesco: TDBLookupComboBox;
    Label13: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label47: TLabel;
    Label25: TLabel;
    DBEditDataNascimento: TDBEdit;
    DBEditSexo: TDBEdit;
    DBEditDataInclusao: TDBEdit;
    DBEditIdade: TDBEdit;
    DBComboBoxEstadoCivil: TDBComboBox;
    Label43: TLabel;
    Label22: TLabel;
    DBEditContratanteTitular: TDBEdit;
    Label27: TLabel;
    DBEditDataExclusao: TDBEdit;
    DBGridContatos: TDBGrid;
    Query50UsuariosNome: TStringField;
    Query501Nome: TStringField;
    QueryGrupoContratante: TQuery;
    DataSourceGrupoContratante: TDataSource;
    QueryTipoCobranca: TQuery;
    DataSourceTipoCobranca: TDataSource;
    Label40: TLabel;
    DBLookupComboBoxCobranca: TDBLookupComboBox;
    Label33: TLabel;
    DBEditVenc1: TDBEdit;
    QueryUsuariosIdade: TStringField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosSituacao: TStringField;
    QueryUsuariosAuxiliar: TQuery;
    QueryUsuariosAuxiliarCodigo: TIntegerField;
    QueryUsuariosAuxiliarDigito: TIntegerField;
    QueryUsuariosE_Civil: TStringField;
    QueryContratanteAuxiliarNome: TStringField;
    QueryCancelamento: TQuery;
    DataSourceCancelamento: TDataSource;
    DBLookupComboBoxCancelamento: TDBLookupComboBox;
    QueryCancelamentoDescricao: TStringField;
    PanelPesquisa: TPanel;
    Panel2: TPanel;
    DBGridPesquisaContratante: TDBGrid;
    Panel6: TPanel;
    EditPesquisa: TEdit;
    BitBtnFechar: TBitBtn;
    CheckBoxExcl: TCheckBox;
    DBLookupComboBoxGrupoContratante: TDBLookupComboBox;
    QueryContratante_Codigo: TIntegerField;
    QueryContratante_Nome: TStringField;
    QueryContratante_RG: TStringField;
    QueryContratante_CGC_CPF: TStringField;
    QueryContratante_IE: TStringField;
    QueryContratante_Vencimento: TIntegerField;
    QueryContratante_Inclusao: TDateTimeField;
    QueryContratante_Exclusao: TDateTimeField;
    QueryContratante_Endereco_Comercial: TStringField;
    QueryContratante_Bairro_Comercial: TStringField;
    QueryContratante_Cidade_Comercial: TStringField;
    QueryContratante_Estado_Comercial: TStringField;
    QueryContratante_Cep_Comercial: TStringField;
    QueryContratante_Endereco_Residencial: TStringField;
    QueryContratante_Bairro_Residencial: TStringField;
    QueryContratante_Cidade_Residencial: TStringField;
    QueryContratante_Estado_Residencial: TStringField;
    QueryContratante_CEP_Residencial: TStringField;
    QueryContratante_Fone1: TStringField;
    QueryContratante_Fone2: TStringField;
    QueryContratante_Fax: TStringField;
    QueryContratante_Tipo_Correspondencia: TStringField;
    QueryContratante_Vendedor: TIntegerField;
    QueryContratante_Banco: TIntegerField;
    QueryContratante_Agencia: TStringField;
    QueryContratante_Titular_Conta: TStringField;
    QueryContratante_Contrato_Anterior: TStringField;
    QueryContratante_email: TStringField;
    QueryContratante_Numero_Cartao: TStringField;
    QueryContratante_Codigo_Seguranca: TStringField;
    QueryContratante_Motivo_Cancelamento: TIntegerField;
    QueryContratante_Situacao: TStringField;
    QueryContratante_Ultimo_Faturamento: TDateTimeField;
    QueryContratante_Plano: TIntegerField;
    QueryContratante_Grupo_Contratante: TIntegerField;
    QueryGrupoContratanteCodigo: TIntegerField;
    QueryGrupoContratanteDescricao: TStringField;
    QueryGrupoContratanteFlag_Envio_Ans: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    QueryContratante_Forma_Cobranca: TIntegerField;
    QueryReceber: TQuery;
    DataSourceReceber: TDataSource;
    QueryContato: TQuery;
    DataSourceContato: TDataSource;
    QueryOrcamentos: TQuery;
    DataSourceOrcamentos: TDataSource;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosData_Hora: TDateTimeField;
    QueryOrcamentosUsuario: TIntegerField;
    QueryOrcamentosData: TDateTimeField;
    QueryOrcamentosDentista: TIntegerField;
    QueryOrcamentosTotal_Bruto: TFloatField;
    QueryOrcamentosNumero_Parcelas: TSmallintField;
    QueryOrcamentosData_Conferencia: TDateTimeField;
    QueryOrcamentosTotal_Dentista: TFloatField;
    QueryOrcamentosTotal_Protetico: TFloatField;
    QueryOrcamentosTotal_Contas: TFloatField;
    QueryOrcamentosAutorizado: TBooleanField;
    QueryOrcamentosOperador_Cadastro: TSmallintField;
    QueryOrcamentosOperador_Aprovacao: TSmallintField;
    QueryOrcamentosTipo: TSmallintField;
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
    QueryTipoDocumento: TQuery;
    DataSourceTipoDocumento: TDataSource;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryReceberDescricao_Documento: TStringField;
    QueryReceberDescricao_Cobranca: TStringField;
    QueryOperador: TQuery;
    DataSourceOperador: TDataSource;
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
    Label46: TLabel;
    DBEditDataAgenda: TDBEdit;
    QueryContatoIncremento: TIntegerField;
    QueryContatoData_Contato: TDateTimeField;
    QueryContatoHora_Contato: TDateTimeField;
    QueryContatoCodigo_Contratante: TIntegerField;
    QueryContatoData_Agenda: TDateTimeField;
    QueryContatoTexto_Contato: TMemoField;
    QueryContatoOperador: TIntegerField;
    DBLookupComboBoxTipo: TDBLookupComboBox;
    Label48: TLabel;
    QueryContatoTipo: TSmallintField;
    QueryTipoContato: TAdoQuery;
    DataSourceTipoContato: TDataSource;
    QueryContatoDescricao_Tipo: TStringField;
    Query501Codigo: TIntegerField;
    Label49: TLabel;
    DBEditCodigoVendedorUsuario: TDBEdit;
    EditNomeVendedorUsuario: TEdit;
    QueryContratanteAuxiliar2: TQuery;
    QueryContratanteAuxiliar2Codigo: TIntegerField;
    QueryContratanteAuxiliar2Nome: TStringField;
    DBGridAfiliados: TDBGrid;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    Label50: TLabel;
    DBEditOperadorExclusao: TDBEdit;
    Label52: TLabel;
    DBEditOperadorAlteracao: TDBEdit;
    Label53: TLabel;
    DBEditOperadorInclusao: TDBEdit;
    QueryContratante_Operador_Inclusao: TIntegerField;
    QueryContratante_Operador_Alteracao: TIntegerField;
    QueryContratante_Operador_Exclusao: TIntegerField;
    QueryContratante_Nome_Inclusao: TStringField;
    QueryContratante_Nome_Alteracao: TStringField;
    QueryContratante_Nome_Exclusao: TStringField;
    QueryStatus: TQuery;
    QueryStatusCodigo: TSmallintField;
    QueryStatusDescricao: TStringField;
    QueryOrcamentosDescricao_Status: TStringField;
    QueryOrcamentosContratante: TIntegerField;
    QueryOrcamentosTotal_Desconto: TFloatField;
    QueryOrcamentosStatus: TSmallintField;
    QueryOrcamentosDesconto: TFloatField;
    QueryOrcamentosNome_Usuario: TStringField;
    QueryUsuariosAuxiliarNome: TStringField;
    QueryReceberParcela: TSmallintField;
    QueryReceberObservacoes: TStringField;
    QueryReceberStatus_Orcamento: TSmallintField;
    QueryReceberDescricao_Status: TStringField;
    DBEditPlano: TDBEdit;
    EditNomePlano: TEdit;
    BitBtnPesquisaPlano: TBitBtn;
    BitBtnPesquisaVendedor: TBitBtn;
    BitBtnPesquisaContratante: TBitBtn;
    EditNomeContratanteTitular: TEdit;
    EditNomeOperador: TEdit;
    QueryContatoNome_Operador: TStringField;
    QueryOperadorAuxiliar: TAdoQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    QueryContratante_perc_desconto: TFloatField;
    QueryManutencao: TQuery;
    QueryUsuariosCodigo_Completo: TIntegerField;
    ButtonVisualizaOrc: TButton;
    QueryReceberCodigo_Usuario: TIntegerField;
    QueryReceberStatus_Ocorrencia: TSmallintField;
    QueryOcorrencias: TQuery;
    QueryReceberDescricaoOcorrencia: TStringField;
    Label54: TLabel;
    QueryUsuariosOperador_Inclusao: TIntegerField;
    QueryUsuariosOperador_Alteracao: TIntegerField;
    QueryUsuariosOperador_Exclusao: TIntegerField;
    QueryUsuariosManutencao: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    GroupBox4: TGroupBox;
    Label55: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    DBEditOpeExclusao: TDBEdit;
    DBEditOpeAlteracao: TDBEdit;
    DBEditOpeInclusao: TDBEdit;
    QueryUsuariosNome_Inclusao: TStringField;
    QueryUsuariosNome_Alteracao: TStringField;
    QueryUsuariosNome_Exclusao: TStringField;
    DBEditHoraAgenda: TDBEdit;
    Label59: TLabel;
    QueryContatoDigito_Usuario: TSmallintField;
    QueryContatoHora_Agenda: TDateTimeField;
    SpeedButtonApagaGrupo: TSpeedButton;
    DBComboBoxTipoCorrespondencia: TDBComboBox;
    Label34: TLabel;
    QueryPlanosNome_Plano: TStringField;
    QueryPlanosTitular_Contratante: TStringField;
    QueryPlanosNome_Cobertura: TStringField;
    QueryPlanosPlano: TIntegerField;
    QueryPlanosTabela_Cobertura: TIntegerField;
    QueryPlanosAtiva: TBooleanField;
    QueryUsuariosAuxiliarContratante_Titular: TIntegerField;
    QueryContratanteAuxiliarMotivo_Cancelamento: TIntegerField;
    QueryContratanteAuxiliarOperador_Alteracao: TIntegerField;
    QueryContratanteAuxiliarExclusao: TDateTimeField;
    QueryUsuariosAuxiliarData_Exclusao: TDateTimeField;
    QueryReceberTipo_Pagamento: TIntegerField;
    QueryTiposPagamentos: TQuery;
    QueryTiposPagamentosId_TipoPgto: TIntegerField;
    QueryTiposPagamentosDescricao_TipoPgto: TStringField;
    QueryReceberDescricao_Pagamento: TStringField;
    QueryContratante_Empresa: TBooleanField;
    DBCheckBox2: TDBCheckBox;
    DBEditNm_Mae: TDBEdit;
    QueryUsuariosNm_Mae: TStringField;
    QueryUsuariosCPF: TStringField;
    QueryUsuariosPIS_PASEP: TStringField;
    Label62: TLabel;
    Label63: TLabel;
    DBEditCPF: TDBEdit;
    Label66: TLabel;
    DBEditPISPASEP: TDBEdit;
    DBEditNomeUsuario: TDBEdit;
    QueryContratante_Numero_Res: TStringField;
    QueryContratante_Complemento_Res: TStringField;
    Label72: TLabel;
    DBEditNrREs: TDBEdit;
    Label73: TLabel;
    DBEditCompl: TDBEdit;
    QueryContratante_Numero_Com: TStringField;
    QueryContratante_Complemento_Com: TStringField;
    Label74: TLabel;
    DBEditNrCom: TDBEdit;
    Label75: TLabel;
    DBEditComplCom: TDBEdit;
    QueryUsuariosMotivo_Cancelamento: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    QueryUsuariosAuxiliarMotivo_Cancelamento: TIntegerField;
    TabSheet1: TTabSheet;
    DBGridStatusContratante: TDBGrid;
    DBNavigatorStatusContratante: TDBNavigator;
    QueryContatoHora_Alteracao: TDateTimeField;
    QueryContatoData_Alteracao: TDateTimeField;
    QueryContatoOperador_Alteracao: TIntegerField;
    DBEditDtStatus: TDBEdit;
    DBEditHoraStatus: TDBEdit;
    DBEditMotivo: TDBEdit;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    QueryContatoNome_OperAlt: TStringField;
    QueryStatus_Orcamento: TQuery;
    DataSourceStatus_Orcamento: TDataSource;
    QueryStatus_OrcamentoCodigo: TSmallintField;
    QueryStatus_OrcamentoDescricao: TStringField;
    DBLookuPStatus: TDBLookupComboBox;
    DBEditOperador: TDBEdit;
    ButtonVisualizaTit: TButton;
    BitBtnExcluir: TBitBtn;
    SP_DeleteOrcamento: TStoredProc;
    QueryEspeciais: TAdoQuery;
    QueryEspeciaisCodigo_Operador: TIntegerField;
    QueryEspeciaisCodigo_Operacao: TSmallintField;
    QueryUsuariosValor_Mens: TFloatField;
    GroupBoxFaturamento: TGroupBox;
    Label28: TLabel;
    Label39: TLabel;
    QueryContatoLigacao: TIntegerField;
    DBLookupComboBoxTp_Ligacao: TDBLookupComboBox;
    QueryTipo_Ligacao: TQuery;
    QueryTipo_LigacaoCodigo: TIntegerField;
    QueryTipo_LigacaoDescricao: TStringField;
    DataSource_Tipo_Ligacao: TDataSource;
    QueryOrcamentosContratante_Titular: TIntegerField;
    QueryOrcamentosnro_urgencia: TIntegerField;
    QueryOrcamentosData_Status: TDateTimeField;
    QueryOrcamentosOperador_Status: TIntegerField;
    QueryOrcamentosPericiaFinal: TBooleanField;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    QueryStatus_Pagto: TAdoQuery;
    DataSourceStatus_Pagto: TDataSource;
    QueryOrcamentosDescricaoStatus_Pagto: TStringField;
    EditMens: TEdit;
    QueryVrMens: TQuery;
    SpDesconto: TStoredProc;
    Label81: TLabel;
    Sp_alterarVrMen_GrauParent: TStoredProc;
    QueryUsuariosAlteracao_Susep: TDateTimeField;
    QueryUsuariosAlterado: TBooleanField;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Queryapagar: TQuery;
    TbsDesconto: TTabSheet;
    QueryContratante_desc_boleto: TFloatField;
    QueryUsuariosDtReinclusao: TDateTimeField;
    QueryUsuariosdata_alteracao: TDateTimeField;
    DBLookupComboBox2: TDBLookupComboBox;
    QueryCidade: TAdoQuery;
    DsCidade: TDataSource;
    QueryContratante_cd_cidade_res: TSmallintField;
    QueryContratante_cd_cidade_com: TSmallintField;
    DBLookupComboBox3: TDBLookupComboBox;
    Associarcontratantetitularparatodososdependentes1: TMenuItem;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox1: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBEdit4: TDBEdit;
    GroupBoxSusep: TGroupBox;
    Label42: TLabel;
    Label44: TLabel;
    Label86: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    DBEditExclusaoSusep: TDBEdit;
    DBEditInclusaoSusep: TDBEdit;
    DBEdit5: TDBEdit;
    Label87: TLabel;
    DBEdit6: TDBEdit;
    QueryContratante_profissao: TStringField;
    QueryUsuarioscodigo_ans: TStringField;
    QueryUsuarioscd_motivo_inclusao: TSmallintField;
    QueryUsuariosdt_migracao: TDateTimeField;
    QueryUsuarioscei: TStringField;
    QueryMotivoInclusao: TQuery;
    DsMotivoInclusao: TDataSource;
    DBEdit7: TDBEdit;
    Label89: TLabel;
    Label90: TLabel;
    DBEdit8: TDBEdit;
    Label88: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    QueryOrcamentostotal: TFloatField;
    QueryOrcamentosTotal_1: TFloatField;
    QueryCancelamentoCODIGO: TIntegerField;
    QueryContratante_Conta: TStringField;
    LabelCobertura: TLabel;
    Label60: TLabel;
    DBEdit9: TDBEdit;
    QueryUsuariosdt_exclusao_orig: TDateTimeField;
    ClonarUsurioExcludo1: TMenuItem;
    QueryClone: TQuery;
    QueryCloneCodigo: TIntegerField;
    QueryCloneDigito: TIntegerField;
    QueryCloneCodigo_Completo: TIntegerField;
    QueryCloneNome: TStringField;
    QueryCloneGrau_Parentesco: TSmallintField;
    QueryCloneData_Nascimento: TDateTimeField;
    QueryCloneData_Inclusao: TDateTimeField;
    QueryCloneData_Exclusao: TDateTimeField;
    QueryCloneContratante_Titular: TIntegerField;
    QueryCloneVendedor: TIntegerField;
    QueryCloneE_Civil: TStringField;
    QueryCloneSexo: TStringField;
    QueryCloneInclusao_Susep: TDateTimeField;
    QueryCloneExclusao_Susep: TDateTimeField;
    QueryCloneAlteracao_Susep: TDateTimeField;
    QueryCloneAlterado: TBooleanField;
    QueryCloneSituacao: TStringField;
    QueryCloneOperador_Inclusao: TIntegerField;
    QueryCloneManutencao: TBooleanField;
    QueryCloneNm_Mae: TStringField;
    QueryCloneCPF: TStringField;
    QueryClonePIS_PASEP: TStringField;
    QueryClonecd_motivo_inclusao: TSmallintField;
    QueryClonecei: TStringField;
    QueryGrauParentescoativo: TBooleanField;
    QueryContratante_lg_geraFat: TBooleanField;
    DBCheckBox4: TDBCheckBox;
    Label7: TLabel;
    QueryContratante_Digito: TStringField;
    DBEdit10: TDBEdit;
    Label91: TLabel;
    QueryUsuariosdt_venda: TDateTimeField;
    ReestabelecerConexocomBD1: TMenuItem;
    QueryContratante: TADOQuery;
    QueryContratanteCodigo: TAutoIncField;
    QueryContratanteNome: TStringField;
    QueryContratanteRG: TStringField;
    QueryContratanteCGC_CPF: TStringField;
    QueryContratanteIE: TStringField;
    QueryContratanteVencimento: TIntegerField;
    QueryContratanteInclusao: TDateTimeField;
    QueryContratanteExclusao: TDateTimeField;
    QueryContratanteEndereco_Comercial: TStringField;
    QueryContratanteBairro_Comercial: TStringField;
    QueryContratanteCidade_Comercial: TStringField;
    QueryContratanteEstado_Comercial: TStringField;
    QueryContratanteCep_Comercial: TStringField;
    QueryContratanteEndereco_Residencial: TStringField;
    QueryContratanteBairro_Residencial: TStringField;
    QueryContratanteCidade_Residencial: TStringField;
    QueryContratanteEstado_Residencial: TStringField;
    QueryContratanteCEP_Residencial: TStringField;
    QueryContratanteFone1: TStringField;
    QueryContratanteFone2: TStringField;
    QueryContratanteFax: TStringField;
    QueryContratanteTipo_Correspondencia: TStringField;
    QueryContratanteVendedor: TIntegerField;
    QueryContratanteBanco: TIntegerField;
    QueryContratanteAgencia: TStringField;
    QueryContratanteConta: TStringField;
    QueryContratanteDigito: TStringField;
    QueryContratanteTitular_Conta: TStringField;
    QueryContratanteContrato_Anterior: TStringField;
    QueryContratanteNumero_Cartao: TStringField;
    QueryContratanteCodigo_Seguranca: TStringField;
    QueryContratanteMotivo_Cancelamento: TIntegerField;
    QueryContratanteSituacao: TStringField;
    QueryContratanteForma_Cobranca: TIntegerField;
    QueryContratanteUltimo_Faturamento: TDateTimeField;
    QueryContratantePlano: TIntegerField;
    QueryContratanteGrupo_Contratante: TIntegerField;
    QueryContratanteOperador_Inclusao: TIntegerField;
    QueryContratanteOperador_Alteracao: TIntegerField;
    QueryContratanteOperador_Exclusao: TIntegerField;
    QueryContratanteperc_desconto: TBCDField;
    QueryContratanteEmpresa: TBooleanField;
    QueryContratanteNumero_Res: TStringField;
    QueryContratanteComplemento_Res: TStringField;
    QueryContratanteNumero_Com: TStringField;
    QueryContratanteComplemento_Com: TStringField;
    QueryContratantedesc_boleto: TBCDField;
    QueryContratantecd_cidade_res: TSmallintField;
    QueryContratantecd_cidade_com: TSmallintField;
    QueryContratanteprofissao: TStringField;
    QueryContratantelg_geraFat: TBooleanField;
    QueryContratantenome_inclusao: TStringField;
    QueryContratanteNome_Alteracao: TStringField;
    QueryContratanteNome_Exclusao: TStringField;
    QueryTipoContatoCodigo: TAutoIncField;
    QueryTipoContatoDescricao: TStringField;
    QueryTipoContatoativo: TBooleanField;
    QueryStatus_PagtoCodigo: TAutoIncField;
    QueryStatus_PagtoDescricao: TStringField;
    Label92: TLabel;
    DBEdit11: TDBEdit;
    QueryUsuariosnrPlanoOUtOp: TStringField;
    DBCheckBox5: TDBCheckBox;
    QueryContratantelg_restricao: TBooleanField;
    QueryTipoCobrancaeh_banco: TBooleanField;
    QueryTipoCobrancaqt_dg_agencia: TSmallintField;
    QueryTipoCobrancaqt_dg_conta: TSmallintField;
    QueryTipoCobrancaqt_dg_dg_conta: TSmallintField;
    QueryTipoCobrancaobs: TStringField;
    QueryUsuarioscco: TStringField;
    QueryUsuariosdg_cco: TStringField;
    QueryUsuariosnovo_cod_usu_plano: TStringField;
    Label93: TLabel;
    DBEdit12: TDBEdit;
    Label94: TLabel;
    DBEdit13: TDBEdit;
    Label95: TLabel;
    DBEdit14: TDBEdit;
    BitBtn3: TBitBtn;
    DBNavigator1: TDBNavigator;
    QueryUsuariosreinclusao_sib: TDateTimeField;
    Label96: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton5: TSpeedButton;
    GroupBox7: TGroupBox;
    QueryContratante_dt_termino_desconto: TDateTimeField;
    QueryContratantedt_termino_desconto: TDateTimeField;
    GroupBox8: TGroupBox;
    Label24: TLabel;
    DBEditDesconto: TDBEdit;
    Label97: TLabel;
    Label98: TLabel;
    DBEdit16: TDBEdit;
    DBEdit1: TDBEdit;
    Label82: TLabel;
    BitBtnMensagem: TBitBtn;
    Panel14: TPanel;
    GroupBox9: TGroupBox;
    DBLookupComboBox5: TDBLookupComboBox;
    GroupBox10: TGroupBox;
    Label99: TLabel;
    Label100: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    CheckBox1: TCheckBox;
    Button2: TButton;
    ADOQueryTipoFiltro: TADOQuery;
    DsTipoFiltro: TDataSource;
    BitBtnLogAlt: TBitBtn;
    BitBtnLogAltUsu: TBitBtn;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    BitBtn4: TBitBtn;
    QueryUsuariosdt_retirada_carteira: TDateTimeField;
    DBEdit17: TDBEdit;
    QueryOpAltContato: TQuery;
    IntegerField2: TIntegerField;
    StringField10: TStringField;
    dsOpAltContato: TDataSource;
    ADOQuerytpCobranca: TADOQuery;
    Panel15: TPanel;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    Label102: TLabel;
    Label103: TLabel;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    CheckBox2: TCheckBox;
    Button3: TButton;
    ComboBox1: TComboBox;
    DBCheckBoxExcRenov: TDBCheckBox;
    QueryUsuarioslg_excl_renovacao: TBooleanField;
    DBEdit18: TDBEdit;
    Label105: TLabel;
    Label104: TLabel;
    QueryUsuarioscd_matricula: TStringField;
    DBCheckBox6: TDBCheckBox;
    QueryContratantelg_cobrarTaxaBoleto: TBooleanField;
    Label101: TLabel;
    DBEdit19: TDBEdit;
    Label106: TLabel;
    DBEdit20: TDBEdit;
    QueryUsuariosfone1: TStringField;
    QueryUsuariosfone2: TStringField;
    BtnBloqueioContratante: TButton;
    QueryContratantelg_exige_matricula_func: TBooleanField;
    DBCheckBox7: TDBCheckBox;
    QueryUsuarioscd_sus: TStringField;
    DBEdit21: TDBEdit;
    Label2: TLabel;
    ADOQueryOrcTratamento: TADOQuery;
    DBEdit22: TDBEdit;
    Label107: TLabel;
    QueryContratantenmFantasia: TStringField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    Button4: TButton;
    Button5: TButton;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    QueryReceberusuario: TIntegerField;
    QueryRecebernome: TStringField;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    GroupBox13: TGroupBox;
    EditProtocolo: TEdit;
    QueryContratanteemail: TStringField;
    DBEdit23: TDBEdit;
    Label108: TLabel;
    QueryContratantenr_insc_municipal: TStringField;
    QueryRecebernnboleto: TIntegerField;
    QueryUsuariosNome: TStringField;
    dsCelular: TDataSource;
    ADOQueryH: TADOQuery;
    ADOQueryHCodigo: TIntegerField;
    ADOQueryHddd: TIntegerField;
    ADOQueryHcelular: TBCDField;
    ADOQueryHobs: TStringField;
    GroupBox14: TGroupBox;
    DBGrid1: TDBGrid;
    QueryOrcamentosnmDentista: TStringField;
    QueryContratanteemail2: TStringField;
    QueryContratanteemail3: TStringField;
    GroupBox15: TGroupBox;
    Label35: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    DBEditEmail: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    GroupBox16: TGroupBox;
    GroupBox17: TGroupBox;
    Label111: TLabel;
    Label112: TLabel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    GroupBox18: TGroupBox;
    EditOrcamento: TEdit;
    Button7: TButton;
    DBLookupComboBoxStatus: TDBLookupComboBox;
    GroupBox19: TGroupBox;
    EditDentista: TEdit;
    DataSourceStatus: TDataSource;
    QuerySt: TQuery;
    SmallintField1: TSmallintField;
    StringField11: TStringField;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    QueryStatus_Pagto1: TQuery;
    QueryStatus_Pagto1Codigo: TIntegerField;
    QueryStatus_Pagto1Descricao: TStringField;
    DataSourceStatus_Pagto1: TDataSource;
    DBLookupComboBox6: TDBLookupComboBox;
    BitBtnAlterarStatus: TBitBtn;
    Button8: TButton;
    GerenciamentodeLEADS1: TMenuItem;
    Label113: TLabel;
    DBEdit26: TDBEdit;
    QueryUsuariosdt_ini_cobertura: TDateTimeField;
    DBEdit27: TDBEdit;
    Label114: TLabel;
    DBCheckBox8: TDBCheckBox;
    QueryContratantenire: TStringField;
    QueryContratantelg_empresarioIndividual: TBooleanField;
    QueryContratantelg_enviarBoletoPorEmail: TBooleanField;
    GroupBox20: TGroupBox;
    Label118: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    GroupBoxPesquisa: TGroupBox;
    Label61: TLabel;
    MaskEditDataRel: TMaskEdit;
    BitBtn2: TBitBtn;
    CheckBoxTxAde: TCheckBox;
    DBEditUltimoFaturamento: TDBEdit;
    Label45: TLabel;
    GroupBox21: TGroupBox;
    DBEditFone: TDBEdit;
    Label23: TLabel;
    DBEditFax: TDBEdit;
    Label11: TLabel;
    DBEditCelular: TDBEdit;
    Label14: TLabel;
    ADOQueryOrigemContato: TADOQuery;
    DataSourceOrigemContato: TDataSource;
    GroupBox22: TGroupBox;
    DBLookupComboBox7: TDBLookupComboBox;
    QueryContratantecdOrigemContato: TSmallintField;
    QueryUsuarioslg_naoEnviarSib: TBooleanField;
    DBCheckBox10: TDBCheckBox;
    Button6: TButton;
    SpeedButtonLimpaData: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    GroupBox23: TGroupBox;
    DBEdit28: TDBEdit;
    QueryContratanteidentificacao_bancaria: TStringField;
    QueryContratantelg_gerarVrMedicarTelefone: TBooleanField;
    QueryContratantelg_comunicadoMedicarEnviado: TBooleanField;
    GroupBox24: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    QueryContratantelg_enviarBoletoPorWhats: TBooleanField;
    QueryContratantelg_enviarBoletoPorCorreios: TBooleanField;
    DBCheckBox15: TDBCheckBox;
    QueryContratantePagtoContratoAVista: TBooleanField;
    QueryContratantelg_inadimplente: TBooleanField;
    GroupBox25: TGroupBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    QueryContratanteupdated: TDateTimeField;
    QueryContratantelogin: TStringField;
    QueryContratantesenha: TStringField;
    QueryContratanteqt_colaboradores: TIntegerField;
    QueryContratanteobs: TMemoField;
    Label32: TLabel;
    TabSheet_recorrencia: TTabSheet;
    ADOQuery_Recorrencia: TADOQuery;
    ADOQuery_RecorrenciaId: TAutoIncField;
    ADOQuery_RecorrenciaCodigo_Contratante: TIntegerField;
    ADOQuery_RecorrenciaOperadora_Recorrencia: TStringField;
    ADOQuery_RecorrenciaNome_do_cliente: TStringField;
    ADOQuery_RecorrenciaIdentificao_do_cliente: TStringField;
    ADOQuery_RecorrenciaEmail_do_cliente: TStringField;
    ADOQuery_RecorrenciaTelefone_do_cliente: TStringField;
    ADOQuery_RecorrenciaData_do_pedido: TDateTimeField;
    ADOQuery_RecorrenciaIdentificador_de_transao_Checkout: TStringField;
    ADOQuery_RecorrenciaNumero_do_Pedido_da_Loja: TStringField;
    ADOQuery_RecorrenciaId_Recorrencia: TStringField;
    ADOQuery_RecorrenciaDia_Recorrencia: TIntegerField;
    ADOQuery_RecorrenciaAtivo: TBooleanField;
    ADOQuery_RecorrenciaReferente: TStringField;
    GroupBox26: TGroupBox;
    DataSource_Recorrencia: TDataSource;
    Label116: TLabel;
    DBEdit35: TDBEdit;
    Label117: TLabel;
    DBEdit36: TDBEdit;
    Label119: TLabel;
    DBEdit37: TDBEdit;
    Label122: TLabel;
    DBEdit38: TDBEdit;
    Label123: TLabel;
    DBEdit39: TDBEdit;
    Label124: TLabel;
    DBEdit40: TDBEdit;
    Label125: TLabel;
    DBEdit41: TDBEdit;
    Label126: TLabel;
    DBEdit42: TDBEdit;
    Label127: TLabel;
    DBEdit43: TDBEdit;
    Label128: TLabel;
    DBEdit44: TDBEdit;
    DBCheckBox17: TDBCheckBox;
    Label129: TLabel;
    DBEdit45: TDBEdit;
    DBNavigator2: TDBNavigator;
    DBGrid2: TDBGrid;
    ADOQuery_RecorrenciaValor: TBCDField;
    Label130: TLabel;
    DBEdit46: TDBEdit;
    ADOQuery_RecorrenciaOperadorAlteracao: TStringField;
    Label131: TLabel;
    DBEdit47: TDBEdit;
    Button_ProcuraCodPorIdRecorrencia: TButton;
    Button_ProcuraCodPorNumPedido: TButton;
    Label41: TLabel;
    ADOQuery_RecorrenciaBandeiraCartao: TStringField;
    Label115: TLabel;
    DBEdit30: TDBEdit;
    QueryContratanteobs_desc_boleto: TStringField;
    QueryContratanteNome_respEmpresa: TStringField;
    QueryContratanteCPF_respEmpresa: TStringField;
    Label132: TLabel;
    Label133: TLabel;
    DBEdit48: TDBEdit;
    Label134: TLabel;
    DBEdit49: TDBEdit;
    DBMemo1: TDBMemo;
    QueryOrcamentosUsuarioAtivo: TBooleanField;
    Label135: TLabel;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    GroupBox27: TGroupBox;
    Edit_FiltroTitDoOrc: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryContratante_AfterInsert(DataSet: TDataSet);
    procedure DBEditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryUsuariosAfterInsert(DataSet: TDataSet);
    procedure DataSourceContratanteDataChange(Sender: TObject;
      Field: TField);
    procedure QueryUsuariosAfterPost(DataSet: TDataSet);
    procedure DBLookupComboBoxPlanosdeSaudeKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBEditNomeUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditSexoExit(Sender: TObject);
    procedure QueryUsuariosBeforePost(DataSet: TDataSet);
    procedure PageControlContratantesChange(Sender: TObject);
    procedure QueryUsuariosCalcFields(DataSet: TDataSet);
    procedure DBEditConsultor1Exit(Sender: TObject);
    procedure DBEditCodigoExit(Sender: TObject);
    procedure DBEditTitularDebEnter(Sender: TObject);
    procedure DBEditDigitoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditContaEnter(Sender: TObject);
    procedure DBEditDigitoExit(Sender: TObject);
    procedure SpeedButtonChecarClick(Sender: TObject);
    procedure QueryContratante_BeforePost(DataSet: TDataSet);
    procedure QueryContatoAfterInsert(DataSet: TDataSet);
    procedure QueryContatoAfterPost(DataSet: TDataSet);
    procedure TabUsuariosEnter(Sender: TObject);
    procedure DBGridPesquisaAfiliadoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPesquisaAfiliadoExit(Sender: TObject);
    procedure DBEditCodigoVendedorUsuarioExit(Sender: TObject);
    procedure DataSourceUsuariosDataChange(Sender: TObject; Field: TField);
    procedure DBEditNomeExit(Sender: TObject);
    procedure SpeedButtonLimpaDataClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QueryContratante_CalcFields(DataSet: TDataSet);
    procedure DBEditExclusaoExit(Sender: TObject);
    procedure QueryOrcamentosAfterPost(DataSet: TDataSet);
    procedure QueryOrcamentosCalcFields(DataSet: TDataSet);
    procedure DBEditPlanoExit(Sender: TObject);
    procedure BitBtnPesquisaPlanoClick(Sender: TObject);
    procedure BitBtnPesquisaVendedorClick(Sender: TObject);
    procedure BitBtnPesquisaContratanteClick(Sender: TObject);
    procedure DataSourceContatoDataChange(Sender: TObject; Field: TField);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure DBGridAfiliadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonVisualizaOrcClick(Sender: TObject);
    procedure DBEditDataExclusaoExit(Sender: TObject);
    procedure SpeedButtonApagaGrupoClick(Sender: TObject);
    procedure DBEditCNPJCPFExit(Sender: TObject);
    procedure DBEditComplExit(Sender: TObject);
    procedure DBEditComplComExit(Sender: TObject);
    procedure DBComboBoxStatusOrcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ButtonVisualizaTitClick(Sender: TObject);
    procedure BitBtnExcluirClick(Sender: TObject);
    procedure QueryUsuariosAfterScroll(DataSet: TDataSet);
    procedure Mensalidades1Click(Sender: TObject);
    procedure EditPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryUsuariosGrau_ParentescoValidate(Sender: TField);
    procedure QueryUsuariosAfterCancel(DataSet: TDataSet);
    procedure QueryUsuariosAfterClose(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure QueryContratante_NewRecord(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEditCPFKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DBEditContratanteTitularExit(Sender: TObject);
    procedure Associarcontratantetitularparatodososdependentes1Click(
      Sender: TObject);
    procedure QueryUsuariosNewRecord(DataSet: TDataSet);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure ClonarUsurioExcludo1Click(Sender: TObject);
    procedure QueryUsuariosAfterEdit(DataSet: TDataSet);
    procedure QueryContratante_AfterPost(DataSet: TDataSet);
    procedure QueryContratante_CEP_ResidencialValidate(Sender: TField);
    procedure QueryContratante_Cep_ComercialValidate(Sender: TField);
    procedure DBLookupComboBoxGrupoContratanteExit(Sender: TObject);
    procedure DBEditCepExit(Sender: TObject);
    procedure CheckBoxExclClick(Sender: TObject);
    procedure ReestabelecerConexocomBD1Click(Sender: TObject);
    procedure QueryUsuariosBeforeEdit(DataSet: TDataSet);
    procedure QueryContatoBeforePost(DataSet: TDataSet);
    procedure QueryContratanteForma_CobrancaValidate(Sender: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtnMensagemClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure MaskEditDtFimKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnLogAltClick(Sender: TObject);
    procedure BitBtnLogAltUsuClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure BtnBloqueioContratanteClick(Sender: TObject);
    procedure QueryContratanteAfterScroll(DataSet: TDataSet);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEditCPFExit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure QueryUsuariosCPFValidate(Sender: TField);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure EditProtocoloKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure QueryContratanteemailChange(Sender: TField);
    procedure Button7Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure BitBtnAlterarStatusClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure GerenciamentodeLEADS1Click(Sender: TObject);
    procedure QueryUsuariosData_InclusaoValidate(Sender: TField);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure QueryContratantelg_enviarBoletoPorCorreiosValidate(
      Sender: TField);
    procedure ADOQuery_RecorrenciaNewRecord(DataSet: TDataSet);
    procedure Button_ProcuraCodPorNumPedidoClick(Sender: TObject);
    procedure Button_ProcuraCodPorIdRecorrenciaClick(Sender: TObject);
    procedure ADOQuery_RecorrenciaBeforePost(DataSet: TDataSet);
    procedure ADOQuery_RecorrenciaBeforeDelete(DataSet: TDataSet);
    procedure DBEdit44Enter(Sender: TObject);
    procedure ADOQuery_RecorrenciaAfterPost(DataSet: TDataSet);
    procedure DBEdit49Exit(Sender: TObject);
    procedure DBGridAtendimentosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Button9Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }

    AlterouGrau,Clonagem : Boolean;
    DtExclUsu, DtVendaUsu : TDatetime;
    CaminhoFoto : string;
    procedure limpaFiltros();
    procedure filtraOrcamento();
    procedure validaEmailUnico(emailBase,emailTela: string); // procedure dentro da procedure

    Function temAbreviacao(nome : String): Boolean;
    function temCaracterInvalidoSIB(nome : string) : boolean;
    function FileSize(const FileName: string): integer;
    procedure validaEmails();
    procedure ValidaTitular;
    procedure VerificaCPFUsuarios(cdcontrat: String);
    procedure valida_CPFAns;
    function  PValidData(Pdata:TdateTime):Boolean;
    procedure AbreMotivoCancel(ViewExcl:Boolean);
    procedure ValidaContaCorrente;
    procedure BuscaCep(PCep:string;PTipo:char);
    procedure FiltraGrauParent(Ativo: Boolean);
    procedure AchaDigito;
    procedure Exclui_Usuarios;
    procedure carregaCelular;
    Function AlterarGrauParent(PCodUsu: Integer; PDigito: word;
         PPlano:Integer;PNovoGrau: Word;PVrAntigo,PDescAntigo: Currency;PNmfunc: string): Boolean;

  public
    procedure fechaQuerys;
    procedure HabilitaPesquisa(Focar:Boolean);
    function GetVrMensUsu(CdUsu,Dg,CdCompleto:integer):String;
  end;

var
  FormContratante: TFormContratante;
  TreeNode1 : TTreeNode;
  Descricao : String[30];
  Mapa : String[5];
//  Data_Vencimento : TDate;
  Dia, Mes, Ano : Word;
  Numero, Codigo_Titular, Codigo_Usuario : Integer;
  Nome_Usuario : String[50];
  Data : TDate;
  Hora : TTime;
  Exclusao, Exclusao_Usu, Excluido_Antes : Boolean;
  Campo: String[5];
  Codigo : Integer;
  Orc : Boolean;
  Logradouro : String;

implementation

{$R *.DFM}
uses VerificaDigito, CadastroTitulares, Senha, PesquisaPlanos,
  PesquisaVendedor, PesquisaContratante, QRUsuariosContratante,
  PesquisaUsuario, QRUsuariosContratante_2, Orcamentos, TituloReceber,
  TituloBaixados, PrecoXUsuario, Fundo, udm, Mensagem, wscep,
  PesquisaServicos, PesquisaDentista, SelecionaNovoTitular, CadMensagens,
  PesqlogAltUsu, PesqLogContrat, seltpRelEmrpesa, CadBloqueioContrat,
  FmParamVrServPorPlano, USms, cadCelular,
  gerenciamentoDeLED, LiberaOdonto, CadBloqueioGrupo, Math, Tacio  ,
  emissaoCarteirinha;

procedure TFormContratante.FormCreate(Sender: TObject);
var Ini: TIniFile;
begin
     Left := 0;
     Top := 0;
     Exclusao := False;
     Orc := False;
//     FormFundo.DatabaseMultiOdonto.Connected := False;
//     FormFundo.DatabaseMultiOdonto.Connected := True;
     QueryOperadorAuxiliar.Open;
     QueryOperador.Open;
     QueryTipoContato.Open;
     QueryCancelamento.Open;
     QueryTipoCobranca.Open;
     ADOQuerytpCobranca.Open;
     QueryTipoDocumento.Open;
     QueryPlanos.Open;
     QueryGrauParentesco.Open;
     QueryGrupoContratante.Open;
     QueryVendedores.Open;
     QueryStatus.Open;
     QueryStatus_Pagto.Open;
     QuerySt.Open;
     QueryStatus_Pagto1.Open;
     DataSourceStatus_Pagto1.Enabled := false;
     DataSourceStatus.Enabled := false;
     QueryContratante.Close;
     QueryContratante.Open;
     QueryTipo_Ligacao.Open;
     if QueryContratante.RecordCount <> 0 then
        begin
          QueryUsuarios.SQL[1] := ('where Codigo = ' + QueryContratanteCodigo.asString);
          QueryUsuarios.Open;
        end;
     QueryVendedores.Open;

     PageControlContratantes.ActivePage := TabContratante;
     Ini := TInifile.Create(ExtractFilePath(Application.Exename) +  'paramMt.ini');
     CheckBoxExcl.Checked := (Ini.ReadString('CONFIG', 'PadraoChkContratExl', '') = 'S');
     Ini.free;
end;

procedure TFormContratante.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var Ini: TIniFile;
begin
     Ini := TInifile.Create(ExtractFilePath(Application.Exename) +  'paramMt.ini');
     if CheckBoxExcl.Checked then
       Ini.WriteString('CONFIG','PadraoChkContratExl', 'S')
     else
       Ini.WriteString('CONFIG','PadraoChkContratExl', 'N');
     Ini.free;
     QueryCidade.Close;
     QueryUsuariosAuxiliar.Close;
     QueryContratanteAuxiliar.Close;
     QueryOperadorAuxiliar.Close;
     QueryTipoContato.Close;
     QueryCancelamento.Close;
     QueryTipoCobranca.Close;
     QueryTipoDocumento.Close;
     QueryOperador.Close;
     QueryPlanos.Close;
     QueryGrauParentesco.Close;
     QueryGrupoContratante.Close;
     QueryVendedores.Close;
     QueryContratante.Close;
     QueryStatus.Close;
     QueryStatus_Pagto.Close;
     QuerySt.close;
     QueryStatus_Pagto1.Close;
     QueryUsuarios.Close;
     QueryReceber.Close;
     QueryVendedores.Close;
     QueryContato.Close;
     QueryOrcamentos.Close;
     QueryManutencao.Close;
     Query50Usuarios.Close;
     QueryContratanteAuxiliar2.Close;
     QueryTipo_Ligacao.Close;

end;

procedure TFormContratante.QueryContratante_AfterInsert(DataSet: TDataSet);
begin
     QueryContratanteInclusao.asDateTime := dm.Date;
     QueryContratanteTipo_Correspondencia.asString := 'Resid�ncial';
//     QueryContratanteVencimento.asInteger := 10;
     QueryContratanteOperador_Inclusao.asInteger := Senha.Codigo_Operador;
     QueryContratanteVencimento.AsInteger := 1;
     QueryContratanteEmpresa.AsBoolean := False;
     if senha.Cod_Empresa = 2 then begin
        QueryContratanteBanco.AsString := '0';
        QueryContratanteAgencia.AsString := '0';
        QueryContratanteConta.AsString := '0';
        QueryContratanteDigito.AsString := '0';
        QueryContratanteTitular_Conta.AsString := '0';
        QueryContratanteNumero_Cartao.AsString := '0';
        QueryContratanteCodigo_Seguranca.AsString := '0';
     end;
     EditNomePlano.Text := '';
     //EditNomeCobertura.Text := '';
     LabelCobertura.Caption := '';
     EditNomeVendedor1.Text := '';

     DBEditNome.SetFocus;
end;

procedure TFormContratante.DBEditCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
         VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
          VK_F1:
            begin
             if DBEditPlano.Focused then BitBtnPesquisaPlanoClick(Sender) else
             if DBEditConsultor1.Focused then BitBtnPesquisaVendedorClick(Sender) else
             BitBtnPesquisar.Click;
            end;
     end;
end;
procedure TFormContratante.HabilitaPesquisa(Focar:Boolean);
begin
     PageControlContratantes.ActivePageIndex := 0;
     PanelPesquisa.Left := 0;
     PanelPesquisa.Height := 343;
     PanelPesquisa.Width := 780;
     PanelPesquisa.Visible := True;

     DBGridPesquisaContratante.Visible := True;
     if Focar then
        EditPesquisa.setFocus;
end;
procedure TFormContratante.BitBtnPesquisarClick(Sender: TObject);
begin
  HabilitaPesquisa(true);
end;

procedure TFormContratante.BitBtnFecharClick(Sender: TObject);
begin
     PanelPesquisa.Visible := False;
end;

procedure TFormContratante.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_F2: BitBtnPesquisarClick(Sender);
          VK_F5: DBGridAfiliadosKeyDown(sender,key,Shift);
          vk_f10: GerenciamentodeLEADS1Click(Sender);

     end;
end;

procedure TFormContratante.QueryUsuariosAfterInsert(DataSet: TDataSet);
begin
     if not Clonagem and (MessageDlg('O Usu�rio � Titular ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
        begin
          QueryUsuariosSituacao.asString := 'Titular';
          if QueryPlanosTitular_Contratante.asString = 'Titular' then
             begin
               Application.CreateForm(TFormCadastroTitulares, FormCadastroTitulares);
               FormCadastroTitulares.ShowModal;
               QueryUsuariosNome.asString := Nome_Usuario;
               QueryUsuariosCodigo.asInteger := Codigo_Usuario;
               QueryUsuariosContratante_Titular.asInteger := Codigo_Usuario;
               FormCadastroTitulares.Free;
             end
          else
             begin
               QueryUsuariosNome.asString := QueryContratanteNome.asString;
               QueryUsuariosContratante_Titular.asInteger := QueryContratanteCodigo.asInteger;
               QueryUsuariosCPF.asString := QueryContratanteCGC_CPF.asString;
               QueryUsuariosVendedor.AsString := QueryContratanteVendedor.AsString;
               QueryUsuariosGrau_Parentesco.AsInteger := 1;
               DBEditDataNascimento.SetFocus;
             end;

        end
     else
        begin
          QueryUsuariosSituacao.asString := 'Dependente';
          //if QueryUsuarios.RecordCount = 0 then
          //   QueryUsuariosNome.asString := QueryContratanteNome.asString;
          QueryUsuariosContratante_Titular.asInteger := QueryContratanteCodigo.asInteger;
        end;

     QueryUsuariosCodigo.asInteger := QueryContratanteCodigo.asInteger;
     QueryUsuariosData_Inclusao.asDatetime := dm.Date;
     QueryUsuariosOperador_Inclusao.AsInteger := Senha.Codigo_Operador;

     AchaDigito; // Rotina para encontrar digito do usu�rio

     DBEditNomeUsuario.SetFocus;
end;

procedure TFormContratante.DataSourceContratanteDataChange(Sender: TObject;
  Field: TField);
begin
     Codigo := 0;

     if QueryContratante.State in [dsInsert] then
        exit;

     if QueryContratanteCodigo.asString = '' then exit;

     if QueryContratante.RecordCount = 0 then
        begin
          QueryUsuarios.Close;
          FormContratante.Caption := 'Cadastro de Contratos';
          exit;
        end
     else
       with QueryUsuarios do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + QueryContratanteCodigo.asString);
         Open;
       end;

       with QueryReceber do
       begin
         Close;
         SQL[1] := ('where receber.Codigo_Contratante = ' + QueryContratanteCodigo.asString);
         Open;
       end;

       with QueryContato do
       begin
         Close;
         SQL[1] := ('where Codigo_Contratante = ' + QueryContratanteCodigo.asString);
         Open;
         if CheckBox1.checked then
           CheckBox1.checked := false;
       end;
       limpaFiltros();
       filtraOrcamento();

     if QueryContratanteVendedor.asString <> '' then
       with QueryVendedores do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + QueryContratanteVendedor.asString);
         Open;
         EditNomeVendedor1.Text := QueryVendedoresNome.asString;
       end
     else
        EditNomeVendedor1.Text := '';

     if QueryContratantePlano.asString <> '' then
        with QueryPlanos do
           begin
             Close;
             ParamByName('Plano').asInteger := QueryContratantePlano.AsInteger;
             Open;
           end;

     EditNomePlano.Text := dm.execmd('select  p.Descricao plano, tc.Descricao Cobertura  from TabelaCoberturaXPlano t, Plano p,  TabelaCobertura tc where t.Plano = p.Codigo and t.Tabela_Cobertura = tc.CodigoTabela and Codigo = ''' + QueryContratantePlano.asString  + '''','plano');
     LabelCobertura.Caption := dm.QueryGlobal.FieldByName('Cobertura').AsString;
     
     with QueryContratanteAuxiliar do
       begin
         Close;
         ParamByName('Codigo').asInteger := QueryUsuariosContratante_Titular.asInteger;
         Open;
         EditNomeContratanteTitular.Text := QueryContratanteAuxiliarNome.asString;
       end;

     FormContratante.Caption := 'Cadastro de Contratos  -  ' + QueryContratanteNome.asString + ' - N� de Usu�rios => ' + IntToStr(QueryUsuarios.RecordCount);
     if QueryContratanteExclusao.AsString <> '' then
       Excluido_Antes := True;
end;
procedure TFormContratante.filtraOrcamento();
begin
       //
    QueryOrcamentos.Close;
    QueryOrcamentos.sql[2] := ' and Autorizado = 1 ';
    QueryOrcamentos.ParamByName('Contratante').asInteger := QueryContratanteCodigo.asInteger;
    if CheckBox3.Checked then
       QueryOrcamentos.sql[2]  := QueryOrcamentos.sql[2] + ' and o.status = ' + querySt.FieldByName('codigo').AsString;
    if CheckBox4.Checked then
       QueryOrcamentos.sql[2]  := QueryOrcamentos.sql[2] + ' and o.Status_Pagamento = ' + QueryStatus_Pagto1.FieldByName('codigo').AsString;

    if (MaskEdit3.Text <> '  /  /    ') and (MaskEdit4.Text <> '  /  /    ') then
       QueryOrcamentos.sql[2]  := QueryOrcamentos.sql[2] + ' and o.Data_Conferencia between ''' + MaskEdit3.Text + ''' and ''' + MaskEdit4.Text + ' 23:59''';
    if(EditOrcamento.Text <> '') then
       QueryOrcamentos.sql[2]  := QueryOrcamentos.sql[2] + ' and o.numero = ' + EditOrcamento.Text;
    if(EditDentista.Text <> '' ) then
      QueryOrcamentos.sql[2]  := QueryOrcamentos.sql[2] + ' and d.nome like ''%' + EditDentista.Text + '%''';
   // InputBox('','',QueryOrcamentos.Text);
    QueryOrcamentos.Open;
end;
procedure TFormContratante.QueryUsuariosAfterPost(DataSet: TDataSet);
var Digito : Short;
begin

     Digito := QueryUsuariosDigito.asInteger;
     with QueryUsuarios do
        begin
           Close;
           Open;
           Locate('Codigo; Digito', VarArrayOf([QueryContratanteCodigo.asInteger, Digito]), [loCaseInsensitive]);
        end;



     FormContratante.Caption := 'Cadastro de Contratos  -  ' +  QueryContratanteNome.asString + ' - N� de Usu�rios => ' + IntToStr(QueryUsuarios.RecordCount);
     FiltraGrauParent(false);

     DBEdit26.Enabled := true;           
end;

procedure TFormContratante.DBLookupComboBoxPlanosdeSaudeKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormContratante.DBEditNomeUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormContratante.DBEditSexoExit(Sender: TObject);
begin
     if (QueryUsuariosSexo.asString <> 'M') and
        (QueryUsuariosSexo.asString <> 'F') and
        (QueryUsuariosSexo.asString <> 'O') then
          QueryUsuariosSexo.FocusControl;
end;
procedure TFormContratante.valida_CPFAns; // valida cpf de acordo com as regras da ans
var //idade : integer;
    aux : string;
begin

    if not Exclusao_Usu and not ValidaCPF(QueryUsuariosCPF.AsString) then
    begin
       ShowMessage('CPF do usuario inv�lido !');
       Abort;
    end;
    if not Exclusao_Usu and (QueryUsuariosCPF.AsString <> '') then
    begin
       aux := dm.execmd('select cast(codigo_completo as varchar(11)) + '' - '' + nome  nome from usuario where data_exclusao is null and codigo_completo <> ''' + QueryUsuariosCodigo_Completo.AsString  + ''' and cpf = ''' + QueryUsuariosCPF.AsString +  '''','nome') ;
       if aux <> '' then
       begin
          // comentado na versao 2.3.5.1 conforme orientacao da Gabi..tanto para inclusao como para alteracao permite cadastrar o cpf
          {if QueryUsuarios.State = DsInsert then // para nova inclus�o n�o permite..
          begin
             ShowMessage('O cpf informado j� est� cadastrado para o usu�rio ativo ' + aux + ', opera��o cancelada !');
             abort;
          end
          else
          if QueryUsuarios.State = DsEdit then // para nova inclus�o n�o permite..}
          begin
             if dm.getParam('BCPFRE') = 'N' then // N n�o bloqueia o cadastramento de CPF repetido, somente avisa.. S bloqueia
             begin
                if Application.MessageBox(Pchar('O cpf informado j� est� cadastrado para o usu�rio ativo ' + aux + ', deseja manter assim mesmo?'),'Confirma��o', MB_YESNO + MB_DEFBUTTON2) <> IdYes then
                   abort;
             end
             else
             begin
                ShowMessage('O cpf informado j� est� cadastrado para o usu�rio ativo ' + aux + ', opera��o cancelada !');
                abort;
             end;

          end;
       end;
    end;

//  except on E: Exception do
//     begin
//       showMessage('Ocorreu um erro ao tentar validar o cpf de acordo com as regras da ANS, entre em contato com o desenvolvedor do sistema  M E N S A G E M    D E   E R R O: ' + E.Message);
//     end;
//  end;


end;
procedure TFormContratante.ValidaTitular;
var NmTitular : string;
begin
   if not QueryUsuariosData_exclusao.isnull then
   begin //entra aki pq pode ser que esteja excluindo agora o usuario titular

      if not QueryContratanteExclusao.IsNull then // se o contratante tiver excluido entao ta excluindo todos os usuarios
       exit;

      if Exclusao_Usu and (QueryUsuariosSituacao.AsString = 'Titular') then
      begin
         FmSelecionaNovoTitular := TFmSelecionaNovoTitular.create(self);
         FmSelecionaNovoTitular.AdoQuery1.sql[1] := QueryUsuariosCodigo.AsString;
         FmSelecionaNovoTitular.AdoQuery1.Open;
         if not (FmSelecionaNovoTitular.AdoQuery1.bof and FmSelecionaNovoTitular.AdoQuery1.eof) then
         begin // somente entra aqui se tiver usuario ativo..
           FmSelecionaNovoTitular.ShowModal;
           if FmSelecionaNovoTitular.tag = 100 then
              dm.execmd('update usuario set grau_parentesco = 1, situacao = ''Titular'' where codigo_completo = ' + FmSelecionaNovoTitular.Adoquery1.fieldByName('codigo_completo').AsString)
           else
           begin
               ShowMessage('Para excluir um usu�rio titular, deve-se eleger um novo titular, opera��o cancelada !');
               abort;
           end;
         end;

         FmSelecionaNovoTitular.free;
      end;
      exit; // sai fora pq as regras abaixo so valem apara usuarios ativos
   end;
   if (Uppercase(QueryUsuariosSituacao.AsString) = 'TITULAR') and (QueryUsuariosGrau_Parentesco.AsInteger <> 1) then
   begin
      if Application.MessageBox('Deseja alterar a situa��o do usu�rio para "DEPENDENTE" ?','Confirm��o', MB_YESNO + MB_DEFBUTTON2) = IdYes then
         QueryUsuariosSituacao.AsString := 'Dependente'
      else
      begin
         ShowMessage('Usu�rio � titular, grau de parentesco deve ser obrigatoriamente "TITULAR" - REGRA ANS');
         abort;
      end;
   end
   else
   if (Uppercase(QueryUsuariosSituacao.AsString) <> 'TITULAR') and (QueryUsuariosGrau_Parentesco.AsInteger = 1) then
   begin
      NmTitular := dm.execmd('select cast(codigo_completo as varchar(12)) + '' - '' + nome n from usuario where data_exclusao is null and situacao = ''Titular'' and codigo = ' + QueryUsuariosCodigo.AsString,'n');
      if NmTitular <> '' then
      begin
         ShowMessage('J� existe um Titular para esse contratante(' + NmTitular + '), situa��o/Grau de Parentesco desse usu�rio n�o pode ser "TITULAR"');
         abort;
      end
      else
      if Application.MessageBox('Deseja alterar a situa��o do usu�rio para "TITULAR" ?','Confirm��o', MB_YESNO + MB_DEFBUTTON2) = IdYes then
         QueryUsuariosSituacao.AsString := 'Titular'
      else
      begin
         ShowMessage('Situa��o do Usu�rio n�o � titular, grau de parentesco deve ser diferente de "TITULAR" - REGRA ANS');
         abort;
      end;
   end;

   if QueryUsuariosGrau_Parentesco.AsInteger = 1 then
   begin
      if QueryUsuarios.State = DsInsert then
      begin
         if dm.execmd('select count(*) q from usuario where data_exclusao is null and situacao = ''Titular'' and codigo = ' + QueryUsuariosCodigo.AsString,'q') <> '0' then
         begin
            ShowMessage('J� existe um titular ativo para este contratante, opera��o cancelada');
            abort;
         end;
      end
      else
      if QueryUsuarios.State = dsEdit then
      begin
         if dm.execmd('select count(*) q from usuario where data_exclusao is null and situacao = ''Titular'' and codigo = ' + QueryUsuariosCodigo.AsString + ' and codigo_completo <> ' + QueryUsuariosCodigo_Completo.AsString ,'q') <> '0' then
         begin
            ShowMessage('J� existe um titular ativo para este contratante, opera��o cancelada');
            abort;
         end;
      end;
   end
   else // Se este usuario nao for titular, verifica se h� um titular para o contratante, se nao existir nao deixa cadastrar
   begin
      if QueryUsuarios.State = DsInsert then
      begin
         if dm.execmd('select count(*) q from usuario where data_exclusao is null and  grau_parentesco = 1 and situacao = ''Titular'' and codigo = ' + QueryUsuariosCodigo.AsString ,'q') = '0' then
         begin
            ShowMessage('N�o existe titular ativo para este contratante, opera��o cancelada!');
           abort;
         end;
      end
      else
      if QueryUsuarios.State = dsEdit then
      begin
         if dm.execmd('select count(*) q from usuario where data_exclusao is null and  grau_parentesco = 1 and situacao = ''Titular'' and codigo = ' + QueryUsuariosCodigo.AsString + ' and codigo_completo <> ' + QueryUsuariosCodigo_Completo.AsString ,'q') = '0' then
         begin
           if Application.MessageBox('Aten��o, n�o existe titular ativo para este contratante, deseja manter assim mesmo?!','Confirm��o', MB_YESNO + MB_DEFBUTTON2) <> IdYes then
              abort;
         end;
      end;

   end;
end;
Function TFormContratante.temAbreviacao(nome : String): Boolean;
var  tam,i,ini,aux : integer;

begin
    tam := length(nome);
    ini := pos(' ',nome);
    if ini = 0 then
      ini := tam + 1;

      // a ideia eh verificar se existe espa�o em branco dois caracteres apos achar um caracater espa�o
    for i := ini to tam do
    begin
        aux := pos(' ',copy(nome,ini + 2,1));
        if aux > 0 then
        begin
           result := true;
           exit;
        end;
    end;
    if pos(' ',copy(nome,length(nome) - 1,1)) > 0 then // verifica se o ultimo nome ta abreviado
      result := true
    else
       result := false;
end;

procedure TFormContratante.QueryUsuariosBeforePost(DataSet: TDataSet);
var DTVEN : string[2];
var msgAux : string;
begin

  // se na base a data de exlusao estivar nula e na query estiver nao nula , entao ta excluindo nesse momento..
  Exclusao_Usu  := (dm.execmd('select count(*) q from usuario where data_exclusao is null and codigo_completo = ''' + QueryUsuariosCodigo_completo.AsString + '''','q') <> '0') and not QueryUsuariosData_exclusao.isnull;
  if Exclusao_Usu then
  begin
    //tacio 19/12: Verifica se tem recorrencia ativa, s� pode cancelar depois que desativa recorrenci
      if DM.execmd('select count(*)qtd from recorrencia r, usuario u where r.ativo = 1 and u.codigo = r.codigo_contratante and codigo_completo = '+QueryUsuariosCodigo_Completo.AsString,'qtd')<>'0' then
      begin
            FmMensagem := TFmMensagem.create(self);
            FmMensagem.Memo1.lines.add('A T E N � � O !!!!!! O Contratante deste benefici�rio tem RECORR�NCIA ATIVA. Antes de cancelar passe para o setor financeiro para provid�ncias com a RECORR�NCIA!');
            FmMensagem.Label2.Visible := false;
            FmMensagem.ShowModal;
            FmMensagem.Free;
            abort;
      end;

      if (QueryUsuarioscco.IsNull) or (QueryUsuarioscco.AsString = '') then
      begin

          FmMensagem := TFmMensagem.create(self);
          FmMensagem.Memo1.lines.add('A T E N � � O !!!!!! O benefici�rio est� sendo exclu�do , por�m o campo CCO n�o est� preenchido, somente usu�rios com permss�o podem excluir !');
          FmMensagem.Label2.Visible := false;
          FmMensagem.ShowModal;
          FmMensagem.Free;
          FmSenhaOdonto := TFmSenhaOdonto.Create(self);
          FmSenhaOdonto.caption := 'Exlus�o de Benefici�rio sem CCO';
          FmSenhaOdonto.tag := 100;
          FmSenhaOdonto.showModal;
          if dm.execmd('select count(*) q from permissao_funcionario pf where pf.cd_menu = 164 and pf.cd_funcionario = ' + IntToStr(FmSenhaOdonto.Tag),'q') = '0' then
          begin
            ShowMessage('Usu�rio sem permiss�o para excluir benefici�rio sem CCO');
            FmSenhaOdonto.free;
            abort;
          end;
      end;
      if QueryUsuariosData_Exclusao.AsDateTime < QueryUsuariosData_Inclusao.AsDateTime then
      begin
         ShowMessage('Data de Exclus�o deve ser maior que a data de inclus�o !');
         abort;
      end;
      if dm.execmd('select count(*) q from manutencao where usuario = ' + QueryUsuariosCodigo_completo.AsString + ' and data_final > getdate()','q') <> '0' then
      begin
          FmMensagem := TFmMensagem.create(self);
          FmMensagem.Memo1.lines.add('A T E N � � O !!!!!! O Usu�rio  cont�m Manuten��o ativa !');
          FmMensagem.Label2.Visible := false;
          FmMensagem.ShowModal;
          FmMensagem.Free;
         if MessageDlg('O Usu�rio  cont�m Manuten��o ativa. Confirma exclus�o ?',mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
            abort;
      end;

      ADOQueryOrcTratamento.Close;
      ADOQueryOrcTratamento.sql[1] := QueryUsuariosCodigo_Completo.AsString;
      ADOQueryOrcTratamento.open;
      if not ADOQueryOrcTratamento.eof and ADOQueryOrcTratamento.bof then
      begin
          FmMensagem := TFmMensagem.create(self);
          FmMensagem.Memo1.lines.add('A T E N � � O !!!!!! O Usu�rio  cont�m or�amento em tratamento !' + ADOQueryOrcTratamento.FieldByName('numero').AsString);
          FmMensagem.Label2.Visible := false;
          FmMensagem.ShowModal;
          FmMensagem.Free;
         if MessageDlg('O Usu�rio cont�m or�amento em tratamento. Confirma exclus�o ?',mtConfirmation, [mbYes, mbNo], 0) <> mrYes then
            abort;

      end;
  end
  else// nao ta excluindo
  begin
     // verifica se o contratante ou contratante titular � empresario individual

     if dm.execmd('select((select count(*) qt from contratante where codigo = ' + QueryUsuariosCodigo.AsString + ' and lg_empresarioIndividual = 1) + (select count(*) qt from contratante where codigo = ' + QueryUsuariosContratante_Titular.AsString   + ' and lg_empresarioIndividual = 1)) qt','qt') <> '0' then
     begin
          msgAux := 'Voc� est� cadastrando algu�m na empresa : ';
          if QueryUsuariosCodigo.AsString <> QueryUsuariosContratante_Titular.AsString then
              msgAux :=  msgAux + dm.execmd('select nome from contratante where  codigo = ' + QueryUsuariosContratante_Titular.AsString,'nome')
          else
             msgAux :=  msgAux + QueryContratanteNome.AsString;

          msgAux :=  msgAux + #13 + '. E essa empresa consta como EMPRES�RIO INDIVIDUAL, assim � necess�rio ter documenta��o de v�nculo empregat�cio entre os usu�rios e a empresa, e entre os dependentes e o funcion�rio';
          msgAux :=  msgAux + #13 + ' Clique em "cancelar" para fechar essa mensagem"'; 

            repeat
           until Application.MessageBox(pchar(msgAux),'Confirm��o',  MB_OKCANCEL + MB_DEFBUTTON1) = IdCancel;
     end;
     ValidaCampo(QueryUsuarios,'cd_motivo_inclusao','Motivo de Inclus�o',true);
     if dm.GetParam('EXSUS') = 'S' then
        ValidaCampo(QueryUsuarios,'cd_sus','C�digo SUS',true);

     if (QueryUsuariosNm_Mae.IsNull or (trim(QueryUsuariosNm_Mae.AsString) = '') or (Length(trim(QueryUsuariosNm_Mae.AsString)) <= 5)) then
     begin
        ShowMessage('Nome da m�e obrigat�rio e deve conter pelo menos 5 caracteres');
        abort;
     end;
     if (dm.execmd('select count(*) q from contratante  where lg_exige_matricula_func = 1 and codigo = ' + QueryUsuariosContratante_Titular.AsString,'q') = '1') then

     if (QueryUsuarioscd_matricula.IsNull or (QueryUsuarioscd_matricula.AsString = '')) then
     begin
        ShowMessage('Para esta empresa � necess�rio informar o c�digo da matr�cula do funcion�rio !');
        abort;
     end;

     if temCaracterInvalidoSIB(QueryUsuariosNome.AsString) then
     begin
        ShowMessage('o Nome do benefici�rio possui caracter n�o aceito pelo SIB');
        abort;
     end;
     if temCaracterInvalidoSIB(QueryUsuariosNm_Mae.AsString) then
     begin
        ShowMessage('o Nome da m�e possui caracter n�o aceito pelo SIB');
        abort;
     end;
     if temAbreviacao(QueryUsuariosNome.AsString) then
     begin
        ShowMessage('o Nome de usuario n�o pode ter abrevia��o');
        abort;
     end;
     if temAbreviacao(QueryUsuariosNm_Mae.AsString) then
     begin
        ShowMessage('o Nome da m�e n�o pode ter abrevia��o');
        abort;
     end;
     // artificio para nao validar o campo, pois quase ninguem tem esse documento...
     if QueryUsuarioscd_sus.AsString = '0' then
        QueryUsuarioscd_sus.AsString := '';
     if  (not QueryUsuarioscd_sus.IsNull and (QueryUsuarioscd_sus.AsString <> '')) and (length(QueryUsuarioscd_sus.AsString) <> 15) then
     begin
        ShowMessage('o C�digo SUS deve ter obrigatoriamente 15 d�gitos');
        abort;
     end;

  end;

  if (not QueryUsuariosData_exclusao.isnull) and (QueryUsuariosMotivo_Cancelamento.isnull or (QueryUsuariosMotivo_Cancelamento.AsInteger = 0)) then
  begin
     ShowMessage('Motivo de Exclus�o deve ser preenchido!');
     abort;
  end;

  if (QueryUsuariosData_exclusao.isnull) and (QueryUsuariosMotivo_Cancelamento.AsInteger > 0) then
  begin
     ShowMessage('Para preencher Motivo de cancelamento, data de exclus�o deve ser preenchida!');
     abort;
  end;


  // se o contratante tiver excluido e estiver tentando reativar um beneficiario nao deixa..

  if not QueryContratanteExclusao.IsNull then
  begin
     if (dm.execmd('select count(*) q from usuario where data_exclusao is not null and codigo_completo = ''' + QueryUsuariosCodigo_completo.AsString + '''','q') <> '0') and QueryUsuariosData_exclusao.isnull then
     begin
        ShowMessage('O contratante desse usu�rio est� exclu�do, n�o � poss�vel reativar o usu�rio');
        abort;
     end
  end;

  ValidaTitular;
  valida_CPFAns;

  if AlterouGrau then
    if not AlterarGrauParent(
                      QueryUsuariosCodigo.AsInteger,
                      QueryUsuariosDigito.AsInteger,
                      QueryContratantePlano.AsInteger,
                      QueryUsuariosGrau_Parentesco.Asinteger,
                      QueryVrMens.FieldByName('valor').asCurrency,
                      SpDesconto.ParamByName('@VrDescUsu').AsCurrency,
                      Senha.apelido) then
    begin
       ShowMessage('Opera��o cancelada');
       Abort;
       Exit;
    end;

     if (QueryUsuariosSexo.asString <> 'M') and
        (QueryUsuariosSexo.asString <> 'F') and
        (QueryUsuariosSexo.asString <> 'O') then
          QueryUsuariosSexo.FocusControl;
     if QueryUsuarios.State in [dsEdit] then begin
        QueryUsuariosOperador_Alteracao.AsInteger := Senha.Codigo_Operador;
        if Exclusao_Usu then
           QueryUsuariosOperador_Exclusao.AsInteger := Senha.Codigo_Operador
        else
           QueryUsuariosOperador_Exclusao.AsString := '';
     end;

    if QueryUsuariosVendedor.AsInteger <> QueryContratanteVendedor.AsInteger then
    begin
       FmMensagem := TFmMensagem.create(self);
       FmMensagem.Memo1.lines.add('O c�digo de vendedor deste usu�rio difere do c�digo do vendedor do contratante, verifique se est� mesmo correto essa informa��o!');
       FmMensagem.ShowModal;
       FmMensagem.Free;
    end;
   DTVEN := dm.GetParam('DTVEN');
   if (DTVEN = 'SS')  then
   begin
      if QueryUsuariosdt_venda.isnull then
         QueryUsuariosdt_venda.AsDatetime := QueryUsuariosData_Inclusao.AsdateTime;
   end
   else
   if (DTVEN = 'SN') then
   begin
      if QueryUsuariosdt_venda.isnull then
         ValidaCampo(QueryUsuarios,'dt_venda','Data da venda',true);
   end;
   if QueryUsuarios.State = DsInsert then
   begin
     if not QueryUsuariosdt_venda.IsNull then
        if not PValidData(QueryUsuariosdt_venda.AsDateTime) then
           repeat
           until Application.MessageBox('A data de venda est� fora do padr�o, se realmente estiver correta clique no bot�o cancelar para fechar essa mensagem','Confirm��o', MB_YESNOCANCEL + MB_DEFBUTTON2) = IdCancel;
   end
   else
   if QueryUsuarios.State = DsEdit then
   begin
       if DtExclUsu <> QueryUsuariosdata_Exclusao.asDatetime then
          if not PValidData(QueryUsuariosdata_Exclusao.AsDateTime) then
           repeat
           until Application.MessageBox('A data de exclus�o est� fora do padr�o, se realmente estiver correta clique no bot�o cancelar para fechar essa mensagem','Confirm��o', MB_YESNOCANCEL + MB_DEFBUTTON2) = IdCancel;

       if DtVendaUsu <> QueryUsuariosdt_venda.asDatetime then
          if not PValidData(QueryUsuariosdt_venda.AsDateTime) then
           repeat
           until Application.MessageBox('A data de venda est� fora do padr�o, se realmente estiver correta clique no bot�o cancelar para fechar essa mensagem','Confirm��o', MB_YESNOCANCEL + MB_DEFBUTTON2) = IdCancel;
   end;
   if QueryUsuariosnovo_cod_usu_plano.asstring = '' then
     QueryUsuariosnovo_cod_usu_plano.clear;

   if (QueryUsuariosMotivo_Cancelamento.AsInteger in [7,9]) and (QueryUsuariosnovo_cod_usu_plano.IsNull) then
   begin
     ShowMessage('Quando motivo de exclus�o for 7 ou 9 o novo c�digo do usu�rio no plano deve ser preenchido para ser enviado � ANS - SIB');
     abort;
   end;
   if (not QueryUsuariosnovo_cod_usu_plano.IsNull) then
   begin
      if QueryUsuariosMotivo_Cancelamento.IsNull then
      begin
        ShowMessage('O novo c�digo do usu�rio no plano somente deve ser preenchido quando for excluir o usu�rio e o motivo de exlus�o deve ser ou 7 ou 9 (ANS - SIB)');
        abort;
      end
      else
      if  (QueryUsuariosMotivo_Cancelamento.AsInteger <> 7) and (QueryUsuariosMotivo_Cancelamento.AsInteger <> 9) then
      begin
        ShowMessage('O novo c�digo do usu�rio no plano somente deve ser preenchido somente quando o motivo de exlus�o for 7 ou 9 (ANS - SIB)');
        abort;
      end;
   end;
  if (QueryUsuarios.State = dsInsert) and (QueryUsuariosdt_ini_cobertura.AsDateTime <> QueryUsuariosData_Inclusao.AsDateTime) then
  begin
     ShowMessage('Aten��o para alterar a data de inc�o da car�nciaas datas de inclus�o e data de in�cio de car�ncia');
  end;

   if( not QueryUsuariosData_Exclusao.IsNull and not QueryUsuariosDtReinclusao.IsNull) then
     QueryUsuariosDtReinclusao.Clear;
end;

procedure TFormContratante.PageControlContratantesChange(Sender: TObject);
begin
     PanelPesquisa.Visible := False;
//     if PageControlContratantes.ActivePageIndex <> 0 then
//       DBNavigatorContratante.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast]
//     else
//       DBNavigatorContratante.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbPost,nbCancel];

    if PageControlContratantes.ActivePage = TbsDesconto then
    begin
      if dm.ExecutaComando('select count(*) q from permissao_grupo pf , menu_disponivel md, operador o where pf.cd_grupo = o.cd_grupo and o.codigo = ' +  IntToStr(Senha.Codigo_Operador) + ' and md.cd_menu = pf.cd_menu and md.seq_menu = 30 and md.Subseq_menu = 2','q') = '0' then
         if dm.ExecutaComando('select count(*) q from permissao_funcionario pf , menu_disponivel md where md.cd_menu = pf.cd_menu and md.seq_menu = 30 and md.Subseq_menu = 2 and pf.cd_funcionario = ' + IntToStr(Senha.Codigo_Operador)  ,'q') = '0' then
         begin
            PageControlContratantes.ActivePage := TabContratante;
            ShowMessage('Voc� n�o tem permiss�o para acessar essa Aba');
            exit;
         end;

       GroupBox5.Caption := '&Outras Informa��es do Contratante : ' + QueryContratanteNome.AsString;
       GroupBox6.Caption := '&Outras Informa��es do Usu�rio : ' + QueryUsuariosNome.AsString;
    end;

    if PageControlContratantes.ActivePage = TabSheet_recorrencia then
    begin
      if dm.ExecutaComando('select count(*) q from permissao_grupo pf , menu_disponivel md, operador o where pf.cd_grupo = o.cd_grupo and o.codigo = ' +  IntToStr(Senha.Codigo_Operador) + ' and md.cd_menu = pf.cd_menu and md.seq_menu = 30 and md.Subseq_menu = 3','q') = '0' then
         if dm.ExecutaComando('select count(*) q from permissao_funcionario pf , menu_disponivel md where md.cd_menu = pf.cd_menu and md.seq_menu = 30 and md.Subseq_menu = 3 and pf.cd_funcionario = ' + IntToStr(Senha.Codigo_Operador)  ,'q') = '0' then
         begin
            PageControlContratantes.ActivePage := TabContratante;
            ShowMessage('Voc� n�o tem permiss�o para acessar essa Aba');
            exit;
         end;
    end;
end;

procedure TFormContratante.QueryUsuariosCalcFields(DataSet: TDataSet);
var DataAtual : TTime;
    Diferenca : Real;
begin
     if QueryUsuariosData_Nascimento.asString = '' then
        exit;
     DataAtual := dm.Now;
     if (DataAtual - QueryUsuariosData_Nascimento.asDateTime) > 365 then
        begin
          Diferenca := DataAtual - QueryUsuariosData_Nascimento.asDateTime;
          while Diferenca >= 365 do
             Diferenca := Diferenca / 365;
        end
     else
        Diferenca := 0;
     if Diferenca <> 0 then
        QueryUsuariosIdade.asString := FloatToStr(Int(Diferenca)) + ' anos'
     else
        QueryUsuariosIdade.asString := '0 anos';

     if QueryUsuariosOperador_Inclusao.asString <> '' then
        with QueryOperador do
          begin
            Close;
            ParamByName('Codigo_Operador').asInteger := QueryUsuariosOperador_Inclusao.asInteger;
            Open;
            QueryUsuariosNome_Inclusao.asString := QueryOperadorApelido.asString;
          end;

     if QueryUsuariosOperador_Alteracao.asString <> '' then
        with QueryOperador do
          begin
            Close;
            ParamByName('Codigo_Operador').asInteger := QueryUsuariosOperador_Alteracao.asInteger;
            Open;
            QueryUsuariosNome_Alteracao.asString := QueryOperadorApelido.asString;
          end;

     if QueryUsuariosOperador_Exclusao.asString <> '' then
        with QueryOperador do
          begin
            Close;
            ParamByName('Codigo_Operador').asInteger := QueryUsuariosOperador_Exclusao.asInteger;
            Open;
            QueryUsuariosNome_Exclusao.asString := QueryOperadorApelido.asString;
          end;

end;

procedure TFormContratante.DBEditConsultor1Exit(Sender: TObject);
begin
     if QueryContratanteVendedor.asString = '' then
        exit;

     with QueryVendedores do
       begin
         Close;
         SQL[1] := ('where data_exclusao is null and Codigo = ' + QueryContratanteVendedor.asString);
         Open;
       end;

     if QueryVendedores.RecordCount = 0 then
        begin
          ShowMessage('Consultor de Venda N�o Cadastrado ou excluido  !!! [ENTER]');
          //DBEditConsultor1.SetFocus;
          exit;
        end;

     EditNomeVendedor1.Text := QueryVendedoresNome.asString;
end;

procedure TFormContratante.DBEditCodigoExit(Sender: TObject);
begin
     if QueryContratante.State in [dsbrowse] then
        exit;
     with QueryContratanteAuxiliar do
        begin
          Close;
          SQL[1] := ('where Codigo = ' + QueryContratanteCodigo.asString);
          Open;
          if RecordCount <> 0 then
             begin
               ShowMessage('N�mero de Contrato J� Digitado Anteriormente !!! [ENTER]');
               DBEditCodigo.SetFocus;
             end;
        end;
end;

procedure TFormContratante.DBEditTitularDebEnter(Sender: TObject);
begin
     if QueryContratante.State in [dsbrowse] then
        exit;
     QueryContratanteTitular_Conta.asString := QueryContratanteNome.asString;
end;

procedure TFormContratante.DBEditDigitoKeyPress(Sender: TObject;
  var Key: Char);
begin
//     if not (key in ['0'..'9', #8, 'X', 'x']) then key := #0;
end;

procedure TFormContratante.DBEditContaEnter(Sender: TObject);
begin
//     MessageDlg('Bastante Aten��o na Digita��o do N�mero da Conta e do D�gito !!!!', mtInformation, [mbOk], 0);
end;

procedure TFormContratante.DBEditDigitoExit(Sender: TObject);
begin
//     MessageDlg('Favor Executar a Verifica��o do D�gito da Conta !!!!', mtInformation, [mbOk], 0);
end;

procedure TFormContratante.SpeedButtonChecarClick(Sender: TObject);
begin
     Application.CreateForm(TFormVerificaDigito, FormVerificaDigito);
     FormVerificaDigito.ShowModal;
     FormVerificaDigito.Free;
end;
procedure TFormContratante.ValidaContaCorrente;
begin
  if dm.GetParam('VALICC') = 'S' then
  begin
    if QueryTipoCobrancaeh_banco.AsBoolean then
    begin
     if (Length(QueryContratanteAgencia.AsString) <> QueryTipoCobrancaqt_dg_agencia.AsInteger) or
        (Length(QueryContratanteConta.AsString) <> QueryTipoCobrancaqt_dg_conta.AsInteger) or
        (Length(QueryContratanteDigito.AsString) <> QueryTipoCobrancaqt_dg_dg_conta.AsInteger) then
     begin
      ShowMessage('ATEN��O: Os dados para d�bito autom�tico est�o incorreto, Verifique a quantidade de d�gitos para este banco: ' + #13 +
                  QueryTipoCobrancaqt_dg_agencia.AsString + ' d�gitos para a ag�ncia' + #13 +
                  QueryTipoCobrancaqt_dg_conta.AsString   + ' d�gitos para a conta corrente ' + #13 +
                  QueryTipoCobrancaqt_dg_dg_conta.AsString + ' d�gitos para o d�gito da conta' + #13 +
                  'Observa��o: ' + #13 +
                  QueryTipoCobrancaobs.AsString);

       end;
   end;
  end;
end;
procedure TFormContratante.QueryContratante_BeforePost(DataSet: TDataSet);
var Digito_Str : String[2];
    Man : integer;
    OrcTrat : string;
begin
  OrcTrat := '';
  ValidaContaCorrente;
  validaEmails();
   //coloquei aqui porque h� pressa, o ideal eh colcoar parametros no cadastro do banco.

  if QueryContratanteForma_Cobranca.AsInteger = 104 then
  begin
     if QueryContratanteBanco.AsInteger <> 104 then
     begin
        ShowMessage('Para d�bito autom�tico CEF o banco deve ser Obrigatoriamente 104');
        Abort;
        Exit;
     end;
     if length(QueryContratanteAgencia.AsString) <> 4 then
     begin
        ShowMessage('Para d�bito autom�tico CEF o agencia deve ter Obrigatoriamente obrigatoriametne 4 d�gitos, preencha com zeros a esquerda se for o caso');
        Abort;
        Exit;
     end;
     if length(QueryContratanteConta.AsString) <> 11 then
     begin
        ShowMessage('Para d�bito autom�tico CEF a conta corrente deve ter Obrigatoriamente obrigatoriametne 11 d�gitos');
        Abort;
        Exit;
     end;
     if length(QueryContratanteDigito.AsString) <> 1 then
     begin
        ShowMessage('Para d�bito autom�tico CEF o d�gito da conta corrente deve ter Obrigatoriamente obrigatoriametne 1 d�gito');
        Abort;
        Exit;
     end;
  end;
  if (QueryContratantecd_cidade_res.AsInteger = 2) or
     (QueryContratantecd_cidade_com.AsInteger = 2) or
     (QueryContratantecd_cidade_com.IsNull)        or
     (QueryContratantecd_cidade_res.IsNull) then // 2 � n�o informada
  begin
     ShowMessage('A Cidade comercial e residencial s�o obrigat�rias,favor informar !');
     Abort;
  end;

  // temporario, futuramente excluir os dois campos abaixo, ja que foi criada a tabela cidade
  // deve-se verificar em todos os modulos que utilizam os campos abaixo.

  QueryContratanteCidade_Comercial.AsString   := DBLookupComboBox3.Text;
  QueryContratanteCidade_Residencial.AsString := DBLookupComboBox2.Text;


  if dm.GetParam('EXIPRO') = 'S' then
     if QueryContratanteProfissao.IsNull or (QueryContratanteProfissao.AsString = '') then
     begin
        ShowMessage('� Obrigat�rio informar a profiss�o/Ramo de Atividade  do contratante !');
        Abort;
     end;

   // se tiver excluido nao valida CGC/CPF
  if QueryContratanteExclusao.IsNull then
  begin
     if Length(QueryContratanteBairro_Comercial.AsString) > 30 then
     begin
       ShowMessage('Bairro comercial n�o pode ter mais que 30 caracteres');
       abort;
     end;
     if Length(QueryContratanteBairro_Residencial.AsString) > 30 then
     begin
       ShowMessage('Bairro residencial n�o pode ter mais que 30 caracteres');
       abort;
     end;
     if QueryContratanteNumero_Res.IsNull OR (QueryContratanteNumero_Res.AsString = '') then
     begin
       ShowMessage('N�mero residencial deve ser preenchido');
       abort;
     end;
     if QueryContratanteNumero_Com.IsNull  OR (QueryContratanteNumero_Com.AsString = '') then
     begin
       ShowMessage('N�mero comercial deve ser preenchido');
       abort;
     end;
     if not enio.E_Numerico(QueryContratanteNumero_Com.AsString) then
     begin
       ShowMessage('N�mero comercial deve conter apenas n�meros');
       abort;
     end;
     if not enio.E_Numerico(QueryContratanteNumero_Res.AsString) then
     begin
       ShowMessage('N�mero residencial deve conter apenas n�meros');
       abort;
     end;


     if QueryContratanteEmpresa.AsBoolean then // se for PJ valida se o tamanho do cgc � 14
     begin
        if not ValidaCGC(QueryContratanteCGC_CPF.AsString) then
        begin
           ShowMessage('CNPJ do contratante  ' + QueryContratanteNome.AsString + ' inv�lido !');
           Abort;
        end;

        //verifica para novo cadastro de empresa, os campos de resp. est�o preenchidos
        if QueryContratante.State=dsInsert then
          if (QueryContratanteNome_respEmpresa.IsNull) or (QueryContratanteCPF_respEmpresa.IsNull) then
          begin
             ShowMessage('Obrigat�rio preencher Nome e CPF do Respos�vel pela empresa !');
             Abort;
          end;
     end
     else // se for PF valida se tem 11 digitos
     if not ValidaCPF(QueryContratanteCGC_CPF.AsString) then
     begin
        ShowMessage('CPF do contratante  ' + QueryContratanteNome.AsString + ' inv�lido !');
        Abort;
     end;
     if (not QueryContratantelg_enviarBoletoPorWhats.AsBoolean and not QueryContratantelg_enviarBoletoPorEmail.AsBoolean and not QueryContratantelg_enviarBoletoPorCorreios.AsBoolean) then
     begin
        ShowMessage('Deve ser informa uma op��o de envio do boleto , por e-mail, por correio ou por WhatasApp !');
        Abort;
     end;
     if QueryContratantelg_enviarBoletoPorWhats.AsBoolean then
     begin
         if (QueryContratanteCodigo.IsNull) then
         begin
            ShowMessage('Salve primeiro o registro do contratante, antes de selecionar boleto por WhatsApp, ap�s salvar, cadastre um telefone celular e depois escolha a op��o "Boleto por WhatsApp !');
            Abort;
         end
         else
         if (dm.execmd('select count(*) q from celulares where codigo = ' + QueryContratanteCodigo.AsString,'q') = '0') then
         begin
            ShowMessage('Para envio de boleto por WhatasApp � necess�rio cadastrar pelo menos um n�mero de telefone celular !');
            Abort;
         end;
     end
     else if QueryContratantelg_enviarBoletoPorEmail.AsBoolean then
     begin
         if (QueryContratanteemail.AsString = '') and (QueryContratanteemail2.AsString = '') and (QueryContratanteemail.AsString = '') then
         begin
            ShowMessage('Para envio de boleto por e-mail � necess�rio cadastrar pelo menos um e-mail !');
            Abort;
         end;
     end;
     //Querycontratantelg_cobrarTaxaBoleto.AsBoolean := QueryContratantelg_enviarBoletoPorCorreios.AsBoolean;

  end;

  ValidaCampo(QueryContratante,'empresa','Empresa',true);


  if QueryContratanteEmpresa.AsBoolean=true then
    if QueryContratante.State = dsInsert then
      begin
        ValidaCampo(QueryContratante,'Nome_respEmpresa','Nome_respEmpresa',false);
        ValidaCampo(QueryContratante,'CPF_respEmpresa','CPF_respEmpresa',false);
      end;

  if ((QueryContratanteForma_Cobranca.AsString = '') or (QueryContratanteVencimento.AsInteger = null) or
     (QueryContratanteBanco.AsString = '') or (QueryContratanteAgencia.AsString = '') or
     (QueryContratanteConta.AsString = '') or (QueryContratanteDigito.AsString = '') or
     
      (QueryContratanteperc_desconto.AsInteger = null)) then
     begin
        showmessage('� obrigat�rio de todos os campos da Cobran�a e D�bito Autom�tico !');
        DBLookupComboBoxCobranca.SetFocus;
        abort;
        exit;
     end;
  if not (QueryContratanteVencimento.AsInteger in [1..30]) then
  begin
     ShowMessage('Vencimento deve ser de 1 a 30');
     abort;
  end;
  Man := 0;
  if QueryContratanteExclusao.asString <> '' then
     Exclusao := True;

  if not Exclusao then
     VerificaCPFUsuarios(QueryContratanteCodigo.AsString);

  if QueryContratante.State in [dsEdit] then begin
     QueryContratanteOperador_Alteracao.asInteger := Senha.Codigo_Operador;
     if Exclusao then begin

           QueryUsuarios.first;
           while not QueryUsuarios.eof do
           begin

                 QueryManutencao.close;
                 QueryManutencao.ParamByName('Usuario').AsInteger := QueryUsuariosCodigo_Completo.asInteger;
                 QueryManutencao.ParamByName('Data1').AsDateTime  := dm.Date;
                 QueryManutencao.ParamByName('Data2').AsDateTime  := dm.Date;
                 QueryManutencao.open;
                 if QueryManutencao.recordcount <> 0 then
                   Man := Man + 1;

                 ADOQueryOrcTratamento.Close;
                 ADOQueryOrcTratamento.sql[1] := QueryUsuariosCodigo_Completo.AsString;
                 ADOQueryOrcTratamento.open;
                 if not ADOQueryOrcTratamento.eof and ADOQueryOrcTratamento.bof then
                   OrcTrat := OrcTrat + ADOQueryOrcTratamento.FieldByName('numero').AsString + ', ';


              QueryUsuarios.next;
           end; //while not QueryUsuarios.eof do

           if OrcTrat <> '' then
           begin
              if MessageDlg('Usu�rio deste Contratante cont�m or�amentos em tratamento (' + OrcTrat + '). Confirma exclus�o ?',
                            mtConfirmation, [mbYes, mbNo], 0) = mrNo then
              begin
                   SysUtils.Abort;
              end;

           end;
           if Man <> 0 then
           begin
              if MessageDlg('Usu�rio deste Contratante cont�m Manuten��o ativa. Confirma exclus�o ?',
                            mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                 QueryContratanteOperador_Exclusao.asInteger := Senha.Codigo_Operador;
                 if MessageDlg('Deseja excluir os usu�rios deste Contratante ?',
                                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 begin
                    Exclusao_Usu := True;
                    QueryUsuarios.Close;
                    QueryUsuarios.SQL[1] := ('where Codigo = ' + QueryContratanteCodigo.asString);
                    QueryUsuarios.Open;
                    QueryUsuarios.first;
                    while not QueryUsuarios.eof do
                    begin
                       if QueryUsuariosData_Exclusao.AsString = '' then
                       begin
                          QueryUsuarios.edit;
                          QueryUsuariosData_Exclusao.AsDateTime := QueryContratanteExclusao.AsDateTime;
                          QueryUsuariosMotivo_Cancelamento.AsInteger := QueryContratanteMotivo_Cancelamento.AsInteger;
                          QueryUsuariosOperador_Exclusao.AsInteger := Senha.Codigo_Operador;
                          QueryUsuarios.post;
                       end;
                       QueryUsuarios.next;
                    end;

                    Exclui_Usuarios;
                    Exclusao_Usu := false;
                 end;
              end
              else begin
                 QueryContratanteOperador_Exclusao.AsString := '';
                 QueryContratanteExclusao.AsString := '';
              end;
           end
           else begin
              QueryContratanteOperador_Exclusao.asInteger := Senha.Codigo_Operador;
              if MessageDlg('Deseja excluir os usu�rios deste Contratante ?',
                             mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              begin
                  Exclusao_Usu := True;

                  QueryUsuarios.Close;
                  QueryUsuarios.SQL[1] := ('where Codigo = ' + QueryContratanteCodigo.asString);
                  QueryUsuarios.Open;
                  QueryUsuarios.first;
                  while not QueryUsuarios.eof do
                  begin
                       if QueryUsuariosData_Exclusao.AsString = '' then
                       begin
                          QueryUsuarios.edit;
                          QueryUsuariosData_Exclusao.AsDateTime := QueryContratanteExclusao.AsDateTime;
                          QueryUsuariosMotivo_Cancelamento.AsInteger := QueryContratanteMotivo_Cancelamento.AsInteger;
                          QueryUsuariosOperador_Exclusao.AsInteger := Senha.Codigo_Operador;
                          QueryUsuarios.post;
                       end;
                       QueryUsuarios.next;
                  end;
                 Exclui_Usuarios;
                 Exclusao_Usu := false;
              end;
           end;
     end
     else
     begin
        QueryContratanteOperador_Exclusao.asString := '';
     end;
  end;
  if QueryContratante.State = dsInsert then
  begin
    if QueryContratantecdOrigemContato.IsNull then
    begin
       ShowMessage('Opera��o Cancelada, informe como conheceu o conv�nio por favor!');
       abort;
    end;
    if dm.execmd('select count(*) q from plano where ativo = 0 and codigo = ''' + QueryContratantePlano.AsString + '''','q') <> '0' then
    begin
       ShowMessage('Opera��o Cancelada, Plano n�o existe ou j� cancelado !');
       abort;
    end;
  end;
  if (QueryContratanteidentificacao_bancaria.AsString <> '') and (Length(QueryContratanteidentificacao_bancaria.AsString) <> 25) then
  begin
     MessageDlg('o Campo Identifica��o banc�ria na aba "outras op��es" deve conter necessariamente 25 caracteres quando preenchido', mtError, [mbOk], 0);
     SysUtils.Abort;
  end;
  
  if QueryContratanteConta.asString <> '' then begin
     Application.CreateForm(TFormVerificaDigito, FormVerificaDigito);
     //FormVerificaDigito.ShowModal;
     FormVerificaDigito.Free;

     if VerificaDigito.Verificado = False then exit;

     if VerificaDigito.Botao = 5 then
        Digito_Str := IntToStr(VerificaDigito.Digito) + IntToStr(VerificaDigito.Resto)
     else
        Digito_Str := IntToStr(VerificaDigito.Digito);

     if QueryContratanteDigito.asString <> Digito_Str then begin
        MessageDlg('O D�gito desta Conta est� Incorreto !!!', mtError, [mbOk], 0);
        SysUtils.Abort;
        DBEditDigito.SetFocus;
        DBEditDigito.SelectAll;
     end;

  end;



end;
procedure TFormContratante.validaEmails();

begin
   dm.execmd('select email, email3, email2 from contratante where codigo = ''' + QueryContratanteCodigo.AsString + '''','email');
   if dm.QueryGlobal.RecordCount > 0 then
   begin
      validaEmailUnico(dm.QueryGlobal.FieldByName('email').AsString,QueryContratanteemail.AsString);
      validaEmailUnico(dm.QueryGlobal.FieldByName('email2').AsString,QueryContratanteemail2.AsString);
      validaEmailUnico(dm.QueryGlobal.FieldByName('email3').AsString,QueryContratanteemail3.AsString);
   end
   else
   begin       // ta incluido registro
      validaEmailUnico('',QueryContratanteemail.AsString);
      validaEmailUnico('',QueryContratanteemail.AsString);
      validaEmailUnico('',QueryContratanteemail.AsString);
   end;
end;

procedure TFormContratante.validaEmailUnico(emailBase,emailTela : string); // procedure dentro da procedure
begin
    //if trim(dm.QueryGlobal.FieldByName('email').AsString) <> trim(QueryContratanteemail.AsString) then
    if (trim(emailTela) <> '') and (trim(emailBase) <> trim(emailTela)) then // trim(emailTela) <> '' pode estar limpando o e-mail, ou seja n�o tem mais e-mail ent�o deixa passar 
    begin
       if not dm.ValidarEMail(emailTela) then
       begin
          ShowMessage('email ' + emailTela + ' inv�lido !');
          sysutils.Abort;
       end;
    end;

end;

procedure TFormContratante.VerificaCPFUsuarios(cdcontrat: String);
begin
    if cdcontrat = '' then
      exit;
    dm.execmd('select codigo_completo, nome, cpf, cast( datediff(day,data_nascimento,getdate()) /365.25 as int) idade, situacao from usuario where data_exclusao is null and codigo = ' + cdcontrat,'idade');
    while not dm.QueryGlobal.eof do
    begin
       if (dm.QueryGlobal.FieldByName('idade').AsInteger > 17) or (Uppercase(dm.QueryGlobal.FieldByName('situacao').AsString) = 'TITULAR') or (dm.QueryGlobal.FieldByName('cpf').AsString <> '') then
       begin
          if not ValidaCPF(dm.QueryGlobal.FieldByName('cpf').AsString) then
          begin
            ShowMessage('N�o � poss�vel realizar a altera��o, pois o CPF do usu�rio  "' + dm.QueryGlobal.FieldByName('codigo_completo').AsString + ' - ' + dm.QueryGlobal.FieldByName('nome').AsString + '" est� inv�lido !');
            abort;
         end;
       end;
        dm.QueryGlobal.next;
   end;

end;
procedure TFormContratante.QueryContatoAfterInsert(DataSet: TDataSet);
begin
     QueryContatoData_Contato.asDateTime := dm.Date;
     QueryContatoHora_Contato.asDateTime := Time;
     QueryContatoCodigo_Contratante.asInteger := QueryContratanteCodigo.asInteger;
     QueryContatoDigito_Usuario.AsString := '0';
     QueryContatoOperador.asInteger := Senha.Codigo_Operador;
     with QueryOperador do
       begin
         Close;
         ParamByName('Codigo_Operador').asInteger := QueryContatoOperador.asInteger;
         Open;
         EditNomeOperador.Text := QueryOperadorApelido.asString;
       end;

     DBEditDataAgenda.SetFocus;
end;

procedure TFormContratante.QueryContatoAfterPost(DataSet: TDataSet);
begin
   QueryContato.Close;
   QueryContato.Open;
end;

procedure TFormContratante.AchaDigito;
var Contador : Integer;
begin
   if QueryContratanteCodigo.asString = '' then
      exit;
     Contador := 0;
     with QueryUsuariosAuxiliar do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + QueryContratanteCodigo.asString);
         Open;
         First;
         while not eof do
           begin
             if QueryUsuariosAuxiliarDigito.asInteger <> Contador then
                begin
                   QueryUsuariosDigito.asInteger := Contador;
                   exit;
                end;
              Contador := Contador + 1;
              Next;
            end;
       end;
     QueryUsuariosDigito.asInteger := Contador;
end;

procedure TFormContratante.TabUsuariosEnter(Sender: TObject);
begin
     DBEditNomeUsuario.SetFocus;
//     DBNavigatorContratante.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
end;

procedure TFormContratante.DBGridPesquisaAfiliadoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormContratante.DBGridPesquisaAfiliadoExit(Sender: TObject);
begin
//     BitBtnFechar.SetFocus;
end;

procedure TFormContratante.DBEditCodigoVendedorUsuarioExit(
  Sender: TObject);
begin
     if QueryUsuariosVendedor.asString = '' then
        exit;

     with QueryVendedores do
       begin
         Close;
         SQL[1] := ('where data_exclusao is null and Codigo = ' + QueryUsuariosVendedor.asString);
         Open;
       end;

     if QueryVendedores.RecordCount = 0 then
        begin
          ShowMessage('Consultor de Venda N�o Cadastrado ou excluido !!! [ENTER]');
          //DBEditCodigoVendedorUsuario.SetFocus;
          exit;
        end;

     EditNomeVendedorUsuario.Text := QueryVendedoresNome.asString;
end;

procedure TFormContratante.DataSourceUsuariosDataChange(Sender: TObject;
  Field: TField);
begin
     if QueryUsuariosVendedor.asString = '' then
        exit;

     with QueryVendedores do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + QueryUsuariosVendedor.asString);
         Open;
       end;

     EditNomeVendedorUsuario.Text := QueryVendedoresNome.asString;
end;

procedure TFormContratante.DBEditNomeExit(Sender: TObject);
begin
     if QueryContratante.State in [dsbrowse, dsEdit] then
        exit;

     with QueryContratanteAuxiliar2 do
       begin
         Close;
         SQL[1] := 'where Nome= :Nome';
         Params[0].DataType  := ftString;
         Params[0].ParamType := ptInput;
         ParamByName('Nome').asString := QueryContratanteNome.asString;
         Open;
         if RecordCount <> 0 then
            begin
              MessageDlg('J� Existe um Contratante com este Nome, Favor Verificar !!!!' + #13
                + 'Contrato N� ' + QueryContratanteAuxiliar2Codigo.asString, mtInformation, [mbOk], 0);
            end;
       end;
end;

procedure TFormContratante.SpeedButtonLimpaDataClick(Sender: TObject);
begin

    if (QueryContratanteExclusao.AsString <> '') AND (MessageDlg('Deseja reativar os beneficiarios excluidos na mesma data do contratante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) then
    begin
        dm.execmd('set dateformat dmy update usuario set data_Exclusao = null, motivo_cancelamento = null, operador_Exclusao = null where data_Exclusao is null and codigo = ' + QueryContratanteCodigo.asString + ' and data_exclusao = ''' + QueryContratanteExclusao.AsString + '''');
        QueryUsuarios.Close;
        QueryUsuarios.Open;
    end;


     if QueryContratante.state in [dsbrowse] then
        begin
          QueryContratante.Edit;
          QueryContratanteExclusao.asString := '';
          QueryContratanteMotivo_Cancelamento.AsInteger := 0;
          Exclusao := False;
        end
     else
        begin
          QueryContratanteExclusao.asString := '';
          QueryContratanteMotivo_Cancelamento.AsInteger := 0;
          Exclusao := False;
        end;

end;

procedure TFormContratante.SpeedButton1Click(Sender: TObject);
begin
   if QueryUsuarios.state in [dsbrowse] then
   begin
      QueryUsuarios.Edit;
      QueryUsuariosData_Exclusao.asString := '';
      QueryUsuariosExclusao_Susep.AsString := '';
      QueryUsuariosDtReinclusao.AsString := dm.GetDataSrv;
      QueryUsuariosMotivo_Cancelamento.AsInteger := 0;
      Exclusao_usu := False;
   end
   else
   begin
      QueryUsuariosData_Exclusao.asString := '';
      QueryUsuariosMotivo_Cancelamento.AsInteger := 0;
      Exclusao_usu := False;
   end;

end;

procedure TFormContratante.QueryContratante_CalcFields(DataSet: TDataSet);
begin
     if QueryContratanteOperador_Inclusao.asString <> '' then
        with QueryOperador do
          begin
            Close;
            ParamByName('Codigo_Operador').asInteger := QueryContratanteOperador_Inclusao.asInteger;
            Open;
            QueryContratanteNome_Inclusao.asString := QueryOperadorApelido.asString;
          end;

     if QueryContratanteOperador_Alteracao.asString <> '' then
        with QueryOperador do
          begin
            Close;
            ParamByName('Codigo_Operador').asInteger := QueryContratanteOperador_Alteracao.asInteger;
            Open;
            QueryContratanteNome_Alteracao.asString := QueryOperadorApelido.asString;
          end;

     if QueryContratanteOperador_Exclusao.asString <> '' then
        with QueryOperador do
          begin
            Close;
            ParamByName('Codigo_Operador').asInteger := QueryContratanteOperador_Exclusao.asInteger;
            Open;
            QueryContratanteNome_Exclusao.asString := QueryOperadorApelido.asString;
          end;
end;

procedure TFormContratante.DBEditExclusaoExit(Sender: TObject);
begin
     if QueryContratanteExclusao.asString <> '' then
        Exclusao := True;
end;

procedure TFormContratante.QueryOrcamentosAfterPost(DataSet: TDataSet);
begin
   limpaFiltros();
   Numero := QueryOrcamentosNumero.asInteger;
   filtraOrcamento();
   QueryOrcamentos.Locate('Numero', Numero, [loCaseInsensitive]);
end;

procedure TFormContratante.QueryOrcamentosCalcFields(DataSet: TDataSet);
begin
{     with QueryUsuariosAuxiliar do
       begin
         Close;
         SQL[1] := 'where Codigo = ' + QueryOrcamentosContratante.asString
                   + ' and Digito = ''' + Copy(QueryOrcamentosUsuario.asString, Length(QueryOrcamentosUsuario.asString), 1) + '''';
         Open;
       end;}

     with QueryUsuariosAuxiliar do
       begin
         Close;
         SQL[1] := 'where Codigo_completo = ' + QueryOrcamentosUsuario.asString;
         Open;
       end;
     QueryOrcamentosNome_Usuario.asString := QueryUsuariosAuxiliarNome.asString;
     if QueryUsuariosAuxiliarData_Exclusao.IsNull then
        QueryOrcamentosUsuarioAtivo.AsBoolean:=true
     else
        QueryOrcamentosUsuarioAtivo.AsBoolean:=false;
end;

procedure TFormContratante.DBEditPlanoExit(Sender: TObject);
begin
     if QueryContratantePlano.asString = '' then
        exit;

     with QueryPlanos do
       begin
         Close;
         ParamByName('Plano').asInteger := QueryContratantePlano.AsInteger;
//         SQL[1] := ('where Codigo = ' + QueryContratantePlano.asString);
         Open;

         if RecordCount = 0 then
            begin
              ShowMessage('Plano N�o Cadastrado ou j� exclu�do !!! [ENTER]');
              //DBEditPlano.SetFocus;
              exit;
            end;
       end;
     EditNomePlano.Text := QueryPlanosNome_Plano.asString;
     //EditNomeCobertura.Text := QueryPlanosNome_Cobertura.asString;
     LabelCobertura.Caption := QueryPlanosNome_Cobertura.asString;
end;

procedure TFormContratante.BitBtnPesquisaPlanoClick(Sender: TObject);
begin
     if FormPesquisaPlanos.ShowModal <> mrOK then
        Exit;
     with QueryPlanos do
       begin
         Close;
         ParamByName('Plano').asInteger := PesquisaPlanos.FormPesquisaPlanos.QueryPlanosCodigo.AsInteger;
         Open;
       end;

     if QueryContratante.State in [dsbrowse] then
        exit;

     QueryContratantePlano.asInteger := QueryPlanosPlano.asInteger;
     DBEditPlano.SetFocus;
end;

procedure TFormContratante.BitBtnPesquisaVendedorClick(Sender: TObject);
begin
     if FormPesquisaVendedor.ShowModal <> mrOK then
        Exit;
     with QueryVendedores do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + PesquisaVendedor.FormPesquisaVendedor.QueryVendedoresCodigo.asString);
         Open;
       end;

     if QueryContratante.State in [dsbrowse] then
        exit;

     QueryContratanteVendedor.asInteger := QueryVendedoresCodigo.asInteger;
     DBEditConsultor1.SetFocus;     
end;

procedure TFormContratante.BitBtnPesquisaContratanteClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
     FormPesquisaContratante.ShowModal;

     if QueryUsuarios.state in [dsEdit, dsInsert] then
        begin
          QueryUsuariosContratante_Titular.asInteger := PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asInteger;
          DBEditContratanteTitular.SetFocus;
        end;
     FormPesquisaContratante.Free;
end;

procedure TFormContratante.DataSourceContatoDataChange(Sender: TObject;
  Field: TField);
begin
     with QueryOperador do
       begin
         Close;
         ParamByName('Codigo_Operador').asInteger := QueryContatoOperador.asInteger;
         Open;
         EditNomeOperador.Text := QueryOperadorApelido.asString;
       end;
end;

procedure TFormContratante.BitBtnImprimirClick(Sender: TObject);
begin
   Case Senha.Cod_Empresa of
      1: begin
          if QueryContratanteCodigo.IsNull then
            exit;
          fmSelRelEmpresa := TfmSelRelEmpresa.create(self);
          fmSelRelEmpresa.ShowModal;
          fmSelRelEmpresa.free;
          exit;
           
           Panel5.Visible := False;
           GroupBoxPesquisa.Visible := True;
           MaskEditDataRel.Text := DateToStr(dm.Date());
           MaskEditDataRel.SetFocus;
         end;
      2: begin
           QRUsuariosContratante_2.Codigo_Contratante := QueryContratanteCodigo.asInteger;
           Application.CreateForm(TQRListaUsuarioContratante_2, QRListaUsuarioContratante_2);
           QRUsuariosContratante_2.QRListaUsuarioContratante_2.QRLabelContratante.Caption := Copy(QueryContratanteNome.asString, 1, 30);
           QRListaUsuarioContratante_2.Preview;
           QRListaUsuarioContratante_2.Free;
         end;
   end;
end;

procedure TFormContratante.DBGridAfiliadosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case key of
     vk_f5:
       begin
         Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
         FormPesquisaUsuarios.ShowModal;
         if PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo.IsNull then
            exit;
         with QueryContratante do
           begin
             Close;
             SQL[1] := ('where Codigo = ' + IntToStr(PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo.asInteger));
             Open;
           end;
           if QueryContratante.State in [dsbrowse] then
             exit;
         end;
       end;
end;

procedure TFormContratante.ButtonVisualizaOrcClick(Sender: TObject);
var NrOrc : string;
begin
     Orc := True;
     //Application.CreateForm(TFormOrcamentos, FormOrcamentos);
     FormOrcamentos.FormCreate(Sender);
     FormOrcamentos.BitBtnContratante.Visible := false; // nao permite ficar indo e vindo por causa dos erros de acess violation...
     FormOrcamentos.EditProcura.Text := QueryOrcamentosNumero.AsString;
     FormOrcamentos.Tag := 0;
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     Application.CreateForm(TFormPesquisaDentistas, FormPesquisaDentistas);     
     FormOrcamentos.ShowModal;
     // clicou no ataho para alterar status
     if FormOrcamentos.AtalhoAltSt then
     begin
        NrOrc := FormOrcamentos.NrOrcamento;
        NrOrc := FormOrcamentos.NrOrcamento;
        //FormOrcamentos.Free;
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
     try
         FormOrcamentos.fechaQuerys;
        //FormOrcamentos.Free;
     except on E: Exception do
     begin
        DM.GravaLog('Formcontratante','ButtonVisualizaOrcClick', senha.Apelido + ' erro : ' +  e.message);
        ShowMessage('Erro ao liberar o formOrcamentos, detalhe do erro : ' + e.message)
     end;
     end;
     //FormOrcamentos.Free;
     Orc := False;

end;

procedure TFormContratante.fechaQuerys;
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


procedure TFormContratante.DBEditDataExclusaoExit(Sender: TObject);
begin
  if QueryUsuariosData_Exclusao.AsString <> '' then
     Exclusao_Usu := True;
end;

procedure TFormContratante.SpeedButtonApagaGrupoClick(Sender: TObject);
begin
     if QueryContratante.state in [dsbrowse] then
        begin
          QueryContratante.Edit;
          QueryContratanteGrupo_Contratante.AsString := '';
        end
     else
        QueryContratanteGrupo_Contratante.AsString := '';
end;

procedure TFormContratante.Exclui_Usuarios;
begin
   With QueryUsuariosAuxiliar do
     begin
        close;
        SQL[1] := 'Where contratante_titular = ' + IntToStr(QueryContratanteCodigo.AsInteger);
        open;
        first;
        while not eof do begin
           if QueryUsuariosAuxiliarData_Exclusao.AsString = '' then begin
              edit;
              QueryUsuariosAuxiliarData_Exclusao.AsDateTime := QueryContratanteExclusao.AsDateTime;
              QueryUsuariosAuxiliarMotivo_Cancelamento.AsInteger := QueryContratanteMotivo_Cancelamento.AsInteger;
              post;
           end;
           if QueryUsuariosAuxiliarContratante_Titular.AsInteger <> QueryUsuariosAuxiliarCodigo.AsInteger then begin
              with QueryContratanteAuxiliar do
                begin
                  Close;
                  ParamByName('Codigo').asInteger := QueryUsuariosAuxiliarCodigo.asInteger;
                  Open;
                  if QueryContratanteAuxiliarExclusao.asString = '' then begin
                     edit;
                     QueryContratanteAuxiliarOperador_Alteracao.asInteger := Senha.Codigo_Operador;
                     QueryContratanteAuxiliarMotivo_Cancelamento.AsInteger := QueryContratanteMotivo_Cancelamento.AsInteger;
                     QueryContratanteAuxiliarExclusao.AsDateTime := QueryContratanteExclusao.AsDateTime;
                     post;
                  end;
                end;
           end;
           next;
        end;
     end;
end;


procedure TFormContratante.DBEditCNPJCPFExit(Sender: TObject);
begin
     if not QueryContratanteCGC_CPF.IsNull then
     begin
      if QueryContratanteEmpresa.AsBoolean then // se for PJ valida se o tamanho do cgc � 14
      begin
           if not ValidaCGC(QueryContratanteCGC_CPF.AsString) then
           begin
              ShowMessage('CNPJ do contratante  ' + QueryContratanteNome.AsString + ' inv�lido !');
              Abort;
           end;
      end
      else // se for PF valida se tem 11 digitos
      if not ValidaCPF(QueryContratanteCGC_CPF.AsString) then
      begin
        ShowMessage('CPF do contratante  ' + QueryContratanteNome.AsString + ' inv�lido !');
        Abort;
      end;
     end; 

     if QueryContratante.State in [dsbrowse, dsEdit] then
        exit;


     with QueryContratanteAuxiliar2 do
       begin
         Close;
         SQL[1] := 'where CGC_CPF= :CGC';
         Params[0].DataType  := ftString;
         Params[0].ParamType := ptInput;
         ParamByName('CGC').asString := QueryContratanteCGC_CPF.AsString;
         Open;
         if RecordCount <> 0 then
            begin
              MESSAGEDLG('J� EXISTE UM CONTRATANTE COM ESTE CGC_CPF, FAVOR VERIFICAR !!!!' + #13
                + 'CONTRATO N� ' + QUERYCONTRATANTEAUXILIAR2CODIGO.ASSTRING, MTINFORMATION, [MBOK], 0);
            end;
       end;
end;

procedure TFormContratante.DBEditComplExit(Sender: TObject);
begin
   Logradouro := QueryContratanteEndereco_Residencial.AsString +
                 QueryContratanteNumero_Res.AsString +
                 QueryContratanteComplemento_Res.AsString;
   if length(Logradouro) > 40 then begin
      showmessage('Qtde de d�gitos do endere�o, n�mero e complemento maior de 40!');
      DBEditEndereco.SetFocus;
   end;
end;

procedure TFormContratante.DBEditComplComExit(Sender: TObject);
begin
   Logradouro := QueryContratanteEndereco_Comercial.AsString +
                 QueryContratanteNumero_Com.AsString +
                 QueryContratanteComplemento_Com.AsString;
   if length(Logradouro) > 40 then begin
      showmessage('Qtde de d�gitos do endere�o, n�mero e complemento maior de 40!');
      DBEditEndComercial.SetFocus;
   end;
end;

procedure TFormContratante.DBComboBoxStatusOrcKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
    VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
  end;
end;

procedure TFormContratante.ButtonVisualizaTitClick(Sender: TObject);
begin


   if QueryReceberData_Pagamento.AsString = '' then
   begin
     FormTituloReceber := TFormTituloReceber.Create(Self);
     FormTituloReceber.EditProcura.Text := QueryContratanteCodigo.AsString;
     FormTituloReceber.EditProcura.OnExit(Sender);
     FormTituloReceber.QueryTitulo.Locate('numero_titulo',QueryReceberNumero_Titulo.AsInteger,[]);
     FormTituloReceber.ShowModal;
     FormTituloReceber.free;


   end
   else
   begin
     FormTituloBaixados := TFormTituloBaixados.Create(Self);
     FormTituloBaixados.EditProcura.Text := QueryContratanteCodigo.AsString;
     FormTituloBaixados.EditProcura.OnExit(Sender);
     FormTituloBaixados.QueryTitulo.Locate('numero_titulo',QueryReceberNumero_Titulo.AsInteger,[]);
     FormTituloBaixados.Show;
   end;

end;

procedure TFormContratante.BitBtnExcluirClick(Sender: TObject);
begin

   with QueryEspeciais do
     begin
       Close;
       Parameters[0].Value := Senha.Codigo_Operador;
       Open;
       if recordcount = 0 then
       begin
         Showmessage('Usu�rio n�o tem permiss�o para executar esta opera��o [ENTER]');
         exit;
       end
     end;
  if MessageDlg('Confirma exclus�o ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SP_DeleteOrcamento.ParamByName('@orc').asinteger := QueryOrcamentosNumero.AsInteger;
    SP_DeleteOrcamento.ExecProc;
    QueryOrcamentos.Refresh;
  end;
end;
procedure TFormContratante.AbreMotivoCancel(ViewExcl:Boolean);
begin
  QueryCancelamento.close;
  QueryCancelamento.SQL.Clear;
  if ViewExcl then
    QueryCancelamento.SQL.Add('select * from Cancelamento where tipo = ''USUARIO''')
  else
    QueryCancelamento.SQL.Add('select * from Cancelamento where tipo = ''USUARIO'' and ativo = 1 ');
  QueryCancelamento.open;
end;
procedure TFormContratante.QueryUsuariosAfterScroll(DataSet: TDataSet);
begin

  if (DebugHook = 0) and FileExists(CaminhoFoto + Lpad(QueryUsuariosCodigo_Completo.AsString,9,'0') + '.jpg') then
     image1.Picture.LoadFromFile(CaminhoFoto + Lpad(QueryUsuariosCodigo_Completo.AsString,9,'0') + '.jpg')
  else
    image1.Picture := nil;
  AbreMotivoCancel(true);
  ClonarUsurioExcludo1.Enabled := not QueryUsuariosData_Exclusao.IsNull;
  DBCheckBoxExcRenov.Visible := not QueryUsuariosData_Exclusao.IsNull;
  EditNomeContratanteTitular.clear;
  AlterouGrau := False;
  QueryVrMens.Close;
  EditMens.Text := 'R$0.00';
  if not QueryUsuariosCodigo.isnull then
  begin
     Dm.VerificaMsg(QueryUsuariosCodigo_completo.AsString,'C');
     EditNomeContratanteTitular.Text := dm.ExecutaComando('select nome from contratante where codigo = ' + QueryUsuariosContratante_Titular.AsString,'nome');
     EditMens.Text := GetVrMensUsu(QueryUsuariosCodigo.AsInteger, QueryUsuariosDigito.AsInteger,QueryUsuariosCodigo_Completo.asInteger);
     EditMens.Text := EditMens.Text;

  end
  else
  begin
      // se nao tem usuario associado pega um usuario desse contratante como contratante titular e passa como parametro para a fun��o para ver se ha mensagem
      Dm.VerificaMsg(dm.execmd('select top 1 codigo_completo c from usuario where contratante_titular = ' + QueryContratanteCodigo.AsString,'c'),'C');


  end;
//   DBEdit26.Enabled := true;
  end;

procedure TFormContratante.Mensalidades1Click(Sender: TObject);
begin
//   FmPrecoXusuario := TFmPrecoXusuario.Create(self);
//   FmPrecoXusuario.ShowModal;
//   FmPrecoXusuario.EditContratante.text := DBEditCodigo.text;
//   FmPrecoXusuario.BitBtn1Click(Sender);
end;

procedure TFormContratante.EditPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);

function VerifiNumerico(Valor : String): Boolean;
var i : word;
begin
   Result := true;
   For i := 1 to length(valor) do
     if not (valor[i]  in ['0'..'9']) then
     begin
        Result := false;
        break;
     end;
end;
begin
   if key  = 13 then
   begin

      QueryContratante.Close;
      if VerifiNumerico(EditPesquisa.Text) then
         QueryContratante.SQL[1] := 'where codigo = ' + EditPesquisa.Text
      else
         QueryContratante.SQL[1] := 'where (Nome like ''' + EditPesquisa.Text + '%'' collate Latin1_General_CI_AI or nmFantasia like ''%' + EditPesquisa.Text + '%'' collate Latin1_General_CI_AI) ';

      if not CheckBoxExcl.Checked then
         QueryContratante.SQL[1] := QueryContratante.SQL[1] + ' and exclusao is null ';
      QueryContratante.SQL[2] := 'order by Nome';
      QueryContratante.Open;
      
      if (QueryContratante.bof and QueryContratante.eof) and VerifiNumerico(EditPesquisa.Text)  then // se nao localizar como codigo pesquisa como cpf ou cgc
      begin
         QueryContratante.SQL[1] := 'where cgc_cpf = ''' + EditPesquisa.Text + '''';
         if not CheckBoxExcl.Checked then
            QueryContratante.SQL[1] := QueryContratante.SQL[1] + ' and exclusao is null ';
         QueryContratante.SQL[2] := 'order by Nome';
         QueryContratante.Open;
      end;

      EditPesquisa.SelectAll;
   end;

end;

Function TFormContratante.AlterarGrauParent(PCodUsu: Integer; PDigito: word;
         PPlano:Integer;PNovoGrau: Word;PVrAntigo,PDescAntigo: Currency;PNmfunc: String): Boolean;
begin
     Result := true;
     Dm.queryGenerica.close;
     Dm.queryGenerica.Sql.clear;
     //Codigo_Grau_Parentesco = 4 and a.Codigo_Plano = 150
     Dm.queryGenerica.Sql.Add('select round(valor - (valor * isnull(b.percent_desconto,0) / 100),2) valor from preco_plano a left join promocaoPlano b on b.cd_plano = a.Codigo_Plano and (dt_fim_vigencia is null or dt_fim_vigencia >= convert(date,getdate()))   where codigo_plano = ' +
     IntToStr(PPlano) +'and codigo_grau_parentesco = ' + IntTostr(PNovoGrau));
     Dm.queryGenerica.Open;
     if Dm.queryGenerica.Bof and Dm.queryGenerica.Eof then
     begin
        Result := False;
        ShowMessage('Altera��o n�o Permitida, n�o foi poss�vel localizar o pre�o para este plano X Grau de parentesco');
     end
     else
     begin
        if Application.MessageBox(Pchar('O novo valor da mensalidade deste usu�rio ser� de (' +
        FormatFloat('R$###,###,##0.00',Dm.queryGenerica.FieldByName('valor').asCurrency) + ') confirma altera��o?'),'Confirm��o', MB_YesNo + MB_DEFBUTTON2) = IdYes
        then
        begin
           Sp_alterarVrMen_GrauParent.UnPrepare;
           Sp_alterarVrMen_GrauParent.Prepare;
           Sp_alterarVrMen_GrauParent.ParamByName('@cd_usuario').AsInteger  := PCodUsu;
           Sp_alterarVrMen_GrauParent.ParamByName('@Digito'    ).AsInteger  := PDigito;
           Sp_alterarVrMen_GrauParent.ParamByName('@ValorNovo' ).asCurrency := Dm.queryGenerica.FieldByName('valor').asCurrency;
           Sp_alterarVrMen_GrauParent.ParamByName('@ValorAntig').AsCurrency := PVrAntigo;
           Sp_alterarVrMen_GrauParent.ParamByName('@descAntig' ).AsCurrency := PDescAntigo;
           Sp_alterarVrMen_GrauParent.ParamByName('@NmFunc'    ).AsString   := PNmfunc;
           Sp_alterarVrMen_GrauParent.ExecProc;
           if Sp_alterarVrMen_GrauParent.ParamByName('@Retorno').AsInteger = 0 then
             Result := true
           else
           if Sp_alterarVrMen_GrauParent.ParamByName('@Retorno').AsInteger = 1 then
           begin
              Result := False;
              ShowMessage('ATEN��O, existem mais de um valor de mensalidade para este usu�rio, o sistema n�o consegiu alterar o grau de parentesco');
           end;
        end
        else
          Result := False;
     end;
end;

procedure TFormContratante.QueryUsuariosGrau_ParentescoValidate(
  Sender: TField);
  var NmMae : string;
begin
   if QueryUsuariosCodigo.isnull then
    exit;
   AlterouGrau := True;
   if (QueryUsuarios.State = DsInsert) and QueryUsuariosNm_Mae.IsNull then
   begin
      // se grau parentesco for filho e o titular for mulher preenche nome da mae
      if dm.execmd('select count(*) q  where ''' + QueryGrauParentescoDescricao.AsString + '''  like ''%FILH%''','q') <> '0' then
      begin
         NmMae := dm.execmd('select nome from usuario where sexo = ''F'' and grau_parentesco = 1 and situacao = ''Titular'' and codigo = ' + QueryUsuariosCodigo.AsString,'nome');
         if NmMae <> '' then
           QueryUsuariosNm_mae.AsString := NmMae;
      end;
   end
end;

procedure TFormContratante.QueryUsuariosAfterCancel(DataSet: TDataSet);
begin
   AlterouGrau := false;
   FiltraGrauParent(false);
   DBEdit26.Enabled := true
end;

procedure TFormContratante.QueryUsuariosAfterClose(DataSet: TDataSet);
begin
   AlterouGrau := false;
end;

procedure TFormContratante.BitBtn1Click(Sender: TObject);
begin
   FmPrecoXusuario := TFmPrecoXusuario.Create(self);
   FmPrecoXusuario.EditContratante.text :=  QueryContratante.FieldByName('codigo').AsString;
   FmPrecoXusuario.CheckBox1.Checked := true;
   FmPrecoXusuario.BitBtn1Click(sender);
end;

procedure TFormContratante.Button1Click(Sender: TObject);
Var Total : Real;
begin
     Total := 0;
     Queryapagar.close;
     Queryapagar.Open;
     While not Queryapagar.eof do
     begin
        QueryVrMens.ParamByName('cdUsuario').AsInteger := Queryapagar.fieldByName('codigo').AsInteger;
        QueryVrMens.ParamByName('digito').AsInteger    := Queryapagar.fieldByName('digito').AsInteger;
        QueryVrMens.Open;

        if (QueryVrMens.Bof and QueryVrMens.eof) then
           ShowMessage('Sem valor')
        else
           Total := Total + QueryVrMens.FieldByName('valor').asCurrency;
        Queryapagar.next;
     end;
     Showmessage(FormatFloat('R$###,###,###,##0.00',Total));
end;

procedure TFormContratante.QueryContratante_NewRecord(DataSet: TDataSet);
begin
   QueryContratanteperc_desconto.AsInteger := 0;
   QueryContratantedesc_boleto.AsInteger := 0;
   QueryContratanteFone1.EditMask := '!\(99\)00000-0000;1;_';
   QueryContratanteFone2.EditMask := '!\(99\)00000-0000;1;_';
   QueryContratanteFax.EditMask := '!\(99\)00000-0000;1;_';
   QueryContratantelg_geraFat.AsBoolean := true;
   QueryContratantelg_restricao.AsBoolean := false;
   Querycontratantelg_cobrarTaxaBoleto.AsBoolean := true;
   QueryContratantelg_exige_matricula_func.AsBoolean := false;
   QueryContratantelg_empresarioIndividual.AsBoolean := false;
   QueryContratantelg_enviarBoletoPorEmail.AsBoolean := false;
   QueryContratantelg_inadimplente.AsBoolean := false;

end;

procedure TFormContratante.SpeedButton2Click(Sender: TObject);
begin
   if Application.MessageBox(Pchar('Deseja apagar a data de envio de inclus�o SUSEP do usu�rio ' + QueryUsuariosNome.AsString + ' ?'),'Confirm��o', MB_YesNo + MB_DEFBUTTON2) = IdYes then
   begin
      QueryUsuarios.Edit;
      QueryUsuariosInclusao_Susep.AsString := '';
      QueryUsuarios.Post;
   end;
end;

procedure TFormContratante.SpeedButton3Click(Sender: TObject);
begin
   if Application.MessageBox(Pchar('Deseja apagar a data de envio de altera��o SUSEP do usu�rio ' + QueryUsuariosNome.AsString + ' ?'),'Confirm��o', MB_YesNo + MB_DEFBUTTON2) = IdYes then
   begin
      QueryUsuarios.Edit;
      QueryUsuariosAlteracao_Susep.AsString := '';
      QueryUsuarios.Post;
   end;
end;

procedure TFormContratante.SpeedButton4Click(Sender: TObject);
begin
   if Application.MessageBox(Pchar('Deseja apagar a data de envio de exclus�o SUSEP do usu�rio ' + QueryUsuariosNome.AsString + ' ?'),'Confirm��o', MB_YesNo + MB_DEFBUTTON2) = IdYes then
   begin
      QueryUsuarios.Edit;
      QueryUsuariosExclusao_Susep.AsString := '';
      QueryUsuarios.Post;
   end;
end;

procedure TFormContratante.DBEditCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
   If not (Key In [#22,#8,#27,#13,'1','2','3','4','5','6','7','8','9','0']) then
      key := #0;
end;

procedure TFormContratante.FormShow(Sender: TObject);
begin
   DecimalSeparator := ',';
   Button4.Visible := dm.GetParam('HKNU') = 'S';
   ShortDateFormat := 'dd/MM/yyyy';
   Clonagem := False;
   QueryCidade.close;
   QueryCidade.Open;
   QueryMotivoInclusao.Close;
   QueryMotivoInclusao.Open;
   BitBtnPesquisar.SetFocus;
   BitBtnMensagem.Enabled := dm.VerifPermissao('0','0','0','17');
   BitBtnLogAlt.Enabled := dm.VerifPermissao('0','0','0','148');

   BtnBloqueioContratante.Enabled := dm.VerifPermissao('BtnBloqueioContratante');
   BitBtnLogAltUsu.Enabled := BitBtnLogAlt.Enabled;
   ADOQueryTipoFiltro.open;
   ADOQueryTipoFiltro.insert;
   CaminhoFoto := dm.GetParam('PATIMG');
   QueryOpAltContato.open;
   ADOQueryOrigemContato.open;
   //TbsDesconto.Visible := false;


end;

procedure TFormContratante.DBEditContratanteTitularExit(Sender: TObject);
begin
   if DBEditContratanteTitular.text <> '' then
      EditNomeContratanteTitular.Text := dm.ExecutaComando('select nome from contratante where codigo = ' + DBEditContratanteTitular.text,'nome')
   else
      EditNomeContratanteTitular.clear;
end;

procedure TFormContratante.Associarcontratantetitularparatodososdependentes1Click(
  Sender: TObject);
  var Vcdcontrat : String;
begin
   if InputQuery('Informe o c�digo do contratante titular dos dependentes','C�digo contratante titular',VCdconTrat) then
   begin
      if dm.ExecutaComando('select nome from contratante where codigo = ' + VCdcontrat,'nome') <> '' then
      begin
         if Application.MessageBox(Pchar('O contratante titular de todos os usu�rios ser� ' + dm.QueryGlobal.fieldByName('nome').AsString + '. confirma ?'),'Confirm��o', MB_YesNo) = IdYes then
         begin
            dm.ExecutaComando('update usuario set contratante_titular = ' + VCdcontrat  + ' where codigo = ' + QueryUsuariosCodigo.asString);
            QueryUsuarios.Close;
            QueryUsuarios.Open;
         end;
      end
      Else
         ShowMessage('C�digo de contratante inv�lido(' + VCdcontrat  + ')');
   end;

end;

procedure TFormContratante.QueryUsuariosNewRecord(DataSet: TDataSet);
begin
   QueryUsuarioscd_motivo_inclusao.AsInteger := 15; // 15 � o padr�o para Envio � ANS
   QueryUsuarioslg_naoEnviarSib.AsBoolean := false;
   FiltraGrauParent(true);
   AbreMotivoCancel(false);
   DBEdit26.Enabled := false; // na inclus�o n�o permite alterar , somente na edi��o
end;

procedure TFormContratante.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
   key := so_numero(key);
end;
procedure TFormContratante.ClonarUsurioExcludo1Click(Sender: TObject);
begin
   QueryClone.Close;
   QueryClone.sql[1] := QueryUsuariosCodigo.AsString;
   QueryClone.sql[3] := QueryUsuariosDigito.AsString;
   QueryClone.Open;
   if QueryClone.RecordCount = 1 then
   begin
       Clonagem :=  true;
       QueryUsuarios.Insert;
       QueryUsuariosNome.AsString                := QueryClonenome.AsString;
       QueryUsuariosData_Nascimento.AsString     := QueryCloneData_Nascimento.AsString;
       QueryUsuariosSexo.AsString                := QueryCloneSexo.AsString;
       QueryUsuariosE_Civil.AsString             := QueryCloneE_Civil.AsString;
       QueryUsuariosGrau_Parentesco.AsString     := QueryCloneGrau_Parentesco.AsString;
       QueryUsuariosContratante_Titular.AsString := QueryCloneContratante_Titular.AsString;
       QueryUsuariosManutencao.AsBoolean         := QueryCloneManutencao.AsBoolean;
       QueryUsuariosNm_Mae.AsString              := QueryCloneNm_Mae.AsString;
       QueryUsuariosCPF.AsString                 := QueryCloneCPF.AsString;
       QueryUsuariosPIS_PASEP.AsString           := QueryClonePIS_PASEP.AsString;
       QueryUsuarioscd_motivo_inclusao.AsString  := QueryClonecd_motivo_inclusao.AsString;
       QueryUsuarioscei.AsString                 := QueryClonecei.AsString;
       QueryUsuariosSituacao.asString            := QueryCloneSituacao.AsString;
       //QueryUsuariosData_Inclusao.AsString       := Dm.GetDataSrv;
       QueryUsuariosVendedor.AsString            := dm.GetParam('VENDCL');
       DBEditContratanteTitularExit(Sender);
       DBEditCodigoVendedorUsuarioExit(Sender);
       DBEditDataInclusao.SetFocus;
       Clonagem :=  False;
   end;
end;

procedure TFormContratante.FiltraGrauParent(Ativo: Boolean);
begin
   QueryGrauParentesco.close;
   if ativo then
      QueryGrauParentesco.sql[1] := ' where ativo = 1 '
   else
      QueryGrauParentesco.sql[1] := ' ';
   QueryGrauParentesco.open;
end;
procedure TFormContratante.QueryUsuariosAfterEdit(DataSet: TDataSet);
begin
  FiltraGrauParent(true);
end;

procedure TFormContratante.QueryContratante_AfterPost(DataSet: TDataSet);
begin
    if dm.execmd('select count(*) q from celulares where codigo = ''' + QueryContratantecodigo.AsString + '''','q') = '0' then
        DBGrid1DblClick(DBGrid1);

   QueryContratanteFone1.EditMask := '';
   QueryContratanteFone2.EditMask := '';
   QueryContratanteFax.EditMask := '';
end;

procedure TFormContratante.QueryContratante_CEP_ResidencialValidate(
  Sender: TField);
begin
   if (dm.GetParam('CEPWEB') = 'S') and (QueryContratante.state = DsInsert) then
      BuscaCep(QuerycontratanteCEP_Residencial.AsString,'R');
   if (QueryContratante.state = DsEdit) then
     if MessageDlg('Deseja atualizar o endere�o pelo CEP alterado?',mtConfirmation,mbYesNoCancel,0)=mrYes then
       BuscaCep(QuerycontratanteCEP_Residencial.AsString,'R');
end;

procedure TFormContratante.BuscaCep(PCep:string;PTipo:char);
var
  vEndereco,
  vBairro,
  vCidade,
  vUF: Widestring;
begin
  try

     dm.buscaCep(DM.GetParam('EBCEP') + PCep,'xml','c:\temp\cep.xml');

     dm.execmd('select * from enderecoTemp  where cep = ' + enio.Sonumero(Pcep),'cep');
     if dm.QueryGlobal.FieldByName('dsErro').AsString <> '' then
     begin
        ShowMessage(dm.QueryGlobal.FieldByName('dsErro').AsString);
        exit;
     end;

    vEndereco := dm.QueryGlobal.FieldByName('endereco').AsString;
    vBairro := dm.QueryGlobal.FieldByName('bairro').AsString;
    vCidade := dm.QueryGlobal.FieldByName('cidade').AsString;
    vUF := dm.QueryGlobal.FieldByName('uf').AsString;
  except
  on E: Exception do
    begin
       showMessage('Ocorreu um ao tentar acessar o site dos correios para buscar o CEP!' + E.Message);
       exit;
    end;
  end;
  if Ptipo = 'R' then
  begin
     QueryContratanteEndereco_Residencial.AsString := vEndereco;
     QueryContratanteBairro_Residencial.AsString := vBairro;
     QueryContratanteEstado_Residencial.AsString := VUF;
     QueryContratantecd_cidade_res.AsString := Dm.execmd('select cd_cidade c from cidade where ds_cidade = ''' +  vCidade + ''' and uf = ''' +  VUF +  '''','c');
  end
  else
  begin
     QueryContratanteEndereco_Comercial.AsString := vEndereco;
     QueryContratanteBairro_Comercial.AsString := vBairro;
     QueryContratanteEstado_Comercial.AsString := VUF;
     QueryContratantecd_cidade_com.AsString := Dm.execmd('select cd_cidade c from cidade where ds_cidade = ''' +  vCidade + ''' and uf = ''' +  VUF +  '''','c');
  end;
end;

{
procedure TFormContratante.BuscaCep(PCep:string;PTipo:char);
var
  vEndereco,
  vBairro,
  vCidade,
  vUF: Widestring;
begin
  try
     GetcepwsdlPortType.ConsultarCEP('','',PCep,vEndereco,vBairro,vCidade,vUF);
  except
  on E: Exception do
    begin
       showMessage('Ocorreu um ao tentar acessar o webservice http://www.bases4you.com/wscep.php para buscar o CEP!' + E.Message);
       exit;
    end;
  end;
  if Ptipo = 'R' then
  begin
     QueryContratanteEndereco_Residencial.AsString := vEndereco;
     QueryContratanteBairro_Residencial.AsString := vBairro;
     QueryContratanteEstado_Residencial.AsString := VUF;
     QueryContratantecd_cidade_res.AsString := Dm.execmd('select cd_cidade c from cidade where ds_cidade = ''' +  vCidade + ''' and uf = ''' +  VUF +  '''','c');
  end
  else
  begin
     QueryContratanteEndereco_Comercial.AsString := vEndereco;
     QueryContratanteBairro_Comercial.AsString := vBairro;
     QueryContratanteEstado_Comercial.AsString := VUF;
     QueryContratantecd_cidade_com.AsString := Dm.execmd('select cd_cidade c from cidade where ds_cidade = ''' +  vCidade + ''' and uf = ''' +  VUF +  '''','c');
  end;
end;
}

procedure TFormContratante.QueryContratante_Cep_ComercialValidate(
  Sender: TField);
begin
   if (dm.GetParam('CEPWEB') = 'S') then
   begin
      if (QueryContratante.state = DsInsert) then
        BuscaCep(QuerycontratanteCep_Comercial.AsString,'C');
      if (QueryContratante.state = DsEdit) then
        if MessageDlg('Deseja atualizar o endere�o pelo CEP alterado?',mtConfirmation,mbYesNoCancel,0)=mrYes then
          BuscaCep(QuerycontratanteCep_Comercial.AsString,'C');
   end
   else
   if (QueryContratante.state = DsInsert) and (QueryContratanteCep_residencial.AsString = QueryContratanteCep_comercial.AsString) then
   begin
      QueryContratanteEndereco_Comercial.asString := QueryContratanteEndereco_Residencial.asString;
      QueryContratanteNumero_Com.AsString         := QueryContratanteNumero_Res.AsString;
      QueryContratanteComplemento_Com.AsString    := QueryContratanteComplemento_Res.AsString;
      QueryContratanteBairro_Comercial.asString   := QueryContratanteBairro_Residencial.asString;
      QueryContratanteCidade_Comercial.asString   := QueryContratanteCidade_Residencial.asString;
      QueryContratantecd_cidade_com.asString      := QueryContratantecd_cidade_res.asString;
      QueryContratanteEstado_Comercial.asString   := QueryContratanteEstado_Residencial.asString;
   end;

end;

procedure TFormContratante.DBLookupComboBoxGrupoContratanteExit(
  Sender: TObject);
begin
   DBEditCep.setfocus;
end;

procedure TFormContratante.DBEditCepExit(Sender: TObject);
begin
   if (QueryContratante.state = DsInsert) and (QueryContratanteEndereco_Residencial.isnull) then
      DBEditEndereco.setFocus;
end;

procedure TFormContratante.CheckBoxExclClick(Sender: TObject);
var key : Word;

begin
   if EditPesquisa.text <> '' then
   begin
      key := Ord(#13);
      EditPesquisaKeyDown(Sender,Key,[]);
   end;
end;

procedure TFormContratante.ReestabelecerConexocomBD1Click(Sender: TObject);
begin
   FormContratante.Caption := '1';
   if formFundo.DatabaseMultiOdonto.Connected then
      ShowMessage('Status atual = conectado');
   FormContratante.Caption := '1-2';
   formFundo.DatabaseMultiOdonto.Close;
   FormContratante.Caption := '1-2-3';
   dm.execmd('select getdate()');
   FormContratante.Caption := '1-2-3-4';
end;

function TFormContratante.PValidData(Pdata: TdateTime): Boolean;
var PdtLimite, PdtAtual : TdateTime;
begin
    PdtAtual := dm.date;
    PDtLimite := PdtAtual - StrToInt(dm.GetParam('TOLEDI'));
    result := (Pdata <= PDtAtual) and (Pdata >= PDtLimite);
end;

procedure TFormContratante.QueryUsuariosBeforeEdit(DataSet: TDataSet);
begin
   DtExclUsu := QueryUsuariosdata_Exclusao.asDatetime;
   DtVendaUsu := QueryUsuariosdt_venda.asDatetime;
   AbreMotivoCancel(false);
   DBEdit26.Enabled := true;
end;

function TFormContratante.GetVrMensUsu(CdUsu, Dg,
  CdCompleto: integer): String;
   var vlcomDesconto : real;
begin
     QueryVrMens.close;
     QueryVrMens.ParamByName('cdUsuario').AsInteger := CdUsu;
     QueryVrMens.ParamByName('digito').AsInteger    := Dg;
     QueryVrMens.Open;

     if (QueryVrMens.Bof and QueryVrMens.eof) then
        Result := 'SEM VALOR'
     else
     begin
        SpDesconto.Close;
        // 15-12-07 altera��o para conceder desconto para PJ e PF antes somente plano VIP dava desconto
        // de acorod com nr de usarios do plano
        //SpDesconto.ParamByName('@CdContratante').AsInteger := QueryUsuariosContratante_Titular.AsInteger;
        SpDesconto.ParamByName('@CdContratante').AsInteger := CdUsu;
        SpDesconto.ParamByName('@cdUsuario').AsInteger     := CdCompleto;
        SpDesconto.ParamByName('@DtBase').AsString := Dm.GetDataSrv ;
        SpDesconto.ExecProc;
        //SHOWmESSAGE(' vr desconto usu ' + SpDesconto.ParamByName('@VrDescUsu').Asstring); 
        vlcomDesconto := (QueryVrMens.FieldByName('valor').asCurrency - SpDesconto.ParamByName('@VrDescUsu').AsCurrency) - (QueryVrMens.FieldByName('valor').asCurrency - SpDesconto.ParamByName('@VrDescUsu').AsCurrency) * (QueryContratantedesc_boleto.AsFloat / 100);
        Result := FormatFloat('###,###,###,##0.00',vlcomDesconto);
     end;
end;

procedure TFormContratante.QueryContatoBeforePost(DataSet: TDataSet);
begin
   if QueryContatoTipo.AsInteger = 6 then
   begin
      if QueryContatoData_Agenda.AsDateTime <= QueryContatoData_Contato.AsDateTime then
      begin
         ShowMessage('A Data de agendamento para cobrador nao pode ser igual a data do contato, confirma?');
         abort;
      end
   end;
  QueryContatoHora_Alteracao.AsDateTime    := Time;
  QueryContatoData_Alteracao.AsDateTime    := dm.Date;
  QueryContatoOperador_Alteracao.asInteger := Senha.Codigo_Operador;
//  EditNomeOperador.Text := senha.Apelido;
end;

procedure TFormContratante.QueryContratanteForma_CobrancaValidate(
  Sender: TField);
begin
   if QueryContratante.State = DsInsert then
   begin
      //tacio 19/12: campos n�o s�o mais usados.. fixei da forma a baixo
      QueryContratanteNumero_Cartao.AsInteger := 0;
      QueryContratanteCodigo_Seguranca.AsInteger := 0;
      QueryContratanteTitular_conta.AsString := '.';

      if (QueryContratanteForma_Cobranca.AsInteger = 10) or (QueryContratanteForma_Cobranca.AsInteger = 713) then
      begin
         QueryContratanteBanco.AsInteger := 0;
         QueryContratanteAgencia.AsInteger := 0;
         QueryContratanteConta.AsInteger := 0;
         QueryContratanteDigito.AsInteger := 0;
      end
      else
      begin
         QueryContratanteBanco.Clear;
         QueryContratanteAgencia.Clear;
         QueryContratanteConta.Clear;
         QueryContratanteDigito.Clear;
      end;
   end;
end;

procedure TFormContratante.BitBtn3Click(Sender: TObject);
var cco : string;
begin
   cco := inputBox('Informe o c�digo CCO','Informe o c�digo CCO','');
   if cco <> '' then
   begin
       if dm.execmd('select count(*) c from usuario where cco = ''' + cco + '''','c') = '0' then
       begin
         ShowMessage('C.C.O n�o localizado !');
         exit;
       end;
       QueryContratante.close;
       QueryContratante.SQL[1] := 'where codigo = ' + dm.execmd('select codigo c from usuario where cco = ''' + cco + '''','c');
       QueryContratante.open;
       QueryUsuarios.Locate('cco',cco,[]);
       PageControlContratantes.ActivePageIndex := 1;
   end;
end;

procedure TFormContratante.SpeedButton5Click(Sender: TObject);
begin
   if Application.MessageBox(Pchar('Deseja apagar a data de envio de reinclus�o SIB do usu�rio ' + QueryUsuariosNome.AsString + ' ?'),'Confirm��o', MB_YesNo + MB_DEFBUTTON2) = IdYes then
   begin
      QueryUsuarios.Edit;
      QueryUsuariosreinclusao_sib.Clear;
      QueryUsuarios.Post;
   end;

end;

procedure TFormContratante.BitBtnMensagemClick(Sender: TObject);
begin
   FmCadMensagens := TFmCadMensagens.create(self);
   FmCadMensagens.ShowModal;
   FmCadMensagens.Free;
end;

procedure TFormContratante.CheckBox1Click(Sender: TObject);
begin
   GroupBox9.Visible := CheckBox1.Checked;
   GroupBox10.Visible := CheckBox1.Checked;
   GroupBox13.Visible := CheckBox1.Checked;   
   Button2.Visible := CheckBox1.Checked;
   if CheckBox1.checked then
     Button2Click(sender)
   else
   begin
      QueryContato.Close;
      QueryContato.SQL[1] := 'where Codigo_Contratante = ' + QueryContratanteCodigo.asString;
      QueryContato.Open;
      ADOQueryTipoFiltro.Cancel;
      ADOQueryTipoFiltro.insert;
   end;
end;

procedure TFormContratante.Button2Click(Sender: TObject);
begin
   QueryContato.Close;
   QueryContato.SQL[1] := 'where Codigo_Contratante = ' + QueryContratanteCodigo.asString;
   if EditProtocolo.Text <> '' then
      QueryContato.SQL[1] := QueryContato.SQL[1] + ' and incremento = ' + EditProtocolo.Text;
   if DBLookupComboBox5.Text <> '' then
      QueryContato.SQL[1] := QueryContato.SQL[1] + ' and tipo = ' + QueryTipoContatoCodigo.AsString;
   if (MaskEditDtIni.Text <> '  /  /    ') and (MaskEditDtFim.Text <> '  /  /    ') then
      QueryContato.SQL[1] := QueryContato.SQL[1] + ' and data_contato between ''' + FormatData(MaskEditDtIni.Text,'MDY') + ''' AND ''' + FormatData(MaskEditDtFim.Text,'MDY') + '''';
   QueryContato.Open;
end;

procedure TFormContratante.MaskEditDtFimKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      Button2Click(sender);
end;

procedure TFormContratante.BitBtnLogAltClick(Sender: TObject);
begin
   FmPesqLogContratante := TFmPesqLogContratante.create(self);
   FmPesqLogContratante.ADOQuery1.Close;
   FmPesqLogContratante.ADOQuery1.sql[2] := QueryContratanteCodigo.AsString;
   FmPesqLogContratante.ADOQuery1.open;
   FmPesqLogContratante.showmodal;
   FmPesqLogContratante.free;
end;

procedure TFormContratante.BitBtnLogAltUsuClick(Sender: TObject);
begin
   FmPesqLogAltUsu := TFmPesqLogAltUsu.create(self);

   FmPesqLogAltUsu.ADOQuery1.Close;
   FmPesqLogAltUsu.ADOQuery1.sql[2] := QueryUsuariosCodigo_Completo.AsString;
   FmPesqLogAltUsu.ADOQuery1.open;
   FmPesqLogAltUsu.showmodal;
   FmPesqLogAltUsu.free;

end;

procedure TFormContratante.Image1Click(Sender: TObject);
var
  Origem, Destino: string;
  SizeArq,SizeMax : integer;

  ArqFile : TextFile;
begin
    if QueryUsuarios.Bof and QueryUsuarios.eof then
      exit;

    if OpenPictureDialog1.Execute then
    begin
        Origem := OpenPictureDialog1.FileName;
        SizeMax := StrToInt(dm.GetParam('LENIMG'));
        SizeArq := FileSize(Origem);
        if  SizeArq > SizeMax * 1000 then
        begin
           ShowMessage('O Tamanho do arquivo JPG n�o pode ser maior do que ' + IntTostr(SizeArq) + ' Kbytes. Opera��o cancelada !');
           exit;
        end;


       Destino := CaminhoFoto + Lpad(QueryUsuariosCodigo_Completo.AsString,9,'0') + '.jpg';
	      //testar ve se funciona filaparacaho
       //testar ve se funciona filaparacaho
       if not CopyFile(PChar(Origem), PChar(Destino), false) then
       begin
          ShowMessage('Erro ao copiar a foto de  ' + Origem + ' para ' + Destino);
          exit;
       end;

       image1.Picture.LoadFromFile(Destino);

    end;
end;

function TFormContratante.FileSize(const FileName: string): integer;
var
  SR: TSearchRec;
  I: integer;
begin
  I := FindFirst(FileName, faArchive, SR);
  try
    if I = 0 then
      Result := SR.Size
    else
      Result := -1;
  finally
    FindClose(SR);
  end;
end;

procedure TFormContratante.BitBtn4Click(Sender: TObject);
begin
   if DBMemoTexto.Text = '' then
      exit;

   if Application.MessageBox('Deseja incluir essa recado no cadastro de mensagens de alerta para que voc� seja avisado(a), caso este contrante entre em contato com a empresa?','Confirma��o', MB_YESNO + MB_DEFBUTTON2) = IdYes then
   if not QueryUsuariosCodigo.IsNull then
   begin
      if dm.execmd('set dateformat dmy select count(*) q from mensagem where cd_tipo = ''CO'' and cd_codigo = ' + QueryContratanteCodigo.AsString + ' and dtcriacao = cast(getdate() as smalldatetime)','q') <> '0' then
        ShowMessage('Mensagem j� cadastrada para esse contratante nessa data e hora')
      else
         dm.execmd('set dateformat dmy insert  into mensagem (cd_tipo, cd_codigo, dtcriacao, cd_operador, dtValidade, permite_desabilitar, ds_mensagem, tipo_aviso) values (''CO'',' + QueryContratanteCodigo.AsString + ',getdate(),' + IntToStr(senha.Codigo_Operador) + ',''01/01/2079'',1,''Avisar para : "' + EditNomeOperador.Text + '"  -> '  + replace(DBMemoTexto.text,'''','"') + ''',''T'')')
   end
   else // SE NAO TIVER USUARIO ASSOCIADO ENTAO INCLUI A MENSAGEM COMO CONTRATANTE TITULAR
   begin
      if dm.execmd('set dateformat dmy select count(*) q from mensagem where cd_tipo = ''CT'' and cd_codigo = ' + QueryContratanteCodigo.AsString + ' and dtcriacao = cast(getdate() as smalldatetime)','q') <> '0' then
        ShowMessage('Mensagem j� cadastrada para esse contratante nessa data e hora')
      else
        dm.execmd('set dateformat dmy insert  into mensagem (cd_tipo, cd_codigo, dtcriacao, cd_operador, dtValidade, permite_desabilitar, ds_mensagem, tipo_aviso) values (''CT'',' + QueryContratanteCodigo.AsString + ',getdate(),' + IntToStr(senha.Codigo_Operador) + ',''01/01/2079'',1,''Avisar para : "' + EditNomeOperador.Text + '"  -> '  + replace(DBMemoTexto.text,'''','"') + ''',''T'')');
   end;
end;

procedure TFormContratante.BitBtn2Click(Sender: TObject);
begin
   QRUsuariosContratante.DataPesq := StrtoDate(MaskEditDataRel.Text);
   QRUsuariosContratante.Codigo_Contratante := QueryContratanteCodigo.asInteger;
   Application.CreateForm(TQRListaUsuarioContratante, QRListaUsuarioContratante);
   QRListaUsuarioContratante.QRLabelTxAde.enabled := CheckBoxTxAde.Checked;
   QRListaUsuarioContratante.QRLabelVrTot_.enabled := CheckBoxTxAde.Checked;
   QRUsuariosContratante.QRListaUsuarioContratante.QRLabelContratante.Caption := Copy(QueryContratanteNome.asString, 1, 30);
   QRListaUsuarioContratante.Preview;
   QRListaUsuarioContratante.Free;
   GroupBoxPesquisa.Visible := False;
   Panel5.Visible := true;
end;

procedure TFormContratante.CheckBox2Click(Sender: TObject);
begin
   GroupBox11.Visible := CheckBox2.Checked;
   GroupBox12.Visible := CheckBox2.Checked;
   GroupBox27.Visible := CheckBox2.Checked;
   Button3.Visible := CheckBox2.Checked;
   if CheckBox2.checked then
     Button3Click(sender)
   else
   begin
      QueryReceber.close;
      QueryReceber.SQL[1] := 'where receber.Codigo_Contratante = ' + QueryContratanteCodigo.asString;
      QueryReceber.open;
   end;
end;

procedure TFormContratante.Button3Click(Sender: TObject);
begin
   QueryReceber.close;
   QueryReceber.SQL[1] := 'where receber.Codigo_Contratante = ' + QueryContratanteCodigo.asString;
   if ComboBox1.ItemIndex = 1 then
      QueryReceber.SQL[1] := QueryReceber.SQL[1] + ' and receber.desdobramento = ''M'''
   else
   if ComboBox1.ItemIndex = 2 then
      QueryReceber.SQL[1] := QueryReceber.SQL[1] + ' and receber.desdobramento <> ''M''';

   if (MaskEdit1.Text <> '  /  /    ') and (MaskEdit2.Text <> '  /  /    ') then
      QueryReceber.SQL[1] := QueryReceber.SQL[1] + ' and receber.Data_Vencimento between ''' + MaskEdit1.Text + ''' and ''' + MaskEdit2.Text + ' 23:59''';

  if Edit_FiltroTitDoOrc.Text<>'' then
      QueryReceber.SQL[1] := QueryReceber.SQL[1] + ' and receber.orcamento like '''+Edit_FiltroTitDoOrc.Text+'''';
   QueryReceber.open;

end;

procedure TFormContratante.DBLookupComboBox1Click(Sender: TObject);
begin
   DBCheckBoxExcRenov.Visible := DBLookupComboBox1.Text <> '';
end;

procedure TFormContratante.BtnBloqueioContratanteClick(Sender: TObject);
begin
    FmCadBloqueioContrat := TFmCadBloqueioContrat.create(self);

    FmCadBloqueioContrat.ADOQueryBloqueio.Close;
    if (QueryContratante.Active)  and (not QueryContratanteCodigo.IsNull) then
    begin
       FmCadBloqueioContrat.ADOQueryBloqueio.sql[1] := ' and cd_contratante = ' + QueryContratanteCodigo.AsString;
       FmCadBloqueioContrat.cdContratante := QueryContratanteCodigo.asInteger;
    end
    else
       FmCadBloqueioContrat.cdContratante := 0;
    FmCadBloqueioContrat.ADOQueryBloqueio.open;
    FmCadBloqueioContrat.ShowModal;
    FmCadBloqueioContrat.Free;
end;
procedure TFormContratante.carregaCelular();
begin
         ADOQueryH.close;
         ADOQueryH.SQL[1] := QueryContratanteCodigo.AsString;
         ADOQueryH.open;

end;
procedure TFormContratante.QueryContratanteAfterScroll(DataSet: TDataSet);
 var textoAux : string;
begin

    LabelNome.Font.color := clNavy;
    LabelNome.Caption := 'Nome';
    DBEditNome.Font.color := clBlack;
    DBEditNome.Font.Style := [];
    if not QueryContratanteCodigo.isnull then
    begin
         carregaCelular;
         LabelNome.Caption := '';
         if (QueryContratanteGrupo_Contratante.AsString <> '') then
         begin
            LabelNome.Caption := dm.execmd('set dateformat dmy select dt_ini_bloqueio dt from bloqueio_grupoContrat where convert(char(10),GETDATE(),103) between dt_ini_bloqueio and isnull(dt_fim_gloqueio,''01/01/2079'') and cd_grupo_contrat = ' + QueryContratanteGrupo_Contratante.AsString ,'dt');
            textoAux := 'Nome :  *** ATEN��O GRUPO BLOQUEADO : ';
         end;
         if LabelNome.Caption = '' then
         begin
            LabelNome.Caption := dm.execmd('set dateformat dmy select dt_ini_bloqueio dt from bloqueio_contratante where convert(char(10),GETDATE(),103) between dt_ini_bloqueio and isnull(dt_fim_bloqueio,''01/01/2079'') and cd_contratante = ' + QueryContratanteCodigo.AsString ,'dt');
            textoAux := 'Nome :  *** ATEN��O CONTRATANTE BLOQUEADO : ';
         end;
         if LabelNome.Caption <> '' then
         begin
            LabelNome.Font.color := clRed;
            DBEditNome.Font.color := clRed;
            DBEditNome.Font.Style := [fsBold];
            LabelNome.Caption := textoAux + LabelNome.Caption + ' *** ';
         end;

         //abrindo a query recorrencia quando mudar contratante
         ADOQuery_Recorrencia.Close;
         ADOQuery_Recorrencia.Parameters.ParamByName('codigo').Value:=QueryContratanteCodigo.AsString;
         ADOQuery_Recorrencia.Open;
    end;


//colocar parametro na tela do relatorio e incluir parametro na procedure sp_relMensalidadeContrat para imprimir ou nao contratantes bloqueado
end;

function TFormContratante.temCaracterInvalidoSIB(nome : string) : boolean;
var i : smallint;
begin
   result := false;
   for i := 1 to length(nome) do
   begin
      if
          not (nome[i] in ['a'..'z'])
      and not (nome[i] in ['A'..'Z'] )
      and not (nome[i] in [' ','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�']) then
       result := true;
   end;
//   ������������������������������������
end;

procedure TFormContratante.DBEdit21KeyPress(Sender: TObject;
  var Key: Char);
begin
   key := So_Numero(key);
end;

procedure TFormContratante.DBEditCPFExit(Sender: TObject);
begin
   if not QueryUsuariosCPF.IsNull then
    if not ValidaCPF(QueryUsuariosCPF.Asstring) then
    begin
      ShowMessage('CPF Invalido !');
    end;
end;

procedure TFormContratante.BitBtn5Click(Sender: TObject);
begin
   if QueryContratanteCodigo.IsNull then
      exit;
   if MessageDlg('Confirma gera��o das carteirinhas de todos os usu�rios desse contratante? ', mtConfirmation, [mbYes, mbNo], 0) <>  mrYes then
      exit;
   FmEmissaoCarteirinha := TFmEmissaoCarteirinha.create(self);
   FmEmissaoCarteirinha.tag := 1;
   FmEmissaoCarteirinha.Button4Click(Sender);
   FmEmissaoCarteirinha.ADOQuery1cd_contratante.AsInteger := QueryContratanteCodigo.AsInteger;
   FmEmissaoCarteirinha.ADOQuery1.Post;
   FmEmissaoCarteirinha.Edit2.text := QueryContratanteNome.AsString;

   FmEmissaoCarteirinha.ADOQueryUsuLote.Close;
   FmEmissaoCarteirinha.ADOQueryUsuLote.Open;
   dm.execmd('select codigo_completo c from usuario where Data_Exclusao is null and contratante_titular = ' + QueryContratanteCodigo.AsString + ' union select codigo_completo c from usuario where Data_Exclusao is null and codigo = ' + QueryContratanteCodigo.AsString ,'c');
   while not dm.QueryGlobal.Eof do
   begin
      FmEmissaoCarteirinha.ADOQueryUsuLote.Insert;
      FmEmissaoCarteirinha.ADOQueryUsuLotecd_usuario.AsInteger := dm.QueryGlobal.FieldByName('c').AsInteger;
      FmEmissaoCarteirinha.ADOQueryUsuLote.Post;
      dm.QueryGlobal.next;
   end;

   FmEmissaoCarteirinha.ADOQuery1.sql[1] := ' cd_emissao = ' + FmEmissaoCarteirinha.ADOQuery1cd_emissao.AsString;
   FmEmissaoCarteirinha.ADOQuery1.close;

   FmEmissaoCarteirinha.ADOQuery1.open;
   FmEmissaoCarteirinha.ADOQueryUsuLote.close;
   FmEmissaoCarteirinha.ADOQueryUsuLote.open;
   FmEmissaoCarteirinha.tag := 0;
   FmEmissaoCarteirinha.ShowModal;


end;

procedure TFormContratante.BitBtn6Click(Sender: TObject);
begin
   if QueryUsuariosCodigo_Completo.IsNull then
      exit;

   if MessageDlg('Confirma gera��o da carteirinha desse usu�rio? ', mtConfirmation, [mbYes, mbNo], 0) <>  mrYes then
      exit;



   FmEmissaoCarteirinha := TFmEmissaoCarteirinha.create(self);
   FmEmissaoCarteirinha.tag := 1;
   FmEmissaoCarteirinha.Button4Click(Sender);
   FmEmissaoCarteirinha.ADOQuery1cd_contratante.AsInteger := QueryContratanteCodigo.AsInteger;
   FmEmissaoCarteirinha.ADOQuery1.Post;
   FmEmissaoCarteirinha.Edit2.text := QueryContratanteNome.AsString;
   dm.execmd('select codigo_completo c from usuario where contratante_titular = ' + QueryContratanteCodigo.AsString,'c');
   FmEmissaoCarteirinha.ADOQueryUsuLote.close;
   FmEmissaoCarteirinha.ADOQueryUsuLote.Open;
   FmEmissaoCarteirinha.ADOQueryUsuLote.Insert;
   FmEmissaoCarteirinha.ADOQueryUsuLotecd_usuario.AsInteger := QueryUsuariosCodigo_Completo.AsInteger;
   FmEmissaoCarteirinha.ADOQueryUsuLote.Post;

   FmEmissaoCarteirinha.ADOQuery1.sql[1] := ' cd_emissao = ' + FmEmissaoCarteirinha.ADOQuery1cd_emissao.AsString;
   FmEmissaoCarteirinha.ADOQuery1.close;
   FmEmissaoCarteirinha.ADOQuery1.open;
   FmEmissaoCarteirinha.ADOQueryUsuLote.close;
   FmEmissaoCarteirinha.ADOQueryUsuLote.open;
   FmEmissaoCarteirinha.tag := 0;
   FmEmissaoCarteirinha.ShowModal;


end;

procedure TFormContratante.BitBtn7Click(Sender: TObject);
var aux : string;
begin
   aux := '';
   dm.execmd('select cd_operador , CONVERT(char(10),dt_inclusao,103) data, nm_recepcao   from itens_emissao_carteirinha a, emissao_carteirinha b ' +
             ' where b.cd_emissao = a.cd_emissao and cd_usuario = ' + QueryUsuariosCodigo_Completo.AsString + ' order by dt_inclusao','cd_operador');

   while not dm.QueryGlobal.Eof do
   begin
      aux := aux + 'OPERADOR : ' + dm.QueryGlobal.FieldByName('cd_operador').AsString + '  -   DATA : ' + dm.QueryGlobal.FieldByName('data').AsString + '  -  ENTREGUE PARA : ' + dm.QueryGlobal.FieldByName('nm_recepcao').AsString + #13;
      dm.QueryGlobal.next;
   end;
   if aux = '' then
      ShowMessage('n�o h� hist�rico de entrega de carteirinhas')
   else
      ShowMessage(aux);
end;

procedure TFormContratante.QueryUsuariosCPFValidate(Sender: TField);
var aux : string;
begin
   if QueryUsuariosNome.IsNull and (dm.GetParam('HKNU') = 'S')  then
   begin
        if Application.MessageBox('Deseja consultar o nome do benefici�rio atraves do CPF pela biblioteca KNU (ww.knu.com.br) ?','Confirma��o', MB_YESNO + MB_DEFBUTTON2) = IdYes then
        begin
           aux := dm.execKNUreceitaCPFCNPJ(QueryUsuariosCPF.AsString,'CPF');
           if aux = 'ERRO' then
              ShowMessage('Ocorreu um erro ao acessar a biblioteca KNU')
           else
              QueryUsuariosNome.AsString := aux;
        end;
   end;
end;

procedure TFormContratante.Button4Click(Sender: TObject);
var aux : string;
begin
   if not QueryUsuariosCPF.IsNull and (QueryUsuarios.state in [dsEdit,dsInsert]) then
   begin
        if Application.MessageBox('Deseja consultar o nome do benefici�rio atraves do CPF pela  biblioteca KNU (ww.knu.com.br) ?','Confirma��o', MB_YESNO + MB_DEFBUTTON2) = IdYes then
        begin
           aux := dm.execKNUreceitaCPFCNPJ(QueryUsuariosCPF.AsString,'CPF');
           if aux = 'ERRO' then
              ShowMessage('Ocorreu um erro ao acessar a biblioteca KNU')
           else
              QueryUsuariosNome.AsString := aux;
        end;
   end;

end;

procedure TFormContratante.Button5Click(Sender: TObject);

var aux : string;
begin

   if not QueryContratanteCGC_CPF.IsNull and (QueryContratante.state in [dsEdit,dsInsert]) then
   begin
        if Application.MessageBox('Deseja consultar o nome do contratante atraves do CPF/CNPJ pela  biblioteca KNU (ww.knu.com.br) ?','Confirma��o', MB_YESNO + MB_DEFBUTTON2) = IdYes then
        begin
            if QueryContratanteEmpresa.AsBoolean then
               aux := dm.execKNUreceitaCPFCNPJ(QueryContratanteCGC_CPF.AsString,'CNPJ')
            else
               aux := dm.execKNUreceitaCPFCNPJ(QueryContratanteCGC_CPF.AsString,'CPF');     
           if aux = 'ERRO' then
              ShowMessage('Ocorreu um erro ao acessar a biblioteca KNU')
           else
              QueryContratanteNome.AsString := aux;
        end;
   end;
end;

procedure TFormContratante.BitBtn8Click(Sender: TObject);
var Key: Char;
begin
   if QueryContratanteCodigo.IsNull then
      exit;
   FmParamServicoPorPLano := TFmParamServicoPorPLano.create(self);
   FmParamServicoPorPLano.EditCdContratante.Text := QueryContratanteCodigo.AsString;
   key := #13;
   FmParamServicoPorPLano.EditCdContratanteKeyPress(sender, key);
   FmParamServicoPorPLano.ShowModal;
   FmParamServicoPorPLano.free;
end;

procedure TFormContratante.BitBtn9Click(Sender: TObject);
begin
   if QueryContratanteCodigo.IsNull then
   begin
      ShowMessage('Selecione o contratante primeiro');
      exit;
   end;
   
   FmEnviaSMS := TFmEnviaSMS.create(self);
   FmEnviaSMS.cdContratante := QueryContratanteCodigo.AsString;
   FmEnviaSMS.celular       := QueryContratanteFone2.AsString;

   FmEnviaSMS.ShowModal;
   FmEnviaSMS.free;
end;

procedure TFormContratante.BitBtn10Click(Sender: TObject);
begin
   if Application.MessageBox('Esse processo ir� paralizar todos os or�amentos autorizados, com status de pagamento igual a 3(Tratamento) ?','Confirma��o', MB_YESNO + MB_DEFBUTTON2) = IdYes then
   begin
       dm.execmd('update orcamento set status = 4,Data_Status = convert(char(10),getdate(),103) where contratante = ' + QueryContratanteCodigo.AsString + ' and status_pagamento = 3 and status = 9');
       QueryOrcamentos.Close;
       QueryOrcamentos.open;
   end;




end;

procedure TFormContratante.BitBtn11Click(Sender: TObject);
begin
   if Application.MessageBox('Este processo ir� desparalizar todos os or�amentos autorizados que est�o paralizados','Confirma��o', MB_YESNO + MB_DEFBUTTON2) = IdYes then
   begin
       dm.execmd('update orcamento set status = 9 where contratante = ' + QueryContratanteCodigo.AsString + ' and status = 4');
       QueryOrcamentos.Close;
       QueryOrcamentos.open;
   end;

end;

procedure TFormContratante.EditProtocoloKeyPress(Sender: TObject;
  var Key: Char);
begin
   key := enio.So_Numero(key);
end;

procedure TFormContratante.DBEdit23KeyPress(Sender: TObject;
  var Key: Char);
begin
   If not (Key In [#22,#8,#27,#13,'1','2','3','4','5','6','7','8','9','0']) then
      key := #0;

end;

procedure TFormContratante.QueryContratanteemailChange(Sender: TField);
begin
    if length(trim(QueryContratanteemail.AsString)) > 0 then
    begin
        if not dm.ValidarEMail(QueryContratanteemail.AsString) then
        begin
           ShowMessage('email inv�lido !');
           DBEditEmail.SetFocus;
        end;
    end;
end;

procedure TFormContratante.Button7Click(Sender: TObject);
begin
   filtraOrcamento();
end;

procedure TFormContratante.CheckBox4Click(Sender: TObject);
begin
     DataSourceStatus_Pagto1.Enabled := CheckBox4.Checked;
end;

procedure TFormContratante.CheckBox3Click(Sender: TObject);
begin
   DataSourceStatus.Enabled := CheckBox3.Checked;
end;

procedure TFormContratante.BitBtnAlterarStatusClick(Sender: TObject);
begin
   MaskEdit3.Clear;
   MaskEdit4.Clear;
end;

procedure TFormContratante.Button8Click(Sender: TObject);
begin
   limpaFiltros();
   filtraOrcamento();
end;
procedure TFormContratante.limpaFiltros();
begin
   CheckBox4.Checked := false;
   CheckBox3.Checked := false;
   MaskEdit3.Clear;
   MaskEdit4.Clear;
   EditOrcamento.Clear;
   EditDentista.Clear;
end;

procedure TFormContratante.GerenciamentodeLEADS1Click(Sender: TObject);
begin
   FmGerenciamentoLEADS := TFmGerenciamentoLEADS.create(self);
   FmGerenciamentoLEADS.ShowModal;
   FmGerenciamentoLEADS.free;

end;

procedure TFormContratante.QueryUsuariosData_InclusaoValidate(
  Sender: TField);
begin
   if (QueryUsuarios.State = dsInsert) then
     QueryUsuariosdt_ini_cobertura.AsDateTime := QueryUsuariosData_Inclusao.AsDateTime;

end;

procedure TFormContratante.DBGrid1DblClick(Sender: TObject);
begin
   if QueryContratanteCodigo.isNull then
   begin
      ShowMessage('Cadastre o contratante primeiro, ao final ser� aberto a tela para cadastro do telefone c elular');
      exit;
   end;

   FmCadCelular := TFmCadCelular.create(self);
   FmCadCelular.cdContratante := QueryContratanteCodigo.AsString;
   FmCadCelular.ADOQueryH.Close;
   FmCadCelular.ADOQueryH.sql[1] := '''' + QueryContratanteCodigo.AsString + '''';
   FmCadCelular.ADOQueryH.Open;
   FmCadCelular.ADOQueryH.Insert;
   FmCadCelular.ShowModal;
   carregaCelular;

end;

procedure TFormContratante.Button6Click(Sender: TObject);
begin
    FmCadBloqueioGrupo := TFmCadBloqueioGrupo.create(self);

    FmCadBloqueioGrupo.ADOQueryBloqueioGrupo.Close;
    if (QueryContratante.Active)  and (not QueryContratanteCodigo.IsNull) and (QueryContratanteGrupo_Contratante.AsString <> '') then
    begin

       FmCadBloqueioGrupo.ADOQueryBloqueioGrupo.sql[1] := ' and cd_grupo_contrat = ' + QueryContratanteGrupo_Contratante.AsString;
       FmCadBloqueioGrupo.cdGrupocontrat := QueryContratanteGrupo_Contratante.asInteger;
    end
    else
       FmCadBloqueioGrupo.cdGrupocontrat := 0;
    //inputBox('Informe o c�digo CCO','Informe o c�digo CCO',FmCadBloqueioGrupo.ADOQueryBloqueioGrupo.SQL.text);


    FmCadBloqueioGrupo.ADOQueryBloqueioGrupo.open;
    FmCadBloqueioGrupo.ShowModal;
    FmCadBloqueioGrupo.Free;

end;

procedure TFormContratante.SpeedButton6Click(Sender: TObject);
begin
     if QueryContratante.state in [dsbrowse] then
        QueryContratante.Edit;
     QueryContratanteFone1.asString := '';

end;

procedure TFormContratante.SpeedButton7Click(Sender: TObject);
begin
     if QueryContratante.state in [dsbrowse] then
        QueryContratante.Edit;
     QueryContratanteFax.asString := '';

end;

procedure TFormContratante.SpeedButton8Click(Sender: TObject);
begin
     if QueryContratante.state in [dsbrowse] then
        QueryContratante.Edit;
     QueryContratanteFone2.asString := '';


end;

procedure TFormContratante.QueryContratantelg_enviarBoletoPorCorreiosValidate(
  Sender: TField);
begin
   Querycontratantelg_cobrarTaxaBoleto.AsBoolean := QueryContratantelg_enviarBoletoPorCorreios.AsBoolean;
end;

procedure TFormContratante.ADOQuery_RecorrenciaNewRecord(
  DataSet: TDataSet);
begin
  ADOQuery_RecorrenciaCodigo_Contratante.AsString:=QueryContratanteCodigo.AsString;
  ADOQuery_RecorrenciaOperadora_Recorrencia.AsString:='CIELO';
  ADOQuery_RecorrenciaAtivo.AsBoolean:=True;

end;

procedure TFormContratante.Button_ProcuraCodPorNumPedidoClick(
  Sender: TObject);
var
  Cod,TextoPesquisado:string;
begin
  TextoPesquisado:=InputBox('Numero do Pedido','Digite o N�mero do Pedido para localizar o contratante','');
  Cod:=DM.ExecutaComando('select Codigo_contratante a from recorrencia where numero_do_pedido_da_loja = '''+TextoPesquisado+'''','a');
  if Cod<>'' then
  begin
    QueryContratante.Close;
    QueryContratante.SQL[1] := 'where codigo = ' + Cod;
    QueryContratante.Open;
    if QueryContratante.Active=True then
    begin
      ADOQuery_Recorrencia.Locate('numero_do_pedido_da_loja',TextoPesquisado,[loCaseInsensitive]);
      EditPesquisa.Text:=Cod;
    end;
  end
  else
    ShowMessage('N�o foi localizado nenhum contratante com esse N�mero de Pedido');
end;

procedure TFormContratante.Button_ProcuraCodPorIdRecorrenciaClick(
  Sender: TObject);
var
  Cod,TextoPesquisado:string;
begin
  TextoPesquisado:=InputBox('ID Recorrencia','Digite o Id da Recorrencia para localizar o contratante','');
  Cod:=DM.ExecutaComando('select Codigo_contratante a from recorrencia where Id_recorrencia = '''+TextoPesquisado+'''','a');
  if Cod<>'' then
  begin
    QueryContratante.Close;
    QueryContratante.SQL[1] := 'where codigo = ' + Cod;
    QueryContratante.Open;
    if QueryContratante.Active=True then
    begin
      ADOQuery_Recorrencia.Locate('Id_recorrencia',TextoPesquisado,[loCaseInsensitive]);
      EditPesquisa.Text:=Cod;
    end;
  end
  else
    ShowMessage('N�o foi localizado nenhum contratante com esse Id de Recorrencia');
end;

procedure TFormContratante.ADOQuery_RecorrenciaBeforePost(
  DataSet: TDataSet);
begin
  ADOQuery_RecorrenciaOperadorAlteracao.AsString:=senha.Apelido;
end;

procedure TFormContratante.ADOQuery_RecorrenciaBeforeDelete(
  DataSet: TDataSet);
begin
  ShowMessage('N�o � possivel deletar uma recorrencia');
  abort;
end;

procedure TFormContratante.DBEdit44Enter(Sender: TObject);
var m,d,a:word;
begin
  if DBEdit44.Text='' then
  if DBEdit40.Text<>'' then
  begin
    try
      DecodeDate(StrToDateTime(DBEdit40.Text),a,m,d);
    finally
      ADOQuery_RecorrenciaDia_Recorrencia.AsInteger:=d;
    end;
  end;

end;

procedure TFormContratante.ADOQuery_RecorrenciaAfterPost(
  DataSet: TDataSet);
var TxtMensagem:string;
begin
  If QueryContratanteVencimento.AsInteger<>ADOQuery_RecorrenciaDia_Recorrencia.AsInteger then
  begin
    TxtMensagem:='O Vencimento deste contratante est� diferente do vencimento desta recorrencia. Verificar!';
  end;

  if QueryContratantedesc_boleto.AsCurrency=0 then
  begin
    if TxtMensagem<>'' then
      TxtMensagem:=TxtMensagem+#13+#13;
    TxtMensagem:=TxtMensagem+'N�o tem desconto cadastrado para esse contratante. '+
      'Caso necess�rio cadastre um desconto!'
  end;

  if TxtMensagem<>'' then
  ShowMessage(TxtMensagem);
end;

procedure TFormContratante.DBEdit49Exit(Sender: TObject);
begin
  if not QueryContratanteCPF_respEmpresa.IsNull then
    if not ValidaCPF(QueryContratanteCPF_respEmpresa.AsString) then
    begin
     ShowMessage('CPF inv�lido !');
     DBEdit49.SetFocus;
    end;
end;

procedure TFormContratante.DBGridAtendimentosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if QueryOrcamentosUsuarioAtivo.AsBoolean=False then
     DBGridAtendimentos.Canvas.Font.Color:=clRed;

  DBGridAtendimentos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormContratante.Button9Click(Sender: TObject);
var
  Telefone,DDD,Linha:string;
begin
  Telefone:=InputBox('Telefone','Digite o telefone com DDD. Apenas N�meros.','');
  Telefone:=Trim(Telefone);
  if (Length(Telefone)>11) or (Length(Telefone)<10) then
  begin
   ShowMessage('Digite um telefone celular ou fixo corretamente');
   exit;
  end;

  DDD:=Copy(Telefone,0,2);
  telefone:=Copy(Telefone,3,11);

  //PROCURANDO POR CELULAR
  if Length(Telefone)=9 then
    Linha:='where codigo in(select codigo from celulares where ddd='''+DDD+''' and celular = '''+Telefone+''')';

  //PROCURANDO POR TELEFONE FIXO
  if Length(Telefone)=8 then
    Linha:='where Fone1 like ''%'+Telefone+'%'' or  Fone2 like ''%'+Telefone+'%''  or Fax like ''%'+Telefone+'%''';

  QueryContratante.Close;
  QueryContratante.SQL[1] := Linha;
  if not CheckBoxExcl.Checked then
      QueryContratante.SQL[1] := QueryContratante.SQL[1] + ' and exclusao is null ';
  QueryContratante.SQL[2] := 'order by Nome';
  QueryContratante.Open;

  EditPesquisa.Text:='Telefone procurado:('+DDD+')'+Telefone;
end;

procedure TFormContratante.DBEdit1Exit(Sender: TObject);
begin
  if QueryContratantedesc_boleto.AsFloat>0 then
    DBMemo1.SetFocus;
end;

procedure TFormContratante.DBMemo1Exit(Sender: TObject);
begin
if QueryContratantedesc_boleto.AsFloat>0 then
  if DBMemo1.Text='' then
  begin
    ShowMessage('Colocar Observa��o do desconto que est� preenchido');
    DBMemo1.SetFocus;
  end;
end;

procedure TFormContratante.Button10Click(Sender: TObject);
begin
     FormTituloReceber := TFormTituloReceber.Create(Self);
     FormTituloReceber.EditProcura.Text := QueryContratanteCodigo.AsString;
     FormTituloReceber.EditProcura.OnExit(Sender);
     FormTituloReceber.QueryTitulo.Locate('numero_titulo',QueryReceberNumero_Titulo.AsInteger,[]);
     FormTituloReceber.ShowModal;
     FormTituloReceber.free;

end;

procedure TFormContratante.Button11Click(Sender: TObject);
begin
     FormTituloBaixados := TFormTituloBaixados.Create(Self);
     FormTituloBaixados.EditProcura.Text := QueryContratanteCodigo.AsString;
     FormTituloBaixados.EditProcura.OnExit(Sender);
     FormTituloBaixados.QueryTitulo.Locate('numero_titulo',QueryReceberNumero_Titulo.AsInteger,[]);
     FormTituloBaixados.Show;

end;

end.


