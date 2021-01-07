
{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Gerenciador do Faturamento                                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

//******************************************************************************
//****************** Informações Importantes Débito em Conta *******************
// ===> Foi Criado um Diretório no Raiz chamado C:\Cobranca\Debitos\, onde serão criados
// subdiretórios com o Nome do Banco do Débito Bancário. Todo arquivo gerado se-
// rá gravado no diretório do Banco em questão. (Ex.:C:\Cobranca\Debitos\Envio\Caixa\Nome
// do Arquivo).
{
verificar se a querycontas abre pq na seato deu erro
nos campos debito_sequencial e boleto_sequencial
exclui e inclui novamente
segue a tabela da seato
Tabela               Coluna               Tipo       Tam  xprec xscale isnullable  crdate
-------------------- -------------------- ---------- ---- ----- ------ ----------- ---------------------------
Contas_Banco         Id_Banco             int          4  10    0      0           2002-11-08 14:11:01.130
Contas_Banco         Banco                varchar      3  0     0      0           2002-11-08 14:11:01.130
Contas_Banco         Nome_Banco           varchar     30  0     0      1           2002-11-08 14:11:01.130
Contas_Banco         Numero_Conta         varchar     20  0     0      1           2002-11-08 14:11:01.130
Contas_Banco         Agencia              varchar     10  0     0      1           2002-11-08 14:11:01.130
Contas_Banco         Titular              varchar     40  0     0      1           2002-11-08 14:11:01.130
Contas_Banco         CGC                  varchar     20  0     0      1           2002-11-08 14:11:01.130
Contas_Banco         Convenio             varchar     20  0     0      1           2002-11-08 14:11:01.130
Contas_Banco         Boleto               bit          1  1     0      1           2002-11-08 14:11:01.130
Contas_Banco         Mensagem_Header      varchar     30  0     0      1           2002-11-08 14:11:01.130
Contas_Banco         Espaco_Header        int          4  10    0      1           2002-11-08 14:11:01.130
Contas_Banco         Debito_Tipo          smallint     2  5     0      1           2002-11-08 14:11:01.130
Contas_Banco         Debito_Sequencial    int          4  10    0      1           2002-11-08 14:11:01.130
Contas_Banco         Boleto_Sequencial    int          4  10    0      1           2002-11-08 14:11:01.130

}

unit GeraReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,  ExtCtrls, StdCtrls, Buttons, Mask, Db, DBTables, DBCtrls, ComCtrls, DBIProcs,
  ADODB, Biblio,FileCtrl,enio;

type
  TFormGeraReceber = class(TForm)
    Panel2: TPanel;
    ProgressBarGera: TProgressBar;
    QueryContratante: TQuery;
    QueryFaturamento: TQuery;
    QueryReceberOrc: TQuery;
    StoredProcDeletaFaturamento: TStoredProc;
    DataSourceTipoDocumento: TDataSource;
    DataSourceFaturamento: TDataSource;
    QueryTipoCobranca: TQuery;
    Panel1: TPanel;
    BitBtnProcessar: TBitBtn;
    BitBtnImprimir: TBitBtn;
    BitBtnExportar: TBitBtn;
    BitBtnEditaArquivo: TBitBtn;
    BitBtnSair: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtnDebitoBradesco: TBitBtn;
    BitBtnDebitoBanespa: TBitBtn;
    BitBtnDebitoCaixa: TBitBtn;
    BitBtnDebitoHSBC: TBitBtn;
    BitBtnDebitoUnibanco: TBitBtn;
    BitBtnDebitoItau: TBitBtn;
    Label2: TLabel;
    DataSourceContratante: TDataSource;
    BitBtnDebitoBrasil: TBitBtn;
    BitBtnDebitoReal: TBitBtn;
    BitBtnDebitoSantander: TBitBtn;
    OpenDialog1: TOpenDialog;
    StoredProcDeletaRetorno: TStoredProc;
    QueryRetorno: TQuery;
    QueryRetornoIdentificacao_Empresa: TStringField;
    QueryRetornoAgencia: TStringField;
    QueryRetornoConta: TStringField;
    QueryRetornoData_Vencimento: TDateTimeField;
    QueryRetornoValor_Debito: TFloatField;
    QueryRetornoCodigo_Retorno: TStringField;
    BitBtnBoletoBanespa: TBitBtn;
    BitBtnVisa: TBitBtn;
    BitBtnMastercard: TBitBtn;
    BitBtnDebitoNossaCaixa: TBitBtn;
    QueryRetornoCodigo_Contratante: TIntegerField;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosGrau_Parentesco: TSmallintField;
    QueryUsuariosData_Nascimento: TDateTimeField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryUsuariosContratante_Titular: TIntegerField;
    QueryUsuariosVendedor: TIntegerField;
    QueryUsuariosE_Civil: TStringField;
    QueryUsuariosSexo: TStringField;
    QueryUsuariosInclusao_Susep: TDateTimeField;
    QueryUsuariosExclusao_Susep: TDateTimeField;
    QueryUsuariosSituacao: TStringField;
    QueryPrecoContratante: TQuery;
    QueryPrecoPlano: TQuery;
    QueryPrecoGrupo: TQuery;
    QueryPrecoContratanteCodigo_Contratante: TIntegerField;
    QueryPrecoContratanteCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoContratanteData: TDateTimeField;
    QueryPrecoContratanteValor: TFloatField;
    QueryPrecoPlanoCodigo_Plano: TSmallintField;
    QueryPrecoPlanoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoPlanoData: TDateTimeField;
    QueryPrecoPlanoValor: TFloatField;
    QueryPrecoGrupoCodigo_Grupo: TSmallintField;
    QueryPrecoGrupoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoGrupoData: TDateTimeField;
    QueryPrecoGrupoValor: TFloatField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    QueryReceberOrcNumero_Titulo: TIntegerField;
    QueryReceberOrcDesdobramento: TStringField;
    QueryReceberOrcTipo_Documento: TIntegerField;
    QueryReceberOrcCodigo_Contratante: TIntegerField;
    QueryReceberOrcData_Emissao: TDateTimeField;
    QueryReceberOrcData_Vencimento: TDateTimeField;
    QueryReceberOrcValor: TFloatField;
    QueryReceberOrcSaldo: TFloatField;
    QueryReceberOrcTipo_Cobranca: TIntegerField;
    QueryReceberOrcNumero_Banco: TStringField;
    QueryReceberOrcData_Pagamento: TDateTimeField;
    QueryReceberOrcValor_Pago: TFloatField;
    QueryReceberOrcDesconto: TFloatField;
    QueryReceberOrcJuros: TFloatField;
    QueryReceberOrcOperador: TSmallintField;
    QueryFaturamentoNumero_Titulo: TIntegerField;
    QueryFaturamentoDesdobramento: TStringField;
    QueryFaturamentoTipo_Documento: TIntegerField;
    QueryFaturamentoCodigo_Contratante: TIntegerField;
    QueryFaturamentoData_Emissao: TDateTimeField;
    QueryFaturamentoData_Vencimento: TDateTimeField;
    QueryFaturamentoValor: TFloatField;
    QueryFaturamentoNumero_Banco: TStringField;
    QueryFaturamentoTipo_Cobranca: TIntegerField;
    QueryFaturamentoExportado_Receber: TBooleanField;
    QueryFaturamentoEmitido_Documento: TBooleanField;
    QueryContratanteCodigo: TIntegerField;
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
    QueryContratanteemail: TStringField;
    QueryContratanteNumero_Cartao: TStringField;
    QueryContratanteCodigo_Seguranca: TStringField;
    QueryContratanteMotivo_Cancelamento: TIntegerField;
    QueryContratanteSituacao: TStringField;
    QueryContratanteForma_Cobranca: TIntegerField;
    QueryContratanteUltimo_Faturamento: TDateTimeField;
    QueryContratantePlano: TIntegerField;
    QueryContratanteGrupo_Contratante: TIntegerField;
    QueryDesconto: TQuery;
    QueryDescontoCodigo_Plano: TSmallintField;
    QueryDescontoData: TDateTimeField;
    QueryDescontoQtde_Usuarios1: TSmallintField;
    QueryDescontoQtde_Usuarios2: TSmallintField;
    QueryDescontoPercentual_desconto: TFloatField;
    QueryDescontoValor_Desconto: TFloatField;
    QueryManutencao: TQuery;
    QueryManutencaoUsuario: TIntegerField;
    QueryManutencaoServico: TIntegerField;
    QueryManutencaoData_Inicial: TDateTimeField;
    QueryManutencaoData_Final: TDateTimeField;
    QueryManutencaoDentista: TIntegerField;
    QueryManutencaoVencimento: TIntegerField;
    QueryManutencaoGera_Boleto: TBooleanField;
    QueryPrecoContratante2: TQuery;
    QueryPrecoGrupo2: TQuery;
    QueryPrecoPlano2: TQuery;
    QueryValorProcedimento: TQuery;
    QueryCoberturaProcedimento: TQuery;
    QueryCoberturaPlano: TQuery;
    QueryCoberturaGrupo: TQuery;
    QueryCoberturaContratante: TQuery;
    QueryPrecoContratante2Contratante: TIntegerField;
    QueryPrecoContratante2TabelaPreco: TIntegerField;
    QueryPrecoContratante2Ativa: TBooleanField;
    QueryPrecoGrupo2Grupo_Contratante: TIntegerField;
    QueryPrecoGrupo2TabelaPreco: TIntegerField;
    QueryPrecoGrupo2Ativa: TBooleanField;
    QueryPrecoPlano2Plano: TIntegerField;
    QueryPrecoPlano2TabelaPreco: TIntegerField;
    QueryPrecoPlano2Ativa: TBooleanField;
    QueryValorProcedimentoCodigo_Tabela: TIntegerField;
    QueryValorProcedimentoCodigo_Servico: TIntegerField;
    QueryValorProcedimentoValor_Cobranca: TFloatField;
    QueryValorProcedimentoValor_Dentista: TFloatField;
    QueryValorProcedimentoValor_Protetico: TFloatField;
    QueryCoberturaContratanteContratante: TIntegerField;
    QueryCoberturaContratanteTabela_Cobertura: TIntegerField;
    QueryCoberturaContratanteAtiva: TBooleanField;
    QueryCoberturaGrupoGrupo_Contratante: TIntegerField;
    QueryCoberturaGrupoTabela_Cobertura: TIntegerField;
    QueryCoberturaGrupoAtiva: TBooleanField;
    QueryCoberturaPlanoPlano: TIntegerField;
    QueryCoberturaPlanoTabela_Cobertura: TIntegerField;
    QueryCoberturaPlanoAtiva: TBooleanField;
    QueryCoberturaProcedimentoCodigo_Tabela: TIntegerField;
    QueryCoberturaProcedimentoCodigo_procedimento: TIntegerField;
    QueryCoberturaProcedimentoDias: TIntegerField;
    QueryCoberturaProcedimentoPercentual: TFloatField;
    QueryAcrescimo: TQuery;
    QueryAcrescimoPlano: TIntegerField;
    QueryAcrescimoDias: TSmallintField;
    QueryAcrescimoPercentual: TFloatField;
    QueryFaturamentoAlteracao_Cobranca: TBooleanField;
    QueryFaturamentoAlteracao_Valor: TBooleanField;
    QueryFaturamentoAuxiliar: TQuery;
    QueryFaturamentoAuxiliarNumero_Titulo: TIntegerField;
    QueryFaturamentoAuxiliarDesdobramento: TStringField;
    QueryFaturamentoAuxiliarTipo_Documento: TIntegerField;
    QueryFaturamentoAuxiliarCodigo_Contratante: TIntegerField;
    QueryFaturamentoAuxiliarData_Emissao: TDateTimeField;
    QueryFaturamentoAuxiliarData_Vencimento: TDateTimeField;
    QueryFaturamentoAuxiliarValor: TFloatField;
    QueryFaturamentoAuxiliarNumero_Banco: TStringField;
    QueryFaturamentoAuxiliarTipo_Cobranca: TIntegerField;
    QueryFaturamentoAuxiliarExportado_Receber: TBooleanField;
    QueryFaturamentoAuxiliarEmitido_Documento: TBooleanField;
    QueryFaturamentoAuxiliarAlteracao_Cobranca: TBooleanField;
    QueryFaturamentoAuxiliarAlteracao_Valor: TBooleanField;
    QueryContratanteperc_desconto: TFloatField;
    QueryItensOrcamentos: TQuery;
    QueryItensOrcamentosOrcamento: TIntegerField;
    QueryItensOrcamentosIncremento: TIntegerField;
    QueryItensOrcamentosServico: TIntegerField;
    QueryItensOrcamentosQuantidade: TSmallintField;
    QueryItensOrcamentosValor: TFloatField;
    QueryItensOrcamentosValor_Bruto: TFloatField;
    QueryItensOrcamentosValor_Dentista: TFloatField;
    QueryItensOrcamentosValor_Protetico: TFloatField;
    QueryUsuariosCodigo_Completo: TIntegerField;
    QueryReceberOrcOrcamento: TIntegerField;
    QueryFaturamentoOrcamento: TIntegerField;
    QueryFaturamentoAuxiliarOrcamento: TIntegerField;
    QueryReceberOrcCodigo_Usuario: TIntegerField;
    QueryFaturamentoCodigo_Usuario: TIntegerField;
    QueryErros: TQuery;
    QueryErrosNumero_Titulo: TIntegerField;
    QueryErrosDesdobramento: TStringField;
    QueryErrosData_Vencimento: TDateTimeField;
    QueryErrosCodigo_Contratante: TIntegerField;
    QueryErrosCodigo_Usuario: TIntegerField;
    QueryErrosTipo_Documento: TIntegerField;
    QueryErrosValor: TFloatField;
    StoredProcDeleteErros: TStoredProc;
    QueryContas: TQuery;
    QueryContratanteAux: TQuery;
    QueryContratanteAuxperc_desconto: TFloatField;
    QueryContratanteAuxCodigo: TIntegerField;
    QueryContratanteAuxPlano: TIntegerField;
    QueryReceber: TQuery;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberTipo_Documento: TSmallintField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberCodigo_Usuario: TIntegerField;
    QueryReceberData_Emissao: TDateTimeField;
    QueryReceberData_Vencimento: TDateTimeField;
    QueryReceberValor: TFloatField;
    QueryReceberSaldo: TFloatField;
    QueryReceberTipo_Cobranca: TSmallintField;
    QueryReceberNumero_Banco: TStringField;
    QueryReceberData_Pagamento: TDateTimeField;
    QueryReceberValor_Pago: TFloatField;
    QueryReceberDesconto: TFloatField;
    QueryReceberJuros: TFloatField;
    QueryReceberOperador: TSmallintField;
    QueryReceberOrcamento: TIntegerField;
    QueryReceberParcela: TSmallintField;
    QueryReceberStatus_Cheque: TStringField;
    QueryReceberObservacoes: TStringField;
    QueryReceberStatus_Orcamento: TSmallintField;
    QueryPreferencias: TQuery;
    QueryPreferenciasCaminho_Cobranca: TStringField;
    QueryPreferenciasValor_Cobranca: TFloatField;
    QueryPreferenciasValor_US: TFloatField;
    QueryFaturamentoCidade: TStringField;
    QueryManutencaoCidade_Comercial: TStringField;
    QueryContasId_Banco: TIntegerField;
    QueryContasBanco: TStringField;
    QueryContasNome_Banco: TStringField;
    QueryContasNumero_Conta: TStringField;
    QueryContasAgencia: TStringField;
    QueryContasTitular: TStringField;
    QueryContasCGC: TStringField;
    QueryContasConvenio: TStringField;
    QueryContasBoleto: TBooleanField;
    QueryContasMensagem_Header: TStringField;
    QueryContasEspaco_Header: TIntegerField;
    QueryContasDebito_Tipo: TSmallintField;
    QueryReapresentacao: TQuery;
    QueryReapresentacaoData_Vencimento: TDateTimeField;
    QueryFaturamentoRe: TQuery;
    QueryReapresentacaonumero_titulo: TIntegerField;
    QueryReapresentacaovencimento: TIntegerField;
    QueryFaturamentoReNumero_Titulo: TIntegerField;
    QueryFaturamentoReData_Vencimento: TDateTimeField;
    QueryFaturamentoReEmitido_Documento: TBooleanField;
    QueryFaturamentoReData_Emissao: TDateTimeField;
    SPCalculaParcela: TStoredProc;
    QueryFaturamentoParcela: TIntegerField;
    QueryFaturamentoReDesdobramento: TStringField;
    QueryFaturamentoReTipo_Documento: TIntegerField;
    QueryFaturamentoReCodigo_Contratante: TIntegerField;
    QueryFaturamentoReCodigo_Usuario: TIntegerField;
    QueryFaturamentoReValor: TFloatField;
    QueryFaturamentoReNumero_Banco: TStringField;
    QueryFaturamentoReTipo_Cobranca: TIntegerField;
    QueryFaturamentoReExportado_Receber: TBooleanField;
    QueryFaturamentoReAlteracao_Cobranca: TBooleanField;
    QueryFaturamentoReAlteracao_Valor: TBooleanField;
    QueryFaturamentoReOrcamento: TIntegerField;
    QueryFaturamentoReCidade: TStringField;
    QueryFaturamentoReParcela: TIntegerField;
    QueryUsuariosAux: TQuery;
    QueryUsuariosAuxCodigo: TIntegerField;
    QueryUsuariosAuxDigito: TIntegerField;
    QueryUsuariosAuxCodigo_Completo: TIntegerField;
    QueryUsuariosAuxNome: TStringField;
    QueryUsuariosAuxGrau_Parentesco: TSmallintField;
    QueryUsuariosAuxData_Nascimento: TDateTimeField;
    QueryUsuariosAuxData_Inclusao: TDateTimeField;
    QueryUsuariosAuxData_Exclusao: TDateTimeField;
    QueryUsuariosAuxContratante_Titular: TIntegerField;
    QueryUsuariosAuxVendedor: TIntegerField;
    QueryUsuariosAuxE_Civil: TStringField;
    QueryUsuariosAuxSexo: TStringField;
    QueryUsuariosAuxInclusao_Susep: TDateTimeField;
    QueryUsuariosAuxExclusao_Susep: TDateTimeField;
    QueryUsuariosAuxSituacao: TStringField;
    QueryUsuariosAuxOperador_Inclusao: TIntegerField;
    QueryUsuariosAuxOperador_Alteracao: TIntegerField;
    QueryUsuariosAuxOperador_Exclusao: TIntegerField;
    QueryUsuariosAuxManutencao: TBooleanField;
    QueryFaturamentoTipo_Pagamento: TIntegerField;
    QueryManutencaoDebito: TBooleanField;
    QueryManutencaoBanco: TIntegerField;
    QueryManutencaoAgencia: TStringField;
    QueryManutencaoConta: TStringField;
    QueryManutencaoTitular_Conta: TStringField;
    QueryManutencaoForma_Cobranca: TIntegerField;
    QueryContratanteOperador_Inclusao: TIntegerField;
    QueryContratanteOperador_Alteracao: TIntegerField;
    c: TIntegerField;
    QueryContratanteEmpresa: TBooleanField;
    QueryContratanteNumero_Res: TStringField;
    QueryContratanteComplemento_Res: TStringField;
    QueryContratanteNumero_Com: TStringField;
    QueryContratanteComplemento_Com: TStringField;
    QueryContratanteCodigo_1: TIntegerField;
    QueryContratanteDescricao: TStringField;
    QueryContratanteGera_Receber: TBooleanField;
    QueryAcrescimoData_Aumento: TDateTimeField;
    QueryUsuariosValor_Mens: TFloatField;
    QueryUsuariosAuxValor_Mens: TFloatField;
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
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    QueryOrcamentosNumero_Parcelas: TSmallintField;
    QueryOrcamentosData_Conferencia: TDateTimeField;
    QueryOrcamentosTotal_Dentista: TFloatField;
    QueryOrcamentosTotal_Protetico: TFloatField;
    QueryOrcamentosTotal_Contas: TFloatField;
    QueryOrcamentosAutorizado: TBooleanField;
    QueryOrcamentosOperador_Aprovacao: TSmallintField;
    QueryOrcamentosTipo: TSmallintField;
    QueryOrcamentosDesconto: TFloatField;
    QueryOrcamentosnro_urgencia: TIntegerField;
    QueryOrcamentosData_Status: TDateTimeField;
    QueryOrcamentosOperador_Status: TIntegerField;
    QueryOrcamentosPericiaFinal: TBooleanField;
    SpVrMensalidade: TStoredProc;
    QueryContasDebito_Sequencial: TIntegerField;
    QueryContasBoleto_Sequencial: TIntegerField;
    QueryContratantedesc_boleto: TFloatField;
    QueryContaslayout: TStringField;
    QueryPreferenciasnome_empresa: TStringField;
    QueryContasJurosDiario: TFloatField;
    QueryContasmsg1: TStringField;
    QueryContasmsg2: TStringField;
    QueryContasPasta: TStringField;
    QuerycontratanteOrig: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    IntegerField5: TIntegerField;
    StringField27: TStringField;
    IntegerField6: TIntegerField;
    DateTimeField3: TDateTimeField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField1: TFloatField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    BooleanField1: TBooleanField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    IntegerField12: TIntegerField;
    StringField32: TStringField;
    BooleanField2: TBooleanField;
    FloatField2: TFloatField;
    QueryFaturamentoOrig: TQuery;
    IntegerField13: TIntegerField;
    StringField33: TStringField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    FloatField3: TFloatField;
    StringField34: TStringField;
    IntegerField16: TIntegerField;
    BooleanField3: TBooleanField;
    BooleanField4: TBooleanField;
    BooleanField5: TBooleanField;
    BooleanField6: TBooleanField;
    IntegerField17: TIntegerField;
    IntegerField18: TIntegerField;
    StringField35: TStringField;
    IntegerField19: TIntegerField;
    IntegerField20: TIntegerField;
    QueryManutencaoOrig: TQuery;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    BooleanField7: TBooleanField;
    StringField36: TStringField;
    BooleanField8: TBooleanField;
    IntegerField25: TIntegerField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    IntegerField26: TIntegerField;
    QueryReceberOrcOrig: TQuery;
    IntegerField27: TIntegerField;
    StringField40: TStringField;
    IntegerField28: TIntegerField;
    IntegerField29: TIntegerField;
    DateTimeField8: TDateTimeField;
    DateTimeField9: TDateTimeField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    IntegerField30: TIntegerField;
    StringField41: TStringField;
    DateTimeField10: TDateTimeField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    SmallintField1: TSmallintField;
    IntegerField31: TIntegerField;
    IntegerField32: TIntegerField;
    QueryContasOrig: TQuery;
    IntegerField33: TIntegerField;
    StringField42: TStringField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    BooleanField9: TBooleanField;
    StringField49: TStringField;
    IntegerField34: TIntegerField;
    SmallintField2: TSmallintField;
    IntegerField35: TIntegerField;
    IntegerField36: TIntegerField;
    StringField50: TStringField;
    FloatField9: TFloatField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    RadioGroupTp: TRadioGroup;
    ADOQueryPeriodoFat: TADOQuery;
    QueryFaturamentodtinclusao: TDateTimeField;
    QueryFaturamentoempresa: TBooleanField;
    QueryFaturamentoseq_periodo_fat: TIntegerField;
    sp_AtualizaEvento: TADOStoredProc;
    Sp_incluiEnventoFat: TADOStoredProc;
    BitBtn1: TBitBtn;
    QueryOrcamentoscd_tabela: TSmallintField;
    ComboBoxTipoCobranca: TComboBox;
    Label8: TLabel;
    MaskEditEmissao: TMaskEdit;
    Label4: TLabel;
    Label3: TLabel;
    EditAno: TEdit;
    Label5: TLabel;
    EditMes: TEdit;
    Label9: TLabel;
    EditMesFim: TEdit;
    Label6: TLabel;
    EditInicial: TEdit;
    Label7: TLabel;
    EditFinal: TEdit;
    LabelContratante: TLabel;
    EditCodigo: TEdit;
    BitBtnPesquisar: TBitBtn;
    Label1: TLabel;
    ComboBoxCidade: TComboBox;
    sp_geraMensalidadeDebFolha: TADOStoredProc;
    QueryManutencaoCodigo: TIntegerField;
    Memo1: TMemo;
    QueryFaturamentovr_complemento: TFloatField;
    QueryFaturamentonnBoleto: TIntegerField;
    QueryItensOrcamentosindiceTabPagDentista: TIntegerField;
    QueryFaturamentolg_cobraJuros: TBooleanField;
    QueryFaturamentomensagem1: TStringField;
    QueryFaturamentomensagem2: TStringField;
    QueryFaturamentomensagem3: TStringField;
    QueryContratantelg_gerarVrMedicarTelefone: TBooleanField;
    QueryContratantelg_comunicadoMedicarEnviado: TBooleanField;
    QueryFaturamentolg_comunicadoMedicarEnviado: TBooleanField;
    QueryFaturamentovrMedicar: TFloatField;
    QueryFaturamentovrSemMedicar: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBoxTipoDocKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditEmissaoExit(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
//    procedure DatabaseCobCaixaLogin(Database: TDatabase;
//      LoginParams: TStrings);
    procedure DataSourceFaturamentoDataChange(Sender: TObject;
      Field: TField);
    procedure BitBtnExportarClick(Sender: TObject);
    procedure BitBtnDebitoBradescoClick(Sender: TObject);
    procedure BitBtnDebitoCaixaClick(Sender: TObject);
    procedure BitBtnDebitoSantanderClick(Sender: TObject);
    procedure BitBtnDebitoHSBCClick(Sender: TObject);
    procedure BitBtnDebitoBanespaClick(Sender: TObject);
    procedure BitBtnEditaArquivoClick(Sender: TObject);
    procedure BitBtnBoletoBanespaClick(Sender: TObject);
    procedure BitBtnDebitoRealClick(Sender: TObject);
    procedure BitBtnDebitoUnibancoClick(Sender: TObject);
    procedure BitBtnDebitoNossaCaixaClick(Sender: TObject);
    procedure EditAnoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnDebitoItauClick(Sender: TObject);
    procedure BitBtnDebitoBrasilClick(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure ComboBoxTipoCobrancaExit(Sender: TObject);
    procedure ComboBoxCidadeExit(Sender: TObject);
    procedure EditCodigoChange(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxTipoCobrancaChange(Sender: TObject);
    procedure BitBtnMastercardClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditMesKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnProcessarClick(Sender: TObject);

  private
   vrMedicarAux : real;
   VContratOpen, VFatOpen, VMantOpen, VRecebOpen, VContasOpen : Boolean;
    VLayoutBanco : string[30];
    //VVrJurosDia  : string[5];
    VMsg1Lote,
    VMsg2Lote    : string[40];
    VPasta       : string[30];
    VNrSeqArq    : Smallint;
    ArgGerados,cdConvenioCNAB   : string;
    lgCancelEnvDoc : boolean;
    valor_complementoMens : currency;
//    procedure PDebAutoReal;
    Function getVrTaxaBoleto : Real;
    function getTabelaNovaPagDentista(cdDentista : string; cdServico : string) : integer;

    procedure ProcessaMensalidadeDesFolha;
    procedure AchaVrDentistaProtetico(CdServico,CdTabela, cdDentista,indiceTabPagDentista : string);
    procedure ExportaReceber;
    procedure PDebAutoVariasDatas(PBanco:Integer);
    procedure ProcessarFat;
    procedure ProcessaRetornoBrasil2;
//    procedure PDebAutoBrasil;


    procedure PIncluiPeriodoFat; overload;

    procedure BoletoBancoob;
    procedure SetaSelectsOrig;
    Function NN_CEF(Numero:String):String;
    procedure MontaArquivoRetornoFEBRABAN;
    function PVerificaDivVrCrianca: Boolean;
    Function GetCdContratante : String;
    procedure GravaFaturamento;
    //procedure MontaHeaderLoteItau;
    //procedure MontaTraillerLoteItau;



    //procedure MontaTrailerItau;
    procedure MontaHeaderCobrancaBanespa;
    procedure MontaTrailerCobrancaBanespa;
    procedure MontaTitulosBanespa;
    procedure MontaRegistrosBradesco;
    procedure MontaRegistrosBrasil;
    procedure MontaTrailler;
    procedure MontaTraillerCEF;
    procedure MontaRegistrosCaixa;
    procedure MontaRegistrosSantander;
    procedure ProcessaEnvioCaixa;
    procedure ProcessaRetornoCaixa;
    procedure ProcessaEnvioBradesco;
    procedure ProcessaRetornoBradesco;
    procedure ProcessaEnvioBrasil;
    procedure ProcessaRetornoBrasil;
    procedure ProcessaEnvioItau;
    procedure ProcessaRetornoItau;
    procedure ProcessaEnvioBanespa;
    procedure ProcessaRetornoBanespa;
    procedure MontaRegistrosBanespa;
    procedure ProcessaEnvioSantander;
    procedure ProcessaRetornoSantander;
    procedure ProcessaEnvioHSBC;
    procedure ProcessaRetornoHSBC;
    procedure MontaRegistrosHSBC;
    procedure ProcessaEnvioReal;
    procedure ProcessaRetornoReal;
    procedure MontaRegistrosReal;
    procedure ProcessaEnvioUnibanco;
    procedure ProcessaRetornoUnibanco;
    procedure MontaHeaderUnibanco;
    procedure MontaTraillerUnibanco;
    procedure MontaRegistrosUnibanco;
    //procedure MontaArquivoRetorno;
    procedure MontaArquivoRetorno(PiniTit,PQtTit: byte);
    procedure ProcessaEnvioNossaCaixa;
    procedure ProcessaRetornoNossaCaixa;
    procedure MontaHeaderNossaCaixa;
    procedure MontaHeaderLoteNossaCaixa;
    procedure MontaTraillerLoteNossaCaixa;
    procedure MontaTraillerNossaCaixa;
    procedure MontaRegistrosNossaCaixa;
    procedure EscolheOperacao;
    //procedure CalculaDigito;
    //procedure CalculaDigitoBoleto;
    //procedure TestaResultado;
    //procedure TestaResultado2;
    procedure PAchaValorMensalidade;
    //procedure Verifica_PrecoGrupo;
    //procedure Verifica_PrecoPlano;
    //procedure Verifica_Desconto;
    //procedure Verifica_Acrescimo;
    procedure Verifica_Diferenca;
    procedure AchaValor2(cdDentista,indiceTabPagDentista : string); // Procedure usada na obtenção dos valores da manutenção
//    procedure AchaValorSeato;
    procedure Verifica_PrecoGrupo2(cdDentista,indiceTabPagDentista : string); // Procedure usada na obtenção dos valores da manutenção
    procedure Verifica_PrecoPlano2(cdDentista,indiceTabPagDentista : string); // Procedure usada na obtenção dos valores da manutenção
    procedure Gera_Log;
    procedure Verifica_CoberturaGrupo;
    procedure Verifica_CoberturaPlano;
    procedure AchaCobertura;
    procedure Filtra(lg_contasAReceber: boolean);
    procedure Seleciona_Conta;
    procedure MontaHeader;
    procedure MontaHeaderCEF;
    procedure ProcessaManutencao;
    procedure ProcessaMensalidade;
    procedure ProcessaOrcamento;
    //procedure GravaPreferencias;
    procedure GravaContasBancarias;
    procedure BoletosBanespa;
    procedure BoletosItau;
    Function  BoletoCnab240(cdConvenioCNAB : string): Integer;
    procedure MontaHeaderCobrancaItau;
    procedure MontaTitulosItau;
    procedure MontaTrailerCobrancaItau;
    //procedure ReapresentacaoDebitos;
    procedure MenssagemItau;

    function RetiraPontoDecimal(ValorStr: String):String;
    function RetiraTracoCep(CepStr: String):String;
    function RetiraTracoCPF(CpfStr: String):String;
    function MontaRegistrosHeaderItau() : string;
    function MontaRegistrosHeaderLoteItau(nrLote: string): string;
    function MontaRegistrosItau(nrLote: string;nrSeqLote : integer) : string;
    function MontaRegistrosTraillerLoteItau(nrLote: string; qtRegLote : integer; vrDebito: real) : string;
    function MontaRegistrosTraillerItau(qtRegArquivo : integer) : string;

  public

      procedure PIncluiPeriodoFat(PAno,Pmes:Word;PEmissao,PCidade:String;
                TpPessoa,PDiaIni,PdiaFim: Byte;PContrat:Integer;PDesDobr:char); overload;
      procedure PAtualizaEventoFat(tp_evento:Word;PTipoCobranca:Integer);
      procedure PAtualizaEventFatFull(PCdContrat:string;banco,vencto : Word);
      procedure PAtualizaPeriodoFat(Seq:String);
      Function VerifDia(PDia: Smallint;PMes,Pano:string): Smallint;
      procedure CarregaParam;
  end;

var
  FormGeraReceber: TFormGeraReceber;
  ContTitulos, Flag, Aux : Integer;
  Numero_Titulo : String;
  Data_Filtro : TDate;
  Data_Base, Data_Atual, Ultimo_Vencimento : TDate;
  Data_Grav : TDateTime;
  Dia, Mes, Ano, Hora, Minuto, Segundo, Milesimo : Word;
  Arquivo, Arquivo1  : System.TextFile;
  Conteudo, NomeArquivo, NomeArquivo1, Valor_Aux, NomeCaminho : String;
  Registro : String[150];
  Registro2 : String;
  Codigo_Convenio : String[20];
  Numerico : String[15];
  Numerico14 : String[14];
  Numerico_Total : String[17];
  Numerico_Total2 : String[18];
  Sequencial : String[8];
  Registro_Sacado : String;
  Registro_Titulo : String;
  Nome_Debitado : String[30];
  Codigo_Registro, Digito_Str, Tipo_Operacao : String[1];
  Digito : Short;
  PontoDecimal, Traco, Tem_Acrescimo: Boolean;
  Valor_Total, Valor_Titulo, Valor_Desconto, Valor_Acrescimo, Valor_Usuario,
  Valor_Anterior, Valor_Auxiliar, Valor_AuxDesc : Currency;
  Valor_Dentista, Valor_Protetico, Valor_Bruto, Valor_Servico, Valor_Juros : Real;
  Dia_Str, Mes_Str, Ano_Str2 : String[2];
  Hora_Str, Minuto_Str, Segundo_Str : String[2];
  Ano_Str, Agencia : String[4];
  Data_Str : String[10];
  Data_Str2, Cont_Str : String[6];
  Cont_Str2 : String[5];
  Hora_Atual : TDateTime;
  Conta : String[5];

  Digito_Str2 : String[1];
  Sequencial_Str : String[7];
  Tipo : String[2];
  Agencia2 : String[3];
  Logradouro : String[40];
  Local_Pagamento : String[55];
  Nosso_Numero : String[08];
  Nosso_Numero2 : String[10];
  Cep_Str : String[8];
  CPF_Str : String[15];
  CPF_Str2, Amarracao_Horizontal : String[18];
  Campo_Horizontal : String[21];
  Posicao, Cont_Registro, Cobranca_Anterior : Integer;
  Ag1, Ag2, Ag3, Ag4 : Integer;
  Numero_Banco : Int64;
  Conta1, Conta2, Conta3, Conta4, Conta5 : Integer;
  Cart1, Cart2, Cart3 : Integer;
  Num1, Num2, Num3, Num4, Num5, Num6, Num7, Num8 : Integer;
  Resultado : array[1..20] of Integer;
  Total, Diferenca, Resto, Erros : Integer;
  i, Numero_Usuarios : Short;
  Resultado_Str : String[2];
  Campo1, Campo2 : String[1];
  Codigo_Str : String[6];
  Banco, Cod_Banco, Nome_Banco, Mensagem : String;
  VUsuario, Titular_Emp, Agencia_Emp, CGC_Emp, Numero_Emp, Convenio_Emp, Desdobr : string;
  Espaco_Header, Perc_Desconto, Parcela : Integer;
  Debito_Tipo, Debito_Seq, Boleto_Seq : String;
  Banco_OK, boleto : boolean;

implementation

uses QRFaturamento, Volume, TipoOperacaoDebito, QRRetorno,
  Faturamento, Seletor, Filtro, BaixaAutomatica, BaixaRetorno, Senha,
  QRFaturamentoManutencao, PesquisaContratante, QRFaturamentoErros,
  QRFaturamentoErrosT, PesquisaUsuario, PesquisaContasBanco, MenssagemItau,
  udm, RelDivergenciaVrCrianca, ucnab,uCnab756, Baca, relVerifMesAnterior,
  BoletoBancoob, ControleFaturamento, ParamDebAut, Math; //, PesquisaContasBanco;

{$R *.DFM}

procedure TFormGeraReceber.FormCreate(Sender: TObject);
begin
     memo1.Visible := DebugHook <> 0;
     QueryTipoCobranca.Open;
     QueryContratante.Open;
     QueryUsuarios.Open;
     QueryPrecoContratante.Open;
     QueryPrecoPlano.Open;
     QueryPrecoGrupo.Open;
     QueryReceber.Open;
     QueryOrcamentos.Open;
     QueryItensOrcamentos.Open;
     QueryErros.Open;
     QueryFaturamento.Open;
     QueryContas.Open;
     QueryPreferencias.Open;
     MaskEditEmissao.Text := DateToStr(dm.Date);
     ComboBoxCidade.ItemIndex := 0;
     if dm.GetParam('FTPAR')= 'S' then
     begin
        Data_Atual := dm.Date;
        DecodeDate(Data_Atual, Ano, Mes, Dia);
        EditAno.Text := IntToStr(Ano);
        EditMes.Text := IntToStr(Mes);
        EditInicial.Text := '1';
        EditFinal.Text := '30';
     end;
     EditCodigo.Text := '';
     Banco := '';
     Cod_Banco := '000';
     Boleto := False;
     Banco_OK := False;
end;

procedure TFormGeraReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryTipoCobranca.Close;
     QueryContratante.Close;
     QueryUsuarios.Close;
     QueryPrecoContratante.Close;
     QueryPrecoPlano.Close;
     QueryPrecoGrupo.Close;
     QueryReceber.Close;
     QueryOrcamentos.Close;
     QueryItensOrcamentos.Close;
     QueryErros.Close;
     QueryFaturamento.Close;
     QueryContas.Close;
     QueryDesconto.Close;
     QueryAcrescimo.Close;
     QueryPrecoContratante2.Close;
     QueryFaturamentoAuxiliar.Close;
     QueryRetorno.Close;
     QueryManutencao.Close;
     QueryCoberturaContratante.Close;
     QueryPrecoGrupo2.Close;
     QueryCoberturaPlano.Close;
     QueryCoberturaGrupo.Close;
     QueryPrecoPlano2.Close;
     QueryCoberturaProcedimento.Close;
     QueryValorProcedimento.Close;
     QueryContratanteAux.Close;
     QueryContas.Close;
     QueryPreferencias.Close;
end;

function TFormGeraReceber.getTabelaNovaPagDentista(cdDentista : string; cdServico : string) : integer;
var rs: string;
begin
      rs := dm.execmd('select indice from TabPagDentistaXProcedimento t where t.cd_dentista = ' + cdDentista + ' and t.cd_procedimento = ' + cdServico + ' and dtFim is null','indice' );
      if rs = '' then
         result := 0
      else
         result := StrToInt(rs);
end;
function TFormGeraReceber.PVerificaDivVrCrianca: Boolean;
begin
   QrDiverVrCrianca := TQrDiverVrCrianca.create(self);
   with QrDiverVrCrianca do
   begin
      sp_verifiValorCrianca.Close;
      sp_verifiValorCrianca.Open;
      if not (sp_verifiValorCrianca.bof and sp_verifiValorCrianca.eof) then
      begin
         Result := true;
         ShowMessage('Existem usuários(Crianças) com valores divergentes. Favor analisar. Não foi possível processar o faturamento');
         QRLabelDtBase.Caption := DateToStr(dm.Date + 31); // na procedure tá passando 31 dais para faturamentos futuros
         Preview;
      end
      else
         Result := false;
      Free;
   end;
  if (ParamStr(1) <> 'D') then
    Result := false;
end;
procedure TFormGeraReceber.SetaSelectsOrig;

begin

   Querycontratante.close;
   Querycontratante.sql := QuerycontratanteOrig.sql;
   Querycontratante.Params := QuerycontratanteOrig.Params;
   Querycontratante.Active := VContratOpen;

   QueryFaturamento.Close;
   QueryFaturamento.sql := QueryFaturamentoOrig.sql;
   QueryFaturamento.Params := QueryFaturamentoOrig.Params;
   QueryFaturamento.Active := VFatOpen;

   QueryManutencao.close;
   QueryManutencao.sql := QueryManutencaoOrig.sql;
   QueryManutencao.Params := QueryManutencaoOrig.Params;
   QueryManutencao.Active := VMantOpen;

   QueryReceberOrc.close;
   QueryReceberOrc.sql := QueryReceberOrcOrig.sql;
   QueryReceberOrc.Params := QueryReceberOrcOrig.Params;
   QueryReceberOrc.Active := VRecebOpen;

   QueryContas.close;
   QueryContas.sql := QueryContasOrig.sql;
   QueryContas.Params := QueryContasOrig.Params;
   QueryContas.Active := VContasOpen;

end;

procedure TFormGeraReceber.ProcessarFat;
begin
   if (FormGeraReceber.tag = 10) and (EditCodigo.text = '') then
   begin
      ShowMessage('É necessário informar o código do contratante para processar o faturamento ');
      exit;
   end;
   SetaSelectsOrig ;

   if (Uppercase(copy(GetNmMaquina,1,11)) <> 'ANALISTA_01') and
      (Uppercase(copy(GetNmMaquina,1,13)) <> 'ENIO_NOTE') AND
      (FormGeraReceber.tag <> 10)
       then
   begin
      try
         if PVerificaDivVrCrianca then
            exit;
      except
      end;
   end;

   StoredProcDeleteErros.ExecProc; // Executa a stored procedure para deletar os registros do Arquivo de Retorno
   ContTitulos  := 0;
   Erros := 0;
   Flag  := 0;
   Data_Base := StrToDate(MaskEditEmissao.Text);

   if (StrToInt(EditMes.text) = 2) and (StrToInt(EditFinal.text) in [28,29]) and
   (Application.MessageBox('Atenção para o mes de fevereiro, independente do último dia ser 28 ou 29 para faturamento total é necessário informar a data fim de 30, Deseja continuar ?','ATENÇÃO',MB_YesNo + MB_DEFBUTTON2) = IdNo) then
      Exit;

   case ComboBoxTipoCobranca.ItemIndex of
      0 :
      begin
         try
            ProcessaManutencao;
          except on E: Exception do
          begin
             dm.execmd('update parametro set vl_parametro = ''N'' where cd_parametro = ''PISOM''');
             ShowMessage('Ocorreu um erro ao gerar as manutenções. Erro : ' + e.message);
          end;
          end;
      end;
      1 : ProcessaMensalidade;
      2 : ProcessaOrcamento;
      3 : ShowMessage('A Rotina Reapresentação não está disponível');// ReapresentacaoDebitos;
      4 : ProcessaMensalidadeDesFolha;
   else
      showmessage('É obrigatório o preenchimento do Tipo Documento');
      ComboBoxTipoCobranca.SetFocus;
      exit;
   end;
end;
procedure TFormGeraReceber.PAchaValorMensalidade;
var VDia : Smallint;
var qtContratAux : integer;

begin
   Valor_Titulo := 0;
   vrMedicarAux := 0;
   QueryUsuarios.Close;
   QueryUsuarios.ParamByName('Contratante').asInteger := QueryContratanteCodigo.asInteger;
   QueryUsuarios.ParamByName('Inclusao').asDateTime := Data_Base; // Data do ultimo dia mes anterior
   QueryUsuarios.Open;

   SpVrMensalidade.Close;
   SpVrMensalidade.ParamByName('@cdContratante').AsString := QueryContratanteCodigo.AsString;
   VDia := VerifDia(QueryContratanteVencimento.asInteger,EditMes.Text,EditAno.text);
   SpVrMensalidade.ParamByName('@DtBase').AsString := IntToStr(VDia) + '/' + EditMes.Text + '/' + EditAno.text;
   SpVrMensalidade.Open;

//   SpVrMensalidade.FieldByName('VrMensalidade').AsCurrency
   Valor_Desconto  := SpVrMensalidade.FieldByName('VrDesconto').AsCurrency; // desconto por qtde de usuários
   Valor_Titulo    := SpVrMensalidade.FieldByName('VrMensalidadeLiq').AsCurrency;
   Numero_Usuarios := SpVrMensalidade.FieldByName('qtdeUsu').AsInteger;
   valor_complementoMens := SpVrMensalidade.FieldByName('vrComplemento').AsCurrency; // valor do complemento do valor mínimo do plano

   if not QueryContratanteEmpresa.AsBoolean and QueryContratantelg_gerarVrMedicarTelefone.AsBoolean then // fisica
      vrMedicarAux := StrToFloat(dm.GetParam('VRMCAR'))
   else
   begin
      try
        qtContratAux := StrToInt(dm.execmd('select count(distinct c.codigo) qtde from usuario u, contratante c where u.codigo = c.codigo and u.Contratante_Titular = ' +
                  QueryContratanteCodigo.AsString +
                 'and c.Exclusao is null and c.lg_gerarVrMedicarTelefone = 1 and u.Data_Exclusao is null','qtde'));
        vrMedicarAux := StrToFloat(dm.GetParam('VRMCAR'))  * qtContratAux;

      except on E: Exception do
           vrMedicarAux := 0;
      end;
   end;

   SpVrMensalidade.Close;
end;

{ procedure TFormGeraReceber.AchaValor;
begin
     Valor_Titulo := 0;

     with QueryUsuarios do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryContratanteCodigo.asInteger;
         ParamByName('Inclusao').asDateTime := Data_Base; // Data do ultimo dia mes anterior
         Open;
         Numero_Usuarios := 0;
         // Pega o Número de Usuários do Contrato
         while not eof do
           begin
             Numero_Usuarios := Numero_Usuarios + 1;
             Next;
           end;
         First;
         Verifica_Desconto; // desconto por qtde de usuários
         while not eof do
           begin
             Valor_Usuario := 0;
             with QueryPrecoContratante do
               begin
                 Close;
                 ParamByName('Contratante').asInteger := QueryUsuariosCodigo.asInteger;
                 ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
                 Open;
                 Last;
                 if RecordCount = 0 then
                    Verifica_PrecoGrupo
                 else
                    begin
                      Valor_Titulo := Valor_Titulo + QueryPrecoContratanteValor.asCurrency;
                      Valor_Usuario := QueryPrecoContratanteValor.asCurrency;
                      if Valor_Desconto <> 0 then
                         begin
                           Valor_Titulo := Valor_Titulo - Valor_Desconto;
                           Valor_Usuario := QueryPrecoContratanteValor.asCurrency - Valor_Desconto;
                         end;
                    end;
               end;
6             Verifica_Acrescimo; // Verifica se o Plano possui Acréscimo
             if Tem_Acrescimo then
                begin
                  Valor_Acrescimo := (Valor_Usuario * QueryAcrescimoPercentual.asFloat) / 100;
                  Valor_Titulo := Valor_Titulo + Valor_Acrescimo;
                end;

             Next;
           end;
       end;
end;
}
{procedure TFormGeraReceber.Verifica_PrecoGrupo;
begin
     with QueryPrecoGrupo do
       begin
         Close;
         ParamByName('Grupo').asInteger := QueryContratanteGrupo_Contratante.asInteger;
         ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Verifica_PrecoPlano
         else
           begin
             Valor_Titulo := Valor_Titulo + QueryPrecoGrupoValor.asCurrency;
             Valor_Usuario := QueryPrecoGrupoValor.asCurrency;
             if Valor_Desconto <> 0 then
                begin
                  Valor_Titulo := Valor_Titulo - Valor_Desconto;
                  Valor_Usuario := QueryPrecoGrupoValor.asCurrency - Valor_Desconto;
                end;
           end;
       end;
end;}

{procedure TFormGeraReceber.Verifica_PrecoPlano;
begin
     with QueryPrecoPlano do
       begin
         Close;
         if senha.Cod_Empresa = 2 then
           ParamByName('Plano').asInteger := QueryContratanteAuxPlano.asInteger
         else
           ParamByName('Plano').asInteger := QueryContratantePlano.asInteger;
         ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Gera_Log
         else
           begin
             Valor_Titulo := Valor_Titulo + QueryPrecoPlanoValor.asCurrency;
             Valor_Usuario := QueryPrecoPlanoValor.asCurrency;
             if Valor_Desconto <> 0 then
                begin
                  Valor_Titulo := Valor_Titulo - Valor_Desconto;
                  Valor_Usuario := QueryPrecoPlanoValor.asCurrency - Valor_Desconto;
                end;
           end;
       end;
end;}

{procedure TFormGeraReceber.Verifica_Desconto;
 begin
     Valor_Desconto := 0;
     with QueryDesconto do
       begin
         Close;
         ParamByName('Plano').asInteger := QueryContratantePlano.asInteger;
         Open;
         if RecordCount <> 0 then
            while not eof do
              begin
                if (Numero_Usuarios >= QueryDescontoQtde_Usuarios1.asInteger)
                  and (Numero_Usuarios <= QueryDescontoQtde_Usuarios2.asInteger) then
                      Valor_Desconto := QueryDescontoValor_Desconto.asCurrency;
                Next;
              end;
      end;
end;}

{procedure TFormGeraReceber.Verifica_Acrescimo;
begin
     Tem_Acrescimo := False;
     with QueryAcrescimo do
       begin
         Close;
         ParamByName('Codigo_Plano').asInteger := QueryContratantePlano.asInteger;
         Open;
         if RecordCount <> 0 then
            if (Data_Base - QueryUsuariosData_Inclusao.asDateTime) > QueryAcrescimoDias.asInteger then
               Tem_Acrescimo := True;
            if QueryAcrescimoData_Aumento.AsDateTime < QueryUsuariosData_Inclusao.asDateTime then
               Tem_Acrescimo := True;
      end;
end;}

procedure TFormGeraReceber.Verifica_Diferenca;
begin
     with QueryFaturamentoAuxiliar do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryFaturamentoCodigo_Contratante.asInteger;
         ParamByName('Documento').asInteger   := QueryFaturamentoTipo_Documento.asInteger;
         Open;
         Last;
         if RecordCount <> 0 then
            begin
              Valor_Anterior := QueryFaturamentoAuxiliarValor.asCurrency;
              Cobranca_Anterior := QueryFaturamentoAuxiliarTipo_Cobranca.asInteger;
            end;
        end; // Le só o último registro e sai...
end;


procedure TFormGeraReceber.Gera_Log;
begin
// gerar log de erro na montagem do valor do titulo
end;

procedure TFormGeraReceber.GravaFaturamento;
begin
     try
       QueryFaturamento.Post;
     except
       begin
         ContTitulos := ContTitulos - 1;
         QueryErros.Insert;
         QueryErrosNumero_Titulo.asInteger      := QueryFaturamentoNumero_Titulo.asInteger;
         QueryErrosDesdobramento.asString       := QueryFaturamentoDesdobramento.asString;
         QueryErrosTipo_Documento.asString      := QueryFaturamentoTipo_Documento.asString;
         QueryErrosData_Vencimento.AsDateTime   := QueryFaturamentoData_Vencimento.asDateTime;
         QueryErrosCodigo_Contratante.asInteger := QueryFaturamentoCodigo_Contratante.asInteger;
         QueryErrosCodigo_Usuario.asInteger     := QueryFaturamentoCodigo_Usuario.asInteger;
         QueryErrosValor.asCurrency             := QueryFaturamentoValor.asCurrency;
         QueryErros.Post;
         Erros := Erros + 1;
         QueryFaturamento.Cancel;
       end;
     end;
end;

procedure TFormGeraReceber.ComboBoxTipoDocKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormGeraReceber.MaskEditEmissaoExit(Sender: TObject);
begin
     if MaskEditEmissao.Text = '  /  /    ' then
       begin
         MaskEditEmissao.SetFocus;
         Exit;
       end;
end;

procedure TFormGeraReceber.BitBtnImprimirClick(Sender: TObject);
begin
   if Desdobr = 'T' then
     begin
       Application.CreateForm(TQRListaFaturamentoManutencao, QRListaFaturamentoManutencao);
       QRFaturamentoManutencao.DIntervalo1 := EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditInicial.Text),EditMes.text,EditAno.text)); // Monta Data de Vencimento
       QRFaturamentoManutencao.DIntervalo2 := EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditFinal.Text)  ,EditMes.Text,EditAno.Text)); // Monta Data de Vencimento
       QRFaturamentoManutencao.Chamada := '2';
       QRListaFaturamentoManutencao.Preview;
       QRListaFaturamentoManutencao.Free;
       // Relatório de Erros
       Application.CreateForm(TQRListaFaturamentoErrosT, QRListaFaturamentoErrosT);
       QRListaFaturamentoErrosT.Preview;
       QRListaFaturamentoErrosT.Free;
     end
   else
     begin
       Application.CreateForm(TQRListaFaturamento, QRListaFaturamento);
       QRFaturamento.DIntervalo1 := EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditInicial.Text),EditMes.text,EditAno.text)); // Monta Data de Vencimento
       QRFaturamento.DIntervalo2 := EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditFinal.Text)  ,EditMes.Text,EditAno.Text)); // Monta Data de Vencimento
       QRFaturamento.Chamada := '2';
       
       case RadioGroupTp.ItemIndex of
           0 : QRListaFaturamento.QueryFaturamento.sql[1] := 'inner join Contratante on (Faturamento.Codigo_Contratante = Contratante.Codigo)  and contratante.empresa = 1';
           1 : QRListaFaturamento.QueryFaturamento.sql[1] := 'inner join Contratante on (Faturamento.Codigo_Contratante = Contratante.Codigo)  and contratante.empresa = 0';
           2 : QRListaFaturamento.QueryFaturamento.sql[1] := 'left join Contratante on (Faturamento.Codigo_Contratante = Contratante.Codigo)';
       end;

       QRListaFaturamento.Preview;
       QRListaFaturamento.Free;
       // Relatório de Erros
       Application.CreateForm(TQRListaFaturamentoErros, QRListaFaturamentoErros);
       QRListaFaturamentoErros.Preview;
       QRListaFaturamentoErros.Free;
     end;
