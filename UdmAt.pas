unit UdmAt;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ADODB;

type
  TDmAt = class(TDataModule)
    QueryDivergANSXBase: TQuery;
    Querysp_regAnsXBase: TQuery;
    Query1: TQuery;
    SpAtualizaNullANS: TQuery;
    Querytr_u_i_VerifPlanoValido: TQuery;
    QuerySpArqSusep: TQuery;
    QueryTRAltera_Usuario: TQuery;
    SpOrcApagar: TQuery;
    Query3: TQuery;
    Querytr_hist_param: TQuery;
    Queryhistorico_parametro: TQuery;
    QueryUsuPerdidoANS: TQuery;
    QuerySpGeraArqANSRegPerdidos: TQuery;
    QueryInseriPerdidos: TQuery;
    Querytr_u_i_consiste_dados: TQuery;
    Qr_SpSinistralidade_Ind: TQuery;
    QueryUpd_dtExcl_Perdidos: TQuery;
    QuerySpProcessaAumentoMens: TQuery;
    QuerySpProcessaAumentoMensDt_ini_usuario: TQuery;
    QuerySpVrMensalidade_dt_usu: TQuery;
    QueryTr_i_incluiMensalidade: TQuery;
    QueryPVerifCarenciaCrit: TQuery;
    QueryTr_i_inseriDenteFace: TQuery;
    Querysp_Upd_EventOdonto: TQuery;
    Querysp_manutAtraso: TQuery;
    QueryTr_u_crit_idade: TQuery;
    QueryTr_i_crit_Idade1: TQuery;
    QueryTr_i_u_validacoesOdonto: TQuery;
    Querytr_u_inibeAlterarUsu: TQuery;
    QueryServicoXFace: TQuery;
    QueryTr_i_u_inseriDenteFace: TQuery;
    QuerySpOrcApagar: TQuery;
    QuerySpCalculaDesconto: TQuery;
    QueryUpdIdzero: TQuery;
    Querytr_u_AtualizacaoANS: TQuery;
    spBaixaCnab: TQuery;
    tr_u_d_inibeAlterPlano_TabPrecoXPlano: TQuery;
    tr_u_inibeAlterPlano_TabPrecoXPlano: TQuery;
    QueryTempLogValorOrcamento: TQuery;
    tr_i_u_valida_valores: TQuery;
    pr_acha_valores_orc: TQuery;
    QueryGrupo_servico: TQuery;
    Tr_u_crit_Odonto: TQuery;
    Tr_u_InibeEdicaoItensOrc: TQuery;
    tr_u_registraBaixa: TQuery;
    sp_lastDayMonth: TQuery;
    Sp_alterarVrMen_GrauParent: TQuery;
    Altera_Receber: TQuery;
    tr_i_u_d_verifAprovacao: TQuery;
    esp_x_dentista: TQuery;
    endereco_x_dentista: TQuery;
    sp_relOrc_sip: TQuery;
    Tr_retornoUsuario: TQuery;
    QueryScriptExcel: TQuery;
    QueryScriptRPC: TQuery;
    Querysp_calcJuros: TQuery;
    tr_i_verifiSeq: TQuery;
    tr_u_validaversao: TQuery;
    tr_i_delMsgOdonto: TQuery;
    delete_orcamento: TQuery;
    SpCalculaDesconto: TQuery;
    titulos_pagos: TQuery;
    sp_relMensalidadeContrat: TQuery;
    spCalcDescContrat: TQuery;
    SpVrMensalidade: TQuery;
    sp_verifFatAnterior: TQuery;
    tr_i_inibeServico: TQuery;
    tr_u_verifContrate: TQuery;
    Tableseq_faturamento: TQuery;
    ix_faturamento: TQuery;
    pGeraSeqFaturamento: TQuery;
    sp_rel_vendas_contrat_titular: TQuery;
    sp_controleVendasEmpresariais: TQuery;
    sp_listaEtiq: TADOQuery;
    sp_inclusoesExclusoes: TADOQuery;
    SP_REL_FINANC_CLIENTE: TADOQuery;
    OpcoesMenu: TADOQuery;
    tr_u_VerifDesativaPlano: TADOQuery;
    tr_u_alt_statusPagto: TADOQuery;
    Inseri_script: TQuery;
    SpCancArqSusep: TADOQuery;
    TR_U_DENTISTA: TADOQuery;
    TR_U_DENTISTAXENDERECO: TADOQuery;
    TR_U_ESP_X_DENTISTA: TADOQuery;
    sp_RelCustoComOrcamento: TADOQuery;
    sp_rel_custo_orc_detail: TADOQuery;
    sp_listaEtiqContrat: TQuery;
    SP_GERA_DMED: TQuery;
    SP_ENVIO_DENTISTA_GRAFICA: TADOQuery;
    UsuarioLog: TADOQuery;
    ContratanteLog: TADOQuery;
    tr_i_Iitens_orcamento: TQuery;
    TR_U_LOG_CONTRATANTE: TADOQuery;
    TR_U_LOG_USUARIO: TADOQuery;
    SpRegistraDetalheMensalidade: TADOQuery;
    sp_geraMensalidadeDebFolha: TADOQuery;
    sp_recebimento_mes: TADOQuery;
    SP_GERA_DMED_REG_TOP: TADOQuery;
    sp_gera_nr_titulo: TADOQuery;
    SP_GERA_DMED_REG_TOP_ALTER: TADOQuery;
    tr_u_bloqueio_contratante: TADOQuery;
    tr_i_TabPagXDentista: TQuery;
    tr_u_TabPagXDentista: TQuery;
    v_contratante_paralizado: TQuery;
    ADOQueryCriaTabelaAvisos: TADOQuery;
    SP_VR_SERVICO_POR_PLANO: TADOQuery;
    SpRelClinicaManutencaoPJ: TADOQuery;
    SpRelClinicaManutencaoAu: TADOQuery;
    Receber_log: TADOQuery;
    TR_U_LOG_RECEBER: TADOQuery;
    Tr_i_incluiMensalidade: TADOQuery;
    TR_U_ESPECIALIDADE: TADOQuery;
    sp_ajustaVenctoValorPrestacoes: TADOQuery;
    ADOQueryAtuEndDentista: TADOQuery;
    sp_baixaTitulosOrcamento: TADOQuery;
    Tr_i_u_validacoesOdonto: TADOQuery;
    tr_d_itens_orcamento: TADOQuery;
    sp_relComissaoUsuario_: TADOQuery;
    sp_relComissaoUsuario: TQuery;
    ADOQueryIncluiMOtivosCNAB: TADOQuery;
    tr_i_faturamento: TQuery;
    ck_estado: TQuery;
    sp_monitoramentoANS: TQuery;
    sp_relBenefExcluidos: TQuery;
    Altera_Usuario: TADOQuery;
    V_CONTRATANTE: TQuery;
    sp_AtualizaEvento: TADOQuery;
    Sp_incluiEnventoFat: TADOQuery;
    tr_u_verifStatusPagProtetico: TADOQuery;
    tr_u_bloqueio_Grupocontratante: TADOQuery;
    sp_graficoGastosProtDentManutParteManutPJ: TQuery;
    sp_graficoGastosProtDentManutParteManutAU: TQuery;
    sp_graficoGastosProtDentManut: TQuery;
    tr_i_u_descontoXIdade: TADOQuery;
    sp_relContratInadimplente: TQuery;
    tr_i_servicos: TADOQuery;
    SpArqSusep: TQuery;
    Query2: TQuery;
    tr_u_atualizaValidade: TADOQuery;
    v_celulares: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmAt: TDmAt;

implementation

uses udm;

{$R *.DFM}

end.
