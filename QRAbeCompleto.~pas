{ Programa ........: Relatório de Títulos em Aberto por Vencimento             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRAbeCompleto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls, QRExport;

type
  TQRTitAbeCompleto = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    DetailBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRExpr3: TQRExpr;
    PageFooterBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRDBText17: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText18: TQRDBText;
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
    QueryContratanteOperador_Inclusao: TIntegerField;
    QueryContratanteOperador_Alteracao: TIntegerField;
    QueryContratanteOperador_Exclusao: TIntegerField;
    QueryOrcamento: TQuery;
    QueryOrcamentoNumero: TIntegerField;
    QueryOrcamentoStatus: TSmallintField;
    QueryStatus: TQuery;
    QueryStatusCodigo: TSmallintField;
    QueryStatusDescricao: TStringField;
    QueryTipoDocumento: TQuery;
    QueryTipoCobranca: TQuery;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    QueryReceberDescricao_Documento: TStringField;
    QueryReceberDescricao_Cobranca: TStringField;
    QueryReceberStatus_Orcamento: TSmallintField;
    QueryReceberDescricao_Status: TStringField;
    QueryReceberCodigo: TIntegerField;
    QueryReceberNome: TStringField;
    QueryReceberEndereco_Residencial: TStringField;
    QueryReceberBairro_Residencial: TStringField;
    QueryReceberCidade_Residencial: TStringField;
    QueryReceberExclusao: TDateTimeField;
    QueryReceberCodigo_Usuario: TIntegerField;
    QueryReceberCep_Residencial: TStringField;
    QueryReceberEstado_Residencial: TStringField;
    QueryReceberFone1: TStringField;
    QueryReceberFone2: TStringField;
    QueryReceberInclusao: TDateTimeField;
    QueryReceberVencimento: TIntegerField;
    QueryReceberTipo_Pagamento: TIntegerField;
    QRLabel14: TQRLabel;
    QRDBText19: TQRDBText;
    QRTextFilter1: TQRTextFilter;
    procedure QueryTituloCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitAbeCompleto: TQRTitAbeCompleto;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;
  i : Short;
  Pgto : Integer;


implementation

{$R *.DFM}
uses RelatoReceber, Senha, udm;

procedure TQRTitAbeCompleto.QueryTituloCalcFields(DataSet: TDataSet);
begin
     DataHoje := dm.Date;
end;

procedure TQRTitAbeCompleto.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
  var i, Cont : Short;
Variavel : String;
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     i := 2;
     with QueryReceber do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         // utiliza a data de pagamento inicial como data base
         if FormRelatoriosReceber.MaskEditPrimeiroPagamento.Text <> '  /  /    ' then
            sql[6] := ' where (Data_Pagamento  is null or data_pagamento > ''' + FormRelatoriosReceber.MaskEditPrimeiroPagamento.Text + ''') '
         else
           sql[6] := ' where (Data_Pagamento  is null ) ';

         if RelatoReceber.TipoDocumento <> 0 then
            begin
               SQL[8] := 'and Tipo_Documento = :TipoDocumento';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoDocumento').asInteger := RelatoReceber.TipoDocumento;
               i := i + 1;
            end
         else
               SQL[8] := '';

         if RelatoReceber.FormRelatoriosReceber.ComboBoxClassificacao.Text <> 'Todos' then
            begin
               with RelatoReceber.FormRelatoriosReceber.QueryTipoDocumento2 do
                 begin
                   First;
                   Cont := 1;
                   while not eof do
                      begin
                        if Cont = 1 then
                           Variavel := 'and ((Tipo_Documento = ' + RelatoReceber.FormRelatoriosReceber.QueryTipoDocumento2Codigo.asString + ')'
                        else
                           Variavel := Variavel + ' or (Tipo_Documento = ' + RelatoReceber.FormRelatoriosReceber.QueryTipoDocumento2Codigo.asString + ')';
                        Cont := Cont + 1;
                        Next;
                       end;
                 end;
               SQL[8] := Variavel + ')';
               i := i - 1;
            end;

         if RelatoReceber.TipoCobranca <> 0 then
            begin
               SQL[9] := 'and Tipo_Cobranca = :TipoCobranca';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoCobranca').asInteger := RelatoReceber.TipoCobranca;
               i := i + 1;
            end
         else
               SQL[9] := '';
         if Pgto <> 0 then
            begin
              SQL[10] := 'and Tipo_Pagamento = :Pgto';
              Params[i].DataType := ftInteger;
              Params[i].ParamType := ptInput;
              ParamByName('Pgto').asInteger := Pgto;
              i := i + 1;
            end
         else
               SQL[10] := '';

         if RelatoReceber.Status <> 0 then
           begin
             SQL[11] := 'and exists (select * from orcamento where orcamento.contratante = receber.codigo_contratante and orcamento.Status = :Status)';
             Params[i].DataType := ftInteger;
             Params[i].ParamType := ptInput;
             ParamByName('Status').asInteger := RelatoReceber.Status;
             i := i + 1;
           end
         else
            begin
              SQL[11] := '';
            end;

         if RelatoReceber.FormRelatoriosReceber.ComboBoxOrcamentos.Text = 'Com Orçamentos' then
            SQL[13] := 'and exists (select * from orcamento where orcamento.contratante = receber.codigo_contratante)'
         else
           if RelatoReceber.FormRelatoriosReceber.ComboBoxOrcamentos.Text = 'Sem Orçamentos' then
              SQL[13] := 'and not exists (select * from orcamento where orcamento.contratante = receber.codigo_contratante)'
           else
              SQL[13] := '';

{         if RelatoReceber.FormRelatoriosReceber.EditVencimento.Text <> '' then
            begin
               if RelatoReceber.TipoDocumento = 5 then
               begin
                 SQL[15] := 'and Manutencao.Vencimento = :Vencimento';
                 Params[i].DataType := ftInteger;
                 Params[i].ParamType := ptInput;
                 ParamByName('Vencimento').asInteger := StrToInt(RelatoReceber.FormRelatoriosReceber.EditVencimento.Text);
               end
               else
               begin
                 SQL[15] := 'and Contratante.Vencimento = :Vencimento';
                 Params[i].DataType := ftInteger;
                 Params[i].ParamType := ptInput;
                 ParamByName('Vencimento').asInteger := StrToInt(RelatoReceber.FormRelatoriosReceber.EditVencimento.Text);
               end
            end
         else}
            begin
              SQL[15] := '';
            end;
         case FormRelatoriosReceber.RadioGroupTp.ItemIndex of
             0 : SQL[9] := SQL[9] + ' and contratante.empresa = 1';
             1 : SQL[9] := SQL[9] + ' and contratante.empresa = 0';
         end;
         //FormRelatoriosReceber.MemoDesabilitado.Lines.Add(text);
         Open;
       end;
end;

end.