end;


procedure TFormGeraReceber.DataSourceFaturamentoDataChange(Sender: TObject;
  Field: TField);
begin
     if QueryFaturamentoTipo_Cobranca.asString = '' then
        exit;
     with QueryTipoCobranca do
        begin
          Close;
          SQL[1] := ('where Codigo = ' + QueryFaturamentoTipo_Cobranca.asString);
          Open;
        end;
end;

 procedure TFormGeraReceber.ExportaReceber;
 var Erros : Textfile;

 begin
     SetaSelectsOrig;

     try
        assignfile(Erros,'c:\errosEnvioReceber.txt');
        ReWrite(Erros);
     except
        ShowMessage('Erro ao tentar criar o arquivo c:\errosEnvioReceber.txt, exclua este arquivo e tente novamente !');
        exit;
     end;
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;

     Filtra(true);

     QueryFaturamento.First;
     while not QueryFaturamento.eof do
     begin
        {if desdobr = 'O' then
        begin
           QueryReceberOrc.close;
           QueryReceberOrc.SQL[1] := 'where Numero_titulo = ' + QueryFaturamentoNumero_Titulo.AsString;
           QueryReceberOrc.SQL[2] := '';
           QueryReceberOrc.SQL[3] := '';
           QueryReceberOrc.SQL[4] := '';
           QueryReceberOrc.SQL[5] := '';
           QueryReceberOrc.SQL[6] := '';
           memo1.Text := QueryReceberOrc.text;
           QueryReceberOrc.open;
           QueryReceberOrc.edit;
           QueryReceberOrcNumero_Banco.asString := QueryFaturamentoNumero_Banco.asString;
           try
              QueryReceberOrc.post;
            except
            on E: Exception do
              begin
                ShowMessage('Erro na Gravação do Registro (1.1)! ' + QueryReceberNumero_Titulo.asString + ' !!! [ENTER] ' + E.Message + ' titulo ' + QueryFaturamentoNumero_Titulo.AsString );
                QueryReceberOrc.Cancel;
              end;
           end;

        end
        else
        begin    }
           QueryReceber.Insert;
           QueryReceberNumero_Titulo.asInteger      := QueryFaturamentoNumero_Titulo.asInteger;
           if desdobr = 'O' then
              QueryReceberDesdobramento.asString       := desdobr
           else
              QueryReceberDesdobramento.asString       := QueryFaturamentoDesdobramento.asString;
           QueryReceberTipo_Documento.asInteger     := QueryFaturamentoTipo_Documento.asInteger;
           QueryReceberCodigo_Contratante.asInteger := QueryFaturamentoCodigo_Contratante.asInteger;
           QueryReceberCodigo_Usuario.asInteger     := QueryFaturamentoCodigo_Usuario.asInteger;
           QueryReceberData_Emissao.asDateTime      := QueryFaturamentoData_Emissao.asDateTime;
           QueryReceberData_Vencimento.asDateTime   := QueryFaturamentoData_Vencimento.asDatetime;
           QueryReceberValor.asCurrency             := QueryFaturamentoValor.asCurrency;
           QueryReceberSaldo.asCurrency             := Valor_Servico - Valor_Dentista;
           QueryReceberSaldo.asCurrency             := QueryFaturamentoValor.asCurrency;
           QueryReceberTipo_Cobranca.asInteger      := QueryFaturamentoTipo_Cobranca.asInteger;
           QueryReceberNumero_Banco.asString        := QueryFaturamentoNumero_Banco.asString;
           QueryReceberOrcamento.asInteger          := QueryFaturamentoOrcamento.asInteger;
           QueryReceberOperador.AsInteger           := Senha.Codigo_Operador;
           try
              QueryReceber.Post;
              QueryFaturamento.Edit;
              QueryFaturamentoExportado_Receber.asBoolean := True;
              QueryFaturamento.Post;
           except
              on E: Exception do
               begin
                 Writeln(Erros,'Erro na Gravação do Registro (2) ' + QueryReceberNumero_Titulo.asString + ' ERRO: ' + e.message );
                 QueryReceber.Cancel;
               end;
           end;
        //end;
        Application.ProcessMessages;
        ProgressBarGera.Stepit;
        ContTitulos := ContTitulos + 1;
        QueryFaturamento.Next;
     end;
     Filtra(false);
     ProgressBarGera.Position := ProgressBarGera.Max;
     if FormGeraReceber.tag <> 10 then
     begin
        ShowMessage('Foram Exportados ' + IntToStr(ContTitulos) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
        Winexec('notepad c:\errosEnvioReceber.txt',SW_SHOWNORMAL);
     end;
     CloseFile(Erros);
     PAtualizaEventoFat(99,0);
 end;

procedure TFormGeraReceber.BitBtnExportarClick(Sender: TObject);
var MesIni, MesFim,i : Smallint;
begin
   if MessageDlg('Deseja Realmente Transferir o Arquivo de Faturamento para o Contas a Receber ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;

  if FormGeraReceber.tag <> 10 then
     EditMesFim.text := EditMes.text;
     
  MesIni := StrToInt(EditMes.text);
  MesFim := StrToInt(EditMesFim.text);
  for i := MesIni to MesFim do
  begin
     EditMes.text := IntToStr(i);
     ExportaReceber;
  end;
   EditMes.text := IntToStr(MesIni);
  lgCancelEnvDoc := false;
  if FormGeraReceber.tag = 10 then
  begin
      ShowMessage('Processamento concluído');
  end;


end;


procedure TFormGeraReceber.BitBtnDebitoBradescoClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;

   SetaSelectsOrig;
   Banco     := 'Bradesco';
   Cod_Banco := '237';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if Banco_ok then
             begin
                ProcessaEnvioBradesco;
                PAtualizaEventoFat(3,237);
             end;
          end
       else
          ProcessaRetornoBradesco;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.ProcessaRetornoBradesco;
begin
    // PARA BRADESCO E CEF USA ESSAS POSIÇÕES, POIS O BRADESCO TRUNCA O NR
    // DO  TÍTULO , TEM QUE VER SE NO RETORNO O BRADESCO RETORNA NA POSIÇÃO 70(60) O QUE FOI ENVIADO
    MontaArquivoRetorno(70,15);
     //MontaArquivoRetorno(2,25);
end;

procedure TFormGeraReceber.ProcessaEnvioBradesco;
begin
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;
     Filtra(false);
     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_Tipo  + ' and Emitido_Documento = 0 ' ); //QueryPreferenciasDebito_Bradesco.asString);
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos do Bradesco para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);
		
         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Bradesco';

{         case ComboBoxTipoCobranca.ItemIndex of

           0 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + '0200.REM'; // Manutenção
           1 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + '0100.REM';// Mensalidade
           2 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + '0300.REM'; // Manutenção//Orcamento
           3 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + '0400.REM';  // Reapresentação de Títulos não debitados anteriormente
           4 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + '0100.REM';  // Debito em conta
         end;     }
         Debito_Seq := dm.execmd('select debito_sequencial  seq from contas_banco where banco = 237','seq');
         NomeArquivo := NomeCaminho + '\DA' + lpad(Debito_Seq,6,'0') + '.REM';

         //NomeArquivo := 'DA' + Dia_Str + Mes_Str + '00.REM'; // Produção
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
//         if not OpenDialog1.Execute then
//           exit;
//         NomeArquivo := OpenDialog1.FileName;

         if NomeArquivo = '' then
           exit;
         try
            AssignFile(Arquivo, NomeArquivo);
            Rewrite(Arquivo);
         except
           on e: exception do
           begin
             ShowMessage('Não foi possível abrir o arquivo "' + NomeArquivo + '", mensagem de erro: ' + e.message);
             if not OpenDialog1.Execute then
               exit;
             NomeArquivo := OpenDialog1.FileName;
             AssignFile(Arquivo, NomeArquivo);
             Rewrite(Arquivo);
           end;
         end;
         MontaHeader;
         try
           Writeln(Arquivo, Registro);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
         while not eof do
            begin
              MontaRegistrosBradesco;
              try
                Writeln(Arquivo, Registro);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     MontaTrailler; // Monta Registros tipo 'Z' Trailler
     try
       Writeln(Arquivo, Registro);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Registros !!!' + #13 +
     ' Arquivo : ' + NomeArquivo + #13 +
     'Fim de Processamento, Tecle [ENTER] !!!!');

     GravaContasBancarias;

{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_Bradesco.asInteger := QueryPreferenciasSequencial_Bradesco.asInteger + 1;
     GravaPreferencias;}
end;


