{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório do Manutenção                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRManutencao;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaManutencao = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QueryManutencao: TQuery;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QueryManutencaoValor_Dentista: TCurrencyField;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryManutencaoNome_Dentista: TStringField;
    QRDBText8: TQRDBText;
    QueryManutencaoUsuario: TIntegerField;
    QueryManutencaoServico: TIntegerField;
    QueryManutencaoData_Inicial: TDateTimeField;
    QueryManutencaoData_Final: TDateTimeField;
    QueryManutencaoDentista: TIntegerField;
    QueryManutencaoVencimento: TIntegerField;
    QueryManutencaoGera_Boleto: TBooleanField;
    QueryUsuario: TQuery;
    QueryUsuarioCodigo: TIntegerField;
    QueryUsuarioDigito: TIntegerField;
    QueryUsuarioContratante_Titular: TIntegerField;
    QueryUsuarioNome: TStringField;
    QueryUsuarioCodigo_Completo: TIntegerField;
    QueryManutencaoNome_Usuario: TStringField;
    QueryReceber: TQuery;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberTipo_Documento: TSmallintField;
    QueryReceberCodigo_Contratante: TIntegerField;
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
    QueryManutencaoNumero_Documento: TIntegerField;
    QueryContratante: TQuery;
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
    QueryPrecoContratante2: TQuery;
    QueryPrecoContratante2Contratante: TIntegerField;
    QueryPrecoContratante2TabelaPreco: TIntegerField;
    QueryPrecoContratante2Ativa: TBooleanField;
    QueryPrecoGrupo2: TQuery;
    QueryPrecoGrupo2Grupo_Contratante: TIntegerField;
    QueryPrecoGrupo2TabelaPreco: TIntegerField;
    QueryPrecoGrupo2Ativa: TBooleanField;
    QueryPrecoPlano2: TQuery;
    QueryPrecoPlano2Plano: TIntegerField;
    QueryPrecoPlano2TabelaPreco: TIntegerField;
    QueryPrecoPlano2Ativa: TBooleanField;
    QueryValorProcedimento: TQuery;
    QueryValorProcedimentoCodigo_Tabela: TIntegerField;
    QueryValorProcedimentoCodigo_Servico: TIntegerField;
    QueryValorProcedimentoValor_Cobranca: TFloatField;
    QueryValorProcedimentoValor_Dentista: TFloatField;
    QueryValorProcedimentoValor_Protetico: TFloatField;
    QueryPreferencias: TQuery;
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
    QueryPreferenciasSequencial_BoletoBanespa: TIntegerField;
    QueryPreferenciasDocumento_Manutencao: TSmallintField;
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
    QueryUsuariosPrimeiro_Faturamento: TDateTimeField;
    QueryUsuariosUltimo_Faturamento: TDateTimeField;
    QueryUsuariosInclusao_Susep: TDateTimeField;
    QueryUsuariosExclusao_Susep: TDateTimeField;
    QueryUsuariosUsuario_Anterior: TBooleanField;
    QueryUsuariosBonifica_Carencia: TBooleanField;
    QueryUsuariosSituacao: TStringField;
    QueryCoberturaContratante: TQuery;
    QueryCoberturaContratanteContratante: TIntegerField;
    QueryCoberturaContratanteTabela_Cobertura: TIntegerField;
    QueryCoberturaContratanteAtiva: TBooleanField;
    QueryCoberturaGrupo: TQuery;
    QueryCoberturaGrupoGrupo_Contratante: TIntegerField;
    QueryCoberturaGrupoTabela_Cobertura: TIntegerField;
    QueryCoberturaGrupoAtiva: TBooleanField;
    QueryCoberturaPlano: TQuery;
    QueryCoberturaPlanoPlano: TIntegerField;
    QueryCoberturaPlanoTabela_Cobertura: TIntegerField;
    QueryCoberturaPlanoAtiva: TBooleanField;
    QueryCoberturaProcedimento: TQuery;
    QueryCoberturaProcedimentoCodigo_Tabela: TIntegerField;
    QueryCoberturaProcedimentoCodigo_procedimento: TIntegerField;
    QueryCoberturaProcedimentoDias: TIntegerField;
    QueryCoberturaProcedimentoPercentual: TFloatField;
    QueryManutencaoValor_Pagar: TCurrencyField;
    QueryManutencaoValor_Pago: TCurrencyField;
    QueryManutencaoParcela: TSmallintField;
    QueryManutencaoNumero_Titulo: TIntegerField;
    QueryManutencaoData_Vencimento: TDateTimeField;
    QueryManutencaoData_Pagamento: TDateTimeField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QueryManutencaoCalcFields(DataSet: TDataSet);
  private
    procedure AchaValor2; // Procedure usada na obtenção dos valores da manutenção
    procedure Verifica_PrecoGrupo2; // Procedure usada na obtenção dos valores da manutenção
    procedure Verifica_PrecoPlano2; // Procedure usada na obtenção dos valores da manutenção
    //procedure Verifica_CoberturaGrupo;
//    procedure Verifica_CoberturaPlano;
    //procedure AchaCobertura;

  public

  end;

var
  QRListaManutencao: TQRListaManutencao;
  DIntervalo1, DIntervalo2, DataHoje, Data_Base : TDateTime;
  Dentista : Integer;
  Valor_Servico, Valor_Bruto : Currency;

implementation

{$R *.DFM}

uses RelManutencao, Senha, udm;

procedure TQRListaManutencao.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryManutencao do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if Dentista <> 0 then
           ParamByName('Codigo_Dentista').asInteger := Dentista
         else
           begin
             SQL[3] := 'Where Receber.Data_Pagamento between :Data1 and :Data2';
             SQL[4] := 'and Receber.Tipo_Documento = 5';
             SQL[5] := 'order by Manutencao.Dentista, Receber.Data_vencimento, Manutencao.Usuario';
             SQL[6] := '';
           end;
         Open;
       end;
end;

procedure TQRListaManutencao.QueryManutencaoCalcFields(DataSet: TDataSet);
begin
     with QueryReceber do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryManutencaoUsuario.asInteger div 10;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         Open;
         if RecordCount <> 0 then
            begin
//              QueryManutencaoNumero_Documento.asInteger := QueryReceberNumero_Titulo.asInteger;
//              QueryManutencaoParcela.asInteger := QueryReceberParcela.asInteger;
//              QueryManutencaoData_Vencimento.asDateTime := QueryReceberData_Vencimento.asDateTime;
//              QueryManutencaoValor_Pago.asCurrency := QueryReceberValor.asCurrency;
//              QueryManutencaoData_Pagamento.asDateTime := QueryReceberData_Pagamento.asDateTime;
              AchaValor2; // Monta Valor do Titulo
//              AchaCobertura;
              QueryManutencaoValor_Pagar.asCurrency := Valor_Servico;
            end;
       end;
end;

procedure TQRListaManutencao.AchaValor2;
begin
     Valor_Servico := 0;

     with QueryContratante do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + QueryReceberCodigo_Contratante.asString);
         SQL[2] := 'order by Codigo';
         SQL[3] := '';
         Open;
       end;

     with QueryPrecoContratante2 do
        begin
          Close;
          ParamByName('Codigo_Contratante').asInteger := QueryContratanteCodigo.asInteger;
          Open;
          Last;
          if RecordCount = 0 then
             Verifica_PrecoGrupo2
          else
             with QueryValorProcedimento do
               begin
                 Close;
                 ParamByName('Tabela').asInteger := QueryPrecoContratante2TabelaPreco.asInteger;
                 ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
                 Open;

                 if QueryManutencaoServico.asInteger = 1301 then
                    begin
                      if QueryReceberParcela.asInteger < 6 then
                         begin
                           Valor_Servico := 32.50;
                           Valor_Bruto := 32.50;
                         end
                      else
                        begin
                          Valor_Servico := QueryValorProcedimentoValor_Dentista.asCurrency;
                          Valor_Bruto := QueryValorProcedimentoValor_Dentista.asCurrency;
                        end
                    end
                 else
                    begin
                      Valor_Servico := QueryValorProcedimentoValor_Dentista.asCurrency;
                      Valor_Bruto := QueryValorProcedimentoValor_Dentista.asCurrency;
                    end;

               end; // Neste momento tenho o codigo do servico e da tabela
        end;