procedure TFormGeraReceber.MontaRegistrosBradesco;
begin
     Registro := '';
     Registro := Registro + 'E'; // Código do Registro = 'E'
     Registro := Registro +
     QueryFaturamentoNumero_Titulo.asString +
     StrAll(25 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa

     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;

     Registro := Registro + StrAll(4 - Length(QueryContratanteAgencia.asString), '0') + QueryContratanteAgencia.asString; // Agência para Débito da Fatura
     Registro := Registro + Copy(QueryContratanteConta.asString, 1, 7)  + Copy(QueryContratanteDigito.asString, 1, 1) + StrAll(14 - Length(QueryContratanteConta.asString + Copy(QueryContratanteDigito.asString, 1, 1)), ' '); // Conta Corrente para Débito // + é 1 do Digito
     Data_Atual := QueryFaturamentoData_Vencimento.asDateTime;
     DecodeDate(QueryFaturamentoData_Vencimento.asDateTime, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro := Registro + InttoStr(Ano) + Mes_Str + Dia_Str; // Data do Vencimento

     if QueryFaturamentoValor.asCurrency < 1000 then
        Valor_Aux := StrAll(16 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2)
     else
        Valor_Aux := StrAll(17 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2);
     Numerico := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToCurr(Valor_Aux);
     Registro := Registro + Numerico; // Valor do Débito
     Registro := Registro + '03'; // Código da Moeda 01 - UFIR // 03 - REAL
     Registro := Registro + lpad(QueryFaturamentoNumero_Titulo.asString,15,'0') + rpad(copy(QueryContratanteNome.AsString,1,45),45,' '); // Uso da Empresa
     //Registro := Registro + StrAll(60,' '); // Uso da Empresa
     Registro := Registro + StrAll(20,' '); // Filler ( Espaços )
     Registro := Registro + '0'; // Código do Movimento 0 - Débito Normal // 1 - Cancelamento (Exclusão)
end;

procedure TFormGeraReceber.MontaTrailler;
begin
     Registro := '';
     ContTitulos := ContTitulos + 1;
     Registro := Registro + 'Z'; // Código do Registro = 'Z'
     Registro := Registro + StrAll(06 - Length(IntToStr(ContTitulos)), '0') + IntToStr(ContTitulos); // Total de Registros no Arquivo
     if Valor_Total > 1000 then
        Valor_Aux := StrAll(19 - Length(FloatToStrF(Valor_Total, ffNumber,7,2)),'0')
                  + FloatToStrF(Valor_Total,ffNumber,7,2)
     else
        Valor_Aux := StrAll(18 - Length(FloatToStrF(Valor_Total, ffNumber,7,2)),'0')
                  + FloatToStrF(Valor_Total,ffNumber,7,2);
     Numerico_Total := RetiraPontoDecimal(Valor_Aux);
     Registro := Registro + Numerico_Total; // Valor Total dos Registros do Arquivo

     Registro := Registro + StrAll(126,' '); // Espaços (Filler)
end;

procedure TFormGeraReceber.MontaTraillerCEF;
begin
     inc(VNrSeqArq);
     Registro := '';
     ContTitulos := ContTitulos + 1;
     Registro := Registro + 'Z'; // Código do Registro = 'Z'
     Registro := Registro + StrAll(06 - Length(IntToStr(ContTitulos)), '0') + IntToStr(ContTitulos); // Total de Registros no Arquivo
     if Valor_Total > 1000 then
        Valor_Aux := StrAll(19 - Length(FloatToStrF(Valor_Total, ffNumber,7,2)),'0')
                  + FloatToStrF(Valor_Total,ffNumber,7,2)
     else
        Valor_Aux := StrAll(18 - Length(FloatToStrF(Valor_Total, ffNumber,7,2)),'0')
                  + FloatToStrF(Valor_Total,ffNumber,7,2);
     Numerico_Total := RetiraPontoDecimal(Valor_Aux);
     Registro := Registro + Numerico_Total; // Valor Total dos Registros do Arquivo

     Registro := Registro + StrAll(119,' '); // Espaços (Filler)
     Registro := Registro + lpad(IntToStr(VNrSeqArq),6,'0'); // Z.05 sequencial do arquivo
     Registro := Registro + ' '; // Z.06Espaços (Filler)
end;

// Funcao para retirar o ponto decimal de um valor string
// Recebe uma string e retorna outra string sem o ponto decimal
function TFormGeraReceber.RetiraPontoDecimal(ValorStr: String):String;
begin
     PontoDecimal := False;
     Posicao:=pos(' ',ValorStr);
     while Posicao <> 0 do
           begin
                Posicao:=pos(' ',ValorStr);
                delete(ValorStr,Posicao,1);          // elimina espacos
           end;
     Posicao:=pos(ThousandSeparator,ValorStr);
     while Posicao <> 0 do
           begin
                Posicao:=pos(ThousandSeparator,ValorStr);
                delete(ValorStr,Posicao,1);          // elimina separador das centenas
           end;

     Posicao:=pos(DecimalSeparator,ValorStr);
     if Posicao <> 0 then
        begin
             delete(ValorStr,Posicao,1);
             PontoDecimal := True;
        end;
     RetiraPontoDecimal := ValorStr;
end;

// Funcao para retirar o Traço do Cep
function TFormGeraReceber.RetiraTracoCep(CepStr: String):String;
begin
     Traco := False;
     Posicao:=pos('-', CepStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('-', CepStr);
             delete(CepStr,Posicao,1);
           end;
     RetiraTracoCep := CepStr;
end;

// Funcao para retirar o Traço do Cep
function TFormGeraReceber.RetiraTracoCPF(CpfStr: String):String;
begin
     Traco := False;
     Posicao:=pos('.', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('.', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos('-', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('-', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos(' ', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos(' ', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos('/', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('/', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     RetiraTracoCPF := CpfStr;
end;

procedure TFormGeraReceber.BitBtnDebitoCaixaClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;

   SetaSelectsOrig;
   Banco     := 'Caixa Econômica Federal';
   Cod_Banco := '104';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if banco_ok then
             begin
                ProcessaEnvioCaixa;
                PAtualizaEventoFat(21,104);
             end;
          end
       else
         ProcessaRetornoCaixa;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.MontaArquivoRetorno(PiniTit,PQtTit: byte);
var Identificacao_Auxiliar : String[25];
begin
   // PIniTit = posição inicial onde identificar o título
   // PQttit  = Qtde de caracter para identificar o titulo
// Para CEF devemos utilizar o campo reservado para a empresa para identificar
// os titulos, pois o campo identificação do cliente eh utilizado pela caixa
// deve ser o codigo  do cliente e o mesmo deve estar cadastrado na cef
// para debito automatico, por isso a necessidade dos parametros

     if not OpenDialog1.Execute then
        exit;
     NomeArquivo := OpenDialog1.FileName;
     if NomeArquivo = '' then
        exit;

     AssignFile(Arquivo, NomeArquivo);
     Reset(Arquivo);

     if MessageDlg('Deseja Limpar o Arquivo de Retorno ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        try
          StoredProcDeletaRetorno.ExecProc; // Executa a stored procedure para deletar os registros do Arquivo de Retorno
         except on E: Exception do
          begin
            ShowMessage('Erro ao Limpar o Arquivo de Retorno !!! [ENTER] erro: ' + e.message);
            exit;
          end;
        end;

     QueryRetorno.Close;
     QueryRetorno.Open;

     while not Eof(Arquivo) do
           begin
             ReadLn(Arquivo, Conteudo);

             if Copy(Conteudo, 1, 1) = 'F' then
                begin
                  QueryRetorno.Insert;

                  QueryRetornoIdentificacao_Empresa.asString := Copy(Conteudo, PIniTit, PQtTit);
                  QueryRetornoAgencia.asString               := Copy(Conteudo, 27, 4);
                  QueryRetornoConta.asString                 := Copy(Conteudo, 31, 14);
                  Ano_Str                                    := Copy(Conteudo, 45, 4);
                  Mes_Str                                    := Copy(Conteudo, 49, 2);
                  Dia_Str                                    := Copy(Conteudo, 51, 2);
                  Data_Str                                   := Dia_Str + '/' + Mes_Str + '/' + Ano_Str;
                  QueryRetornoData_Vencimento.asDateTime     := StrToDate(Data_Str);
                  QueryRetornoValor_Debito.asCurrency        := StrToFloat(Copy(Conteudo, 53, 15));
                  QueryRetornoValor_Debito.asCurrency        := QueryRetornoValor_Debito.asCurrency / 100;
                  QueryRetornoCodigo_Retorno.asString        := Copy(Conteudo, 68, 02);

                  Identificacao_Auxiliar := QueryRetornoIdentificacao_Empresa.asString;
                  Posicao:=pos(' ', Identificacao_Auxiliar);
                  while Posicao <> 0 do
                    begin
                      Posicao := pos(' ', Identificacao_Auxiliar);
                      delete(Identificacao_Auxiliar, Posicao,1);          // elimina espacos
                    end;
                  QueryRetornoCodigo_Contratante.asInteger := StrToInt(Copy(Identificacao_Auxiliar, 1, length(Identificacao_Auxiliar)- 4));
                  try
                    QueryRetorno.Post
                  except
                    begin
                      ShowMessage('Registro: ' + QueryRetornoIdentificacao_Empresa.asString + ' já existente');
                      QueryRetorno.Cancel;
                    end
                  end;
                end;
           end;
     QueryRetorno.Close;
     QueryRetorno.Open;
     Application.CreateForm(TFormBaixaRetorno, FormBaixaRetorno);
     FormBaixaRetorno.CdOcorrenciaBaixa := '00'; // o código de débito processado 00
     FormBaixaRetorno.ShowModal;
     FormBaixaRetorno.Free;
end;


procedure TFormGeraReceber.ProcessaRetornoCaixa; // Leitura do Arquivo de Retorno da Caixa
begin
   MontaArquivoRetorno(70,15);
end;

procedure TFormGeraReceber.ProcessaEnvioCaixa; // Geração do Arquivo de Remessa da Caixa
begin
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;
     Filtra(false);
     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_Tipo   + ' and Emitido_Documento = 0 ' );
         Open;
         memo1.Text := text;
         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos da Caixa para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Caixa';

{         case ComboBoxTipoCobranca.ItemIndex of

           0 :  NomeArquivo := NomeCaminho + '\ACC.' + lpad(EditMes.text,2,'0') + '02' + Debito_Seq + '.REM'; // Manutenção
           1 :  NomeArquivo := NomeCaminho + '\ACC.' + lpad(EditMes.text,2,'0') + '01' + Debito_Seq + '.REM';// Mensalidade
           2 :  NomeArquivo := NomeCaminho + '\ACC.' + lpad(EditMes.text,2,'0') + '03' + Debito_Seq + '.REM'; // Manutenção//Orcamento
           3 :  NomeArquivo := NomeCaminho + '\ACC.' + lpad(EditMes.text,2,'0') + '04' + Debito_Seq + '.REM';  // Reapresentação de Títulos não debitados anteriormente
         end;}


         NomeArquivo := 'ACC.' + lpad(IntToStr(dia),2,'0') + lpad(IntToStr(mes),2,'0') + lpad(IntToStr(ano),4,'0') + '.015977.' + lpad(Debito_Seq,6,'0') + '.REM';
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
         if not OpenDialog1.Execute then
           exit;

         NomeArquivo := OpenDialog1.FileName;
         if NomeArquivo = '' then
           exit;
         AssignFile(Arquivo, NomeArquivo);
         Rewrite(Arquivo);
         MontaHeaderCEF;
         try
           Writeln(Arquivo, Registro);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
         VNrSeqArq := 0;
         while not eof do
            begin
              MontaRegistrosCaixa;
              try
                Writeln(Arquivo, Registro);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

//     MontaTrailler; // Monta Registros tipo 'Z' Trailler
     MontaTraillerCEF;

     try
       Writeln(Arquivo, Registro);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Registros !!!' + #13 +
     ' Arquivo : ' + NomeArquivo + #13 +
     'Fim de Processamento, Tecle [ENTER] !!!!');

//     ShowMessage('Foram gerados ' + IntToStr(Cont) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
     GravaContasBancarias;
{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_Caixa.asInteger := QueryPreferenciasSequencial_Caixa.asInteger + 1;
     GravaPreferencias;}
end;


procedure TFormGeraReceber.MontaRegistrosCaixa;
var cdCliente : string[25];
begin
     Inc(VNrSeqArq);
     Registro := '';
     Registro := Registro + 'E'; // Código do Registro = 'E'
     // para cef deve ser enviado o codigo do contratante
     cdCliente := dm.execmd('select identificacao_bancaria c from contratante where codigo = ' + QueryFaturamentoCodigo_Contratante.asString,'c');
     if Length(trim(cdCliente)) = 25 then
        Registro := Registro + cdCliente // + StrAll(25 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa
     else
        Registro := Registro + lpad(QueryFaturamentoCodigo_Contratante.asString,25,'0');// + StrAll(25 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa
//     Registro := Registro + lpad(QueryFaturamentoNumero_Titulo.asString,25,'0');// + StrAll(25 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa
     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;
     Registro := Registro + StrAll(4 - Length(QueryContratanteAgencia.asString), '0') + QueryContratanteAgencia.asString; // Agência para Débito da Fatura

     // Conforme layout, aconta eh composta da seguinte maneira..
     //	- Pos 31 a 33 = código da operação;
     //	- Pos 34 a 41 = número de conta;
     //	- Pos 42 a 42 = DV da conta;
     //	- Pos 43 a 44 = brancos.
     Registro := Registro + QueryContratanteConta.asString + QueryContratanteDigito.asString + '  ';
     Data_Atual := QueryFaturamentoData_Vencimento.asDateTime;
     DecodeDate(Data_Atual, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro := Registro + InttoStr(Ano) + Mes_Str + Dia_Str; // Data do Vencimento

     if QueryFaturamentoValor.asCurrency < 1000 then
        Valor_Aux := StrAll(16 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2)
     else
        Valor_Aux := StrAll(17 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2);
     Numerico := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToCurr(Valor_Aux);
     Registro := Registro + Numerico; // Valor do Débito
     Registro := Registro + '03'; // Código da Moeda 01 - UFIR // 03 - REAL
     // para cef o numero do titulo eh enviado nessa poisição pois o campo identificação do cliente
     // deve ser obrigatoriamente a conta corrente cadastrada no banco.
     Registro := Registro + lpad(QueryFaturamentoNumero_Titulo.asString,15,'0') + rpad(copy(QueryContratanteNome.AsString,1,45),45,' '); // Uso da Empresa
//     Registro := Registro + StrAll(60,' '); // Uso da Empresa
     Registro := Registro + StrAll(06,'0'); // E.09 numero agendamento do cliente
     Registro := Registro + StrAll(08,' '); // E.10 Filler ( Espaços )
     Registro := Registro + lpad(IntToStr(VNrSeqArq),6,'0'); // E.11 sequencial do arquivo
     Registro := Registro + '0'; // Código do Movimento 0 - Débito Normal // 1 - Cancelamento (Exclusão)
end;

procedure TFormGeraReceber.EscolheOperacao;
begin
     Application.CreateForm(TFormTipoOperacao, FormTipoOperacao);
     if FormTipoOperacao.ShowModal <> mrOK then
        begin
          ShowMessage('É Obrigatório a Escolha de um Tipo de Operação !!!');
          FormTipoOperacao.Free;
          Exit;
        end;

     Tipo_Operacao := '';
     Tipo_Operacao := TipoOperacaoDebito.FormTipoOperacao.ComboBoxTipo.Text;
     if Tipo_Operacao = '' then
        begin
          ShowMessage('É Obrigatório a Escolha de um Tipo de Operação !!!');
          FormTipoOperacao.Free;
          Exit;
        end;
     FormTipoOperacao.Free;
end;

procedure TFormGeraReceber.BitBtnDebitoSantanderClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;

   SetaSelectsOrig;
   Banco     := 'Santander';
   Cod_Banco := '353';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if banco_ok then
                ProcessaEnvioSantander;
                ShowMessage('Kelly por favor me avise se existir débito automático para o banco 353 - santander - Enio');
          end
       else
         ProcessaRetornoSantander;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.ProcessaRetornoSantander;
begin
   MontaArquivoRetorno(2,25);
end;

procedure TFormGeraReceber.ProcessaEnvioSantander;
begin
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;

     Filtra(false);

     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_tipo   + ' and Emitido_Documento = 0 ' );
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos do Santander para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Santander\DEB'+ Dia_Str + Mes_Str + '.REM';
//         Nro_sequencial := StrAll(06 - Length(QueryPreferenciasSequencial_Santander.asString), '0') + QueryPreferenciasSequencial_Santander.asString; // Número sequencial do arquivo gerado

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Santander';
         NomeArquivo := 'DEB' + Dia_Str + Mes_Str + '.REM';
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
         if not OpenDialog1.Execute then
            exit;
         NomeArquivo := OpenDialog1.FileName;
         if NomeArquivo = '' then
           exit;
         AssignFile(Arquivo, NomeArquivo);
         Rewrite(Arquivo);
         MontaHeader;
         try
           Writeln(Arquivo, Registro);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
         while not eof do
            begin
              MontaRegistrosSantander;
              try
                Writeln(Arquivo, Registro);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     MontaTrailler; // Monta Registros tipo 'Z' Trailler
     try
       Writeln(Arquivo, Registro);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');

     GravaContasBancarias;
{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_Banespa.asInteger := QueryPreferenciasSequencial_Banespa.asInteger + 1;
     GravaPreferencias;}
end;

{procedure TFormGeraReceber.GravaPreferencias;
begin
     try
       QueryPreferencias.Post;
     except
       begin
         ShowMessage('Erro na Gravação da Tabela Preferências');
         QueryPreferencias.Cancel;
       end;
     end;
     QueryPreferencias.Close;
     QueryPreferencias.Open;
end;}


procedure TFormGeraReceber.MontaRegistrosSantander;
begin
     Registro := '';
     Registro := Registro + 'E'; // Código do Registro = 'E'
     Registro := Registro + QueryFaturamentoNumero_Titulo.asString + StrAll(25 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa
     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;

     Agencia := QueryContratanteAgencia.asString + '0';
     Ag1 := StrToInt(Agencia);

     if Ag1 < 1000 then
        Registro := Registro + StrAll(04 - Length(Agencia), '0') + Agencia // Agência para Débito da Fatura
     else
        Registro := Registro + Agencia;

     Numerico14 := QueryContratanteConta.asString + Copy(QueryContratanteDigito.asString, 1, 1) + StrAll(14, ' ');
     Registro := Registro + Numerico14; // Conta Corrente para Débito
     Data_Atual := QueryFaturamentoData_Vencimento.asDateTime;
     DecodeDate(Data_Atual, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro := Registro + InttoStr(Ano) + Mes_Str + Dia_Str; // Data do Vencimento
     if QueryFaturamentoValor.asCurrency < 1000 then
        Valor_Aux := StrAll(16 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2)
     else
        Valor_Aux := StrAll(17 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2);
     Numerico := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToCurr(Valor_Aux);
     Registro := Registro + Numerico; // Valor do Débito
     Registro := Registro + '03'; // Código da Moeda 01 - UFIR // 03 - REAL
     Registro := Registro + StrAll(60,' '); // Uso da Empresa
     Registro := Registro + StrAll(20,' '); // Filler ( Espaços )
     Registro := Registro + '0'; // Código do Movimento 0 - Débito Normal // 1 - Cancelamento (Exclusão)
end;

procedure TFormGeraReceber.BitBtnDebitoHSBCClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;

   SetaSelectsOrig;
   Banco     := 'HSBC';
   Cod_Banco :=  '399';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if Banco_ok then
             begin
                ProcessaEnvioHSBC;
                PAtualizaEventoFat(22,399);
             end;
          end
       else
         ProcessaRetornoHSBC;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.ProcessaRetornoHSBC;
begin
   MontaArquivoRetorno(2,25);
end;

procedure TFormGeraReceber.ProcessaEnvioHSBC;
begin
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;

     Filtra(false);

     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_Tipo   + ' and Emitido_Documento = 0 ' );
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos do HSBC para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Hsbc\Hs' + Dia_Str + Mes_Str + '.REM';

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Hsbc';

         case ComboBoxTipoCobranca.ItemIndex of

           0 :  NomeArquivo := NomeCaminho + '\Hs' + lpad(EditMes.text,2,'0') + '02.REM'; // Manutenção
           1 :  NomeArquivo := NomeCaminho + '\Hs' + lpad(EditMes.text,2,'0') + '01.REM';// Mensalidade
           2 :  NomeArquivo := NomeCaminho + '\Hs' + lpad(EditMes.text,2,'0') + '03.REM'; // Manutenção//Orcamento
           3 :  NomeArquivo := NomeCaminho + '\Hs' + lpad(EditMes.text,2,'0') + '04.REM';  // Reapresentação de Títulos não debitados anteriormente
           4 :  NomeArquivo := NomeCaminho + '\Hs' + lpad(EditMes.text,2,'0') + '01.REM';// Mensalidade desconto em folhta
         end;

//         NomeArquivo := 'Hs' + Dia_Str + Mes_Str + '.REM';
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
//         if not OpenDialog1.Execute then
//            exit;

//         NomeArquivo := OpenDialog1.FileName;
         if NomeArquivo = '' then
           exit;
         try
            AssignFile(Arquivo, NomeArquivo);
            Rewrite(Arquivo);
         except
           on e: exception do
           begin
             ShowMessage('Não foi possível abrir o arquivo "' + NomeArquivo + '", mensagem de erro: ' + e.message);
             if not OpenDialog1.Execute then
               exit;
             NomeArquivo := OpenDialog1.FileName;
             AssignFile(Arquivo, NomeArquivo);
             Rewrite(Arquivo);
           end;

         end;
         MontaHeader;
         try
           Writeln(Arquivo, Registro);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
         while not eof do
            begin
              MontaRegistrosHSBC;
              try
                Writeln(Arquivo, Registro);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     MontaTrailler; // Monta Registros tipo 'Z' Trailler
     try
       Writeln(Arquivo, Registro);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Registros !!!' + #13 +
     ' Arquivo : ' + NomeArquivo + #13 +
     'Fim de Processamento, Tecle [ENTER] !!!!');

//     ShowMessage('Foram gerados ' + IntToStr(Cont) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');

     GravaContasBancarias;
{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_HSBC.asInteger := QueryPreferenciasSequencial_HSBC.asInteger + 1;
     GravaPreferencias;}
end;

procedure TFormGeraReceber.MontaRegistrosHSBC;
begin
     Registro := '';
     Registro := Registro + 'E'; // Código do Registro = 'E'
     Registro := Registro + QueryFaturamentoNumero_Titulo.asString + StrAll(25 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa
     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;

     Agencia := StrAll(4 - Length(QueryContratanteAgencia.asString), '0') + QueryContratanteAgencia.asString; // Agência para Débito da Fatura
     Registro := Registro + Agencia;
     Conta := QueryContratanteConta.asString;
     Registro := Registro + '399' + Agencia + Conta + QueryContratanteDigito.asString;
     Data_Atual := QueryFaturamentoData_Vencimento.asDateTime;
     DecodeDate(Data_Atual, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro := Registro + InttoStr(Ano) + Mes_Str + Dia_Str; // Data do Vencimento
     if QueryFaturamentoValor.asCurrency < 1000 then
        Valor_Aux := StrAll(16 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2)
     else
        Valor_Aux := StrAll(17 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2);
     Numerico := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToCurr(Valor_Aux);
     Registro := Registro + Numerico; // Valor do Débito
     Registro := Registro + '03'; // Código da Moeda 01 - UFIR // 03 - REAL
     Registro := Registro + QueryFaturamentoNumero_Titulo.asString + StrAll(60 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa
     Registro := Registro + '07'; // Tipo de Débito
     Registro := Registro + StrAll(18,' '); // Filler ( Espaços )
     Registro := Registro + '0'; // Código do Movimento 0 - Débito Normal // 1 - Cancelamento (Exclusão)
end;

procedure TFormGeraReceber.BitBtnDebitoBanespaClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;

   SetaSelectsOrig;
   Banco     := 'Banespa';
   Cod_Banco := '033';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if Banco_ok then
             begin
                ProcessaEnvioBanespa;
                PAtualizaEventoFat(4,33);
             end;
          end
       else
         ProcessaRetornoBanespa;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.ProcessaRetornoBanespa;
begin
     MontaArquivoRetorno(2,25);
end;

procedure TFormGeraReceber.ProcessaEnvioBanespa;
begin
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;

     Filtra(false);

     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_Tipo   + ' and Emitido_Documento = 0 ' );
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos do Banespa para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Banespa\DB' + Dia_Str + Mes_Str + Debito_Seq + '.REM'; // Produção
//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Banespa\RE' + Dia_Str + Mes_Str + IntToStr(QueryPreferenciasSequencial_Banespa.asInteger) + '.REM'; // Produção
//         Nro_sequencial := StrAll(06 - Length(QueryPreferenciasSequencial_Banespa.asString), '0') +
//                           QueryPreferenciasSequencial_Banespa.asString; // Número sequencial do arquivo gerado


         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Banespa';

         case ComboBoxTipoCobranca.ItemIndex of

           0 :  NomeArquivo := NomeCaminho + '\DB' + lpad(EditMes.text,2,'0') + '02' + Debito_Seq + '.REM'; // Manutenção
           1 :  NomeArquivo := NomeCaminho + '\DB' + lpad(EditMes.text,2,'0') + '01' + Debito_Seq + '.REM';// Mensalidade
           2 :  NomeArquivo := NomeCaminho + '\DB' + lpad(EditMes.text,2,'0') + '03' + Debito_Seq + '.REM'; // Manutenção//Orcamento
           3 :  NomeArquivo := NomeCaminho + '\DB' + lpad(EditMes.text,2,'0') + '04' + Debito_Seq + '.REM';  // Reapresentação de Títulos não debitados anteriormente
           4 :  NomeArquivo := NomeCaminho + '\DB' + lpad(EditMes.text,2,'0') + '01' + Debito_Seq + '.REM';// desconto em folha
         end;

         //NomeArquivo := 'DB' + Dia_Str + Mes_Str + Debito_Seq + '.REM'; // Produção
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
         //if not OpenDialog1.Execute then
         //  exit;
         //NomeArquivo := OpenDialog1.FileName;
         if NomeArquivo = '' then
           exit;
         try
            AssignFile(Arquivo, NomeArquivo);
            Rewrite(Arquivo);
         except
           on e: exception do
           begin
             ShowMessage('Não foi possível abrir o arquivo "' + NomeArquivo + '", mensagem de erro: ' + e.message);
             if not OpenDialog1.Execute then
               exit;
             NomeArquivo := OpenDialog1.FileName;
             AssignFile(Arquivo, NomeArquivo);
             Rewrite(Arquivo);
           end;
         end;
         MontaHeader;
         try
           Writeln(Arquivo, Registro);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
         while not eof do
            begin
              MontaRegistrosBanespa;
              try
                Writeln(Arquivo, Registro);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     MontaTrailler; // Monta Registros tipo 'Z' Trailler
     try
       Writeln(Arquivo, Registro);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + #13 + ' Registros !!!'
     + 'Arquivo : ' + NomeArquivo + #13
     + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
     GravaContasBancarias;
{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_Banespa.asInteger := QueryPreferenciasSequencial_Banespa.asInteger + 1;
     GravaPreferencias;}
end;

procedure TFormGeraReceber.MontaRegistrosBanespa;
begin
     Registro := '';
     Registro := Registro + 'E';
     Registro := Registro + QueryFaturamentoNumero_Titulo.asString + StrAll(25 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa

     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';           
         Open;
       end;

     Registro := Registro + StrAll(4 - Length(QueryContratanteAgencia.asString), '0') + QueryContratanteAgencia.asString; // Agência para Débito da Fatura
     Registro := Registro + Copy(QueryContratanteConta.asString, 1, 8) + Copy(QueryContratanteDigito.asString, 1, 1) + StrAll(14 - Length(QueryContratanteConta.asString + Copy(QueryContratanteDigito.asString, 1, 1)), ' '); // Conta Corrente para Débito // + é 1 do Digito
     Data_Atual := QueryFaturamentoData_Vencimento.asDateTime;
     DecodeDate(Data_Atual, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro    := Registro + InttoStr(Ano) + Mes_Str + Dia_Str; // Data do Vencimento
     if QueryFaturamentoValor.asCurrency < 1000  then
        Valor_Aux   := StrAll(16 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2)
     else
        Valor_Aux   := StrAll(17 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2);
     Numerico    := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToCurr(Valor_Aux);
     Registro    := Registro + Numerico; // Valor do Débito
     Registro    := Registro + '03'; // Código da Moeda 01 - UFIR // 03 - REAL
     Registro    := Registro + StrAll(60,' '); // Uso da Empresa
     Registro    := Registro + StrAll(20,' '); // Filler ( Espaços )
     Registro    := Registro + '0'; // Código do Movimento 0 - Débito Normal // 1 - Cancelamento (Exclusão)
end;

procedure TFormGeraReceber.BitBtnEditaArquivoClick(Sender: TObject);
begin
     Application.CreateForm(TFormFaturamento, FormFaturamento);

     FormFaturamento.ShowModal;
     FormFaturamento.Free;
end;

procedure TFormGeraReceber.BitBtnBoletoBanespaClick(Sender: TObject);

begin
     SetaSelectsOrig;
     Boleto := True;
     ContTitulos := 1;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Filtra(false);
     Seleciona_Conta;
     Data_Atual := dm.Date;
     DecodeDate(Data_Atual, Ano, Mes, Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     // Variavel gerouBoleto está sendo tratada somente no Cnab240, futuramente implementar nos outros..


     if VLayoutBanco = 'BANESPA' then
     begin
        If Application.MessageBox(Pchar('O último número do banco gerado foi "' + IntToStr(Numero_Banco) + '".Deseja continuar  ? '),'ÚLtimo número gerado',MB_YesNo + MB_DEFBUTTON2)
        = IdNo then
           Exit;
        BoletosBanespa;
     end
     else
     if VLayoutBanco = 'ITAU' then
     begin
        If Application.MessageBox(Pchar('O último número do banco gerado foi "' + IntToStr(Numero_Banco) + '".Deseja continuar  ? '),'ÚLtimo número gerado',MB_YesNo + MB_DEFBUTTON2)
           = IdNo then
           Exit;
        BoletosItau
     end
     else

     if VLayoutBanco = 'CNAB240' then
     begin
        If Application.MessageBox(Pchar('O último número do banco gerado foi "' + IntToStr(Numero_Banco) + '".Deseja continuar  ? '),'ÚLtimo número gerado',MB_YesNo + MB_DEFBUTTON2)
           = IdNo then
           Exit;
       ContTitulos := BoletoCnab240(cdConvenioCNAB);
     end
     else
     if VLayoutBanco = 'BANCOOB' then
     begin
        BoletoBancoob;
        PAtualizaEventoFat(2,10);  //2 significa envio boleto.
        exit;
     end
     else
     begin
        ShowMessage('Não foi gerado boletos, não existe rotina para o layout ' + VLayoutBanco);
        exit;
     end;
//     case StrToInt(cod_banco) of
//       33  : BoletosBanespa;
//       341 : BoletosItau;
//     end;
     PAtualizaEventoFat(2,10);  //2 significa envio boleto.
     if ContTitulos > 0 then
     begin
        ProgressBarGera.Position := ProgressBarGera.Max;
        ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');

        GravaContasBancarias;

        with QueryFaturamento do
        begin
           Close;
           SQL[1] := ('where Tipo_Cobranca = 10');
           Open;
       end;
     end
     else
       ShowMessage('Não existem registro para gerar boleto com os parâmetros passados ');
end;

procedure TFormGeraReceber.MontaHeaderCobrancaBanespa;
begin
     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '0'; // Identificação do Registro de Header
     Registro_Titulo := Registro_Titulo + '1'; // Tipo de Operação
     Registro_Titulo := Registro_Titulo + 'REMESSA'; // Identificação do Movimento
     Registro_Titulo := Registro_Titulo + '01'; // Tipo do Serviço
     Registro_Titulo := Registro_Titulo + 'COBRANCA       '; // Identificação Extenso Tipo do Serviço
     Registro_Titulo := Registro_Titulo + Agencia_Emp + Numero_emp; // Codigo do Cedente Mensalidade e Manutenções são iguais
//Seato     Registro_Titulo := Registro_Titulo + '49813005813'; // Codigo do Cedente Mensalidade e Manutenções são iguais
//MULTI     Registro_Titulo := Registro_Titulo + '46713004049'; // Codigo do Cedente Mensalidade e Manutenções são iguais
     Registro_Titulo := Registro_Titulo + '         '; // Complemento do Registro
     Registro_Titulo := Registro_Titulo + copy(Titular_emp,1,30) + StrAll(30 - length(Titular_emp),' '); // Nome da Empresa
//Seato     Registro_Titulo := Registro_Titulo + 'MATTOS & ISSA S/C LTDA        '; // Nome Empresa

     Registro_Titulo := Registro_Titulo + '033'; // Numero do Banco
     Registro_Titulo := Registro_Titulo + 'BANESPA        '; // Nome do Banco
     Data_Str2       := FormatDateTime('ddmmyy', dm.Date); // Data da Emissão
     Registro_Titulo := Registro_Titulo + Data_Str2;
     Registro_Titulo := Registro_Titulo + '01600';
     Registro_Titulo := Registro_Titulo + 'BPI';
     Registro_Titulo := Registro_Titulo + StrAll(286, ' '); // Complemento do Registro
     Registro_Titulo := Registro_Titulo + '000001'; // Número Sequencial
end;

procedure TFormGeraReceber.MontaTitulosBanespa;
begin
     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '1'; // Identificação do Registro de Transação
     Registro_Titulo := Registro_Titulo + '02'; // Identificação da Inscrição
     Registro_Titulo := Registro_Titulo + StrAll(14 - length(CGC_Emp),'0') + CGC_Emp; // CGC Empresa
     Registro_Titulo := Registro_Titulo + Agencia_Emp + Numero_emp; // Codigo do Cedente Mensalidade e Manutenções são iguais
     Registro_Titulo := Registro_Titulo + StrAll(9, ' '); // Complemento do Registro
     Registro_Titulo := Registro_Titulo + StrAll(25, ' '); // Complemento do Registro
     Registro_Titulo := Registro_Titulo + Agencia_Emp; // Agência Mantenedora da Conta
     Numero_Banco    := Numero_Banco + 1;
     Sequencial_Str  := IntToStr(Numero_Banco);
     Sequencial_Str  := StrAll(7 - Length(Sequencial_Str), '0') + Sequencial_Str;
     Registro_Titulo := Registro_Titulo + Sequencial_Str; // Numero Banco
     Registro_Titulo := Registro_Titulo + StrAll(10, ' '); // Filler
     Registro_Titulo := Registro_Titulo + StrAll(25, ' '); // Brancos
     Registro_Titulo := Registro_Titulo + '1'; // Codigo da Carteira
     Registro_Titulo := Registro_Titulo + '01'; // Codigo da Ocorrencia
     Nosso_Numero2   := StrAll(10 - Length(QueryFaturamentoNumero_Titulo.asString) , '0') + QueryFaturamentoNumero_Titulo.asString; // Nosso Número
     Registro_Titulo := Registro_Titulo + Nosso_Numero2;
     Data_Str2       := FormatDateTime('ddmmyy', QueryFaturamentoData_Vencimento.asDateTime);
     Registro_Titulo := Registro_Titulo + Data_Str2; // Data do Vencimento
     Valor_Auxiliar  := QueryFaturamentoValor.asCurrency + QueryPreferenciasValor_Cobranca.asCurrency;
     if Valor_Auxiliar < 1000  then
        Valor_Aux    := StrAll(14 - Length(FloatToStrF(Valor_Auxiliar, ffNumber,11,2)),'0')
                        + FloatToStrF(Valor_Auxiliar,ffNumber,11,2)
     else
        Valor_Aux    := StrAll(15 - Length(FloatToStrF(Valor_Auxiliar, ffNumber,11,2)),'0')
                        + FloatToStrF(Valor_Auxiliar,ffNumber,11,2);
     Numerico        := RetiraPontoDecimal(Valor_Aux);
     Registro_Titulo := Registro_Titulo + Numerico; // Valor do Título
     Registro_Titulo := Registro_Titulo + '033'; // Banco Cobrador
     Registro_Titulo := Registro_Titulo + StrAll(5, '0'); // Complemento do Registro
     Registro_Titulo := Registro_Titulo + '01'; // Espécie do Título
     Registro_Titulo := Registro_Titulo + 'A'; // Aceite Fixo 'A' = Sim
     Data_Str2       := FormatDateTime('ddmmyy', dm.Date); // Data da Emissão
     Registro_Titulo := Registro_Titulo + Data_Str2; // Data do Vencimento
     Registro_Titulo := Registro_Titulo + '60'; // Primeira instrução de Cobrança
     Registro_Titulo := Registro_Titulo + '00'; // Segunda instrução de Cobrança
     Registro_Titulo := Registro_Titulo + StrAll(13, '9'); // Valor dos Juros
     Registro_Titulo := Registro_Titulo + '000000'; // Data concessão descontos
     Registro_Titulo := Registro_Titulo + StrAll(13, '0'); // Valor dos Desconto
     Registro_Titulo := Registro_Titulo + StrAll(13, '0'); // Valor dos Iof
     Registro_Titulo := Registro_Titulo + StrAll(13, '0'); // Valor Abatimento
     Registro_Titulo := Registro_Titulo + '01'; // Codigo da Inscrição

     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;

     CPF_Str2        := RetiraTracoCPF(QueryContratanteCGC_CPF.asString);
     CPF_Str         := CPF_Str2;
     Registro_Titulo := Registro_Titulo + StrAll(14 - Length(CPF_Str) , '0') + CPF_Str; // CPF/CGC Contratante

     Codigo_Str      := StrAll(06 - Length(QueryContratanteCodigo.asString), '0') + QueryContratanteCodigo.asString;
     Registro_Titulo := Registro_Titulo + Codigo_Str + ' - ' + Copy(QueryContratanteNome.asString, 1, 31)
                        + StrAll(31 - Length(QueryContratanteNome.asString), ' '); // Nome do Sacado

     if QueryContratanteTipo_Correspondencia.asString = 'Residêncial' then
        begin
          Logradouro      := QueryContratanteEndereco_Residencial.asString + ',' +
                             QueryContratanteNumero_Res.AsString + ' ' +
                             QueryContratanteComplemento_Res.AsString;
          Registro_Titulo := Registro_Titulo + Logradouro + StrAll(40 - Length(copy(Logradouro,1,40)) , ' '); // Logradouro
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteBairro_Residencial.asString, 1, 12) + StrAll(12 - Length(QueryContratanteBairro_Residencial.asString) , ' '); // Bairro do Sacado
          if QueryContratanteCep_Residencial.asString <> '' then
             Cep_Str := RetiraTracoCep(QueryContratanteCep_Residencial.asString)
          else Cep_Str := StrAll(8 , ' ');
          if Cep_Str = '1400680' then
             Cep_Str := Cep_Str;
          Cep_Str         := Cep_Str + StrAll(08 - Length(Cep_Str) , ' ');
          Registro_Titulo := Registro_Titulo + Cep_Str; // Cep do Sacado
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteCidade_Residencial.asString, 1, 15) + StrAll(15 - Length(QueryContratanteCidade_Residencial.asString) , ' '); // Cidade do Sacado
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteEstado_Residencial.asString, 1, 02)  + StrAll(02 - Length(QueryContratanteEstado_Residencial.asString) , ' '); // Estado do Sacado
        end
     else
        begin
          Logradouro      := QueryContratanteEndereco_Comercial.asString + ',' +
                             QueryContratanteNumero_Com.AsString + ' ' +
                             QueryContratanteComplemento_Com.AsString;
          Registro_Titulo := Registro_Titulo + Logradouro + StrAll(40 - Length(copy(Logradouro,1,40)) , ' '); // Logradouro
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteBairro_Comercial.asString, 1, 12) + StrAll(12 - Length(QueryContratanteBairro_Comercial.asString) , ' '); // Bairro do Sacado
          if QueryContratanteCep_Comercial.asString <> '' then
             Cep_Str := RetiraTracoCep(QueryContratanteCep_Comercial.asString)
          else Cep_Str := StrAll(8 , ' ');
          if Cep_Str = '1400680' then
             Cep_Str := Cep_Str;
          Cep_Str         := Cep_Str + StrAll(08 - Length(Cep_Str) , ' ');
          Registro_Titulo := Registro_Titulo + Cep_Str; // Cep do Sacado
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteCidade_Comercial.asString, 1, 15) + StrAll(15 - Length(QueryContratanteCidade_Comercial.asString) , ' '); // Cidade do Sacado
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteEstado_Comercial.asString, 1, 02)  + StrAll(02 - Length(QueryContratanteEstado_Comercial.asString) , ' '); // Estado do Sacado
        end;

     Registro_Titulo := Registro_Titulo + StrAll(40 , ' '); // Sacador Avalista
     Registro_Titulo := Registro_Titulo + StrAll(02 , ' '); // Prazo de Protesto
     Registro_Titulo := Registro_Titulo + StrAll(01 , ' '); // Filler
     Sequencial      := IntToStr(ContTitulos);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro

     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;
end;

procedure TFormGeraReceber.MontaTrailerCobrancaBanespa;
begin
     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '9'; // Identificação do Registro Trailer
     Registro_Titulo := Registro_Titulo + StrAll(393 , ' '); // Complemento do Registro
     Sequencial := IntToStr(ContTitulos);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro

     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;
end;

{procedure TFormGeraReceber.CalculaDigito;
begin
     // Numero da Agência ===> 3197
     Ag1 := 3;
     Ag2 := 1;
     Ag3 := 9;
     Ag4 := 7;
     Conta1 := 0;
     Conta2 := 0;
     Conta3 := 9;
     Conta4 := 3;
     Conta5 := 9;
     Cart1 := 1;
     Cart2 := 7;
     Cart3 := 5;
     Num1 := StrToInt(Copy(Nosso_Numero, 1, 1));
     Num2 := StrToInt(Copy(Nosso_Numero, 2, 1));
     Num3 := StrToInt(Copy(Nosso_Numero, 3, 1));
     Num4 := StrToInt(Copy(Nosso_Numero, 4, 1));
     Num5 := StrToInt(Copy(Nosso_Numero, 5, 1));
     Num6 := StrToInt(Copy(Nosso_Numero, 6, 1));
     Num7 := StrToInt(Copy(Nosso_Numero, 7, 1));
     Num8 := StrToInt(Copy(Nosso_Numero, 8, 1));

     // Multiplicação pelos multiplicadores 2,1,2,1,2,1.... da direita p/ esquerda

     Resultado[20] := Num8 * 2;
     i := 20;
     TestaResultado;
     Resultado[19] := Num7 * 1;
     i := 19;
     TestaResultado;
     Resultado[18] := Num6 * 2;
     i := 18;
     TestaResultado;
     Resultado[17] := Num5 * 1;
     i := 17;
     TestaResultado;
     Resultado[16] := Num4 * 2;
     i := 16;
     TestaResultado;
     Resultado[15] := Num3 * 1;
     i := 15;
     TestaResultado;
     Resultado[14] := Num2 * 2;
     i := 14;
     TestaResultado;
     Resultado[13] := Num1 * 1;
     i := 13;
     TestaResultado;
     Resultado[12] := Cart3 * 2;
     i := 12;
     TestaResultado;
     Resultado[11] := Cart2 * 1;
     i := 11;
     TestaResultado;
     Resultado[10] := Cart1 * 2;
     i := 10;
     TestaResultado;
     Resultado[09] := Conta5 * 1;
     i := 09;
     TestaResultado;
     Resultado[08] := Conta4 * 2;
     i := 08;
     TestaResultado;
     Resultado[07] := Conta3 * 1;
     i := 07;
     TestaResultado;
     Resultado[06] := Conta2 * 2;
     i := 06;
     TestaResultado;
     Resultado[05] := Conta1 * 1;
     i := 05;
     TestaResultado;
     Resultado[04] := Ag4 * 2;
     i := 04;
     TestaResultado;
     Resultado[03] := Ag3 * 1;
     i := 03;
     TestaResultado;
     Resultado[02] := Ag2 * 2;
     i := 02;
     TestaResultado;
     Resultado[01] := Ag1 * 1;
     i := 01;
     TestaResultado;

     Total := Resultado[01] + Resultado[02] + Resultado[03] + Resultado[04] +
        Resultado[05] + Resultado[06] + Resultado[07] + Resultado[08] +
        Resultado[09] + Resultado[10] + Resultado[11] + Resultado[12] +
        Resultado[13] + Resultado[14] + Resultado[15] + Resultado[16] +
        Resultado[17] + Resultado[18] + Resultado[19] + Resultado[20];

     Diferenca := Total div 10;
     Resto := Total - (10 * Diferenca);
     if Resto = 0 then
        Digito := 0
     else
        Digito := 10 - Resto;
end;}

{procedure TFormGeraReceber.TestaResultado;
begin
     if Resultado[i] > 9 then
        begin
          Resultado_Str := IntToStr(Resultado[i]);
          Campo1 := Copy(Resultado_Str, 1, 1);
          Campo2 := Copy(Resultado_Str, 2, 1);
          Resultado[i] := StrToInt(Campo1) + StrToInt(Campo2);
        end;
end;}

{procedure TFormGeraReceber.TestaResultado2;
begin
     if Resultado[i] > 9 then
        begin
          Resultado_Str := IntToStr(Resultado[i]);
          Campo1 := Copy(Resultado_Str, 1, 1);
          Campo2 := Copy(Resultado_Str, 2, 1);
          Resultado[i] := StrToInt(Campo2);
        end;
end;}

{procedure TFormGeraReceber.CalculaDigitoBoleto;
begin
     Num1 := StrToInt(Copy(Sequencial_Str, 1, 1));
     Num2 := StrToInt(Copy(Sequencial_Str, 2, 1));
     Num3 := StrToInt(Copy(Sequencial_Str, 3, 1));
     Num4 := StrToInt(Copy(Sequencial_Str, 4, 1));
     Num5 := StrToInt(Copy(Sequencial_Str, 5, 1));
     Num6 := StrToInt(Copy(Sequencial_Str, 6, 1));
     Num7 := StrToInt(Copy(Sequencial_Str, 7, 1));

     // Multiplicação pelos multiplicadores 9,7,3,1,9,7,3.... da direita p/ esquerda

     Resultado[01] := Num7 * 9;
     i := 01;
     TestaResultado2;
     Resultado[02] := Num6 * 7;
     i := 02;
     TestaResultado2;
     Resultado[03] := Num5 * 3;
     i := 03;
     TestaResultado2;
     Resultado[04] := Num4 * 1;
     i := 04;
     TestaResultado2;
     Resultado[05] := Num3 * 9;
     i := 05;
     TestaResultado2;
     Resultado[06] := Num2 * 7;
     i := 06;
     TestaResultado2;
     Resultado[07] := Num1 * 3;
     i := 07;
     TestaResultado2;

     Total := Resultado[01] + Resultado[02] + Resultado[03] + Resultado[04] +
        Resultado[05] + Resultado[06] + Resultado[07] + 23;

     Resultado[08] := Total;
     i := 8;
     TestaResultado2;

     Resto := 10 - Resultado[8];
     if Resto = 10 then
        Digito := 0
     else
        Digito := Resto;
end;}


procedure TFormGeraReceber.ProcessaRetornoBrasil;
begin
  ProcessaRetornoBrasil2;
end;
procedure TFormGeraReceber.BitBtnDebitoRealClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;
   SetaSelectsOrig;
   Banco     := 'Banco Real';
   Cod_Banco := '275';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
            Seleciona_Conta;
            if Banco_ok then
               PDebAutoVariasDatas(275);
          end
       else
         ProcessaRetornoReal;
     end;
   Banco_ok := False;
end;



procedure TFormGeraReceber.PDebAutoVariasDatas(PBanco:Integer);
var DiaFim ,DiaIni : String[2];

begin
   ArgGerados := '';
   FmParamDebAuto := TFmParamDebAuto.create(self);
   if FmParamDebAuto.ShowModal = MrOk then
   begin
       DiaIni := EditInicial.Text;
       DiaFim := EditFinal.text;
      if FmParamDebAuto.CheckBox10.checked then
      begin
         EditInicial.Text := '1';
         EditFinal.text   := '10';

         case Pbanco of

            275 : begin
                     ProcessaEnvioReal;
                     PAtualizaEventoFat(13,275);
                  end;
            001 : begin
                     ProcessaEnvioBrasil;
                     PAtualizaEventoFat(05,001);
                  end;
            151 : begin
                     ProcessaEnvioNossaCaixa;
                     PAtualizaEventoFat(09,151);
                  end;
            409 : begin
                     ProcessaEnvioUnibanco;
                     PAtualizaEventoFat(17,409);
                  end;
         end;

      end;
      if FmParamDebAuto.CheckBox20.checked then
      begin
         EditInicial.Text := '11';
         EditFinal.text   := '20';
         case Pbanco of

            275 : begin
                     ProcessaEnvioReal;
                     PAtualizaEventoFat(14,275);
                  end;
            001 : begin
                     ProcessaEnvioBrasil;
                     PAtualizaEventoFat(06,001);
                  end;
            151 : begin
                     ProcessaEnvioNossaCaixa;
                     PAtualizaEventoFat(10,151);
                  end;
            409 : begin
                     ProcessaEnvioUnibanco;
                     PAtualizaEventoFat(18,409);
                  end;
         end;

      end;
      if FmParamDebAuto.CheckBox25.checked then
      begin
         EditInicial.Text := '21';
         EditFinal.text   := '25';
         case Pbanco of

            275 : begin
                     ProcessaEnvioReal;
                     PAtualizaEventoFat(15,275);
                  end;
            001 : begin
                     ProcessaEnvioBrasil;
                     PAtualizaEventoFat(07,001);
                  end;
            151 : begin
                     ProcessaEnvioNossaCaixa;
                     PAtualizaEventoFat(11,151);
                  end;
            409 : begin
                     ProcessaEnvioUnibanco;
                     PAtualizaEventoFat(19,409);
                  end;
         end;
      end;
      if FmParamDebAuto.CheckBox30.checked then
      begin
         EditInicial.Text := '26';
         EditFinal.text   := '30';
         case Pbanco of

            275 : begin
                     ProcessaEnvioReal;
                     PAtualizaEventoFat(16,275);
                  end;
            001 : begin
                     ProcessaEnvioBrasil;
                     PAtualizaEventoFat(08,001);
                  end;
            151 : begin
                     ProcessaEnvioNossaCaixa;
                     PAtualizaEventoFat(12,151);
                  end;
            409 : begin
                     ProcessaEnvioUnibanco;
                     PAtualizaEventoFat(20,409);
                  end;
         end;
      end;
   end;
   FmParamDebAuto.free;
   EditInicial.Text := DiaIni;
   EditFinal.text   := DiaFim;
   ShowMessage('Foram gerados os seguintes arquivos :' + #13 + ArgGerados);
end;


procedure TFormGeraReceber.ProcessaRetornoReal;
begin
     MontaArquivoRetorno(2,25);
end;

procedure TFormGeraReceber.ProcessaEnvioReal;
begin
    if not directoryExists(QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Real') then
    begin
       ShowMessage('O diretório "' +
       QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Real" não existe. Operação não executada!');
       Exit;
    end;

     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;
     Filtra(false);
     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_Tipo   + ' and Emitido_Documento = 0 ' );
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos do Real para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Real\DA' + Dia_Str + Mes_Str + '.REM';
//         Nro_sequencial := StrAll(06 - Length(QueryPreferenciasSequencial_Real.asString), '0') + QueryPreferenciasSequencial_Real.asString; // Número sequencial do arquivo gerado

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Real';
         // monta o nome do arquivo conforme definicao da Kelly por exemplo:
         // vencto mENSALIDAE dia 10 do 08 fica DA0810.REM
         // vencto Manutenção dia 10 do 08 fica DA0811.REM etc..
         case ComboBoxTipoCobranca.ItemIndex of

           0 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 1),2,'0') + '.REM'; // Manutenção
           1 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + EditFinal.text + '.REM';// Mensalidade
           2 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 2),2,'0') + '.REM'; // Manutenção//Orcamento
           3 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 3),2,'0') + '.REM';  // Reapresentação de Títulos não debitados anteriormente
           4 :  NomeArquivo := NomeCaminho + '\DA' + lpad(EditMes.text,2,'0') + EditFinal.text + '.REM';// desconto em folhta
         end;

         //NomeArquivo := 'DA' + Dia_Str + Mes_Str + '.REM';
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
         //if not OpenDialog1.Execute then
          //  exit;

         //NomeArquivo := OpenDialog1.FileName;
         if NomeArquivo = '' then
           exit;
         try
            AssignFile(Arquivo, NomeArquivo);
            Rewrite(Arquivo);
         except
           on e: exception do
           begin
             ShowMessage('Não foi possível abrir o arquivo "' + NomeArquivo + '", mensagem de erro: ' + e.message);
             if not OpenDialog1.Execute then
               exit;
             NomeArquivo := OpenDialog1.FileName;
             AssignFile(Arquivo, NomeArquivo);
             Rewrite(Arquivo);
           end;
         end;
         MontaHeader;
         try
           Writeln(Arquivo, Registro);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
         while not eof do
            begin
              MontaRegistrosReal;
              try
                Writeln(Arquivo, Registro);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     MontaTrailler; // Monta Registros tipo 'Z' Trailler
     try
       Write(Arquivo, Registro);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ArgGerados := ArgGerados + NomeArquivo + ' Qtde títulos : ' + IntToStr(ContTitulos) +  #13 ;
//     ShowMessage('Foram gerados ' + IntToStr(Cont) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
     GravaContasBancarias;
{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_Real.asInteger := QueryPreferenciasSequencial_Real.asInteger + 1;
     GravaPreferencias;}
end;

procedure TFormGeraReceber.MontaRegistrosReal;
begin
     Registro := '';
     Registro := Registro + 'E'; // Código do Registro = 'E'
     Registro := Registro + QueryFaturamentoNumero_Titulo.asString + StrAll(25 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa
     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;                        
       end;
     Agencia := lpad(QueryContratanteAgencia.asString,4,'0');
     Registro := Registro + Agencia;
     Conta := QueryContratanteConta.asString;
//     Registro := Registro + Rpad(QueryContratanteConta.asString + copy(QueryContratanteDigito.asString,1,1),14,' ');
     Registro := Registro + Rpad(QueryContratanteConta.asString,14,' ');
     Data_Atual := QueryFaturamentoData_Vencimento.asDateTime;
     DecodeDate(Data_Atual, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro := Registro + InttoStr(Ano) + Mes_Str + Dia_Str; // Data do Vencimento
     if QueryFaturamentoValor.asCurrency < 1000  then
        Valor_Aux := StrAll(16 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2)
     else
        Valor_Aux := StrAll(17 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2);
     Numerico := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToCurr(Valor_Aux);
     Registro := Registro + Numerico; // Valor do Débito
     Registro := Registro + '03'; // Código da Moeda 01 - UFIR // 03 - REAL
     Registro := Registro + Rpad(QueryContratanteNome.AsString,60,' '); // Uso da Empresa
//     Registro := Registro + StrAll(60,' '); // Uso da Empresa
     Registro := Registro + StrAll(20,' '); // Filler ( Espaços )
     Registro := Registro + '0'; // Código do Movimento 0 - Débito Normal // 1 - Cancelamento (Exclusão)
end;

procedure TFormGeraReceber.BitBtnDebitoUnibancoClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;

   SetaSelectsOrig;
   Banco     := 'Unibanco';
   Cod_Banco := '409';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if Banco_ok then
                PDebAutoVariasDatas(409);
          end
       else
         ProcessaRetornoUnibanco;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.ProcessaRetornoUnibanco;
begin
   MontaArquivoRetornoFEBRABAN;// o unibanco é layout FEBRABAN
end;

procedure TFormGeraReceber.MontaArquivoRetornoFEBRABAN;
begin
   if not OpenDialog1.Execute then
      exit;

   NomeArquivo := OpenDialog1.FileName;
   if NomeArquivo = '' then
      exit;
   AssignFile(Arquivo, NomeArquivo);
   Reset(Arquivo);

   if MessageDlg('Deseja Limpar o Arquivo de Retorno ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   try
      StoredProcDeletaRetorno.ExecProc; // Executa a stored procedure para deletar os registros do Arquivo de Retorno
    except on E: Exception do
    begin
       ShowMessage('Erro ao Limpar o Arquivo de Retorno !!! [ENTER]. Erro : ' + e.message);
       exit;
    end;
    end;

   QueryRetorno.Close;
   QueryRetorno.Open;
   Readln(Arquivo,conteudo);

   if copy(conteudo,1,1) <> '0' then
   begin
      ShowMessage('Arquivo não contem registro Header, operação cancelada !');
      exit;
   end;

   while not Eof(Arquivo) do
   begin
      ReadLn(Arquivo, Conteudo);

      if Copy(Conteudo, 1, 1) = '2' then
      begin
         QueryRetorno.Insert;
         QueryRetornoIdentificacao_Empresa.asString := Copy(Conteudo,79,15);
         QueryRetornoAgencia.asString               := Copy(Conteudo,02,04);
         QueryRetornoConta.asString                 := Copy(Conteudo,06,06);

         // para o codigo de ocorrencia 53 (Movimento rejeitado (na data do envio))
         //a data é no formato AAMMDD e pra os demais a data é no formato DDMMAA

         if copy(conteudo,376,2) = '53' then
         begin
            Ano_Str := '20' + Copy(Conteudo,100,02);
            Dia_Str := Copy(Conteudo,104,02);
         end
         else
         begin
            Ano_Str := '20' + Copy(Conteudo,104,4);
            Dia_Str := Copy(Conteudo,100,02);
         end;
         Mes_Str := Copy(Conteudo,102,02);
         Data_Str                                   := Dia_Str + '/' + Mes_Str + '/' + Ano_Str;
         QueryRetornoData_Vencimento.asDateTime     := StrToDate(Data_Str);
         QueryRetornoValor_Debito.asCurrency        := StrToFloat(Copy(Conteudo, 66, 13));
         QueryRetornoValor_Debito.asCurrency        := QueryRetornoValor_Debito.asCurrency / 100;
         QueryRetornoCodigo_Retorno.asString        := Copy(Conteudo,376,02);

         Trim(QueryRetornoIdentificacao_Empresa.asString);
         // pega o codigo do contratante
         dm.ExecutaQuery(' select Codigo_Contratante from receber where Numero_Titulo = ' + QueryRetornoIdentificacao_Empresa.asString,'A');
         QueryRetornoCodigo_Contratante.asInteger := dm.QueryGenerica.FieldByName('Codigo_Contratante').AsInteger;
         try
            QueryRetorno.Post;
         except on E: Exception do
            begin
               ShowMessage('Ocorreu um erro ao tentar gravar o Registro: ' + QueryRetornoIdentificacao_Empresa.asString + ' na tabela de retorno. ERRO :' + e.Message);
               QueryRetorno.Cancel;
            end;
         end;
      end; //if Copy(Conteudo, 1, 1) = '2' then
   end;
   QueryRetorno.Close;
   QueryRetorno.Open;
   Application.CreateForm(TFormBaixaRetorno, FormBaixaRetorno);
   FormBaixaRetorno.CdOcorrenciaBaixa := '52'; // o código de débito processado do unibanco é 51
   FormBaixaRetorno.ShowModal;
   FormBaixaRetorno.Free;
end;

procedure TFormGeraReceber.ProcessaEnvioUnibanco;
begin
// não implementado por falta de layout do banco
    if not directoryExists(QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Unibanco') then
    begin
       ShowMessage('O diretório "' +
       QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Unibanco" não existe. Operação não executada!');
       Exit;
    end;

     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;

     Filtra(false);

     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_Tipo + ' and Emitido_Documento = 0 ' );
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Unibanco para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Unibanco\CW' + Dia_Str + Mes_Str + 'X1';

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Unibanco';
//         NomeArquivo := 'CW' + Dia_Str + Mes_Str + 'X1';

         case ComboBoxTipoCobranca.ItemIndex of

           0 :  NomeArquivo := NomeCaminho + '\UN' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 1),2,'0') + '.TXT'; // Manutenção
           1 :  NomeArquivo := NomeCaminho + '\UN' + lpad(EditMes.text,2,'0') + EditFinal.text + '.TXT';// Mensalidade
           2 :  NomeArquivo := NomeCaminho + '\UN' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 2),2,'0') + '.TXT'; // Manutenção//Orcamento
           3 :  NomeArquivo := NomeCaminho + '\UN' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 3),2,'0') + '.TXT';  // Reapresentação de Títulos não debitados anteriormente
           4 :  NomeArquivo := NomeCaminho + '\UN' + lpad(EditMes.text,2,'0') + EditFinal.text + '.TXT';// desconto em folhta
         end;


         //NomeArquivo := 'UN' + Dia_Str + Mes_Str + '.TXT';
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
         //if not OpenDialog1.Execute then
         //   exit;

         //NomeArquivo := OpenDialog1.FileName;
         if NomeArquivo = '' then
           exit;
         try
            AssignFile(Arquivo, NomeArquivo);
            Rewrite(Arquivo);
         except
           on e: exception do
           begin
             ShowMessage('Não foi possível abrir o arquivo "' + NomeArquivo + '", mensagem de erro: ' + e.message);
             if not OpenDialog1.Execute then
               exit;
             NomeArquivo := OpenDialog1.FileName;
             AssignFile(Arquivo, NomeArquivo);
             Rewrite(Arquivo);
           end;
         end;

         MontaHeaderUnibanco; // Monta o Registro Tipo 'A' - HEADER

         try
           Writeln(Arquivo, Registro2);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
//         ShowMessage('Perguntar para Bia ' + #13 +
//         '1) Sobre emissão de Aviso ao Debitado (Registro detalhe) está com 0 - sem aviso' + #13 +
//         '2) Histórico de Lançamento' + #13 +
//         '3) Analisar o valor' + #13 +
//         '4) Histórico no extrato');
         while not eof do
            begin
              ContTitulos := ContTitulos + 1;

              MontaRegistrosUnibanco;
              try
                Writeln(Arquivo, Registro2);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     MontaTraillerUnibanco; // Monta Registros tipo 'Z' Trailler
     try
       Writeln(Arquivo, Registro2);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ArgGerados := ArgGerados + NomeArquivo + ' Qtde títulos : ' + IntToStr(ContTitulos) +  #13 ;
     //ShowMessage('Foram gerados ' + IntToStr(Cont) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
     GravaContasBancarias;

{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_Unibanco.asInteger := QueryPreferenciasSequencial_Unibanco.asInteger + 1;
     GravaPreferencias;}
end;

procedure TFormGeraReceber.MontaHeaderUnibanco;
begin
     Registro2 := '';
     Registro2 := Registro2 + '0'; // Código do Registro = '0'
     Registro2 := Registro2 + '1'; // Identifica Código de Remessa 1 - Remessa / 2 - Retorno
     Registro2 := Registro2 + 'REMESSA'; // Identificação por extenso de Remessa
     Registro2 := Registro2 + '08'; // Identificação do Serviço
     Registro2 := Registro2 + 'CONTAS A PAGAR'; // Identificação por extenso do Serviço
     Registro2 := Registro2 + StrAll(04 - length(Agencia_Emp),'0') + Agencia_Emp; // Agência
     Registro2 := Registro2 + StrAll(07 - length(Numero_Emp ),'0') + Numero_Emp; // Conta Corrente + DG
     Titular_Emp := Copy(Titular_Emp,1,30);
     Registro2 := Registro2 + Titular_Emp + StrAll(30 - length(Titular_Emp),' '); // Nome da Empresa
     Registro2 := Registro2 + '409'; // Código do Unibanco
     Registro2 := Registro2 + 'UNIBANCO       '; // Nome do Banco
     Registro2 := Registro2 + formatDateTime('DDMMYY',dm.date);
     Registro2 := Registro2 + StrAll(224,' '); // Espaços
     Registro2 := Registro2 + '000001'; // Número sequencial do arquivo gerado
     ContTitulos := ContTitulos + 1;
end;

procedure TFormGeraReceber.MontaRegistrosUnibanco;
var Campo1, Campo4 : Int64;
//Campo2 : Integer;
begin
     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;

     Registro2 := '';
     Registro2 := Registro2 + '2'; // Código do Registro = 'E'
     Registro2 := Registro2 + StrAll(04 - length(Agencia_Emp),'0') + Agencia_Emp; // Agência
     Registro2 := Registro2 + StrAll(07 - length(Numero_Emp ),'0') + Numero_Emp; // Conta Corrente + DG
     Registro2 := Registro2 + StrAll(20,' '); // Espaços
     Registro2 := Registro2 + StrAll(04 - length(Cod_Banco),'0') + Cod_banco; // Número Banco
     Agencia := StrAll(4 - Length(QueryContratanteAgencia.asString), '0') + QueryContratanteAgencia.asString; // Agência para Débito da Fatura
     Registro2 := Registro2 + Agencia;
     Registro2 := Registro2 + StrAll(10 - Length(QueryContratanteConta.asString), '0') + QueryContratanteConta.asString; // Conta Corrente para Débito
     Registro2 := Registro2 + '4'; // Meio de Repasse da Transação
     Registro2 := Registro2 + '0'; // Emissão de Aviso ao Debitado // 0 - Sem aviso
     Registro2 := Registro2 + '6'; // Tipo de Operação
     Registro2 := Registro2 + '2'; // Tipo de Serviço
     if QueryFaturamentoValor.asCurrency < 1000 then
        Valor_Aux := StrAll(14 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,11,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,11,2)
     else
        Valor_Aux := StrAll(15 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,11,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,11,2);
     Numerico := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToCurr(Valor_Aux);
     Registro2 := Registro2 + Numerico; // Valor do Débito
     Registro2 := Registro2 + StrAll(15 - Length(QueryFaturamentoNumero_Titulo.asString), '0') + QueryFaturamentoNumero_Titulo.asString; // Identificação do Cliente na Empresa
     Registro2 := Registro2 + formatDateTime('DDMMYY',dm.date);// Data da gravação
     Data_Atual:= QueryFaturamentoData_Vencimento.asDateTime;
     Registro2 := Registro2 + formatDateTime('DDMMYY',Data_Atual);// Data do débito

     Registro2 := Registro2 + Copy(QueryContratanteNome.asString, 1, 30) + StrAll(30 - Length(QueryContratanteNome.asString), ' '); // Nome do Debitado
     Registro2 := Registro2 + StrAll(95,' '); // Espaços
     Registro2 := Registro2 + 'MENSALIDADE    '; // Histórico de Lançamento
     Registro2 := Registro2 + '14'; // Moeda do Débito
     Registro2 := Registro2 + StrAll(11,' '); // Espaços Reservados
     Registro2 := Registro2 + StrAll(11,'0'); // Número do Pagamento no Unibanco
     Registro2 := Registro2 + '01'; // Codigo da Ocorrência // 01 - Inclusão
     Registro2 := Registro2 + StrAll(02,' '); // Espaços Reservado

     Campo1 := StrToInt64(Copy(Registro2,33,18));
     Campo4 := StrToInt64(Copy(Registro2,55,13));
     Campo1 := Campo1 + Campo4;
     Campo1 := Campo1 * StrToInt(Copy(Registro2,53,1));
     Campo_Horizontal := IntToStr(Campo1);
     if length(Campo_Horizontal) > 18 then
        Campo_Horizontal := Copy(Campo_Horizontal,2,18)
     else
        Campo_Horizontal := StrAll(18 - length(Campo_Horizontal),'0') + Campo_Horizontal;

     Registro2 := Registro2 + Campo_Horizontal;

     Registro2 := Registro2 + StrAll(26,' '); // Espaços Reservados
     Registro2 := Registro2 + '00782'; // Histórico no Extrato de C/C do Debitado
     Registro2 := Registro2 + '  '; // Espaços Reservados
     Registro2 := Registro2 + Copy(QueryContratanteDigito.asString, 1, 1); // Digito Verificador C/C
     Registro2 := Registro2 + StrAll(06 - Length(IntToStr(ContTitulos)), '0') + IntToStr(ContTitulos); // Sequencial
end;

procedure TFormGeraReceber.MontaTraillerUnibanco;
begin
     ContTitulos := ContTitulos + 1;
     Registro2 := '9'; // Código do Registro = '9'
     Registro2 := Registro2 + StrAll(06 - Length(IntToStr(ContTitulos - 2)), '0') + IntToStr(ContTitulos - 2); // Total de Detalhes no Arquivo
     if Valor_Total < 1000 then
        Valor_Aux := StrAll(14 - Length(FloatToStrF(Valor_Total, ffNumber,11,2)),'0')
                     + FloatToStrF(Valor_Total,ffNumber,11,2)
     else
        Valor_Aux := StrAll(15 - Length(FloatToStrF(Valor_Total, ffNumber,11,2)),'0')
                     + FloatToStrF(Valor_Total,ffNumber,11,2);
     Numerico_Total := RetiraPontoDecimal(Valor_Aux);
     Registro2 := Registro2 + Numerico_Total; // Valor Total dos Registros do Arquivo
     Registro2 := Registro2 + StrAll(06 - Length(IntToStr(ContTitulos)), '0') + IntToStr(ContTitulos); // Total de Registros no Arquivo
     Registro2 := Registro2 + StrAll(288,' '); // Espaços (Filler)
     Registro2 := Registro2 + StrAll(06 - Length(IntToStr(ContTitulos)), '0') + IntToStr(ContTitulos); // Sequencial do Registro no Arquivo
end;

procedure TFormGeraReceber.BitBtnDebitoNossaCaixaClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;

   SetaSelectsOrig;
   Banco     := 'Nossa Caixa';
   Cod_Banco := '151';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if banco_ok then
                PDebAutoVariasDatas(151);
          end
       else
         ProcessaRetornoNossaCaixa;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.ProcessaRetornoNossaCaixa;
var Identificacao_Auxiliar : String[25];
begin
   if not OpenDialog1.Execute then
      exit;

   NomeArquivo := OpenDialog1.FileName;
   if NomeArquivo = '' then
      exit;

   AssignFile(Arquivo, NomeArquivo);
   Reset(Arquivo);

   if MessageDlg('Deseja Limpar o Arquivo de Retorno ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      try
        StoredProcDeletaRetorno.ExecProc; // Executa a stored procedure para deletar os registros do Arquivo de Retorno
      except on E: Exception do
        begin
          ShowMessage('Erro ao Limpar o Arquivo de Retorno !!! [ENTER]. Erro : ' + e.message);
          exit;
        end;
      end;

   QueryRetorno.Close;
   QueryRetorno.Open;
   ReadLn(Arquivo, Conteudo);
   if Copy(Conteudo, 143, 1) = '2' then
     begin
       while not Eof(Arquivo) do
         begin
           ReadLn(Arquivo, Conteudo);
               if Copy(Conteudo, 8, 1) = '3' then
              begin
                QueryRetorno.Insert;
                QueryRetornoIdentificacao_Empresa.asString := Copy(Conteudo, 74, 20);
                QueryRetornoAgencia.asString               := Copy(Conteudo, 24, 10);
                QueryRetornoConta.asString                 := Copy(Conteudo, 34, 9);
                Ano_Str                                    := Copy(Conteudo, 159, 4);
                Mes_Str                                    := Copy(Conteudo, 157, 2);
                Dia_Str                                    := Copy(Conteudo, 155, 2);
                Data_Str                                   := Dia_Str + '/' + Mes_Str + '/' + Ano_Str;
                if Data_Str <> '00/00/0000' then
                  QueryRetornoData_Vencimento.asDateTime     := StrToDate(Data_Str);
                QueryRetornoValor_Debito.asCurrency        := StrToFloat(Copy(Conteudo, 163, 15));
                QueryRetornoValor_Debito.asCurrency        := QueryRetornoValor_Debito.asCurrency / 100;
                QueryRetornoCodigo_Retorno.asString        := Copy(Conteudo, 231, 10);
                Identificacao_Auxiliar := QueryRetornoIdentificacao_Empresa.asString;
                Posicao:=pos(' ', Identificacao_Auxiliar);
                while Posicao <> 0 do
                  begin
                    Posicao := pos(' ', Identificacao_Auxiliar);
                    delete(Identificacao_Auxiliar, Posicao,1);          // elimina espacos
                  end;
                QueryRetornoCodigo_Contratante.asInteger := StrToInt(Copy(Identificacao_Auxiliar, 1, length(Identificacao_Auxiliar)- 4));

                try
                  QueryRetorno.Post
                except
                  begin
                    ShowMessage('Registro: ' + QueryRetornoIdentificacao_Empresa.asString + ' já existente');
                    QueryRetorno.Cancel;
                  end
                end;
              end;
         end;
     end;

   QueryRetorno.Close;
   QueryRetorno.Open;
   Application.CreateForm(TFormBaixaRetorno, FormBaixaRetorno);
   FormBaixaRetorno.CdOcorrenciaBaixa := '00'; // o código de débito processado 00
   FormBaixaRetorno.ShowModal;
   FormBaixaRetorno.Free;
end;

procedure TFormGeraReceber.ProcessaEnvioNossaCaixa;
begin
     Filtra(false);
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;

     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_Tipo   + ' and Emitido_Documento = 0 ' );
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos da Nossa Caixa para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\NCNB\NC' + Dia_Str + Mes_Str + '.REM'; // Teste

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Nossa Caixa';

         case ComboBoxTipoCobranca.ItemIndex of

           0 :  NomeArquivo := NomeCaminho + '\NC' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 1),2,'0') + '.TXT'; // Manutenção
           1 :  NomeArquivo := NomeCaminho + '\NC' + lpad(EditMes.text,2,'0') + EditFinal.text + '.TXT';// Mensalidade
           2 :  NomeArquivo := NomeCaminho + '\NC' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 2),2,'0') + '.TXT'; // Manutenção//Orcamento
           3 :  NomeArquivo := NomeCaminho + '\NC' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 3),2,'0') + '.TXT';  // Reapresentação de Títulos não debitados anteriormente
           4 :  NomeArquivo := NomeCaminho + '\NC' + lpad(EditMes.text,2,'0') + EditFinal.text + '.TXT';// Mensalidade

         end;

         //NomeArquivo := 'NC' + Dia_Str + Mes_Str + '.REM'; // Produção
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
         //if not OpenDialog1.Execute then
         //  exit;

         //NomeArquivo := OpenDialog1.FileName;

         if NomeArquivo = '' then
           exit;
         try
            AssignFile(Arquivo, NomeArquivo);
            Rewrite(Arquivo);
         except
           on e: exception do
           begin
             ShowMessage('Não foi possível abrir o arquivo "' + NomeArquivo + '", mensagem de erro: ' + e.message);
             if not OpenDialog1.Execute then
               exit;
             NomeArquivo := OpenDialog1.FileName;
             AssignFile(Arquivo, NomeArquivo);
             Rewrite(Arquivo);
           end;
         end;

         MontaHeaderNossaCaixa;
         try
           Writeln(Arquivo, Registro2);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;
         MontaHeaderLoteNossaCaixa; // Monta Header de Lote Nossa Caixa
         try
           Writeln(Arquivo, Registro2);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header de Lote !!! [ENTER] !!!');
             exit;
           end;
         end;


         First;
         Cont_Registro := 0;
         while not eof do
            begin
              MontaRegistrosNossaCaixa;
              try
                Writeln(Arquivo, Registro2);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     MontaTraillerLoteNossaCaixa; // Monta Registros tipo 'Z' Trailler
     try
       Writeln(Arquivo, Registro2);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler de Lote !!! [ENTER] !!!');
         exit;
       end;
     end;
     MontaTraillerNossaCaixa;
     try
       Writeln(Arquivo, Registro2);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ArgGerados := ArgGerados + NomeArquivo + ' Qtde títulos : ' + IntToStr(ContTitulos) +  #13 ;
     //ShowMessage('Foram gerados ' + IntToStr(Cont) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
     GravaContasBancarias;

{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_NossaCaixa.asInteger := QueryPreferenciasSequencial_NossaCaixa.asInteger + 1;
     GravaPreferencias;}
end;

procedure TFormGeraReceber.MontaHeaderNossaCaixa;
begin
     Registro2 := '';
     Registro2 := Registro2 + '151'; // Código do Banco
     Registro2 := Registro2 + '0000'; // Lote do Serviço
     Registro2 := Registro2 + '0'; // Registro Header do Arquivo
     Registro2 := Registro2 + StrAll(09,' '); // Espaços
     Registro2 := Registro2 + '2'; // Tipo Inscrição Empresa / 2 - CNPJ
     Registro2 := Registro2 + '01306081000115'; // Nº do CNPJ da Empresa
     Codigo_Convenio := '20125';
     Registro2 := Registro2 + Codigo_Convenio; // Identifica Código do Convênio Informado pelo Banco
     Registro2 := Registro2 + 'PPA'; // Sigla do Sistema
     Registro2 := Registro2 + StrAll(12,' '); // Espaços
     Registro2 := Registro2 + '0000430000040024498'; // Número da Agência Centralizadora
     Registro2 := Registro2 + ' '; // Digito Verificador da Ag/Conta
     Registro2 := Registro2 + 'MULTI BUCAL  S/C LTDA         '; // Nome da Empresa

     Registro2 := Registro2 + 'NOSSA CAIXA NOSSO BANCO       '; // Nome da Empresa
     Registro2 := Registro2 + StrAll(10,' '); // Espaços
     Registro2 := Registro2 + '1'; // Codigo Remessa/Retorno
     Data_Atual := dm.Date;
     DecodeDate(Data_Atual, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro2 := Registro2 + Dia_Str + Mes_Str + InttoStr(Ano);

     Hora_Atual := dm.Now;
     DecodeTime(Hora_Atual, Hora, Minuto, Segundo, Milesimo);

     if Hora < 10 then
        Hora_Str := '0' + IntToStr(Hora)
     else
        Hora_Str := IntToStr(Hora);

     if Minuto < 10 then
        Minuto_Str := '0' + IntToStr(Minuto)
     else
        Minuto_Str := IntToStr(Minuto);

     if Segundo < 10 then
        Segundo_Str := '0' + IntToStr(Segundo)
     else
        Segundo_Str := IntToStr(Segundo);

     Registro2 := Registro2 + Hora_Str + Minuto_Str + Segundo_Str;
     Registro2 := Registro2 + StrAll(06 - Length(Debito_Seq), '0') + Debito_Seq; // Número sequencial do arquivo gerado
     Registro2 := Registro2 + '020'; // Versão do Layout
     Registro2 := Registro2 + '00000'; // Densidade
     Registro2 := Registro2 + StrAll(20,' '); // Espaços
     Registro2 := Registro2 + StrAll(20,' '); // Espaços
     Registro2 := Registro2 + StrAll(29,' '); // Espaços

     ContTitulos := ContTitulos + 1;
end;

procedure TFormGeraReceber.MontaHeaderLoteNossaCaixa;
begin
     Registro2 := '';
     Registro2 := Registro2 + '151'; // Código do Banco
     Registro2 := Registro2 + '0001'; // Lote do Serviço
     Registro2 := Registro2 + '1'; // Registro Header do Arquivo
     Registro2 := Registro2 + 'D'; // Tipo da Operação // D - Débito C - Crédito
     Registro2 := Registro2 + '05'; // Tipo do Serviço
     Registro2 := Registro2 + '50'; // Forma de Lançamento
     Registro2 := Registro2 + '020'; // Versão do Layout do Lote
     Registro2 := Registro2 + StrAll(01,' '); // Espaços
     Registro2 := Registro2 + '2'; // Tipo Inscrição Empresa / 2 - CNPJ
     Registro2 := Registro2 + '01306081000115'; // Nº do CNPJ da Empresa
     Codigo_Convenio := '20125';
     Registro2 := Registro2 + Codigo_Convenio; // Identifica Código do Convênio Informado pelo Banco
     Registro2 := Registro2 + 'PPA'; // Sigla do Sistema
     Registro2 := Registro2 + StrAll(12,' '); // Espaços
     Registro2 := Registro2 + '0000430000040024498'; // Número da Agência Centralizadora
     Registro2 := Registro2 + ' '; // Digito Verificador da Ag/Conta
     Registro2 := Registro2 + 'MULTI BUCAL  S/C LTDA         '; // Nome da Empresa

     Registro2 := Registro2 + StrAll(40,' '); // Mensagem
     Registro2 := Registro2 + 'AV. IDEPENDENCIA              '; // Nome da Empresa
     Registro2 := Registro2 + '00182'; // Número do Local
     Registro2 := Registro2 + 'CASA           '; // Complemento
     Registro2 := Registro2 + 'RIBEIRAO PRETO      '; // Nome da Cidade
     Registro2 := Registro2 + '14010'; // Cep
     Registro2 := Registro2 + '210'; // Complemento do Cep
     Registro2 := Registro2 + 'SP'; // Sigla do Estado
     Registro2 := Registro2 + StrAll(08,' '); // Espaços
     Registro2 := Registro2 + '          '; // Codigo Remessa/Retorno
end;

procedure TFormGeraReceber.MontaRegistrosNossaCaixa;
var   Conta_Str2 : String[8];
begin
     Cont_Registro := Cont_Registro + 1;
     Registro2 := '';
     Registro2 := Registro2 + '151'; // Código do Banco Compensação
     Registro2 := Registro2 + '0001'; // Lote do Serviço
     Registro2 := Registro2 + '3'; // Registro Header do Arquivo
     Cont_Str2 := IntToStr(Cont_Registro);
     Registro2 := Registro2 + StrAll(05 - Length(Cont_Str2), '0') + Cont_Str2; // Número sequencial do arquivo gerado
     Registro2 := Registro2 + 'A'; // Codigo Segmento do Detalhe
     Registro2 := Registro2 + '0'; // Tipo do Movimento
     Registro2 := Registro2 + '00'; // Código da Instrução para movimento
     Registro2 := Registro2 + '000'; // Código da Camara de Compensação
     Registro2 := Registro2 + '151'; // Código do Banco do Favorecido
     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;
     Registro2 := Registro2 + StrAll(6 - Length(QueryContratanteAgencia.asString), '0') + QueryContratanteAgencia.asString; // Agência para Débito da Fatura
     Registro2 := Registro2 + '0000'; // Reservado
     {tava fixo até 30/09/2009 01, dei update nas contas dos usuarios acrescentando 01 tem cliente que eh diferente de 01 foi acertado manual esses casos}
//     Registro2 := Registro2 + '01'; // Modalidade da Conta

     Conta_Str2 := StrAll(8 - Length(QueryContratanteConta.asString), '0') + QueryContratanteConta.asString; // Agência para Débito da Fatura
     if QueryContratanteDigito.asString = '' then
        Digito_Str2 := '0'
     else
        Digito_Str2 := QueryContratanteDigito.asString;
     Registro2 := Registro2 + Conta_Str2 + Digito_Str2; // Conta Corrente para Débito // + é 1 do Digito

     Registro2 := Registro2 + ' '; // Digito Verificador Conta/Banco

     Registro2 := Registro2 + Copy(QueryContratanteNome.asString, 1, 30) + StrAll(30 - Length(QueryContratanteNome.asString), ' '); // Identificação do Cliente na Empresa
     Registro2 := Registro2 + QueryFaturamentoNumero_Titulo.asString + StrAll(20 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa

     DecodeDate(QueryFaturamentoData_Vencimento.asDateTime, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro2 := Registro2 + Dia_Str + Mes_Str + InttoStr(Ano); // Data do Vencimento

     Registro2 := Registro2 + 'BRL'; // Tipo Moeda
     Registro2 := Registro2 + StrAll(15,'0'); // Quantidade Moeda
     if QueryFaturamentoValor.asCurrency < 1000 then
        Valor_Aux := StrAll(16 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2)
     else
        Valor_Aux := StrAll(17 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2);
     Numerico := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToFloat(Valor_Aux);
     Registro2 := Registro2 + Numerico; // Valor do Débito
     Registro2 := Registro2 + StrAll(20,' '); // Nosso Número
     Registro2 := Registro2 + StrAll(23,'0'); // Outras Informações
     Registro2 := Registro2 + StrAll(40,' '); // Outras Informações
     Registro2 := Registro2 + StrAll(12,' '); // Brancos
     Registro2 := Registro2 + '5'; // Aviso ao Favorecido / 0 - Não , 5 - Sim
     Registro2 := Registro2 + '          '; // Codigo Remessa/Retorno
end;

procedure TFormGeraReceber.MontaTraillerLoteNossaCaixa;
begin
     Registro2 := '';
     Registro2 := Registro2 + '151'; // Código do Banco Compensação
     Registro2 := Registro2 + '0001'; // Lote do Serviço
     Registro2 := Registro2 + '5'; // Registro Header do Arquivo
     Registro2 := Registro2 + StrAll(09,' '); // Brancos
     Cont_Str := IntToStr(Cont_Registro + 2); // Reg. Tipos = 1 + 3 + 5
     Registro2 := Registro2 + StrAll(06 - Length(Cont_Str), '0') + Cont_Str; // Número sequencial do arquivo gerado
     Valor_Aux := RetiraPontoDecimal(FloatToStrF(Valor_Total, ffNumber,7,2));
     Numerico_Total2 := StrAll(18 - length(Valor_Aux),'0') + Valor_Aux;
     Registro2 := Registro2 + Numerico_Total2; // Valor Total dos Registros do Arquivo
     Registro2 := Registro2 + StrAll(18,'0'); // Zeros
     Registro2 := Registro2 + StrAll(171,' '); // Brancos
     Registro2 := Registro2 + '          '; // Codigo Remessa/Retorno
end;

procedure TFormGeraReceber.MontaTraillerNossaCaixa;
begin
     Registro2 := '';
     Registro2 := Registro2 + '151'; // Código do Banco Compensação
     Registro2 := Registro2 + '9999'; // Lote do Serviço
     Registro2 := Registro2 + '9'; // Registro Header do Arquivo
     Registro2 := Registro2 + StrAll(09,' '); // Brancos
     Registro2 := Registro2 + '000001'; // Quantidade de Lotes do Arquivo
     Cont_Str := IntToStr(Cont_Registro + 4); // Reg. Tipos = 0 + 1 + 3 + 5 + 9
     Registro2 := Registro2 + StrAll(06 - Length(Cont_Str), '0') + Cont_Str; // Número sequencial do arquivo gerado
     Registro2 := Registro2 + '000000'; // Quantidade de Contas p/ Conc.
     Registro2 := Registro2 + StrAll(205,' '); // Brancos
end;

procedure TFormGeraReceber.EditAnoKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFormGeraReceber.BitBtnDebitoItauClick(Sender: TObject);
begin
   SetaSelectsOrig;
   Banco     := 'Itaú';
   Cod_Banco := '341';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if banco_ok then
             begin
                ProcessaEnvioItau;
                PAtualizaEventoFat(22,341);
             end;
          end
       else
         ProcessaRetornoItau;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.ProcessaEnvioItau;
var nrSeqLote : integer;
var vrTotal : real;
begin
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;

     Filtra(false);

     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;
     dm.AdoqueryEmpresa.close;
     dm.AdoqueryEmpresa.open;
     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_Tipo   + ' and Emitido_Documento = 0 ' );
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos do Itaú para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;


         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Itau\ITA' + Dia_Str + Mes_Str + '.REM'; // Produção
//         Nro_Sequencial := StrAll(06 - Length(QueryPreferenciasSequencial_Itau.asString), '0') + QueryPreferenciasSequencial_Itau.asString; // Número sequencial do arquivo gerado

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Itau';
         //NomeArquivo := 'ITA' + Dia_Str + Mes_Str + '.REM'; // Produção

         Debito_Seq := dm.execmd('select debito_sequencial  seq from contas_banco where banco = 341','seq');
         NomeArquivo := '\IT' + lpad(Debito_Seq,6,'0') + '.REM';

         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
         if not OpenDialog1.Execute then
            exit;

         NomeArquivo := OpenDialog1.FileName;
         if NomeArquivo = '' then
           exit;
         AssignFile(Arquivo, NomeArquivo);
         Rewrite(Arquivo);

         try

           Writeln(Arquivo, MontaRegistrosHeaderItau());
           Writeln(Arquivo, MontaRegistrosHeaderLoteItau('1'));
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
         nrSeqLote := 0;
         while not eof do
            begin

              try
                nrSeqLote := nrSeqLote + 1;
                vrTotal := vrTotal + StrToCurr(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2));
                Writeln(Arquivo, MontaRegistrosItau('1',nrSeqLote));
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Detalhe !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     Writeln(Arquivo, MontaRegistrosTraillerLoteItau('1',nrSeqLote + 2,vrTotal));
     Writeln(Arquivo, MontaRegistrosTraillerItau(nrSeqLote + 4));


    { try
       Writeln(Arquivo, Registro);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;}

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     GravaContasBancarias;
     ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
end;

{procedure TFormGeraReceber.MontaHeaderLoteItau;
begin
     Registro2 := '';
     Registro2 := Registro2 + '341'; // Código do Banco
     Registro2 := Registro2 + '0001'; // Lote do Serviço
     Registro2 := Registro2 + '1'; // Registro Header do Arquivo
     Registro2 := Registro2 + 'D'; // Tipo da Operação // D - Débito C - Crédito
     Registro2 := Registro2 + '05'; // Tipo do Serviço
     Registro2 := Registro2 + '50'; // Forma de Lançamento
     Registro2 := Registro2 + '    '; // Complemento do Registro
     Registro2 := Registro2 + '2'; // Tipo Inscrição Empresa / 2 - CNPJ
     Registro2 := Registro2 + '01306081000115'; // CGC da Empresa
     Registro2 := Registro2 + '1475304200374'; // Identifica Código do Convênio Informado pelo Banco
     Registro2 := Registro2 + StrAll(07,' '); // Complemento do Registro
     Registro2 := Registro2 + '0'; // Complemento do Registro
     Registro2 := Registro2 + '0332'; // Número da Agência Centralizadora
     Registro2 := Registro2 + ' '; // Brancos
     Registro2 := Registro2 + '0000000'; // Complemento do Registro
     Registro2 := Registro2 + '62865'; // Numero conta corrente
     Registro2 := Registro2 + ' '; // Complemento de registro
     Registro2 := Registro2 + '0'; // Digito Verificador da Ag/Conta
     Registro2 := Registro2 + 'RIBEIRAO MULTIODONTO          '; // Nome da Empresa
     Registro2 := Registro2 + StrAll(40,' '); // Mensagem
     Registro2 := Registro2 + 'AV. IDEPENDENCIA              '; // Nome da Empresa
     Registro2 := Registro2 + '00182'; // Número do Local
     Registro2 := Registro2 + 'CASA           '; // Complemento
     Registro2 := Registro2 + 'RIBEIRAO PRETO      '; // Nome da Cidade
     Registro2 := Registro2 + '14010'; // Cep
     Registro2 := Registro2 + '210'; // Complemento do Cep
     Registro2 := Registro2 + 'SP'; // Sigla do Estado
     Registro2 := Registro2 + StrAll(08,' '); // Espaços
     Registro2 := Registro2 + '00010203HA'; // Codigo Remessa/Retorno
end; }


function TFormGeraReceber.MontaRegistrosHeaderItau() : string;
var  linhaItau: string[240];
var sequencialHeader : string[6];
begin

     linhaItau := '341';
     linhaItau := linhaItau + '0000';
     linhaItau := linhaItau + '0';
     linhaItau := linhaItau + '         ';
     linhaItau := linhaItau + '2'; //TIPO DE INSCRIÇÃO DA EMPRESA 18 a 18
     linhaItau := linhaItau + lpad(replace(replace(replace(dm.AdoqueryEmpresa.FieldByName('CGC').AsString,'.',''),'-',''),'/',''),14,'0');
     linhaItau := linhaItau + '4901504290797';    //CÓDIGO DO CONVÊNIO NO BANCO  33 a 45
     linhaItau := linhaItau + '       ';
     linhaItau := linhaItau + '0'; //COMPLEMENTO DE REGISTRO 53 a 53
     dm.execmd('select debito_sequencial, agencia,substring(numero_conta,1,5) numero_conta, substring(numero_conta,6,1) digitoconta  from contas_banco where banco  = 341','agencia');
     sequencialHeader := lpad(dm.QueryGlobal.FieldByname('debito_sequencial').AsString,6,'0');
     linhaItau := linhaItau + lpad(dm.QueryGlobal.FieldByname('agencia').AsString,4,'0');
     linhaItau := linhaItau + ' ';
     linhaItau := linhaItau + '0000000';
     linhaItau := linhaItau + lpad(dm.QueryGlobal.FieldByname('numero_conta').AsString,5,'0');
     linhaItau := linhaItau + ' ';
     linhaItau := linhaItau + dm.QueryGlobal.FieldByname('digitoconta').AsString;
     linhaItau := linhaItau + copy(QueryPreferenciasnome_empresa.AsString,1,30);
     linhaItau := linhaItau  + rpad('BANCO ITAU',30,' ');
     linhaItau := linhaItau + '          ';
     linhaItau := linhaItau + '1';
     DecodeDate(dm.Date , Ano, Mes, Dia);
     linhaItau := linhaItau + lpad(intTostr(dia),2,'0') + lpad(intToStr(mes),2,'0') + lpad(intToStr(ano),4,'0');
     linhaItau := linhaItau + dm.execmd('select replace(convert(char(8),getdate(),108),'':'','''') hora','hora');
     linhaItau := linhaItau + sequencialHeader;
     linhaItau := linhaItau + '040';     //versao do layout     164 166
     linhaItau := linhaItau + '00000';
     linhaItau := linhaItau + lpad('',20,' ');
     linhaItau := linhaItau + lpad('',49,' ');
     result:= linhaItau;
end;

function TFormGeraReceber.MontaRegistrosHeaderLoteItau(nrLote: string) : string;
var  linhaItau: string[240];
begin
     //dm.GetParam('select vl_parametro where cd_parametro = ''NRLTITA''','vl_parametro');
     linhaItau := '341';
     linhaItau := linhaItau + StrAll(4 - Length(nrLote), '0') + nrLote;
     linhaItau :=  linhaItau +  '1'; // TIPO DE linhaItau
     linhaItau :=  linhaItau +  'D'; // tipo operacao
     linhaItau :=  linhaItau +  '05'; // tipo de servico
     linhaItau :=  linhaItau +  '50'; // forma de lançamento
     linhaItau :=  linhaItau +  '030'; // versao layout
     linhaItau :=  linhaItau +  ' '; // branco
     linhaItau :=  linhaItau +  '2'; // cpf/cnpj

     linhaItau := linhaItau + lpad(replace(replace(replace(dm.AdoqueryEmpresa.FieldByName('CGC').AsString,'.',''),'-',''),'/',''),14,'0');
     linhaItau := linhaItau + '4901504290797'; // convenio
     linhaItau := linhaItau + '       '; // brancos
     linhaItau := linhaItau + '0'; // complemento

     dm.execmd('select debito_sequencial, agencia,substring(numero_conta,1,5) numero_conta, substring(numero_conta,6,1) digitoconta  from contas_banco where banco  = 341','agencia');

     linhaItau := linhaItau + lpad(dm.QueryGlobal.FieldByname('agencia').AsString,4,'0');
     linhaItau := linhaItau + ' '; // brancos
     linhaItau := linhaItau + '0000000'; // complemento
     linhaItau := linhaItau + lpad(dm.QueryGlobal.FieldByname('numero_conta').AsString,5,'0');
     linhaItau := linhaItau + ' '; // brancos
     linhaItau := linhaItau + dm.QueryGlobal.FieldByname('digitoconta').AsString;
     linhaItau := linhaItau +  copy(QueryPreferenciasnome_empresa.AsString,1,30);
     linhaItau := linhaItau + StrAll(40, ' '); // 103 a 142
     linhaItau := linhaItau + rpad(copy(replace(dm.AdoqueryEmpresa.FieldByName('endereco').AsString,', 1339',''),1,30),30,' ');
     linhaItau := linhaItau + '01339'; // numero endereco
     linhaItau := linhaItau + '               '; // numero complemento
     linhaItau := linhaItau + rpad(dm.AdoqueryEmpresa.FieldByName('cidade').AsString,20,' ');
     linhaItau := linhaItau + Lpad(replace(replace(dm.AdoqueryEmpresa.FieldByName('cep').AsString,'-',''),'.',''),8,'0');
     linhaItau := linhaItau + dm.AdoqueryEmpresa.FieldByName('estado').AsString;
     linhaItau := linhaItau + '        ';
     linhaItau := linhaItau + '          ';
     result:= linhaItau;
end;

function TFormGeraReceber.MontaRegistrosItau(nrLote: string;nrSeqLote : integer) : string;
var linhaItau: string[240];
begin
     //dm.GetParam('select vl_parametro where cd_parametro = ''NRLTITA''','vl_parametro');
     linhaItau := '341';
     linhaItau := linhaItau + StrAll(4 - Length(nrLote), '0') + nrLote;
     linhaItau :=  linhaItau +  '3'; // TIPO DE linhaItau
     linhaItau :=  linhaItau +  lpad(intToStr(nrSeqLote),5,'0'); //sequencial no lote

     linhaItau :=  linhaItau +  'A'; // cod seguimento detalhe
     linhaItau :=  linhaItau +  '000'; // cod instruçao para movimento (inclusao)
     linhaItau :=  linhaItau +  '000'; // cod camera compensacao
     linhaItau :=  linhaItau +  '341';
     linhaItau :=  linhaItau +  '0';
     QueryContratante.Close;
     QueryContratante.SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
     QueryContratante.SQL[3] := 'order by Contratante.Codigo';
     QueryContratante.SQL[4] := '';
     QueryContratante.SQL[5] := '';
     QueryContratante.SQL[6] := '';
     QueryContratante.SQL[7] := '';
     QueryContratante.SQL[8] := '';
     QueryContratante.Open;
     linhaItau := linhaItau + lpad(QueryContratanteAgencia.asString,4,'0');
     linhaItau := linhaItau + ' ';
     linhaItau := linhaItau + '0000000'; // complemento

     linhaItau := linhaItau + lpad(QueryContratanteConta.asString,5,'0');
     linhaItau := linhaItau + ' '; // brancos
     linhaItau := linhaItau + QueryContratanteDigito.asString;
     linhaItau := linhaItau + rpad(copy(QueryContratanteNome.asString,1,30),30,' ');
     linhaItau := linhaItau + rpad(QueryFaturamentoNumero_Titulo.asString,15,' ');     //74 a 88
     linhaItau := linhaItau + '     '; // brancos
     DecodeDate(QueryFaturamentoData_Vencimento.asDateTime, Ano, Mes, Dia);
     linhaItau := linhaItau + lpad(intTostr(dia),2,'0') + lpad(intToStr(mes),2,'0') + lpad(intToStr(ano),4,'0');
     linhaItau := linhaItau + 'REA'; // TIPO DE MOEDA
     linhaItau := linhaItau + '000000000000000'; //QUANTIDADE DA MOEDA OU IOF
     Valor_Aux := RetiraPontoDecimal(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2));
     linhaItau := linhaItau + lpad(Valor_Aux,15,'0');
     {if QueryFaturamentoValor.asCurrency < 1000 then
        Valor_Aux := lpad(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2),16,'0')
     else
       Valor_Aux := lpad(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2),17,'0');

     linhaItau := linhaItau + RetiraPontoDecimal(Valor_Aux); // Valor do Débito}
     linhaItau := linhaItau + lpad('',20,' '); //NR. DO DOCUM. ATRIBUÍDO PELO BANCO       135 a 154
     linhaItau := linhaItau + '        '; //155 a 162
     linhaItau := linhaItau + rpad('',15,' '); //163 a 177
     linhaItau := linhaItau + '00';//TIPO DA MORA
     linhaItau := linhaItau + '00000000000000000';//VALOR DA MORA
     linhaItau := linhaItau + '                ';//
     linhaItau := linhaItau + '    ';//
     linhaItau := linhaItau + lpad(QueryContratanteCGC_CPF.asString,14,'0'); // CPF/CGC
     linhaItau := linhaItau + '          ';//CÓDIGO DAS OCORRÊNCIAS P/ RETORNO
     result := linhaItau;