end;

procedure TQRListaManutencao.Verifica_PrecoGrupo2;
begin
     with QueryPrecoGrupo2 do
       begin
         Close;
         ParamByName('Grupo_Contratante').asInteger := QueryContratanteGrupo_Contratante.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Verifica_PrecoPlano2
         else
             with QueryValorProcedimento do
               begin
                 Close;
                 ParamByName('Tabela').asInteger := QueryPrecoGrupo2TabelaPreco.asInteger;
                 ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
                 Open;

                 if QueryManutencaoServico.asInteger = 1301 then
                    begin
                      if QueryReceberParcela.asInteger < 6 then
                         begin
                           Valor_Servico := 32.50;
                           Valor_Bruto := 32.50;
                         end
                      else
                        begin
                          Valor_Servico := QueryValorProcedimentoValor_Dentista.asCurrency;
                          Valor_Bruto := QueryValorProcedimentoValor_Dentista.asCurrency;
                        end
                    end
                 else
                    begin
                      Valor_Servico := QueryValorProcedimentoValor_Dentista.asCurrency;
                      Valor_Bruto := QueryValorProcedimentoValor_Dentista.asCurrency;
                    end;
               end; // Neste momento tenho o codigo do servico e da tabela
       end;
end;

procedure TQRListaManutencao.Verifica_PrecoPlano2;
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

                 if QueryManutencaoServico.asInteger = 1301 then
                    begin
                      if QueryReceberParcela.asInteger < 6 then
                         begin
                           Valor_Servico := 32.50;
                           Valor_Bruto := 32.50;
                         end
                      else
                        begin
                          Valor_Servico := QueryValorProcedimentoValor_Dentista.asCurrency;
                          Valor_Bruto := QueryValorProcedimentoValor_Dentista.asCurrency;
                        end
                    end
                 else
                    begin
                      Valor_Servico := QueryValorProcedimentoValor_Dentista.asCurrency;
                      Valor_Bruto := QueryValorProcedimentoValor_Dentista.asCurrency;
                    end;
               end; // Neste momento tenho o codigo do servico e da tabela
       end;
end;

{procedure TQRListaManutencao.AchaCobertura;
begin
     with QueryUsuarios do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryContratanteCodigo.asInteger;
         SQL[2] := 'and Data_Exclusao is null';
         ParamByName('Inclusao').asDateTime := dm.Date; // Data do ultimo dia mes anterior
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
end;}

{procedure TQRListaManutencao.Verifica_CoberturaGrupo;
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
end;}

{procedure TQRListaManutencao.Verifica_CoberturaPlano;
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
       end;
end;}

end.