end;

function TFormGeraReceber.MontaRegistrosTraillerLoteItau(nrLote: string; qtRegLote : integer; vrDebito: real) : string;
var  linhaItau: string[240];
var sequencialHeader : string[6];
begin

     linhaItau := '341';
     linhaItau := linhaItau + lpad(nrLote,4,'0');
     linhaItau := linhaItau + '5';
     linhaItau := linhaItau + '         ';
     linhaItau := linhaItau +  lpad(intToStr(qtRegLote),6,'0');    //quantidade dos registros tipo 1;
     Valor_Aux := RetiraPontoDecimal(FloatToStrF(vrDebito, ffNumber,7,2));
     linhaItau := linhaItau +  lpad(Valor_Aux,18,'0');
     linhaItau := linhaItau +  '000000000000000000';
     linhaItau := linhaItau +  rpad('',181,' ');
     result:= linhaItau;
end;

function TFormGeraReceber.MontaRegistrosTraillerItau(qtRegArquivo : integer) : string;
var  linhaItau: string[240];
var sequencialHeader : string[6];
begin

     linhaItau := '341';
     linhaItau := linhaItau + '9999';
     linhaItau := linhaItau + '9';
     linhaItau := linhaItau + '         ';
     linhaItau := linhaItau + '000001';
     linhaItau := linhaItau +  lpad(intToStr(qtRegArquivo),6,'0');    //
     linhaItau := linhaItau +  rpad('',211,' ');
     result:= linhaItau;
end;


{procedure TFormGeraReceber.MontaTraillerLoteItau;
begin
     Registro2 := '';
     Registro2 := Registro2 + '341'; // Código do Banco Compensação
     Registro2 := Registro2 + '0001'; // Lote do Serviço
     Registro2 := Registro2 + '5'; // Registro Header do Arquivo
     Registro2 := Registro2 + StrAll(09,' '); // Brancos
     Cont_Str := IntToStr(Cont_Registro + 2); // Reg. Tipos = 1 + 3 + 5
     Registro2 := Registro2 + StrAll(06 - Length(Cont_Str), '0') + Cont_Str; // Número sequencial do arquivo gerado

     Valor_Aux := StrAll(19 - Length(FloatToStrF(Valor_Total, ffNumber,7,2)),'0')
                  + FloatToStrF(Valor_Total,ffNumber,7,2);
     Numerico_Total2 := RetiraPontoDecimal(Valor_Aux);
     Registro2 := Registro2 + Numerico_Total2; // Valor Total dos Registros do Arquivo

     Registro2 := Registro2 + StrAll(18,'9'); // Zeros
     Registro2 := Registro2 + StrAll(171,' '); // Brancos

     Registro2 := Registro2 + '00010203HA'; // Codigo Remessa/Retorno
end;}

{procedure TFormGeraReceber.MontaTrailerItau;
begin
//
end;}

procedure TFormGeraReceber.ProcessaRetornoItau;
var Identificacao_Auxiliar : String[25];
begin
   if not OpenDialog1.Execute then
      exit;

   NomeArquivo := OpenDialog1.FileName;
   if NomeArquivo = '' then
      exit;
   AssignFile(Arquivo, NomeArquivo);
   Reset(Arquivo);

   if MessageDlg('Deseja Limpar o Arquivo de Retorno ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      try
        StoredProcDeletaRetorno.ExecProc; // Executa a stored procedure para deletar os registros do Arquivo de Retorno
      except on E: Exception do
        begin
          ShowMessage('Erro ao Limpar o Arquivo de Retorno !!! [ENTER]. Erro : ' + e.message);
          exit;
        end;
      end;

   QueryRetorno.Close;
   QueryRetorno.Open;

   while not Eof(Arquivo) do
         begin
           ReadLn(Arquivo, Conteudo);

           if (Copy(Conteudo, 8, 1) = '3') and (Copy(Conteudo, 14, 1) = 'A') then
              begin
                QueryRetorno.Insert;

                Identificacao_Auxiliar := trim(Copy(Conteudo, 74, 15));

                QueryRetornoCodigo_Contratante.AsString    := dm.execmd('select codigo_contratante from faturamento where numero_titulo = ' + Identificacao_Auxiliar,'codigo_contratante');
                QueryRetornoAgencia.asString               := Copy(Conteudo, 25, 4);
                QueryRetornoConta.asString                 := Copy(Conteudo, 37, 5);
                Ano_Str                                    := Copy(Conteudo, 98, 4);
                Mes_Str                                    := Copy(Conteudo, 96, 2);
                Dia_Str                                    := Copy(Conteudo, 94, 2);
                Data_Str                                   := Dia_Str + '/' + Mes_Str + '/' + Ano_Str;
                QueryRetornoData_Vencimento.asDateTime     := StrToDate(Data_Str);
                QueryRetornoValor_Debito.asCurrency        := StrToFloat(Copy(Conteudo, 120, 15));
                QueryRetornoValor_Debito.asCurrency        := QueryRetornoValor_Debito.asCurrency / 100;
                QueryRetornoCodigo_Retorno.asString        := Copy(Conteudo, 231, 10);
                QueryRetornoIdentificacao_Empresa.asString := Identificacao_Auxiliar;

                try
                  QueryRetorno.Post
                except
                  begin
                    ShowMessage('Registro: ' + QueryRetornoIdentificacao_Empresa.asString + ' já existente');
                    QueryRetorno.Cancel;
                  end
                end;
             end;
         end;
   QueryRetorno.Close;
   QueryRetorno.Open;
   Application.CreateForm(TFormBaixaRetorno, FormBaixaRetorno);
   FormBaixaRetorno.CdOcorrenciaBaixa := '00'; // o código de débito processado 00
   FormBaixaRetorno.ShowModal;
   FormBaixaRetorno.Free;
end;

procedure TFormGeraReceber.BitBtnDebitoBrasilClick(Sender: TObject);
begin
   if (ComboBoxTipoCobranca.Text = '') or (EditAno.text = '') or (EditMes.text = '') or (EditAno.text = '') then
   begin
     ShowMessage('Informe os parâmetros !');
     exit;
   end;

   SetaSelectsOrig;
   Banco     := 'Banco do Brasil';
   Cod_Banco := '001';
   Boleto    := False;
   EscolheOperacao;
   if Tipo_Operacao = '' then
     exit
   else
     begin
       if Tipo_Operacao = '1' then
          begin
             Seleciona_Conta;
             if banco_ok then
                PDebAutoVariasDatas(1);

          end
       else
         ProcessaRetornoBrasil;
     end;
   Banco_ok := False;
end;

procedure TFormGeraReceber.ProcessaEnvioBrasil;
begin
     ContTitulos := 0;
     ProgressBarGera.Position := 0;
     ProgressBarGera.Max := 100;
     ProgressBarGera.Step := 10;
     Valor_Total := 0;

     Filtra(false);

     if QueryFaturamento.RecordCount = 0 then
        begin
          ShowMessage('Esta Rotina nescessita do Processamento do Faturamento !!! [ENTER]');
          exit;
        end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = ' + Debito_tipo + ' and Emitido_Documento = 0 ' );
         Open;

         if QueryFaturamento.RecordCount = 0 then
            begin
              ShowMessage('Não Existe Registros com Débitos do Banco do Brasil para Processamento do Faturamento !!! [ENTER]');
              exit;
            end;

         Data_Atual := dm.Date;
         DecodeDate(Data_Atual, Ano, Mes, Dia);

         if Mes < 10 then
            Mes_Str := '0' + IntToStr(Mes)
         else
            Mes_Str := IntToStr(Mes);

         if Dia < 10 then
            Dia_Str := '0' + IntToStr(Dia)
         else
            Dia_Str := IntToStr(Dia);

//         NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Brasil\BB' + Dia_Str + Mes_Str + '00.REM'; // Produção
//         Nro_sequencial := StrAll(06 - Length(QueryPreferenciasSequencial_Brasil.asString), '0') + QueryPreferenciasSequencial_Brasil.asString; // Número sequencial do arquivo gerado

         NomeCaminho := QueryPreferenciasCaminho_Cobranca.asString + '\Debitos\Envio\Banco Brasil';


         {
         case ComboBoxTipoCobranca.ItemIndex of

           0 :  NomeArquivo := NomeCaminho + '\BB' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 1),2,'0') + '00.REM'; // Manutenção
           1 :  NomeArquivo := NomeCaminho + '\BB' + lpad(EditMes.text,2,'0') + EditFinal.text + '00.REM';// Mensalidade
           2 :  NomeArquivo := NomeCaminho + '\BB' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 2),2,'0') + '00.REM'; // Manutenção//Orcamento
           3 :  NomeArquivo := NomeCaminho + '\BB' + lpad(EditMes.text,2,'0') + lpad(IntToStr(StrToInt(EditFinal.text) + 3),2,'0') + '00.REM';  // Reapresentação de Títulos não debitados anteriormente
           4 :  NomeArquivo := NomeCaminho + '\BB' + lpad(EditMes.text,2,'0') + EditFinal.text + '00.REM';// Mensalidade
         end;}
         Debito_Seq := dm.execmd('select debito_sequencial  seq from contas_banco where banco = 1','seq');
         NomeArquivo := NomeCaminho + '\BB' + lpad(Debito_Seq,6,'0') + '.REM';

//         NomeArquivo := 'BB' + Dia_Str + Mes_Str + '00.REM'; // Produção
         OpenDialog1.InitialDir := NomeCaminho;
         OpenDialog1.FileName   := NomeArquivo;
//         if not OpenDialog1.Execute then
//            exit;

//         NomeArquivo := OpenDialog1.FileName;
         if NomeArquivo = '' then
           exit;
         try
            AssignFile(Arquivo, NomeArquivo);
            Rewrite(Arquivo);
         except
           on e: exception do
           begin
             ShowMessage('Não foi possível abrir o arquivo "' + NomeArquivo + '", mensagem de erro: ' + e.message);
             if not OpenDialog1.Execute then
               exit;
             NomeArquivo := OpenDialog1.FileName;
             AssignFile(Arquivo, NomeArquivo);
             Rewrite(Arquivo);
           end;
         end;
         MontaHeader;
         try
           Writeln(Arquivo, Registro);
         except
           begin
             ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
             exit;
           end;
         end;

         First;
         while not eof do
            begin
              MontaRegistrosBrasil;
              try
                Writeln(Arquivo, Registro);
              except
                 begin
                   ShowMessage('Erro ao gravar Registro Header !!! [ENTER] !!!');
                   exit;
                end;
              end;

              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              ContTitulos := ContTitulos + 1;
              Next;
            end;
        end;

     QueryFaturamento.Close;
     QueryFaturamento.Open;

     MontaTrailler; // Monta Registros tipo 'Z' Trailler
     try
       Writeln(Arquivo, Registro);
     except
       begin
         ShowMessage('Erro ao gravar Registro Trailler !!! [ENTER] !!!');
         exit;
       end;
     end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     CloseFile(Arquivo);
     ArgGerados := ArgGerados + NomeArquivo + ' Qtde títulos : ' + IntToStr(ContTitulos) +  #13 ;
     //ShowMessage('Foram gerados ' + IntToStr(Cont) + ' Registros !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
     GravaContasBancarias;

{     QueryPreferencias.Edit;
     QueryPreferenciasSequencial_Brasil.asInteger := QueryPreferenciasSequencial_Brasil.asInteger + 1;
     GravaPreferencias;}
end;

procedure TFormGeraReceber.MontaRegistrosBrasil;
begin
     Registro := '';
     Registro := Registro + 'E'; // Código do Registro = 'E'
     Registro := Registro + StrAll(5 - length(QueryFaturamentoCodigo_Contratante.asString),'0') +
                 QueryFaturamentoCodigo_Contratante.asString + StrAll(20, ' '); // Identificação do Cliente na Empresa

     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;

     Registro := Registro + StrAll(4 - Length(QueryContratanteAgencia.asString), '0') + QueryContratanteAgencia.asString; // Agência para Débito da Fatura
     Registro := Registro + StrAll(14 - Length(QueryContratanteConta.asString), '0') + Copy(QueryContratanteConta.asString, 1, 8);
     Data_Atual := QueryFaturamentoData_Vencimento.asDateTime;
     DecodeDate(QueryFaturamentoData_Vencimento.asDateTime, Ano, Mes, Dia);

     if Dia < 10 then
        Dia_Str := '0' + IntToStr(Dia)
     else
        Dia_Str := IntToStr(Dia);

     if Mes < 10 then
        Mes_Str := '0' + IntToStr(Mes)
     else
        Mes_Str := IntToStr(Mes);

     Registro := Registro + InttoStr(Ano) + Mes_Str + Dia_Str; // Data do Vencimento
     if QueryFaturamentoValor.asCurrency < 1000 then
        Valor_Aux := StrAll(16 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2)
     else
        Valor_Aux := StrAll(17 - Length(FloatToStrF(QueryFaturamentoValor.asCurrency, ffNumber,7,2)),'0')
                     + FloatToStrF(QueryFaturamentoValor.asCurrency,ffNumber,7,2);
     Numerico := RetiraPontoDecimal(Valor_Aux);
     Valor_Total := Valor_Total + StrToCurr(Valor_Aux);
     Registro := Registro + Numerico; // Valor do Débito

     Registro := Registro + '03'; // Código da Moeda 01 - UFIR // 03 - REAL
     Registro := Registro + QueryFaturamentoNumero_Titulo.asString + StrAll(60 - Length(QueryFaturamentoNumero_Titulo.asString), ' '); // Identificação do Cliente na Empresa
     Registro := Registro + StrAll(20,' '); // Filler ( Espaços )
     Registro := Registro + '0'; // Código do Movimento 0 - Débito Normal // 1 - Cancelamento (Exclusão)
end;

procedure TFormGeraReceber.ProcessaManutencao;
var NrUsuario : string;
begin
     dm.execmd('update parametro set vl_parametro = ''S'' where cd_parametro = ''PISOM'''); // Esse parametro permite na trigger Tr_i_u_validacoesOdonto incluir serviços com data de exclusao
                                                                                            // para atender solicitacao tacio para deixar incluir orcamentos de servicos ja excluidos
     Erros := 0;

     ContTitulos  := 0;
     Flag  := 0;
     Data_Base := StrToDate(dm.GetDataSrv);
     //QueryManutencao.sql[0] := 'select top 1 * from Manutencao ';
     with QueryManutencao do
       begin
         Close;
         // Filtro de Vencimento
         ParamByName('Vencimento1').asInteger := StrToInt(EditInicial.Text);
         ParamByName('Vencimento2').asInteger := StrToInt(EditFinal.Text);
         ParamByName('Data1').asDateTime      := Data_Base;
         ParamByName('Data2').asDateTime      := Data_Base;


         case RadioGroupTp.ItemIndex of
            0 : sql[6] := ' and (Gera_Boleto = 1 or Debito = 1) and Contratante.Empresa = 1';
            1 : sql[6] := ' and (Gera_Boleto = 1 or Debito = 1) and Contratante.Empresa = 0';
            2 : sql[6] := ' and (Gera_Boleto = 1 or Debito = 1) ';
         end;

         if Editcodigo.Text <> '' then
         begin
            ParamByName('Cod_Usuario').asInteger := StrToInt(Editcodigo.Text);

         end
         else
         begin
            SQL[7] := '';

         end;

         case ComboBoxCidade.ItemIndex of
            0: begin
                 SQL[8] := '';

               end
         else
         begin

            SQL[8] := 'and Contratante.Cidade_Comercial = :Cidade';
            Parambyname('Cidade').asString := ComboBoxCidade.Text;
         end;
         end;
         //testar aki
         SQL[8] := SQL[8] + ' and :dataControleFim <= Data_final '; // controla para não emitir boleto após o término da manutençaõ
         paramByName('dataControleFim').AsDatetime := StrToDate('01/' + EditMes.Text + '/' + EditAno.Text);
         //SQL[8] := SQL[8] + ' and ''01/' + EditMes.Text + '/' + EditAno.Text + ''' <= Data_Final ';

         Open;
         memo1.lines.Clear;
         memo1.lines.add(QueryManutencao.text);

         if not (eof and bof) then
            PIncluiPeriodoFat;

         ProgressBarGera.Max := 100;
         Aux := RecordCount div 10;
         ProgressBarGera.Step := 10;
         First;
         Mes := StrToInt(EditMes.Text);
         Ano := StrToInt(EditAno.Text);

         while not eof do
           begin
             NrUsuario := QueryManutencaoUsuario.asString;
             with QueryUsuariosAux do
               begin
                 Close;
                 Parambyname('Contratante').asInteger := QueryManutencaoUsuario.AsInteger;
                 Open;
               end;

             if dm.GetParam('FGNTF') = 'S' then // se S gera o Nr de título sequencial
                Numero_Titulo := Dm.getNrtituloFaturamento(QueryManutencaoCodigo.AsString)  // gera o nr do titulo da seguinte forma, codigo do contratante
                // concatenado com 1300, gerando uma sequencia a partir de  1300, foi escolhido 1300 porque na posição do 13 é o ano quando monta o nr
                // do titulo de mensalidade, como nao tem mes 13, começamos dai.
             else // se P Gera o Nr do Titulo da Forma padrão, foi necessário por causa da mult chegou ao nr máximo de inteiros.

             begin
                if Mes < 10 then
                   Numero_Titulo := NrUsuario + Copy(IntToStr(Ano), 3, 2) + '0' + IntToStr(Mes)
                else
                   Numero_Titulo := NrUsuario + Copy(IntToStr(Ano), 3, 2) + IntToStr(Mes);
             end;

             Dia := VerifDia(QueryManutencaoVencimento.asInteger,EditMes.Text,EditAno.text);

             // verifica se já não foi gravado o título
             if dm.GetParam('FGNTF') = 'S' then // se S gera o Nr de título sequencial
             begin
                 // quando o codigo for sequencial valida pela data de vencimento e nr do título
                if dm.execmd('set dateformat dmy select count(*) q from faturamento where desdobramento = ''T'' and Codigo_Contratante = ' + QueryUsuariosAuxCodigo.AsString  + ' and Codigo_Usuario =  ' + QueryUsuariosAuxCodigo_Completo.AsString + ' and data_vencimento = ''' + DateToStr(EncodeDate(Ano, Mes, Dia)) + '''','q') <> '0' then
                begin
                   Application.ProcessMessages;
                   ProgressBarGera.Stepit;
                   next;
                   continue;
                end;
             end
             else // se for N então mantem como estava antes.
             begin
                if dm.execmd('set dateformat dmy select count(*) q from faturamento where desdobramento = ''T'' and numero_titulo = ' + Numero_Titulo  + ' and data_vencimento = ''' + DateToStr(EncodeDate(Ano, Mes, Dia)) + '''','q') <> '0' then
                begin
                   Application.ProcessMessages;
                   ProgressBarGera.Stepit;
                   next;
                   continue;
                end;
             end;
             Data_Grav := dm.now;


             with SPCalculaParcela do
               begin
                  parambyname('@Cliente').asInteger := QueryUsuariosAuxCodigo_Completo.asInteger;
                  parambyname('@Desd').asString     := 'T';
                  execproc;
                  Parcela := parambyname('@Parcela').asInteger + 1;
               end;


             QueryOrcamentos.Insert;
             QueryOrcamentosData_Hora.asDateTime          := Data_Grav;
             QueryOrcamentosOperador_Cadastro.asInteger   := Senha.Codigo_Operador;
             QueryOrcamentosContratante_Titular.asInteger := QueryUsuariosAuxContratante_Titular.asInteger;
             QueryOrcamentosContratante.asInteger         := QueryUsuariosAuxCodigo.asInteger;
             QueryOrcamentosUsuario.asInteger             := QueryUsuariosAuxCodigo_Completo.asInteger;
             QueryOrcamentosData.asDateTime               := Data_Base;
             QueryOrcamentosDentista.asInteger            := QueryManutencaoDentista.asInteger;
             QueryOrcamentosTotal.AsCurrency              := 0;
             QueryOrcamentosTotal_Bruto.AsCurrency        := 0;
             QueryOrcamentosTotal_Desconto.AsCurrency     := 0;
             QueryOrcamentosStatus.AsString               := '9';
             QueryOrcamentosTotal_Dentista.AsCurrency     := 0;
             QueryOrcamentosTotal_Protetico.AsCurrency    := 0;
             QueryOrcamentosAutorizado.asBoolean          := false;
             QueryOrcamentosOperador_Aprovacao.asInteger  := Senha.Codigo_Operador;
             QueryOrcamentosTipo.asInteger                := 5;
             QueryOrcamentosData_Conferencia.AsDateTime   := Data_Base;
             QueryOrcamentosStatus_Pagamento.asInteger    := 3;
             QueryOrcamentosNumero_Parcelas.AsString      := '1';
             QueryOrcamentoscd_tabela.AsString            :=  dm.execmd('set dateformat dmy select top 1 cd_tabela from TabPagXDentista where cd_dentista = ' + QueryOrcamentosDentista.AsString + ' and ''' + QueryOrcamentosData_Conferencia.AsString + ''' between dtini and dtfim + '' 23:59''','cd_tabela');

             QueryOrcamentos.Post;
             QueryOrcamentos.Close;
             QueryOrcamentos.Open;

             with QueryOrcamentos do
               begin
                 Close;
                 SQL[1] := ('where Data_Hora = :Data_Hora and Operador_Cadastro = :Operador_Cadastro');
                 Params[0].DataType := ftDateTime;
                 Params[0].ParamType := ptInput;
                 Params[1].DataType := ftInteger;
                 Params[1].ParamType := ptInput;
                 ParamByName('Data_Hora').asDateTime := Data_Grav;
                 ParamByName('Operador_Cadastro').asInteger := Senha.Codigo_Operador;
                 Open;
               end;

             QueryItensOrcamentos.Insert;
             QueryItensOrcamentosOrcamento.AsInteger        := QueryOrcamentosNumero.AsInteger;
             QueryItensOrcamentosServico.AsInteger          := QueryManutencaoServico.AsInteger;
             QueryItensOrcamentosQuantidade.AsInteger       := 1;
             QueryItensOrcamentosindiceTabPagDentista.AsInteger := getTabelaNovaPagDentista(QueryManutencaoDentista.AsString,QueryManutencaoServico.AsString);
             AchaValor2(QueryManutencaoDentista.AsString,QueryItensOrcamentosindiceTabPagDentista.AsString);
             AchaCobertura;
             QueryItensOrcamentosValor.AsCurrency           := Valor_Servico;
             QueryItensOrcamentosValor_Bruto.AsCurrency     := Valor_Bruto;

             QueryItensOrcamentosValor_Dentista.AsCurrency  := Valor_Dentista;
             QueryItensOrcamentosValor_Protetico.AsCurrency := Valor_Protetico;
             QueryItensOrcamentos.Post;

             QueryOrcamentos.close; // necessário por causa da trigger na itens orçamento senão da erro coud'not edit another user
             QueryOrcamentos.Open;
             QueryOrcamentos.Edit;
             {coloca aqui porque a rotina de achavalor2 antes das tabelas era calclulada antes de gravar o orcamento}
             QueryOrcamentosTotal.AsCurrency              := Valor_Servico;
             QueryOrcamentosTotal_Bruto.AsCurrency        := Valor_Bruto;
             QueryOrcamentosTotal_Desconto.AsCurrency     := Valor_Servico;
             QueryOrcamentosTotal_Dentista.AsCurrency     := Valor_Dentista;
             QueryOrcamentosTotal_Protetico.AsCurrency    := Valor_Protetico;

             QueryOrcamentosAutorizado.asBoolean := true;
             QueryOrcamentos.Post;



             QueryFaturamento.Insert;
             QueryFaturamentoseq_periodo_fat.AsInteger := ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsInteger;
             if EditCodigo.Text <> '' then
             begin
               if MessageDlg('Cancela o envio do Documento para o Banco ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 QueryFaturamentoEmitido_Documento.asBoolean := True
               else
                 QueryFaturamentoEmitido_Documento.asBoolean := False;
             end
             else
                QueryFaturamentoEmitido_Documento.asBoolean := False;
             QueryFaturamentoNumero_Titulo.asInteger     := StrToInt(Numero_Titulo);
             QueryFaturamentoDesdobramento.asString      := 'T'; // M de Manutenção
             QueryFaturamentoTipo_Documento.asString     := '5'; //QueryTipoDocumentoCodigo.asString;
             QueryFaturamentoCodigo_Contratante.asInteger:= QueryUsuariosAuxCodigo.asInteger;
             QueryFaturamentoData_Emissao.asDateTime     := Data_Base;

             QueryFaturamentoData_Vencimento.asDateTime  := EncodeDate(Ano, Mes, Dia); // Monta Data de Vencimento
             if QueryManutencaoGera_Boleto.Value then
                QueryFaturamentoTipo_Cobranca.asInteger  := 10
             else
                QueryFaturamentoTipo_Cobranca.asInteger  := QueryManutencaoForma_Cobranca.AsInteger;
             QueryFaturamentoExportado_Receber.asBoolean := False;
             QueryFaturamentoValor.asCurrency            := Valor_Servico;
             QueryFaturamentoOrcamento.asInteger         := QueryOrcamentosNumero.AsInteger;
             QueryFaturamentoCodigo_Usuario.asInteger    := QueryUsuariosAuxCodigo_Completo.asInteger;
             QueryFaturamentoCidade.AsString             := QueryManutencaoCidade_Comercial.AsString;
             QueryFaturamentoParcela.AsInteger           := Parcela;
             //QueryFaturamentoEmitido_Documento.AsBoolean := False;
             GravaFaturamento;
             if QueryFaturamentoEmitido_Documento.asBoolean then // se ja´enviou doc para o banco
             // então processa os eventos.
                PAtualizaEventFatFull(QueryFaturamentoCodigo_Contratante.AsString,0,0);
             Application.ProcessMessages;
             ProgressBarGera.Stepit;
             ContTitulos := ContTitulos + 1;
             Next;
           end;
       end;
     ProgressBarGera.Position := ProgressBarGera.Max;
     dm.execmd('update parametro set vl_parametro = ''N'' where cd_parametro = ''PISOM''');
     ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Títulos !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
     QueryFaturamento.Close;
     QueryFaturamento.Open;

     if dm.execmd('select count(numero_titulo) c from faturamento where seq_periodo_fat = ' + ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString,'c' ) <> '0' then
     begin
        PAtualizaPeriodoFat(ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString);
        PAtualizaEventoFat(1,0); // atualiza o evento processado para Efetivado
     end
     else
       if ADOQueryPeriodoFat.Active then
        ADOQueryPeriodoFat.delete;
end;



procedure TFormGeraReceber.AchaValor2(cdDentista,indiceTabPagDentista : string);
begin
     Valor_Servico := 0;
     VUsuario := IntToStr(QueryManutencaoUsuario.AsInteger);
//     Usuario := Copy(Usuario,1, (Length(Usuario) - 1));
     VUsuario := dm.executacomando('select codigo c from usuario where codigo_completo = ' + VUsuario ,'c');

     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + VUsuario);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';         
         Open;
       end;

     with QueryPrecoContratante2 do
        begin
          Close;
          ParamByName('Codigo_Contratante').asInteger := QueryContratanteCodigo.asInteger;
          Open;
          Last;
          if RecordCount = 0 then
             Verifica_PrecoGrupo2(cdDentista,indiceTabPagDentista)
          else
             with QueryValorProcedimento do
               begin
                 Close;
                 ParamByName('Tabela').asInteger := QueryPrecoContratante2TabelaPreco.asInteger;
                 ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
                 Open;
                 Valor_Servico := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 Valor_Bruto := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 AchaVrDentistaProtetico(QueryItensOrcamentosServico.AsString,QueryOrcamentoscd_tabela.AsString,cdDentista,indiceTabPagDentista);
                 // alternativa criada para o "Plano de 36 meses - COD 1301"
                 if ((parcela <= 5) and (QueryManutencaoServico.asInteger = 1301)) then
                 begin
                     Valor_Dentista := Valor_Protetico;
                     Valor_Protetico := 0;
                 end;
               end; // Neste momento tenho o codigo do servico e da tabela
                  // alternativa criada para o "Plano de 36 meses - COD 1301"
{                 if ((parcela <= 5) and (QueryManutencaoServico.asInteger = 1301)) then begin

                     Valor_Dentista := QueryValorProcedimentoValor_Protetico.asCurrency;
                     Valor_Protetico := 0;
                 end
                 else begin
                     Valor_Dentista := QueryValorProcedimentoValor_Dentista.asCurrency;
                     Valor_Protetico := QueryValorProcedimentoValor_Protetico.asCurrency;
                 end;
               end; // Neste momento tenho o codigo do servico e da tabela}

        end;
end;


procedure TFormGeraReceber.Verifica_PrecoGrupo2(cddentista,indiceTabPagDentista : string);
begin
     with QueryPrecoGrupo2 do
       begin
         Close;
         ParamByName('Grupo_Contratante').asInteger := QueryContratanteGrupo_Contratante.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Verifica_PrecoPlano2(cdDentista,indiceTabPagDentista)
         else
             with QueryValorProcedimento do
               begin
                 Close;
                 ParamByName('Tabela').asInteger := QueryPrecoGrupo2TabelaPreco.asInteger;
                 ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
                 Open;
                 Valor_Servico := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 Valor_Bruto := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 AchaVrDentistaProtetico(QueryItensOrcamentosServico.AsString,QueryOrcamentoscd_tabela.AsString,cdDentista,indiceTabPagDentista);
                 // alternativa criada para o "Plano de 36 meses - COD 1301"
                 if ((parcela <= 5) and (QueryManutencaoServico.asInteger = 1301)) then
                     Valor_Dentista := Valor_Protetico;

                 // alternativa criada para o "Plano de 36 meses - COD 1301"
                 {if ((parcela <= 5) and (QueryManutencaoServico.asInteger = 1301)) then
                     Valor_Dentista := QueryValorProcedimentoValor_Protetico.asCurrency
                 else
                     Valor_Dentista := QueryValorProcedimentoValor_Dentista.asCurrency;
                 Valor_Protetico := QueryValorProcedimentoValor_Protetico.asCurrency;}
               end; // Neste momento tenho o codigo do servico e da tabela
       end;
end;

procedure TFormGeraReceber.Verifica_PrecoPlano2(cdDentista,indiceTabPagDentista: string);
begin
     with QueryPrecoPlano2 do
       begin
         Close;
         ParamByName('Codigo_Plano').asInteger := QueryContratantePlano.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
//            MessageDlg('Não foi Possível Encontrar um Valor p/ o Serviço !!!!', mtError, [mbOk], 0)
         else
             with QueryValorProcedimento do
               begin
                 Close;
                 ParamByName('Tabela').asInteger := QueryPrecoPlano2TabelaPreco.asInteger;
                 ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
                 Open;
                 Valor_Servico := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;
                 Valor_Bruto := QueryValorProcedimentoValor_Cobranca.asCurrency * QueryPreferenciasValor_US.asFloat;;


                 AchaVrDentistaProtetico(QueryItensOrcamentosServico.AsString,QueryOrcamentoscd_tabela.AsString,cdDentista,indiceTabPagDentista);
                 // alternativa criada para o "Plano de 36 meses - COD 1301"
                 if ((parcela <= 5) and (QueryManutencaoServico.asInteger = 1301)) then
                     Valor_Dentista := Valor_Protetico;

{                 // alternativa criada para o "Plano de 36 meses - COD 1301"
                 if ((parcela <= 5) and (QueryManutencaoServico.asInteger = 1301)) then
                     Valor_Dentista := QueryValorProcedimentoValor_Protetico.asCurrency
                 else
                     Valor_Dentista := QueryValorProcedimentoValor_Dentista.asCurrency;
                 Valor_Protetico := QueryValorProcedimentoValor_Protetico.asCurrency;}
               end; // Neste momento tenho o codigo do servico e da tabela
       end;
end;

procedure TFormGeraReceber.AchaCobertura;
begin
     with QueryUsuarios do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryContratanteCodigo.asInteger;
         ParamByName('Inclusao').asDateTime := Data_Base; // Data do ultimo dia mes anterior
         Open;
       end;

     with QueryCoberturaContratante do
        begin
          Close;
          ParamByName('Codigo_Contratante').asInteger := QueryUsuariosContratante_Titular.asInteger;
          Open;
          if RecordCount = 0 then
             Verifica_CoberturaGrupo
          else
             with QueryCoberturaProcedimento do
               begin
                 Close;
                 ParamByName('Tabela').asInteger := QueryCoberturaContratanteTabela_Cobertura.asInteger;
                 ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
                 Open;

                 while not eof do
                   if (Data_Base - QueryUsuariosData_Inclusao.asDateTime) >= QueryCoberturaProcedimentoDias.asInteger then
                      begin
                        Valor_Servico := (Valor_Servico - (Valor_Servico * QueryCoberturaProcedimentoPercentual.asFloat / 100));
                        break;
                      end
                   else
                      Next;
               end; // Neste momento tenho o codigo do servico e da tabela
        end;
end;

procedure TFormGeraReceber.Verifica_CoberturaGrupo;
begin
     with QueryCoberturaGrupo do
       begin
         Close;
         ParamByName('Grupo_Contratante').asInteger := QueryContratanteGrupo_Contratante.asInteger;
         Open;
         if RecordCount = 0 then
            Verifica_CoberturaPlano
         else
             with QueryCoberturaProcedimento do
                begin
                  Close;
                  ParamByName('Tabela').asInteger := QueryCoberturaGrupoTabela_Cobertura.asInteger;
                  ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
                  Open;
                  while not eof do
                    if (Data_Base - QueryUsuariosData_Inclusao.asDateTime) >= QueryCoberturaProcedimentoDias.asInteger then
                       begin
                         Valor_Servico := (Valor_Servico - (Valor_Servico * QueryCoberturaProcedimentoPercentual.asFloat / 100));
                         break;
                       end
                    else
                       Next;
                end;
       end;
end;

procedure TFormGeraReceber.Verifica_CoberturaPlano;
begin
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
                  ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
                  Open;
                  while not eof do
                    if (Data_Base - QueryUsuariosData_Inclusao.asDateTime) >= QueryCoberturaProcedimentoDias.asInteger then
                       begin
                         Valor_Servico := (Valor_Servico - (Valor_Servico * QueryCoberturaProcedimentoPercentual.asFloat / 100));
                         break;
                       end
                    else
                       Next;
                end;
       end;end;

procedure TFormGeraReceber.BitBtnPesquisarClick(Sender: TObject);
begin
   case ComboBoxTipoCobranca.ItemIndex of
      0,2 : begin
              Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
              FormPesquisaUsuarios.ShowModal;
              EditCodigo.Text := PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.asString;
              BitBtnProcessar.SetFocus;
              FormPesquisaUsuarios.Free;
            end;
      1   : begin
              Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
              FormPesquisaContratante.ShowModal;
              EditCodigo.Text := PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asString;
              BitBtnProcessar.SetFocus;
              FormPesquisaContratante.Free;
          end;
   end;
end;

Function TFormGeraReceber.GetCdContratante : String;
begin
   if ComboBoxTipoCobranca.ItemIndex  in [0,4] then
   begin
      Dm.QueryGenerica.Close;
      Dm.QueryGenerica.sql.clear;
      Dm.QueryGenerica.sql.add('select codigo from usuario where codigo_completo = ' + EditCodigo.text);
      Dm.QueryGenerica.Open;
      Result := Dm.QueryGenerica.FieldByName('codigo').AsString;
   end
   else
      Result := EditCodigo.text;
end;

procedure TFormGeraReceber.Filtra(lg_contasAReceber: boolean);
begin
     with QueryFaturamento do
       begin
         Close;
         sql[1] := ' where Tipo_Cobranca is not null '; // alterei em 29/06/2005 esta linha é a linha original da query
         // devido ao erro que estava aparecendo
         //Não Existe Registros com Débitos do Bradesco para Processamento do Faturamento !!! [ENTER]

         SQL[2] := ' and Data_Vencimento between :Vencimento and :Vencimento2';
         Params[0].DataType  := ftDateTime;
         Params[0].ParamType := ptInput;
         Params[1].DataType  := ftDateTime;
         Params[1].ParamType := ptInput;
         ParamByName('Vencimento').asDateTime  := EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditInicial.Text),EditMes.text,EditAno.text)); // Monta Data de Vencimento;
         ParamByName('Vencimento2').asDateTime := EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditFinal.Text)  ,EditMes.Text,EditAno.Text)); // Monta Data de Vencimento
         ParamByName('Desdobramento').asString := Desdobr;

         case RadioGroupTp.ItemIndex of
            0 : sql[1] := sql[1] + ' and empresa = 1';
            1 : sql[1] := sql[1] + ' and empresa = 0';
            2 : sql[1] := 'where Tipo_Cobranca is not null ';
         end;

         if EditCodigo.Text <> '' then
           ParamByName('Contratante').asString := GetCdContratante //StrToInt(EditCodigo.Text)
         else
           SQL[4] := '';

         case ComboBoxCidade.ItemIndex of
            0: SQL[5] := '';
         else
         begin
            SQL[5] := 'and cidade = :Cidade';
            Parambyname('Cidade').asString := ComboBoxCidade.Text;
         end
         end;
         if lg_contasAReceber then // solic. por Kelly em 29/06/09 , para evitar que titulos gerados manualmentes
         // e pagos anteciapdamente na primeira parcela não seja enviados para o contas a receber.
            sql[5] := sql[5] + ' and Exportado_Receber = 0 ';
            memo1.lines.add(QueryFaturamento.text);
         Open;
       end;
end;

procedure TFormGeraReceber.Seleciona_Conta;
begin
  with QueryContas do
    begin
      close;
      if Boleto then begin
         SQL[1] := 'where boleto = 1';
         SQL[2] := '';
      end
      else begin
         Parambyname('Cod_Banco').asString := Cod_Banco;
         SQL[2] := '';
      end;
      open;
      if recordcount = 0 then
        begin
          MessageDlg('Não existe conta cadastrada para a operação solicitada !', mtInformation,[mbOk], 0);
          exit;
          Banco_OK := False;
        end;

      if recordcount > 1 then
        begin
          Application.CreateForm(TFormPesquisaContas_Bancos, FormPesquisaContas_Bancos);
          FormPesquisaContas_Bancos.ShowModal;
          Cod_Banco    := Trim(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasBanco.AsString);
          Titular_Emp  := Trim(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasTitular.AsString);
          Agencia_Emp  := Trim(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasAgencia.AsString);
          Numero_Emp   := Trim(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasNumero_Conta.AsString);
          CGC_Emp      := Trim(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasCGC.AsString);
          Convenio_Emp := Trim(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasConvenio.AsString);
          Nome_Banco   := Trim(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasNome_Banco.AsString);
          VPasta       := FormPesquisaContas_Bancos.QueryContasPasta.AsString;
          Mensagem     := Trim(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasMensagem_Header.AsString);
          Espaco_Header:= PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasEspaco_Header.AsInteger;
          Debito_Tipo  := IntToStr(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasDebito_Tipo.AsInteger);
          //dar update na tabela banco coluna debito_sequencial
          Debito_Seq   := IntToStr(PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasDebito_Sequencial.AsInteger);
          Numero_Banco := PesquisaContasBanco.FormPesquisaContas_Bancos.QueryContasBoleto_Sequencial.AsInteger;
          VLayoutBanco := FormPesquisaContas_Bancos.QueryContasLayout.AsString;
          //VVrJurosDia  := FormPesquisaContas_Bancos.QueryContasJurosDiario.AsString;
          VMsg1Lote    := FormPesquisaContas_Bancos.QueryContasMsg1.AsString;
          VMsg2Lote    := FormPesquisaContas_Bancos.QueryContasMsg2.AsString;
          Banco_OK     := True;
          FormPesquisaContas_Bancos.QueryContas.Close;
          FormPesquisaContas_Bancos.Free;
        end
      else
        begin
          Cod_Banco    := Trim(QueryContasBanco.AsString);
          Titular_Emp  := Trim(QueryContasTitular.AsString);
          Agencia_Emp  := Trim(QueryContasAgencia.AsString);
          Numero_Emp   := Trim(QueryContasNumero_Conta.AsString);
          CGC_Emp      := Trim(QueryContasCGC.AsString);
          Convenio_Emp := Trim(QueryContasConvenio.AsString);
          Nome_Banco   := Trim(QueryContasNome_Banco.AsString);
          VPasta       := QueryContasPasta.AsString;
          VLayoutBanco := QueryContasLayout.AsString;
          //VVrJurosDia  := QueryContasJurosDiario.AsString;
          VMsg1Lote    := QueryContasMsg1.AsString;
          VMsg2Lote    := QueryContasMsg2.AsString;
          Mensagem     := Trim(QueryContasMensagem_Header.AsString);
          Espaco_Header:= QueryContasEspaco_Header.AsInteger;
          Debito_Tipo  := IntToStr(QueryContasDebito_Tipo.AsInteger);
          Debito_Seq   := IntToStr(QueryContasDebito_Sequencial.AsInteger);
          Numero_Banco := QueryContasBoleto_Sequencial.AsInteger;

          Banco_OK     := True;
        end;
    end;
    if cod_banco = '756'  then
      cdConvenioCNAB := ' ';
end;
{
 procedure TFormGeraReceber.AchaValorSeato;
begin
     Valor_Titulo  := 0;
     Perc_desconto := 0;
      with QueryUsuarios do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryContratanteCodigo.asInteger;
         ParamByName('Inclusao').asDateTime := Data_Base; // Data do ultimo dia mes anterior
         Open;
         Numero_Usuarios := 0;
         // Pega o Número de Usuários do Contrato
         while not eof do
           begin
             Numero_Usuarios := Numero_Usuarios + 1;
             Next;
           end;
         First;
         Verifica_Desconto;
         while not eof do
           begin
             Valor_Usuario := 0;
             Perc_Desconto := 0;
             with QueryContratanteAux do
               begin
                 close;
                 parambyname('Contrato').AsInteger := QueryUsuariosCodigo.asInteger;
                 open;
                 if QueryContratanteAuxPerc_Desconto.AsInteger <> 0 then
                    Perc_Desconto := QueryContratanteAuxPerc_Desconto.asInteger;
               end;
             with QueryPrecoContratante do
               begin
                 Close;
                 ParamByName('Contratante').asInteger := QueryUsuariosCodigo.asInteger;
                 ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
                 Open;
                 Last;
                 if RecordCount = 0 then
                    Verifica_PrecoGrupo
                 else
                    begin
                      Valor_Titulo  := Valor_Titulo + QueryPrecoContratanteValor.asCurrency;
                      Valor_Usuario := QueryPrecoContratanteValor.asCurrency;
                      if Valor_Desconto <> 0 then
                         begin
                           Valor_Titulo  := Valor_Titulo - Valor_Desconto;
                           Valor_Usuario := QueryPrecoContratanteValor.asCurrency - Valor_Desconto;
                         end;
                    end;
               end;
             Verifica_Acrescimo; // Verifica se o Plano possui Acréscimo
             if Tem_Acrescimo then
                begin
                  Valor_Acrescimo := (Valor_Usuario * QueryAcrescimoPercentual.asFloat) / 100;
                  Valor_Titulo := Valor_Titulo + (int(Valor_Acrescimo * 100) / 100);
                end;
             if ((Perc_desconto <> 0) and (QueryUsuariosGrau_Parentesco.AsInteger = 1)) then
               begin
                 //Valor_AuxDesc := (Valor_Usuario * Perc_desconto) / 100;
                 Valor_AuxDesc := (Valor_Titulo * Perc_desconto) / 100;
                 Valor_Titulo  := Valor_Titulo - Valor_AuxDesc;
                 Valor_Usuario := Valor_Usuario - Valor_AuxDesc;
               end;
             Next;
           end;
       end;
end;
}
procedure TFormGeraReceber.ProcessaMensalidade;
var VTempo : string[35];
 begin
     VTempo := 'Início ' + TimeToStr(now);
     with QueryContratante do
       begin
         Close;
         // Filtro de Vencimento
         case RadioGroupTp.ItemIndex of
            0 : sql[2] := 'where Exclusao is null and lg_geraFat = 1 and contratante.empresa = 1';
            1 : sql[2] := 'where Exclusao is null and lg_geraFat = 1 and contratante.empresa = 0';
            2 : sql[2] := 'where Exclusao is null and lg_geraFat = 1  ';
         end;

         if EditCodigo.Text <> '' then
           begin
             SQL[4] := 'and Vencimento between :Vencimento1 and :Vencimento2';
             SQL[6] := 'and Contratante.Codigo = ' + EditCodigo.Text;
           end
         else
           begin
             SQL[4] := 'and Vencimento between :Vencimento1 and :Vencimento2';
             SQL[6] := '';
           end;

         case ComboBoxCidade.ItemIndex of
            0: SQL[7] := '';
         else
            SQL[7] := 'and Contratante.Cidade_Comercial = :Cidade';
            Parambyname('Cidade').asString := ComboBoxCidade.Text;
         end;

         Params[0].DataType  := ftInteger;
         Params[0].ParamType := ptInput;
         Params[1].DataType  := ftInteger;
         Params[1].ParamType := ptInput;
         ParamByName('Data1').AsDateTime      := StrToDate(MaskEditEmissao.Text);
         ParamByName('Vencimento1').asInteger := StrToInt(EditInicial.Text);
         ParamByName('Vencimento2').asInteger := StrToInt(EditFinal.Text);
         Open;
         try


            ProgressBarGera.Max := RecordCount;
         except


           ProgressBarGera.Max := 100;
         end;

         Aux := ProgressBarGera.Max div 10;
         ProgressBarGera.Step := 1;
         First;

         if not (eof and bof) then
            PIncluiPeriodoFat
         else
         begin
            ShowMessage('não foi encontrado nenhum contratante para geração de título com os parâmetros passado');
            exit;
         end;
         while not eof do
           begin
             Mes := StrToInt(EditMes.Text);
             Ano := StrToInt(EditAno.Text);

             if Mes < 10 then
                Numero_Titulo := QueryContratanteCodigo.asString + '0' + IntToStr(Mes) + Copy(IntToStr(Ano), 3, 2)
             else
                Numero_Titulo := QueryContratanteCodigo.asString + IntToStr(Mes) + Copy(IntToStr(Ano), 3, 2);

            with SPCalculaParcela do
               begin
                  parambyname('@Cliente').asInteger := QueryContratanteCodigo.asInteger;
                  parambyname('@Desd').asString     := 'M';
                  execproc;
                  Parcela := parambyname('@Parcela').asInteger + 1;
               end;

              QueryFaturamento.Open;
              // verifica se existe algum título com mesmo número e desdobramento, se existe não gera..
              if dm.ExecutaComando('select Numero_Titulo n from faturamento where Numero_Titulo = ' + Numero_Titulo + ' and desdobramento = ''M''','n' ) <> '' then
              begin
                 next;
                 continue;
              end;
              QueryFaturamento.Insert;
              //if EditCodigo.Text <> '' then
              //begin
              //  if MessageDlg('Cancela o envio do Documento para o Banco ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
              //    QueryFaturamentoEmitido_Documento.asBoolean := True
              //  else
              //    QueryFaturamentoEmitido_Documento.asBoolean := False;
              //end
              //else
              //   QueryFaturamentoEmitido_Documento.asBoolean := False;
              QueryFaturamentoEmitido_Documento.asBoolean := lgCancelEnvDoc;
              QueryFaturamentoseq_periodo_fat.AsInteger := ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsInteger;
              QueryFaturamentoNumero_Titulo.asInteger      := StrToInt(Numero_Titulo);
              QueryFaturamentoDesdobramento.asString       := 'M'; // M de Mensalidade
              QueryFaturamentoTipo_Documento.asString      := '1'; //QueryTipoDocumentoCodigo.asString;
              QueryFaturamentoCodigo_Contratante.asInteger := QueryContratanteCodigo.asInteger;
              QueryFaturamentoData_Emissao.asDateTime      := StrToDate(MaskEditEmissao.Text);
              //Dia := QueryContratanteVencimento.asInteger;
              Dia := VerifDia(QueryContratanteVencimento.asInteger,EditMes.Text,EditAno.text);
              QueryFaturamentoData_Vencimento.asDateTime   := EncodeDate(Ano, Mes, Dia); // Monta Data de Vencimento

              QueryFaturamentoTipo_Cobranca.asString       := QueryContratanteForma_Cobranca.asString;
              QueryFaturamentoExportado_Receber.asBoolean  := False;
              //QueryFaturamentoEmitido_Documento.asBoolean  := False;
              QueryFaturamentoOrcamento.AsString           := '';
              QueryFaturamentoCidade.AsString              := QueryContratanteCidade_Comercial.AsString;
              QueryFaturamentoParcela.AsInteger            := Parcela;

              if QueryContratanteForma_Cobranca.asString <> '10' then
                 QueryFaturamentoTipo_Pagamento.AsInteger := 6
              else
                 QueryFaturamentoTipo_Pagamento.AsInteger := 5;

//              if Senha.Cod_Empresa = 2 then
//                 AchaValorSeato
//              else
              PAchaValorMensalidade; // Monta Valor do Titulo
              // 15/12/07 -- alterei de <> 0 para > 0, pode acontecer de titulos negativos, devido ao desconto concedido
              // de acordo com número de usuarios, antes dava-se desconto paenas para plano vip(PF), agora o desconto é
              // concedido para PJ, exemplo de mensalidade negativa 16877, só que este usuario nao recebe mensalidae e
              // sim o contratante titular empresa MH
              if Valor_Titulo > 0 then
                 begin
                   QueryFaturamentovr_complemento.AsCurrency := valor_complementoMens;
                   QueryFaturamentoValor.asCurrency := Valor_Titulo + valor_complementoMens;
                   QueryFaturamentovrSemMedicar.asCurrency := QueryFaturamentoValor.asCurrency;
                   if QueryContratantedesc_boleto.AsInteger <> 0 then
                   begin
                      Valor_AuxDesc := (QueryFaturamentoValor.asCurrency * QueryContratantedesc_boleto.AsCurrency) / 100;
                      QueryFaturamentoValor.asCurrency := QueryFaturamentoValor.asCurrency - Valor_AuxDesc;
                   end;

                   QueryFaturamentoValor.asCurrency := QueryFaturamentoValor.asCurrency + vrMedicarAux;
                   QueryFaturamentovrMedicar.AsCurrency := vrMedicarAux;
                   if not QueryContratantelg_comunicadoMedicarEnviado.AsBoolean then
                   begin
                      QueryFaturamentoLg_comunicadoMedicarEnviado.AsBoolean := true;
                      dm.execmd('update contratante set Lg_comunicadoMedicarEnviado = 1 where codigo = ' + QueryContratanteCodigo.AsString);
                   end;
                    //lg_comunicadoMedicarEnviado

                   // Buscar o desconto do contratante e aplicar sobre a variavel valor_titulo

//                   if senha.Cod_Empresa <> 2 then  begin

                   Verifica_Diferenca;
                   if QueryFaturamentoValor.asCurrency <> Valor_Anterior then
                     QueryFaturamentoAlteracao_Valor.asBoolean := True;
                   if QueryFaturamentoTipo_Cobranca.asInteger <> Cobranca_Anterior then
                     QueryFaturamentoAlteracao_Cobranca.asBoolean := True;
                   GravaFaturamento;
                   //showMessage('tirar00 chamar procedure SpRegistraDetalheMensalidade aqui');
                  if QueryFaturamentoEmitido_Documento.asBoolean then // se ja´enviou doc para o banco
                  // então processa os eventos.
                     PAtualizaEventFatFull(QueryFaturamentoCodigo_Contratante.AsString,0,0);

                   ContTitulos := ContTitulos + 1;
                   Application.ProcessMessages;
                   ProgressBarGera.Stepit;
                   
                 end
              else
                QueryFaturamento.Cancel;
              Next;
           end;
       end;

     ProgressBarGera.Position := ProgressBarGera.Max;
     if FormGeraReceber.tag <> 10 then
     begin
        FmRelVerifFatAnterior := TFmRelVerifFatAnterior.create(self);
        FmRelVerifFatAnterior.sp_verifFatAnterior.Close;
        FmRelVerifFatAnterior.sp_verifFatAnterior.ParamByName('@Dtini').AsString := DateToStr(EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditInicial.Text),EditMes.text,EditAno.text)));
        FmRelVerifFatAnterior.sp_verifFatAnterior.ParamByName('@DtFim').AsString := DateToStr(EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditFinal.Text)  ,EditMes.Text,EditAno.Text)));
        FmRelVerifFatAnterior.sp_verifFatAnterior.open;
        if not (FmRelVerifFatAnterior.sp_verifFatAnterior.eof and FmRelVerifFatAnterior.sp_verifFatAnterior.bof) then
        begin
        repeat
          until application.MessageBox(Pchar('ATENÇÃO !! após o processamento dessas mensalidades essa rotina verificou que no mês passado NÃO foram gerado títulos para alguns contratantes , clique em ok para visualizar estes títulos e verifique o porque da não geração desses títulos'),'Alerta',
                                     MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk;
           FmRelVerifFatAnterior.RLReport1.Preview();
        end;
       FmRelVerifFatAnterior.free;
        VTempo := VTempo + ' Término ' + TimeToStr(now);

        ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Títulos e ' + IntToStr(Erros) + ' erros !!!!' +
                  #13 + 'Fim de Processamento, Tecle [ENTER] !!!!' +
                  #13 + VTempo);
     end
     else
     begin

     end;
     QueryFaturamento.Close;
     QueryFaturamento.Open;
     PAtualizaPeriodoFat(ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString);
     PAtualizaEventoFat(1,0); // atualiza o evento processado para Efetivado
     Filtra(false);
end;

procedure TFormGeraReceber.ProcessaOrcamento;
begin
   with QueryReceberOrc do
      begin
         close;
         ParamByName('Vencimento').asDateTime  := EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditInicial.Text),EditMes.text,EditAno.text)); // Monta Data de Vencimento;
         ParamByName('Vencimento2').asDateTime := EncodeDate(StrToInt(EditAno.Text), StrToInt(EditMes.Text), VerifDia(StrToInt(EditFinal.Text)  ,EditMes.Text,EditAno.Text)); // Monta Data de Vencimento
         if editCodigo.Text <> '' then
            ParamByName('Usuario').asInteger := StrToInt(EditCodigo.Text)
         else
            SQL[5] := '';
         open;
         if not (eof and bof) then
            PIncluiPeriodoFat;
         First;

         ProgressBarGera.Max := 100;
         Aux := RecordCount div 10;
         ProgressBarGera.Step := 10;

         while not eof do
           begin
             QueryFaturamento.Insert;
             QueryFaturamentoseq_periodo_fat.AsInteger := ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsInteger;
             QueryFaturamentoNumero_Titulo.asInteger     := QueryReceberOrcNumero_Titulo.AsInteger;
             QueryFaturamentoDesdobramento.asString      := QueryReceberOrcDesdobramento.AsString;
             QueryFaturamentoTipo_Documento.asString     := QueryReceberOrcTipo_Documento.AsString;
             QueryFaturamentoCodigo_Contratante.asInteger:= QueryReceberOrcCodigo_Contratante.AsInteger;
             QueryFaturamentoData_Emissao.asDateTime     := Data_Base;
             QueryFaturamentoData_Vencimento.asDateTime  := QueryReceberOrcData_Vencimento.AsDateTime;
             QueryFaturamentoTipo_Cobranca.asInteger     := QueryReceberOrcTipo_Cobranca.AsInteger;
             QueryFaturamentoExportado_Receber.asBoolean := False;
             QueryFaturamentoEmitido_Documento.asBoolean := False;
             QueryFaturamentoValor.asCurrency            := QueryReceberOrcValor.AsCurrency;
             QueryFaturamentoOrcamento.asInteger         := QueryReceberOrcOrcamento.AsInteger;
             QueryFaturamentoCodigo_Usuario.asInteger    := QueryReceberOrcCodigo_Usuario.AsInteger;
             QueryFaturamentoTipo_Pagamento.AsInteger    := 6;
             GravaFaturamento;
             Application.ProcessMessages;
             ProgressBarGera.Stepit;
             ContTitulos := ContTitulos + 1;
             Next;
           end;
      end;
   ProgressBarGera.Position := ProgressBarGera.Max;
   ShowMessage('Foram gerados ' + IntToStr(ContTitulos) + ' Títulos !!!' + #13 + 'Fim de Processamento, Tecle [ENTER] !!!!');
   QueryFaturamento.Close;
   QueryFaturamento.Open;
   if ADOQueryPeriodoFat.Active then
      PAtualizaPeriodoFat(ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString);
   PAtualizaEventoFat(1,0); // atualiza o evento processado para Efetivado
end;

procedure TFormGeraReceber.ComboBoxTipoCobrancaExit(Sender: TObject);
begin
   case ComboBoxTipoCobranca.ItemIndex of
      0 : begin  // Manutenção
            LabelContratante.Caption := 'Usuario';
            Desdobr := 'T';
          end;
      1 : begin // Mensalidade
            LabelContratante.Caption := 'Contratante';
            Desdobr := 'M';
          end;
      2 : begin //Orcamento
            LabelContratante.Caption := 'Usuario';
            Desdobr := 'O';
          end;
      3 : begin  // Reapresentação de Títulos não debitados anteriormente
            Desdobr := 'A';
          end;
      4 : Desdobr := 'M';
   else
      showmessage('É obrigatório o preenchimento do Tipo Documento');
      ComboBoxTipoCobranca.SetFocus;
      exit;
   end;
end;

procedure TFormGeraReceber.MontaHeader;
begin
   Registro := '';
   Registro := Registro + 'A'; // Código do Registro = 'A'
   Registro := Registro + '1'; // Identifica Código de Remessa 1 - Remessa / 2 - Retorno
   Codigo_Convenio := Convenio_Emp + StrAll(20 - length(convenio_emp), ' ');
   Registro := Registro + Codigo_Convenio; // Identifica Código do Convênio Informado pelo Banco
   Registro := Registro + copy(Titular_emp,1,20) + StrAll(20 - length(Titular_emp),' '); // Nome da Empresa
   Registro := Registro + copy(cod_Banco,1,3); // Código do Banco Banespa
   Registro := Registro + copy(Nome_Banco,1,20) + StrAll(20 - length(Nome_Banco),' '); // Nome do Banco
   Data_Atual := dm.Date;
   DecodeDate(Data_Atual, Ano, Mes, Dia);
   if Dia < 10 then
      Dia_Str := '0' + IntToStr(Dia)
   else
      Dia_Str := IntToStr(Dia);

   if Mes < 10 then
      Mes_Str := '0' + IntToStr(Mes)
   else
      Mes_Str := IntToStr(Mes);

   Registro := Registro + InttoStr(Ano) + Mes_Str + Dia_Str;
   Registro := Registro + StrAll(6 - length(Debito_Seq),'0') + Debito_Seq; // Número sequencial do arquivo gerado
   Registro := Registro + '04'; // Versão do Layout
   Registro := Registro + copy(Mensagem,1,20) + StrAll(length(Mensagem)- 20,' '); //'DEB/CRED AUTOMATO';
   Registro := Registro + StrAll(Espaco_Header,' '); // Espaços

   ContTitulos := ContTitulos + 1;
end;

procedure TFormGeraReceber.MontaHeaderCEF;
begin
   Registro := '';
   Registro := Registro + 'A'; // Código do Registro = 'A'
   Registro := Registro + '1'; // Identifica Código de Remessa 1 - Remessa / 2 - Retorno
//   Codigo_Convenio := //Convenio_Emp + StrAll(20 - length(convenio_emp), ' ');
   Registro := Registro + '015977110002        ';; // //Convenio debito CEF é diferente conv. Boleto 
   Registro := Registro + copy(Titular_emp,1,20) + StrAll(20 - length(Titular_emp),' '); // Nome da Empresa
   Registro := Registro + copy(cod_Banco,1,3); // Código do Banco Banespa
   Registro := Registro + copy(Nome_Banco,1,20) + StrAll(20 - length(Nome_Banco),' '); // Nome do Banco
   Data_Atual := dm.Date;
   DecodeDate(Data_Atual, Ano, Mes, Dia);
   if Dia < 10 then
      Dia_Str := '0' + IntToStr(Dia)
   else
      Dia_Str := IntToStr(Dia);

   if Mes < 10 then
      Mes_Str := '0' + IntToStr(Mes)
   else
      Mes_Str := IntToStr(Mes);

   Registro := Registro + InttoStr(Ano) + Mes_Str + Dia_Str;
   Registro := Registro + StrAll(6 - length(Debito_Seq),'0') + Debito_Seq; // Número sequencial do arquivo gerado
   Registro := Registro + '04'; // Versão do Layout
   Registro := Registro + rpad(mensagem,17,' ');
   Registro := Registro + lpad(copy(Agencia_Emp,1,4) + Numero_Emp,16,'0');
   Registro := Registro + 'P'; // A.12 - Identificação do Ambiente Cliente P - Produção
   Registro := Registro + 'P'; // A.13 - Identificação do Ambiente caixa   P - Produção
   Registro := Registro + StrAll(27,' '); // A.14 filler
   Registro := Registro + '000000'; // A.15 sequencial do registro
   Registro := Registro + ' '; // A.16 filler

   ContTitulos := ContTitulos + 1;
end;


procedure TFormGeraReceber.ComboBoxCidadeExit(Sender: TObject);
begin
   if ComboBoxCidade.ItemIndex = -1 then
      begin
         Showmessage('É Obrigatório o preenchimento do Campo Cidades !');
         ComboBoxCidade.SetFocus;
      end;
end;

procedure TFormGeraReceber.GravaContasBancarias;
begin
  with QueryContas do
    begin
      close;
      if Boleto then begin
         SQL[1] := 'where boleto = 1';
         SQL[2] := '';
      end
      else begin
         Parambyname('Cod_Banco').asString := Cod_Banco;
         SQL[2] := '';
      end;
      open;
      QueryContas.Locate('banco',cod_banco,[]);
      QueryContas.Edit;
      if Boleto then
         QueryContasBoleto_Sequencial.AsInteger := Numero_Banco 
      else
         QueryContasDebito_Sequencial.AsInteger := QueryContasDebito_Sequencial.AsInteger + 1;
      try
        QueryContas.Post;
        Debito_Seq   := QueryContasDebito_Sequencial.AsString;
        Numero_Banco := QueryContasBoleto_Sequencial.AsInteger;

      except
        begin
          ShowMessage('Erro na Gravação da Tabela Preferências');
          QueryContas.Cancel;
        end;
      end;
    end;
    QueryContas.Close;
end;

procedure TFormGeraReceber.BoletosBanespa;
begin
     case ComboBoxTipoCobranca.ItemIndex of
       0 : NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\Banespa\Envio\Man' + Dia_Str + Mes_Str + '.REM'; // Manutenção
       1 : NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\Banespa\Envio\Ban' + Dia_Str + Mes_Str + '.REM'; // Mensalidades
       2 : NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\Banespa\Envio\Orc' + Dia_Str + Mes_Str + '.REM'; // Orcamentos
       4 : NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\Banespa\Envio\Ban' + Dia_Str + Mes_Str + '.REM'; // desconto em folha
     end;

     if not DirectoryExists(ExtractFilePath(NomeArquivo)) then
      if not ForceDirectories(ExtractFilePath(NomeArquivo)) then
      begin
         ShowMessage('O Caminho "' + ExtractFilePath(NomeArquivo) + '" não existe ou não pode ser acessado, por favor verifique !');
         exit;
      end;

     AssignFile(Arquivo1, NomeArquivo);
     Rewrite(Arquivo1);

     MontaHeaderCobrancaBanespa;
     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro Header do Arquivo !!! [ENTER] !!!');
         exit;
       end;
     end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = 10');
         SQL[4] := ('and Emitido_Documento = 0');
         Open;
         //ShowMessage(IntToStr(RecordCount));
         First;

         while not eof do
            begin
              ContTitulos := ContTitulos + 1;
              MontaTitulosBanespa;
              Edit;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              QueryFaturamentoNumero_Banco.asString       := IntToStr(Numero_Banco);
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              Next;
            end;
        end;

     ContTitulos := ContTitulos + 1;
     MontaTrailerCobrancaBanespa;
     QueryFaturamento.Close;
     QueryFaturamento.Open;
     CloseFile(Arquivo1);
end;

procedure TFormGeraReceber.BoletosItau;
begin
     case ComboBoxTipoCobranca.ItemIndex of
       0 : NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\Itau\Envio\Man' + Dia_Str + Mes_Str + '.REM'; // Manutenção
       1 : NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\Itau\Envio\Ita' + Dia_Str + Mes_Str + '.REM'; // Mensalidades
       2 : NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\Itau\Envio\Orc' + Dia_Str + Mes_Str + '.REM'; // Orcamentos
       4 : NomeArquivo := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\Itau\Envio\Ita' + Dia_Str + Mes_Str + '.REM'; // desconto em folhta
     end;

     if not DirectoryExists(ExtractFilePath(NomeArquivo)) then
      if not ForceDirectories(ExtractFilePath(NomeArquivo)) then
      begin
         ShowMessage('O Caminho "' + ExtractFilePath(NomeArquivo) + '" não existe ou não pode ser acessado, por favor verifique !');
         exit;
      end;

     AssignFile(Arquivo1, NomeArquivo);
     Rewrite(Arquivo1);

     MontaHeaderCobrancaItau;
     Application.CreateForm(TFormMenssagemItau, FormMenssagemItau);
     FormMenssagemItau.ShowModal;
     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro Header do Arquivo !!! [ENTER] !!!');
         exit;
       end;
     end;

     with QueryFaturamento do
       begin
         Close;
         SQL[1] := ('where Tipo_Cobranca = 10');
         SQL[4] := ('and Emitido_Documento = 0');
         Open;
         ShowMessage(IntToStr(RecordCount));
         First;

         while not eof do
            begin
              ContTitulos := ContTitulos + 1;
              MontaTitulosItau;
              MenssagemItau;

              Edit;
              QueryFaturamentoNumero_Banco.AsInteger := Numero_Banco;
              QueryFaturamentoEmitido_Documento.asBoolean := True;
              try
                Post;
              except
                begin
                  ShowMessage('Ocorreu um erro na Regravação da Tabela de Faturamento !!!');
                  Cancel;
                end;
              end;
              Application.ProcessMessages;
              ProgressBarGera.Stepit;
              Next;
            end;
        end;
     ContTitulos := ContTitulos + 1;
     MontaTrailerCobrancaItau;
     QueryFaturamento.Close;
     QueryFaturamento.Open;
     CloseFile(Arquivo1);
end;

procedure TFormGeraReceber.MontaHeaderCobrancaItau;
begin
     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '0'; // Identificação do Registro de Header
     Registro_Titulo := Registro_Titulo + '1'; // Tipo de Operação
     Registro_Titulo := Registro_Titulo + 'REMESSA'; // Identificação do Movimento
     Registro_Titulo := Registro_Titulo + '01'; // Tipo do Serviço
     Registro_Titulo := Registro_Titulo + 'COBRANCA       '; // Identificação Extenso Tipo do Serviço
     Registro_Titulo := Registro_Titulo + StrAll(4 - length(Agencia_emp),'0') + copy(Agencia_Emp,1,4); //Agencia do Cedente
     Registro_Titulo := Registro_Titulo + '00'; // Complemento do Registro
     Registro_Titulo := Registro_Titulo + copy(Numero_emp,1,6) + StrAll(6 - length(Numero_emp),'0');   //Conta Corrente do Cedente
     Registro_Titulo := Registro_Titulo + '        '; // Complemento do Registro
     Registro_Titulo := Registro_Titulo + copy(Titular_emp,1,30) + StrAll(30 - length(Titular_emp),' '); // Nome da Empresa
     Registro_Titulo := Registro_Titulo + '341'; // Numero do Banco
     Registro_Titulo := Registro_Titulo + 'BANCO ITAU SA  '; // Nome do Banco
     Data_Str2       := FormatDateTime('ddmmyy', dm.Date); // Data da Emissão
     Registro_Titulo := Registro_Titulo + Data_Str2;
     Registro_Titulo := Registro_Titulo + StrAll(294, ' '); // Complemento do Registro
     Registro_Titulo := Registro_Titulo + '000001'; // Número Sequencial
end;

procedure TFormGeraReceber.MontaTitulosItau;
begin
     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '1'; // Identificação do Registro de Transação
     Registro_Titulo := Registro_Titulo + '02'; // Identificação da Inscrição
     Registro_Titulo := Registro_Titulo + StrAll(14 - length(CGC_Emp),'0') + CGC_Emp; // CGC Empresa
     Registro_Titulo := Registro_Titulo + StrAll(4 - length(Agencia_emp),'0') + copy(Agencia_Emp,1,4); //Agencia do Cedente & DAC
     Registro_Titulo := Registro_Titulo + '00'; //Complemento do Registro
     Registro_Titulo := Registro_Titulo + copy(Numero_emp,1,6) + StrAll(6 - length(Numero_emp),'0'); //Conta Corrente do Cedente
     Registro_Titulo := Registro_Titulo + StrAll(4, ' '); // Complemento do Registro
     Registro_Titulo := Registro_Titulo + StrAll(4, '0'); //Instrucao/Alegacao
     Registro_Titulo := Registro_Titulo + StrAll(25, ' '); // Indicacao do Titulo
     Registro_Titulo := Registro_Titulo + StrAll(8, '0'); // Nosso Número
     Registro_Titulo := Registro_Titulo + StrAll(13, '0'); // Qtde de Moeda
     Registro_Titulo := Registro_Titulo + '112'; // Número da Carteira
     Registro_Titulo := Registro_Titulo + StrAll(21, ' '); // Brancos
     Registro_Titulo := Registro_Titulo + 'I'; // Codigo da Carteira
     Registro_Titulo := Registro_Titulo + '01'; // Codigo da Ocorrencia
     Nosso_Numero2   := QueryFaturamentoNumero_Titulo.asString + StrAll(10 - Length(QueryFaturamentoNumero_Titulo.asString) , ' ');
     Registro_Titulo := Registro_Titulo + Nosso_Numero2; // Número do Título
     Data_Str2       := FormatDateTime('ddmmyy', QueryFaturamentoData_Vencimento.asDateTime);
     Registro_Titulo := Registro_Titulo + Data_Str2; // Data do Vencimento
     Valor_Auxiliar  := QueryFaturamentoValor.asCurrency + QueryPreferenciasValor_Cobranca.asCurrency;
     if Valor_Auxiliar > 1000 then
        Valor_Aux := StrAll(14 - Length(FloatToStrF(Valor_Auxiliar, ffNumber,11,2)),'0')
                     + FloatToStrF(Valor_Auxiliar,ffNumber,11,2)
     else
        Valor_Aux := StrAll(14 - Length(FloatToStrF(Valor_Auxiliar, ffNumber,11,2)),'0')
                     + FloatToStrF(Valor_Auxiliar,ffNumber,11,2);

     Numerico        := RetiraPontoDecimal(Valor_Aux);
     Registro_Titulo := Registro_Titulo + Numerico; // Valor do Título
     Registro_Titulo := Registro_Titulo + '341'; // Banco Cobrador
     Registro_Titulo := Registro_Titulo + StrAll(5, '0'); // Complemento do Registro
     Registro_Titulo := Registro_Titulo + '01'; // Espécie do Título
     Registro_Titulo := Registro_Titulo + 'A'; // Aceite Fixo 'A' = Sim
     Data_Str2       := FormatDateTime('ddmmyy', dm.Date); // Data da Emissão
     Registro_Titulo := Registro_Titulo + Data_Str2; // Data do Emissão
     Registro_Titulo := Registro_Titulo + '44'; // Primeira instrução de Cobrança
     Registro_Titulo := Registro_Titulo + '94'; // Segunda instrução de Cobrança
     Valor_Juros := Valor_Auxiliar * 0.0017;
     Valor_Aux   := StrAll(14 - Length(FloatToStrF(Valor_Juros, ffNumber,11,2)),'0')
                    + FloatToStrF(Valor_Juros,ffNumber,11,2);
     Numerico        := RetiraPontoDecimal(Valor_Aux);
     Registro_Titulo := Registro_Titulo + Numerico; // Valor dos Juros
     Registro_Titulo := Registro_Titulo + '000000'; // Data concessão descontos
     Registro_Titulo := Registro_Titulo + StrAll(13, '0'); // Valor dos Desconto
     Registro_Titulo := Registro_Titulo + StrAll(13, '0'); // Valor dos Iof
     Registro_Titulo := Registro_Titulo + StrAll(13, '0'); // Valor Abatimento
     Registro_Titulo := Registro_Titulo + '01'; // Codigo da Inscrição

     with QueryContratante do
       begin
         Close;
         SQL[2] := ('where Contratante.Codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
         SQL[3] := 'order by Contratante.Codigo';
         SQL[4] := '';
         SQL[5] := '';
         SQL[6] := '';
         SQL[7] := '';
         SQL[8] := '';
         Open;
       end;
     CPF_Str2        := RetiraTracoCPF(QueryContratanteCGC_CPF.asString);
     CPF_Str         := CPF_Str2;
     Registro_Titulo := Registro_Titulo + StrAll(14 - Length(CPF_Str) , '0') + CPF_Str; // CPF/CGC Contratante
     Codigo_Str      := StrAll(06 - Length(QueryContratanteCodigo.asString), '0') + QueryContratanteCodigo.asString;
     Registro_Titulo := Registro_Titulo + Codigo_Str + ' - ' + Copy(QueryContratanteNome.asString, 1, 21)
                        + StrAll(21 - Length(QueryContratanteNome.asString), ' '); // Nome do Sacado
     Registro_Titulo := Registro_Titulo + StrAll(10 , ' '); //Complemento de Registro
     if QueryContratanteTipo_Correspondencia.asString = 'Residêncial' then
        begin
          Logradouro      := QueryContratanteEndereco_Residencial.asString + ', ' +  QueryContratanteNumero_Res.AsString + ' ' + QueryContratanteComplemento_Res.asString;
          Registro_Titulo := Registro_Titulo + Logradouro + StrAll(40 - Length(Logradouro) , ' '); // Logradouro
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteBairro_Residencial.asString, 1, 12) + StrAll(12 - Length(QueryContratanteBairro_Residencial.asString) , ' '); // Bairro do Sacado
          if QueryContratanteCep_Residencial.asString <> '' then
             Cep_Str := RetiraTracoCep(QueryContratanteCep_Residencial.asString)
          else Cep_Str := StrAll(8 , ' ');
          if Cep_Str = '1400680' then
             Cep_Str := Cep_Str;
          Cep_Str         := Cep_Str + StrAll(08 - Length(Cep_Str) , ' ');
          Registro_Titulo := Registro_Titulo + Cep_Str; // Cep do Sacado
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteCidade_Residencial.asString, 1, 15) + StrAll(15 - Length(QueryContratanteCidade_Residencial.asString) , ' '); // Cidade do Sacado
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteEstado_Residencial.asString, 1, 02)  + StrAll(02 - Length(QueryContratanteEstado_Residencial.asString) , ' '); // Estado do Sacado
        end
     else
        begin
          Logradouro      := QueryContratanteEndereco_Comercial.asString + ', ' + QueryContratanteNumero_Com.asString + ' ' + QueryContratanteComplemento_Com.AsString;
          Registro_Titulo := Registro_Titulo + Logradouro + StrAll(40 - Length(Logradouro) , ' '); // Logradouro
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteBairro_Comercial.asString, 1, 12) + StrAll(12 - Length(QueryContratanteBairro_Comercial.asString) , ' '); // Bairro do Sacado
          if QueryContratanteCep_Comercial.asString <> '' then
             Cep_Str := RetiraTracoCep(QueryContratanteCep_Comercial.asString)
          else Cep_Str := StrAll(8 , ' ');
          if Cep_Str = '1400680' then
             Cep_Str := Cep_Str;
          Cep_Str         := Cep_Str + StrAll(08 - Length(Cep_Str) , ' ');
          Registro_Titulo := Registro_Titulo + Cep_Str; // Cep do Sacado
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteCidade_Comercial.asString, 1, 15) + StrAll(15 - Length(QueryContratanteCidade_Comercial.asString) , ' '); // Cidade do Sacado
          Registro_Titulo := Registro_Titulo + Copy(QueryContratanteEstado_Comercial.asString, 1, 02)  + StrAll(02 - Length(QueryContratanteEstado_Comercial.asString) , ' '); // Estado do Sacado
        end;


     Registro_Titulo := Registro_Titulo + StrAll(30 , ' '); // Sacador Avalista
     Registro_Titulo := Registro_Titulo + StrAll (4 , ' '); // Complemento de Registro
     Data_Str2       := FormatDateTime('ddmmyy', QueryFaturamentoData_Vencimento.asDateTime);
     Registro_Titulo := Registro_Titulo + Data_Str2; // Data do Mora
     Registro_Titulo := Registro_Titulo + StrAll(2 , ' '); // Qtde de Dias
     Registro_Titulo := Registro_Titulo + StrAll(1 , ' '); // Complemento de Registro
     Sequencial      := IntToStr(ContTitulos);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro

     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;
end;

procedure TFormGeraReceber.MontaTrailerCobrancaItau;
begin
     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '9'; // Identificação do Registro Trailer
     Registro_Titulo := Registro_Titulo + StrAll(393 , ' '); // Complemento do Registro
     Sequencial := IntToStr(ContTitulos);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro

     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;
end;

{procedure TFormGeraReceber.ReapresentacaoDebitos;
begin
   cont := 0;
   Data_Base := dm.Date;
   with QueryReapresentacao do
      begin
         close;
         parambyname('Data').asDatetime := StrToDate(MaskEditEmissao.text);
         open;
         first;
         while not eof do
           begin
              with QueryFaturamentoRe do
                 begin
                    close;
                    parambyname('titulo').asinteger := QueryReapresentacaonumero_titulo.AsInteger;
                    open;
                    edit;
                    QueryFaturamentoReData_Vencimento.AsDateTime := EncodeDate(StrToInt(EditAno.Text),
                               StrToInt(EditMes.Text), QueryReapresentacaovencimento.AsInteger); // Monta Data de Vencimento
                    QueryFaturamentoReEmitido_Documento.Value := false;
                    QueryFaturamentoReData_Emissao.AsDateTime := Data_Base;
                    try
                      QueryFaturamentoRe.Post;
                    except
                      begin
                        Cont := Cont - 1;
                        QueryErros.Insert;
                        QueryErrosNumero_Titulo.asInteger      := QueryFaturamentoReNumero_Titulo.asInteger;
                        QueryErrosDesdobramento.asString       := QueryFaturamentoReDesdobramento.asString;
                        QueryErrosTipo_Documento.asString      := QueryFaturamentoReTipo_Documento.asString;
                        QueryErrosData_Vencimento.AsDateTime   := QueryFaturamentoReData_Vencimento.asDateTime;
                        QueryErrosCodigo_Contratante.asInteger := QueryFaturamentoReCodigo_Contratante.asInteger;
                        QueryErrosCodigo_Usuario.asInteger     := QueryFaturamentoReCodigo_Usuario.asInteger;
                        QueryErrosValor.asCurrency             := QueryFaturamentoReValor.asCurrency;
                        QueryErros.Post;
                        Erros := Erros + 1;
                        QueryFaturamentoRe.Cancel;
                      end;
                    end;
                    cont := cont + 1;
                 end;
              next;
           end;
      end;
   showmessage('Total de títulos reapresentados : ' + IntToStr(cont));
end;}

procedure TFormGeraReceber.MenssagemItau;
Var VVr_Aux : String;
Begin
     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '7'; // Identificação do Registro de Transação
     Registro_Titulo := Registro_Titulo + 'KA4'; // Flash
     Registro_Titulo := Registro_Titulo + '01'; // Numero da 1º Linha

     Registro_Titulo := Registro_Titulo + '              ATE O VENCIMENTO, PREFERENCIALMENTE NO ITAU' + StrAll(22,' ') + FormatDateTime('dd/mm/yyyy', QueryFaturamentoData_Vencimento.asDateTime) + StrAll(39,' '); //Menssagem 1 cada linha tem 130 caracter

     Registro_Titulo := Registro_Titulo + '02'; // Numero da 2º Linha
     Registro_Titulo := Registro_Titulo + '              APOS O VENCIMENTO, SOMENTE NO ITAU' + StrAll(80,' ');

     Registro_Titulo := Registro_Titulo + '06'; // Numero da 3º Linha

     Registro_Titulo := Registro_Titulo + '  ' + FormatDateTime('dd/mm/yy',dm.Date); //Data do Documento
     Registro_Titulo := Registro_Titulo + '     ' + QueryFaturamentoNumero_Titulo.asString + StrAll(19 - length(QueryFaturamentoNumero_Titulo.asString), ' '); // Nº Do Documento
     Registro_Titulo := Registro_Titulo + 'DM         A           '; // Espécie Doc. e Aceite
     Registro_Titulo := Registro_Titulo + FormatDateTime('dd/mm/yy',dm.Date) + StrAll(63,' '); //Data do processamento

     ContTitulos := ContTitulos + 1;
     Sequencial      := IntToStr(ContTitulos);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro
     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;

     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '7'; // Identificação do Registro de Transação
     Registro_Titulo := Registro_Titulo + 'KA4'; // Flash
     Registro_Titulo := Registro_Titulo + '08'; // Numero da 1º Linha
     VVr_Aux  := FloatToStrF(QueryFaturamentoValor.asCurrency + QueryPreferenciasValor_Cobranca.asCurrency,ffNumber,11,2);
//     Registro_Titulo := Registro_Titulo + '          112               R$' + StrAll(60 - Length(VVr_Aux),' ') + VVr_Aux + StrAll(298,' ');//Carteira/Especia/Valor Do Documento
     Registro_Titulo := Registro_Titulo + '          112               R$' + StrAll(60 - Length(VVr_Aux),' ') + VVr_Aux + StrAll(38,' ');//Carteira/Especia/Valor Do Documento
     Registro_Titulo := Registro_Titulo + '04'; // número da 2º linha
     Registro_Titulo := Registro_Titulo + copy(Titular_emp,1,30) + StrAll(30 - length(Titular_emp),' '); // Nome da Empresa
     Registro_Titulo := Registro_Titulo + StrAll(098,' ');
     Registro_Titulo := Registro_Titulo + StrAll(130,' ');
     ContTitulos := ContTitulos + 1;
     Sequencial      := IntToStr(ContTitulos);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro
     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;


     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '7'; // Identificação do Registro de Transação
     Registro_Titulo := Registro_Titulo + 'KA4'; // Flash
     Registro_Titulo := Registro_Titulo + '10'; // Numero da 1º Linha

     Registro_Titulo := Registro_Titulo + 'INCLUSO NO VALOR DO DOCUMENTO R$ 1,50 REFERENTE' + StrAll(53, ' '); //Menssagem 1
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro

     Registro_Titulo := Registro_Titulo + '11'; // Numero da 2º Linha
     Registro_Titulo := Registro_Titulo + 'A DESPESAS ADMINIDTRATIVAS. PROCESSO 33902.091688/2001-11 13/12/2001.' + StrAll(31, ' '); //Menssagem 2
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro

     Registro_Titulo := Registro_Titulo + '12'; // Numero da 3º Linha
     Registro_Titulo := Registro_Titulo + StrAll(100, ' '); //Menssagem 3
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro
     ContTitulos := ContTitulos + 1;
     Sequencial      := IntToStr(ContTitulos);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro
     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;

     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '7'; // Identificação do Registro de Transação
     Registro_Titulo := Registro_Titulo + 'KA4'; // Flash
     Registro_Titulo := Registro_Titulo + '14'; // Numero da 1º Linha

     Registro_Titulo := Registro_Titulo + FormMenssagemItau.Menssagem1 + StrAll(100 - length(FormMenssagemItau.Menssagem1),' '); //Menssagem 1
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro

     Registro_Titulo := Registro_Titulo + '15'; // Numero da 2º Linha
     Registro_Titulo := Registro_Titulo + FormMenssagemItau.Menssagem2 + StrAll(100 - length(FormMenssagemItau.Menssagem2),' '); //Menssagem 2
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro

     Registro_Titulo := Registro_Titulo + '16'; // Numero da 3º Linha
     Registro_Titulo := Registro_Titulo + FormMenssagemItau.Menssagem3 + StrAll(100 - length(FormMenssagemItau.Menssagem3),' '); //Menssagem 3
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro
     ContTitulos := ContTitulos + 1;
     Sequencial      := IntToStr(ContTitulos);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro
     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;
End;
{
procedure TFormGeraReceber.MenssagemItau;
Begin
     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '7'; // Identificação do Registro de Transação
     Registro_Titulo := Registro_Titulo + 'KA4'; // Flash
     Registro_Titulo := Registro_Titulo + '02'; // Numero da 1º Linha

     Registro_Titulo := Registro_Titulo + 'INCLUSO NO VALOR DO DOCUMENTO R$ 1,50 REFERENTE' + StrAll(53, ' '); //Menssagem 1
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro

     Registro_Titulo := Registro_Titulo + '03'; // Numero da 2º Linha
     Registro_Titulo := Registro_Titulo + 'A DESPESAS ADMINIDTRATIVAS. PROCESSO 33902.091688/2001-11 13/12/2001.' + StrAll(31, ' '); //Menssagem 2
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro

     Registro_Titulo := Registro_Titulo + '04'; // Numero da 3º Linha
     Registro_Titulo := Registro_Titulo + StrAll(100, ' '); //Menssagem 3
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro
     Cont := Cont + 1;
     Sequencial      := IntToStr(Cont);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro
     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;

     Registro_Titulo := '';
     Registro_Titulo := Registro_Titulo + '7'; // Identificação do Registro de Transação
     Registro_Titulo := Registro_Titulo + 'KA4'; // Flash
     Registro_Titulo := Registro_Titulo + '06'; // Numero da 1º Linha

     Registro_Titulo := Registro_Titulo + FormMenssagemItau.Menssagem1 + StrAll(100 - length(FormMenssagemItau.Menssagem1),' '); //Menssagem 1
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro

     Registro_Titulo := Registro_Titulo + '07'; // Numero da 2º Linha
     Registro_Titulo := Registro_Titulo + FormMenssagemItau.Menssagem2 + StrAll(100 - length(FormMenssagemItau.Menssagem2),' '); //Menssagem 2
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro

     Registro_Titulo := Registro_Titulo + '08'; // Numero da 3º Linha
     Registro_Titulo := Registro_Titulo + FormMenssagemItau.Menssagem3 + StrAll(100 - length(FormMenssagemItau.Menssagem3),' '); //Menssagem 3
     Registro_Titulo := Registro_Titulo + StrAll(28, ' '); // Complemento do Registro
     Cont := Cont + 1;
     Sequencial      := IntToStr(Cont);
     Registro_Titulo := Registro_Titulo + StrAll(06 - Length(Sequencial), '0') + Sequencial; // Sequencial do Registro
     try
       writeln(Arquivo1, Registro_Titulo);
     except
       begin
         ShowMessage('Erro ao gravar Registro de Títulos !!! [ENTER] !!!');
         exit;
       end;
     end;
End;}

procedure TFormGeraReceber.EditCodigoChange(Sender: TObject);
begin
  if FormGeraReceber.tag = 10 then
     FormGeraReceber.caption := 'Central do Faturamento(Individual)'
  else
     FormGeraReceber.caption := 'Central do Faturamento';
end;

procedure TFormGeraReceber.EditCodigoExit(Sender: TObject);
begin
   if EditCodigo.Text <> '' then
   begin


      if FormGeraReceber.tag = 10 then
         begin
         if ComboBoxTipoCobranca.ItemIndex = 0 then // manutenção é codigo de usuário
            FormGeraReceber.caption := 'Central do Faturamento(Ind) - (' + dm.ExecutaComando('select isnull(max(nome),''cód. Usuário inválido'') a from usuario where codigo_completo = ' + EditCodigo.Text,'a') + ')'
         else
            FormGeraReceber.caption := 'Central do Faturamento(Ind) - (' + dm.ExecutaComando('select isnull(max(nome),''cód. contrat inválido'') a from contratante where codigo = ' + EditCodigo.Text,'a') + ')'
         end
      else
         if ComboBoxTipoCobranca.ItemIndex = 0 then // manutenção é codigo de usuário
            FormGeraReceber.caption := 'Central do Faturamento - (' + dm.ExecutaComando('select isnull(max(nome),''cód. Usuário inválido'') a from usuario where codigo_completo = ' + EditCodigo.Text,'a') + ')'
         else
         FormGeraReceber.caption := 'Central do Faturamento (' + dm.ExecutaComando('select isnull(max(nome),''cód. contrat inválido'') a from contratante where codigo = ' + EditCodigo.Text,'a') + ')';
   end;
end;

Function TFormGeraReceber.getVrTaxaBoleto : Real;
var vrAux : real;
begin
    if FmBaca.RadioGroup1.ItemIndex = 0 then //Cobrar Boleto de todos os Contrantantes
      vrAux := QueryPreferenciasValor_Cobranca.asCurrency
    else
    if FmBaca.RadioGroup1.ItemIndex = 1 then //Não cobrar Boleto
       vrAux := 0
    else //Cobrar Boleto apenas dos contratantes parametrizados para cobrar taxa de boleto
       if dm.QueryGenerica.FieldByName('lg_cobrarTaxaBoleto').AsBoolean then // a query generica eh aberta antes de chamar essa função(evita um trafego na rede)
          vrAux := QueryPreferenciasValor_Cobranca.asCurrency
       else
         vrAux := 0;

    result := vrAux;

end;

Function TFormGeraReceber.BoletoCnab240(cdConvenioCNAB : string): Integer;
Var VAux: String;
    Cn : TCnab756;
    Seq_Lote : Word;
    Ender : String[40];
    Bairro: String[15];
    Cep: String[15];
    Cidade: String[15];
    Uf, tpPessoa: String[2];
    codigoMulta: String[1]; // 1 cobra juros, 0 nao cobra juros
    VrMoraDia,VrMulta,VvrCobranca,vrTotal,vrMoraDiariaTitulo : Real;
    VQtDias,qtTotal : smallint;
    mensagem4,mensagem5 : string[40];
begin
    // Media paleativa para contornar o problema de empresas, que sao cadastradas com vencimento dia 19
    // para faturar apenas o dia 19, porem era necesses'ario entrar no arquivo e alterar a data de vencot para 20
    // e empresa nao paga tarifa entao entrava no valor e alterava um a um descontando o valor do boelto
    // tem que melhorar mas foi uma media paleativa...

    FmBaca := TFmBaca.create(self);
    FmBaca.ShowModal;

    try
       VQtDias := strToInt(FmBaca.Edit1.Text);
    except
       VQtDias := 0;
    end;


    Inc(Numero_Banco);

    QueryFaturamento.Close;
    QueryFaturamento.SQL[1] := ('where Tipo_Cobranca = 10');
    QueryFaturamento.SQL[4] := ('and Emitido_Documento = 0');
    case RadioGroupTp.ItemIndex of
       0 : QueryFaturamento.sql[1] := QueryFaturamento.sql[1] + ' and empresa = 1';
       1 : QueryFaturamento.sql[1] := QueryFaturamento.sql[1] + ' and empresa = 0';
    end;
    QueryFaturamento.Open;
    Result := QueryFaturamento.Recordcount;
    if Result = 0 then
      Exit;

    Cn := TCnab756.Create;
    VAux := QueryPreferenciasCaminho_Cobranca.asString + '\Boletos\' + VPasta + '\Envio';


     NomeArquivo := VAux + '\E' + Dia_Str + lpad(IntToStr(Numero_Banco),5,'0') + '.rem';

    if not DirectoryExists(ExtractFilePath(NomeArquivo)) then
      if not ForceDirectories(ExtractFilePath(NomeArquivo)) then
      begin
         ShowMessage('O Caminho "' + ExtractFilePath(NomeArquivo) + '" não existe ou não pode ser acessado, por favor verifique !');
         exit;
      end;
    AssignFile(Arquivo1, NomeArquivo);
    Rewrite(Arquivo1);

    VAux :=
    Cn.HeaderArq_cnab240(
                         cod_banco,
                         '0000',
                         '0',
                         '2',
                         CGC_Emp,
                         cdConvenioCNAB,
                         Copy(Agencia_Emp,1,length(Agencia_Emp) -1), //agencia sem o digito
                         Copy(Agencia_Emp,length(Agencia_Emp),1), //dígito da agência
                     {10}Convenio_Emp,
                         QueryPreferenciasnome_empresa.AsString,
                         Nome_Banco,
                     {15}'1', // remessa
                         FormatDatetime('ddmmyyyy',dm.Date),
                         FormatDatetime('hhnnss',dm.now),
                         IntToStr(Numero_Banco), {verificar se está incrementando}
                         '087',
                     {20}'0',
                     {26}' ',
                         ' '
                         );

    Writeln(arquivo1,VAux);
    VAux :=
    cn.HeaderLote_cnab240(
                          cod_banco,
                          '1',
                          '1',
                          'R',
                          '01',
                          '  ',
                          '045',
                          '2',
                          CGC_Emp,
                          Convenio_Emp,
                          Copy(Agencia_Emp,1,length(Agencia_Emp) -1), //agencia sem o digito
                          Copy(Agencia_Emp,length(Agencia_Emp),1), //dígito da agência
                     {15} Convenio_Emp,// segundo evando da caixa..
                          '0',
                          QueryPreferenciasnome_empresa.AsString,
                          VMsg1Lote,
                          VMsg2Lote,
                     {20} IntToStr(Numero_Banco),
                          FormatDateTime('ddmmyyyy',dm.date),
                          FormatDateTime('ddmmyyyy',dm.date)); //Pendente,verificar com evando

   Writeln(arquivo1,VAux);
   Seq_Lote := 0;
   QueryFaturamento.Close;
   QueryFaturamento.SQL[1] := ('where Tipo_Cobranca = 10');
   QueryFaturamento.SQL[4] := ('and Emitido_Documento = 0');
   case RadioGroupTp.ItemIndex of
       0 : QueryFaturamento.sql[1] := QueryFaturamento.sql[1] + ' and empresa = 1';
       1 : QueryFaturamento.sql[1] := QueryFaturamento.sql[1] + ' and empresa = 0';
   end;

   QueryFaturamento.Open;
   VrMoraDia := StrToFloat(replace(dm.GetParam('MORADI'),'.',','));
   VrMoraDia := VrMoraDia / 100;
   VrMulta   := StrToFloat(replace(dm.GetParam('MULTA'),'.',','));
   VrMulta := VrMulta / 100;
   VrMulta := RoundTo(VrMulta,-2);

   while not QueryFaturamento.eof do
   begin
      vrMoraDiariaTitulo := RoundTo((QueryFaturamentoValor.asCurrency + VvrCobranca) * VrMoraDia,-2);
      if vrMoraDiariaTitulo < 0.01 then
         vrMoraDiariaTitulo := 0.01;
      inc(Seq_Lote);

      dm.QueryGenerica.close;
      dm.QueryGenerica.sql.clear;
      dm.QueryGenerica.sql.Add('select * from contratante where codigo = ' + QueryFaturamentoCodigo_Contratante.asString);
      dm.QueryGenerica.Open;
      if QueryFaturamentolg_cobraJuros.AsBoolean then
      begin
         codigoMulta := '1';
         mensagem4 := 'Após vencto multa de ' + FormatFloat('##0.00',VrMulta * 100) + '%+' + FormatFloat('##0.00',VrMoraDia * 100) + '% ao dia';
      end
      else
      begin
         codigoMulta := '0';
         mensagem4 := 'Nao cobrar multa ou juros após vencto';
      end;

      VvrCobranca :=  getVrTaxaBoleto;
      if VvrCobranca > 0 then
         mensagem5 := 'Acrescido ' + FormatFloat('##0.00',VvrCobranca)  +  ' ref. a despesas adm.'
      else
         mensagem5 := '';

      VAux :=
      cn.SegmentoP_Cnab240(
                        cod_banco,
                        '1',
                        '3',
                        IntToStr(Seq_Lote),
                     {5}'P',
                        '01',
                        Copy(Agencia_Emp,1,length(Agencia_Emp) -1), //agencia sem o digito
                        Copy(Agencia_Emp,length(Agencia_Emp),1), //dígito da agência
                    {10}Convenio_Emp,
                    {13}QueryFaturamentonnBoleto.asString, //Duvida nosso numero
                        '1',
                        ' ',
                    {16}'2',
                        '2',
                        '1',
                    {19}QueryFaturamentoNumero_Titulo.asString,
                        FormatDateTime('ddmmyyyy', QueryFaturamentoData_Vencimento.asDateTime),
                        CurrToStr(QueryFaturamentoValor.asCurrency + VvrCobranca),
                        '0',
                        ' ',
                    {24}'02', //duplicata mercantil
                        'N',

                        FormatDateTime('ddmmyyyy',QueryFaturamentoData_Emissao.asDateTime),
                    {27} codigoMulta,// cód juros
                    {28}FormatDateTime('ddmmyyyy', QueryFaturamentoData_Vencimento.asDateTime), // data do juros
                    FloatTostr(vrMoraDiariaTitulo),
                    {30}'0',//código do desconto
                    '00000000', // data desconto posição 143 a 150
                    {32}'0',//percentual desconto
                    {33}'0',//valor iof
                    {34}'0',//valor abatimento
                    {35} QueryFaturamentoDesdobramento.asString + QueryFaturamentoNumero_Titulo.asString,
                    {36}'1',//dúvida código para protesto
                    {37}'0',//prazo para protesto
                    {38}'0',//código para baixa devolução
                    {39}'   ', // prazo para baixa devolução 225 a 227
                    {40}'09');
      vrTotal := vrTotal + (QueryFaturamentoValor.asCurrency + VvrCobranca);
      qtTotal := qtTotal + 1;
      Writeln(arquivo1,VAux);


      if dm.QueryGenerica.FieldbyName('Tipo_Correspondencia').AsString = 'Residêncial' then
      begin
         // Dá preferencia para o Nr e complemento, acrescenta o que der do endereço para completar 40
         Ender  := dm.QueryGenerica.FieldbyName('Numero_Res').AsString + ' ' +
                   dm.QueryGenerica.FieldbyName('Complemento_Res').AsString;
         Ender  := copy(dm.QueryGenerica.FieldbyName('Endereco_Residencial').asString,1,40 - length(Ender)) + ' ' + Ender;
         Bairro := dm.QueryGenerica.FieldbyName('bairro_residencial').AsString;
         Cep    := dm.QueryGenerica.FieldbyName('Cep_Residencial').asString;
         Cidade := dm.QueryGenerica.FieldbyName('Cidade_Residencial').asString;
         Uf     := dm.QueryGenerica.FieldbyName('Estado_Residencial').asString;
      end
      else
      begin
         // Dá preferencia para o Nr e complemento, acrescenta o que der do endereço para completar 40
         Ender  := dm.QueryGenerica.FieldbyName('Numero_com').AsString + ' ' +
                   dm.QueryGenerica.FieldbyName('Complemento_com').AsString;

         Ender := Copy(dm.QueryGenerica.FieldbyName('Endereco_comercial').asString,1,40 - length(Ender)) + ' ' + Ender;

         Bairro := dm.QueryGenerica.FieldbyName('bairro_comercial').AsString;
         Cep    := dm.QueryGenerica.FieldbyName('Cep_comercial').asString;
         Cidade := dm.QueryGenerica.FieldbyName('Cidade_comercial').asString;
         Uf     := dm.QueryGenerica.FieldbyName('Estado_comercial').asString;
      end;
      cep := Sonumero(cep);

      inc(Seq_Lote);
      if QueryFaturamentoempresa.AsBoolean then
        tpPessoa := '2'
      else
         tpPessoa := '1';


      VAux :=
      cn.SegmentoQ1_Cnab240(
                          Cod_Banco,
                          '1',
                          '3',
                          IntToStr(Seq_Lote),
                          'Q',
                          '1',
                      {8}  tpPessoa ,//Tipo Inscrição Sacado 1 pf , 2 pj pos 18
                          dm.QueryGenerica.FieldbyName('cgc_cpf').asString , //Nr insc sacado posição 19 a 33
                          lpad(dm.QueryGenerica.FieldByName('Codigo').asString,6,'0') + ' - ' + dm.QueryGenerica.FieldByName('Nome').asString,
                      {11}Ender,
                      {12}Bairro,
                      {13}Copy(Cep,1,5),
                      {14}Copy(Cep,6,3),
                      {15}Cidade,
                      {16}Uf,
                      {17}'0',//Tipo Inscrição Avalista
                      {18}'0',// número inscrição Avalista
                      {19}' ',// nome do sacador avalista
                      {20}' ',
                      {21}' ');
      Writeln(arquivo1,VAux);
      inc(Seq_Lote);
      Vaux := cn.SegmentoR(Cod_Banco,
                   '1',
                   '3',
                   IntToStr(Seq_Lote),
                   'R',
                   ' ',
                   '01',
                   '0',
                   '00000000',
                   '0',
                   '0',
                   '00000000',
                   '0',
                    codigoMulta,
                    FormatDateTime('ddmmyyyy', QueryFaturamentoData_Vencimento.asDateTime),
                    FloatTostr(RoundTo((QueryFaturamentoValor.asCurrency + VvrCobranca) * VrMulta,-2)),
                    '',
                    '',
                    '',
                    '',
                    '0',
                    '0',
                    '0',
                    '',
                    '0',
                    '',
                    '',
                    '0',
                    '');


      Writeln(arquivo1,VAux);
      inc(Seq_Lote);
      Vaux := cn.SegmentoS(Cod_Banco,
                   '1',
                   '3',
                   IntToStr(Seq_Lote),
                   'S',
                   ' ',
                   '01',
                   '3',
                   QueryFaturamentomensagem1.AsString,
                   QueryFaturamentomensagem2.AsString,
                   QueryFaturamentomensagem3.AsString,
                   mensagem4,
                   mensagem5,
                   '' ); //cnab2

      Writeln(arquivo1,VAux);     
      QueryFaturamento.Edit;
      QueryFaturamentoEmitido_Documento.asBoolean := True;
      // coloquei assim para identificar o banco que foi gerado boleto
      QueryFaturamentoNumero_Banco.AsString      := lpad(cod_banco,4,'0') + lpad(IntToStr(Numero_Banco),6,'0');
      QueryFaturamento.Post;
      ProgressBarGera.Stepit;
      Application.ProcessMessages;
      QueryFaturamento.next;

   end;
   VAux :=
   cn.TraillerLote_Cnab240(
                           Cod_Banco,
                           '1',
                           '5',
                           IntToStr(Seq_Lote + 2),
                           IntToStr(qtTotal),// enviar zerado conf. evando
                           FloatTostr(vrTotal),// enviar zerado conf. evando
                           '0',// enviar zerado conf. evando
                           '0',// enviar zerado conf. evando
                           '0',// enviar zerado conf. evando
                           '0',// enviar zerado conf. evando
                           '0',// enviar zerado conf. evando
                           '0');// enviar zerado conf. evando
   Writeln(arquivo1,VAux);
   VAux :=
   cn.TraillerArq_Cnab240(
                          Cod_Banco,
                          '9999',
                          '9',
                          '1',
                          IntToStr(Seq_Lote + 4)
   );
   Writeln(arquivo1,VAux);
   CloseFile(Arquivo1);
   QueryFaturamento.Close;
   QueryFaturamento.Open;
   FmBaca.Free;
   ShowMessage('Arquivo de boletos padrão CNAB 240 "' + NomeArquivo + '" gerado com sucesso !');
//    MontaTrailerCobrancaBanespa;

end;

function TFormGeraReceber.NN_CEF(Numero: String): String;
var Indice, I : Byte;
    Soma : word;
begin
   Soma := 0;
   Indice := 2;
   Numero := '9' + lpad(Numero,17,'0');
   For I := length(Numero) downto 1 do
   begin
      Soma := Soma + indice * StrToInt(Numero[I]);
      if indice < 9 then
         inc(indice)
      else
        indice := 2;
   end;
   indice := Soma mod 11;
   indice := 11 - indice;

   if indice > 9 then
     indice := 0;
   Result := numero + IntToStr(indice);

end;

Function TFormGeraReceber.VerifDia(PDia: Smallint;PMes,Pano:string) : Smallint;
begin
  // se o Mes for fevereiro verif se o dia é maior que 28
  // retornando o ulitmo dia valido do mes
   if (StrToInt(PMes) = 2    ) and (PDia > 28)  then
   begin
      if StrToInt(PAno) mod 4 = 0 then
        Result := 29
      else
         Result := 28
   end
   else
   Result := PDia;
end;

procedure TFormGeraReceber.FormShow(Sender: TObject);
begin
   cdConvenioCNAB:= '0';
   Memo1.Visible :=  DebugHook <> 0;
   Memo1.Visible := true;
  lgCancelEnvDoc := false;
   VContratOpen := Querycontratante.Active;
   VFatOpen     := QueryFaturamento.Active;
   VMantOpen    := QueryManutencao.Active;
   VRecebOpen   := QueryReceberOrc.Active;
   VContasOpen  := QueryContas.Active;
   EditMesFim.Enabled := FormGeraReceber.tag = 10;
   Label9.Enabled := EditMesFim.Enabled;
   EditInicial.Enabled := not EditMesFim.Enabled;
   EditFinal.Enabled := not EditMesFim.Enabled;
   Label6.Enabled := not EditMesFim.Enabled;
   Label7.Enabled := not EditMesFim.Enabled;
   if not EditInicial.Enabled then
   begin
   EditInicial.Text := '1';
   EditFinal.Text := '30';
   end;
end;

procedure TFormGeraReceber.ComboBoxTipoCobrancaChange(Sender: TObject);
begin
   RadioGroupTp.Enabled := ComboBoxTipoCobranca.ItemIndex < 2;
   RadioGroupTp.ItemIndex := 2;
end;
procedure TFormGeraReceber.BoletoBancoob;
begin
   FmBoletoBancoob := TFmBoletoBancoob.create(self);
   FmBoletoBancoob.VBanco := Cod_Banco;
   FmBoletoBancoob.ComboBoxTipoCobranca.ItemIndex := ComboBoxTipoCobranca.ItemIndex;
   FmBoletoBancoob.MaskEditDtIni.text := '01/' + lpad(EditMes.text,2,'0') + '/' + EditAno.text;
   if StrToInt(EditMes.text) = 2 then // fevereiro
   begin
      dm.sp_lastDayMonth.Close;
      dm.sp_lastDayMonth.ParamByName('@MesAno').AsString := EditMes.Text + '/' + EditAno.TExt;
      dm.sp_lastDayMonth.Open;
      FmBoletoBancoob.MaskEditDtFim.text := dm.sp_lastDayMonth.FieldByName('LastDayMonth').AsString;
      dm.sp_lastDayMonth.close;
   end
   else
      FmBoletoBancoob.MaskEditDtFim.text := '30/' + lpad(EditMes.text,2,'0') + '/' + EditAno.text;
      
   FmBoletoBancoob.EditCodigo.text := EditCodigo.text;
   FmBoletoBancoob.Edit1.text := dm.execmd('select nome from contratante where codigo = ''' + EditCodigo.text + '''','nome');
   FmBoletoBancoob.tag := 10;
   FmBoletoBancoob.ShowModal;
   FmBoletoBancoob.free;
end;

procedure TFormGeraReceber.PIncluiPeriodoFat(PAno,Pmes:Word;PEmissao,PCidade:String;
TpPessoa,PDiaIni,PdiaFim: Byte;PContrat:Integer;PDesDobr:char);
begin
   dm.ADOConn.BeginTrans;
   try
     ADOQueryPeriodoFat.Open;
     ADOQueryPeriodoFat.Insert;
     ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString := dm.execmd('select max(seq_periodo_fat) + 1 m from periodo_fat','m');
     ADOQueryPeriodoFat.FieldByName('ano').AsInteger := PAno;
     ADOQueryPeriodoFat.FieldByName('mes').AsInteger := PMes;
     ADOQueryPeriodoFat.FieldByName('desdobramento').AsString := PDesDobr;
     ADOQueryPeriodoFat.FieldByName('dt_base').AsString := PEmissao;
     ADOQueryPeriodoFat.FieldByName('dia_ini').AsInteger := PDiaIni;
     ADOQueryPeriodoFat.FieldByName('dia_fim').AsInteger := PDiaFim;
     ADOQueryPeriodoFat.FieldByName('cd_contrat').AsInteger := PContrat;
     ADOQueryPeriodoFat.FieldByName('cidade').AsString :=  PCidade;
     ADOQueryPeriodoFat.FieldByName('qt_tit').AsString := '0';
     ADOQueryPeriodoFat.FieldByName('cd_status').AsString := '2'; // 2 = PENDENTE
     ADOQueryPeriodoFat.FieldByName('cd_operador').AsInteger := Senha.Codigo_Operador;
     ADOQueryPeriodoFat.FieldByName('dt_processamento').AsString := dm.execmd('select getdate() dt','dt');
     case TpPessoa of
        0: ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString := 'PJ';
        1: ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString := 'PF';
        2: ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString := 'TD';
     end;
     ADOQueryPeriodoFat.Post;
   except on E: Exception do
   begin
      dm.ADOConn.RollbackTrans;
      ShowMessage('Ocorreu um erro ao tentar incluir registro de Período de faturamento. Erro : ' + e.message);
      SysUtils.abort;
      //parei aqui 28/07/08

   end;
   end;
   dm.ADOConn.CommitTrans;
end;
//gerei periodo 09/2009 porem ao processar debito hsbc nao mudou status
//nao consegui localizar o registro do hsbc no faturamento(banco 399)
//testar todos ifs da procedure sp_AtualizaEvento 
procedure TformGeraReceber.PAtualizaEventoFat(tp_evento:Word;PTipoCobranca:Integer);
begin
   sp_AtualizaEvento.Parameters[1].Value := tp_evento;
   sp_AtualizaEvento.Parameters[2].Value := senha.Codigo_Operador;
   sp_AtualizaEvento.Parameters[3].Value := PTipoCobranca;
   sp_AtualizaEvento.ExecProc;
end;
procedure TFormGeraReceber.PAtualizaPeriodoFat(Seq: String);
begin
    // inseri os eventos que houverem..
   Sp_incluiEnventoFat.Parameters[1].Value := Seq;
   Sp_incluiEnventoFat.Parameters[2].Value := senha.Codigo_Operador;
   Sp_incluiEnventoFat.ExecProc;
end;
// teste pj já fez as amarrações com o periodo faturamento
// tem um erro que se não tiver titulo ele tá gravando na tabela periodo_fat
// fazer as amarrações pra cada tipo de evento
procedure TFormGeraReceber.BitBtnMastercardClick(Sender: TObject);
begin
//   PAtualizaEventoFat(
//   StrToInt(inputBox('Tipo evento','tipo evento','22')),
//   StrToInt(inputBox('Tipo Cobrança','Tipo Cobrança','399')));
end;

procedure TFormGeraReceber.BitBtn1Click(Sender: TObject);
begin
   FmFaturamento := TFmFaturamento.create(self);
   FmFaturamento.ShowModal;

end;
procedure TFormGeraReceber.CarregaParam;
begin
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('desdobramento').AsString = 'T' then
         ComboBoxTipoCobranca.ItemIndex := 0
      else
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('desdobramento').AsString = 'M' then
         ComboBoxTipoCobranca.ItemIndex := 1
      else
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('desdobramento').AsString = 'O' then
         ComboBoxTipoCobranca.ItemIndex := 2
      else
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('desdobramento').AsString = 'A' then
         ComboBoxTipoCobranca.ItemIndex := 3
      else
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('desdobramento').AsString = 'D' then // desconto em folhta
         ComboBoxTipoCobranca.ItemIndex := 4;


      MaskEditEmissao.text := FmFAturamento.ADOQueryPeriodoFat.FieldByName('dt_base').AsString;
      EditAno.text := FmFAturamento.ADOQueryPeriodoFat.FieldByName('ano').AsString;
      EditMes.text := FmFAturamento.ADOQueryPeriodoFat.FieldByName('mes').AsString;
      EditInicial.text := FmFAturamento.ADOQueryPeriodoFat.FieldByName('dia_ini').AsString;
      EditFinal.text := FmFAturamento.ADOQueryPeriodoFat.FieldByName('dia_fim').AsString;
      EditCodigo.text := FmFAturamento.ADOQueryPeriodoFat.FieldByName('cd_contrat').AsString;
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('cidade').AsString = 'Todas' then
         ComboBoxCidade.ItemIndex := 0
      else
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('cidade').AsString = 'Serrana' then
         ComboBoxCidade.ItemIndex := 1
      else
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('cidade').AsString = 'Ribeirão Preto' then
         ComboBoxCidade.ItemIndex := 2;

      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString = 'PJ' then
         RadioGroupTp.ItemIndex := 0
      else
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString = 'PF' then
         RadioGroupTp.ItemIndex := 1
      else
      if FmFAturamento.ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString = 'TD' then
         RadioGroupTp.ItemIndex := 2;
      ComboBoxTipoCobrancaChange(ComboBoxTipoCobranca);
      ComboBoxTipoCobrancaExit(ComboBoxTipoCobranca);

end;

procedure TFormGeraReceber.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if key = vk_f5 then
       BitBtn1Click(Sender);       
end;

procedure TFormGeraReceber.PIncluiPeriodoFat;
begin
   dm.ADOConn.BeginTrans;
   try
     ADOQueryPeriodoFat.Open;
     ADOQueryPeriodoFat.cancel;
     ADOQueryPeriodoFat.Insert;
     ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString := dm.execmd('select max(seq_periodo_fat) + 1 m from periodo_fat','m');
     ADOQueryPeriodoFat.FieldByName('ano').AsString := EditAno.text;
     ADOQueryPeriodoFat.FieldByName('mes').AsString := EditMes.text;
     case ComboBoxTipoCobranca.ItemIndex of

       0 : ADOQueryPeriodoFat.FieldByName('desdobramento').AsString := 'T';
       1 : ADOQueryPeriodoFat.FieldByName('desdobramento').AsString := 'M';
       2 : ADOQueryPeriodoFat.FieldByName('desdobramento').AsString := 'O';
       3 : ADOQueryPeriodoFat.FieldByName('desdobramento').AsString := 'A';
       4 : ADOQueryPeriodoFat.FieldByName('desdobramento').AsString := 'D'; // para diferenciar de mensalidade para retorna os parametros corertamente na função
       // aqui ficou definido como D
     end;

     ADOQueryPeriodoFat.FieldByName('dt_base').AsString := MaskEditEmissao.Text;
     ADOQueryPeriodoFat.FieldByName('dia_ini').AsString := EditInicial.text;
     ADOQueryPeriodoFat.FieldByName('dia_fim').AsString := EditFinal.text;
     ADOQueryPeriodoFat.FieldByName('cd_contrat').AsString := EditCodigo.text;
     ADOQueryPeriodoFat.FieldByName('cidade').AsString :=  ComboBoxCidade.text;
     ADOQueryPeriodoFat.FieldByName('qt_tit').AsString := '0';
     ADOQueryPeriodoFat.FieldByName('cd_status').AsString := '2'; // 2 = PENDENTE
     ADOQueryPeriodoFat.FieldByName('cd_operador').AsInteger := Senha.Codigo_Operador;
     ADOQueryPeriodoFat.FieldByName('dt_processamento').AsString := dm.execmd('select getdate() dt','dt');
     case RadioGroupTp.ItemIndex of
        0: ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString := 'PJ';
        1: ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString := 'PF';
        2: ADOQueryPeriodoFat.FieldByName('tp_pessoa').AsString := 'TD';
     end;
     ADOQueryPeriodoFat.Post;
   except on E: Exception do
   begin
      dm.ADOConn.RollbackTrans;
      ShowMessage('Ocorreu um erro ao tentar incluir registro de Período de faturamento. Erro : ' + e.message);
      SysUtils.abort;
      //parei aqui 28/07/08

   end;
   end;
   dm.ADOConn.CommitTrans;
end;



procedure TFormGeraReceber.PAtualizaEventFatFull(PCdContrat:string;banco,vencto : Word);
//Var Vencto,Banco : Word;
begin
   if Vencto = 0 then
   begin
      Vencto := StrToInt(dm.execmd('select vencimento, Forma_Cobranca from contratante where codigo = ' + PCdContrat,'vencimento'));
      Banco := dm.QueryGlobal.FieldByName('forma_cobranca').AsInteger;
   end;
   if banco = 10 then
      PAtualizaEventoFat(2,10)  //2 significa envio boleto.
   else
   if (banco =275) or (banco = 001) or (banco = 151) or (banco = 409) then
   begin
      case Vencto of
      10:
         case banco of
           275 : PAtualizaEventoFat(13,275);
           001 : PAtualizaEventoFat(05,001);
           151 : PAtualizaEventoFat(09,151);
           409 : PAtualizaEventoFat(17,409);
         end;
      20:
         case banco of

           275 : PAtualizaEventoFat(14,275);
           001 : PAtualizaEventoFat(06,001);
           151 : PAtualizaEventoFat(10,151);
           409 : PAtualizaEventoFat(18,409);

         end;

      25:
          case banco of

            275 : PAtualizaEventoFat(15,275);
            001 : PAtualizaEventoFat(07,001);
            151 : PAtualizaEventoFat(11,151);
            409 : PAtualizaEventoFat(19,409);
         end;

      30:
         case banco of
            275 : PAtualizaEventoFat(16,275);
            001 : PAtualizaEventoFat(08,001);
            151 : PAtualizaEventoFat(12,151);
            409 : PAtualizaEventoFat(20,409);
         end;
     end;
   end
   else
   if banco = 33 then
      PAtualizaEventoFat(4,33)
   else
   if banco = 104 then
      PAtualizaEventoFat(21,104)
   else
   if banco = 237 then
      PAtualizaEventoFat(3,237)
   else
   if banco = 399 then
      PAtualizaEventoFat(22,399);
end;

procedure TFormGeraReceber.EditMesKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;

end;

procedure TFormGeraReceber.BitBtnProcessarClick(Sender: TObject);
var MesIni, MesFim,i : Smallint;
begin
    if FormGeraReceber.tag <> 10 then
       EditMesFim.text := EditMes.text;
    if EditCodigo.Text <> '' then
    begin
       if MessageDlg('Cancela o envio do Documento para o Banco ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          lgCancelEnvDoc := true
       else
          lgCancelEnvDoc := false
    end
    else
       lgCancelEnvDoc := false;


   MesIni := StrToInt(EditMes.text);
   MesFim := StrToInt(EditMesFim.text);

  for i := MesIni to MesFim do
  begin
     EditMes.text := IntToStr(i);
     ProcessarFat;
  end;
   EditMes.text := IntToStr(MesIni);
  lgCancelEnvDoc := false;
  if FormGeraReceber.tag = 10 then
  begin
      ShowMessage('Processamento concluído');
  end;

end;

procedure TFormGeraReceber.AchaVrDentistaProtetico(CdServico,CdTabela,cdDentista,indiceTabPagDentista : string);
var cdTabelaQtUS, vrAux : string;
begin

   dm.ADOQueryVrPagto.close;
   dm.ADOQueryVrPagto.sql[1] := CdServico;
   dm.ADOQueryVrPagto.sql[3] := dm.GetParam('TBPADP');  //tabela padrão do protetico
   dm.ADOQueryVrPagto.open;
   if dm.ADOQueryVrPagto.recordcount = 0 then
   begin
      ShowMessage('ATENÇÃO, valor de protético não encontrado, verifique o parâmetro  TBPADP , que indica qual a tabela deverá buscar o valor do protético!');
      Valor_Protetico := 0;
      sysUtils.abort;
   end;

   Valor_Protetico := dm.ADOQueryVrPagto.FieldByName('vr_dentista').AsCurrency;
   cdTabelaQtUS := '';
   if dm.GetParam('UFNVPD') = 'S' then // indica que usa formula nova para valorização de dentista
   begin
      cdTabelaQtUS := dm.execmd('select cd_tabelaQTUS from dentista where codigo = ' + cdDentista,'cd_tabelaQTUS');

      vrAux := dm.execmd('select vrUs * qtUs vr from TabPagDentistaXProcedimento t, dentista d, servicoXqtUs s where d.codigo = t.cd_dentista and d.cd_tabelaQTUS = s.cd_tabela and s.cd_servico = ' + CdServico + ' and t.indice = ' + indiceTabPagDentista + ' and s.cd_tabela = ' + cdTabelaQtUS,'vr');
      if(vrAux <> '') then
        Valor_Dentista := strToFloat(vrAux)
      else
      begin
        ShowMessage('Não foi possível calcular o preço do serviço ' + CdServico + ', tabela Pag dentsita : ' + indiceTabPagDentista + ' tabela qtde US : ' + cdTabelaQtUS);
        sysUtils.abort;
      end;
      exit;
   end;

   dm.ADOQueryVrPagto.close;
   dm.ADOQueryVrPagto.sql[1] := CdServico;
   dm.ADOQueryVrPagto.sql[3] := '''' +  CdTabela + '''';
   dm.ADOQueryVrPagto.open;
   if dm.ADOQueryVrPagto.recordcount = 0 then
   begin
      ShowMessage('ATENÇÃO, procedimento não possui valor de cobrança cadastrado, operação cancelada !');
      Valor_Dentista := 0;
      sysUtils.abort;
   end;

end;

procedure TFormGeraReceber.ProcessaMensalidadeDesFolha;
begin

  PIncluiPeriodoFat;

  case RadioGroupTp.ItemIndex of
     0 : sp_geraMensalidadeDebFolha.Parameters[1].Value := 'PJ';
     1 : sp_geraMensalidadeDebFolha.Parameters[1].Value := 'PF';
     2 : sp_geraMensalidadeDebFolha.Parameters[1].Value := 'TD';
   end;

   sp_geraMensalidadeDebFolha.Parameters[2].Value := lpad(EditMes.text,2,'0');
   sp_geraMensalidadeDebFolha.Parameters[3].Value := EditAno.text;
   if EditCodigo.text = '' then
         sp_geraMensalidadeDebFolha.Parameters[4].Value := 0
   else
      sp_geraMensalidadeDebFolha.Parameters[4].Value := EditCodigo.text;

   sp_geraMensalidadeDebFolha.Parameters[5].Value := MaskEditEmissao.Text;
   sp_geraMensalidadeDebFolha.Parameters[6].Value := lgCancelEnvDoc;
   sp_geraMensalidadeDebFolha.Parameters[7].Value := ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsInteger;;
   sp_geraMensalidadeDebFolha.ExecProc;
   if dm.execmd('select count(numero_titulo) c from faturamento where seq_periodo_fat = ' + ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString,'c' ) <> '0' then
   begin
      PAtualizaPeriodoFat(ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString);
      PAtualizaEventoFat(1,0); // atualiza o evento processado para Efetivado
      ShowMessage('Faturamento gerado com sucesso !');
   end
   else
   begin
      dm.execmd('delete periodo_fat where seq_periodo_fat = ' + ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString);
       ShowMessage('Não foi gerado nenhum título');
   end;


end;

procedure TFormGeraReceber.ProcessaRetornoBrasil2;
var Identificacao_Auxiliar : String[25];
begin
   if not OpenDialog1.Execute then
      exit;

   NomeArquivo := OpenDialog1.FileName;
   if NomeArquivo = '' then
      exit;
   AssignFile(Arquivo, NomeArquivo);
   Reset(Arquivo);

   if MessageDlg('Deseja Limpar o Arquivo de Retorno ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      try
        StoredProcDeletaRetorno.ExecProc; // Executa a stored procedure para deletar os registros do Arquivo de Retorno
      except on E: Exception do
        begin
          ShowMessage('Erro ao Limpar o Arquivo de Retorno !!! [ENTER]. Erro : ' + e.message);
          exit;
        end;
      end;

   QueryRetorno.Close;
   QueryRetorno.Open;

   while not Eof(Arquivo) do
         begin
           ReadLn(Arquivo, Conteudo);

           if Copy(Conteudo, 1, 1) = 'F' then
              begin
                QueryRetorno.Insert;

                Identificacao_Auxiliar := Copy(Conteudo, 2, 25);
                Posicao:=pos(' ', Identificacao_Auxiliar);
                while Posicao <> 0 do
                  begin
                    Posicao := pos(' ', Identificacao_Auxiliar);
                    delete(Identificacao_Auxiliar, Posicao,1);          // elimina espacos
                  end;

                QueryRetornoCodigo_Contratante.asInteger   := StrToInt(Identificacao_Auxiliar);
                QueryRetornoAgencia.asString               := Copy(Conteudo, 27, 4);
                QueryRetornoConta.asString                 := Copy(Conteudo, 31, 14);
                Ano_Str                                    := Copy(Conteudo, 45, 4);
                Mes_Str                                    := Copy(Conteudo, 49, 2);
                Dia_Str                                    := Copy(Conteudo, 51, 2);
                Data_Str                                   := Dia_Str + '/' + Mes_Str + '/' + Ano_Str;
                QueryRetornoData_Vencimento.asDateTime     := StrToDate(Data_Str);
                QueryRetornoValor_Debito.asCurrency        := StrToFloat(Copy(Conteudo, 53, 15));
                QueryRetornoValor_Debito.asCurrency        := QueryRetornoValor_Debito.asCurrency / 100;
                QueryRetornoCodigo_Retorno.asString        := Copy(Conteudo, 68, 02);
                QueryRetornoIdentificacao_Empresa.asString := Copy(Conteudo, 70, 15);

                try
                  QueryRetorno.Post
                except
                  begin
                    ShowMessage('Registro: ' + QueryRetornoIdentificacao_Empresa.asString + ' já existente');
                    QueryRetorno.Cancel;
                  end
                end;
             end;
         end;
   QueryRetorno.Close;
   QueryRetorno.Open;
   Application.CreateForm(TFormBaixaRetorno, FormBaixaRetorno);
   FormBaixaRetorno.CdOcorrenciaBaixa := '00'; // o código de débito processado 00
   FormBaixaRetorno.ShowModal;
   FormBaixaRetorno.Free;
   
end;

end.














