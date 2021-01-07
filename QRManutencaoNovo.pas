{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório do Manutenção                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRManutencaoNovo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaManutencaoNovo = class(TQuickRep)
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
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QueryManutencao: TQuery;
    QRDBText5: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRDBText8: TQRDBText;
    QueryManutencaoNumero: TIntegerField;
    QueryManutencaoData_Hora: TDateTimeField;
    QueryManutencaoOperador_Cadastro: TSmallintField;
    QueryManutencaoUsuario: TIntegerField;
    QueryManutencaoContratante_Titular: TIntegerField;
    QueryManutencaoContratante: TIntegerField;
    QueryManutencaoData: TDateTimeField;
    QueryManutencaoDentista: TIntegerField;
    QueryManutencaoTotal: TFloatField;
    QueryManutencaoTotal_Bruto: TFloatField;
    QueryManutencaoTotal_Desconto: TFloatField;
    QueryManutencaoStatus: TSmallintField;
    QueryManutencaoNumero_Parcelas: TSmallintField;
    QueryManutencaoData_Conferencia: TDateTimeField;
    QueryManutencaoTotal_Dentista: TFloatField;
    QueryManutencaoTotal_Protetico: TFloatField;
    QueryManutencaoTotal_Contas: TFloatField;
    QueryManutencaoAutorizado: TBooleanField;
    QueryManutencaoOperador_Aprovacao: TSmallintField;
    QueryManutencaoTipo: TSmallintField;
    QueryManutencaoDesconto: TFloatField;
    QueryManutencaoCodigo: TIntegerField;
    QueryManutencaoNome: TStringField;
    QueryManutencaoCodigo_Completo: TIntegerField;
    QueryManutencaoNumero_Titulo: TIntegerField;
    QueryManutencaoDesdobramento: TStringField;
    QueryManutencaoTipo_Documento: TSmallintField;
    QueryManutencaoCodigo_Contratante: TIntegerField;
    QueryManutencaoCodigo_Usuario: TIntegerField;
    QueryManutencaoData_Emissao: TDateTimeField;
    QueryManutencaoData_Vencimento: TDateTimeField;
    QueryManutencaoValor: TFloatField;
    QueryManutencaoSaldo: TFloatField;
    QueryManutencaoTipo_Cobranca: TSmallintField;
    QueryManutencaoNumero_Banco: TStringField;
    QueryManutencaoData_Pagamento: TDateTimeField;
    QueryManutencaoValor_Pago: TFloatField;
    QueryManutencaoDesconto_1: TFloatField;
    QueryManutencaoJuros: TFloatField;
    QueryManutencaoOperador: TSmallintField;
    QueryManutencaoOrcamento: TIntegerField;
    QueryManutencaoParcela: TSmallintField;
    QueryManutencaoStatus_Cheque: TStringField;
    QueryManutencaoObservacoes: TStringField;
    QueryManutencaoStatus_Orcamento: TSmallintField;
    QueryManutencaoStatus_Pagamento: TSmallintField;
    QueryManutencaonro_urgencia: TIntegerField;
    QueryManutencaoData_Status: TDateTimeField;
    QueryManutencaoOperador_Status: TIntegerField;
    QueryManutencaoPericiaFinal: TBooleanField;
    QueryManutencaoNro_cheque: TStringField;
    QueryManutencaoBanco_Cheque: TStringField;
    QueryManutencaoNro_ContaCheque: TStringField;
    QueryManutencaoAgencia_Cheque: TStringField;
    QueryManutencaoStatus_Ocorrencia: TSmallintField;
    QueryManutencaoDeposito: TBooleanField;
    QueryManutencaoTipo_Pagamento: TIntegerField;
    QueryManutencaoNome_Dentista: TStringField;
    QueryManutencaoclinica: TStringField;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabelDsIR: TQRLabel;
    QRLabelTribOuInss: TQRLabel;
    QRShape1: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabelData: TQRLabel;
    QRLabelAcordo: TQRLabel;
    QueryVrTotalClinica: TQuery;
    QueryManutencaoCodClinica: TIntegerField;
    QueryManutencaoTipoPessoa: TStringField;
    QRLabelIR: TQRLabel;
    QRLabelImposto: TQRLabel;
    QRLabelVrTotLiq: TQRLabel;
    QRLabel13: TQRLabel;
    QueryDtPagto: TQuery;
    QueryParam: TQuery;
    QRLabelDadosDep: TQRLabel;
    QueryManutencaoagencia: TStringField;
    QueryManutencaocontaCorrente: TStringField;
    QueryManutencaobanco: TStringField;
    QueryManutencaodigitoCC: TStringField;
    QueryManutencaolg_recebimento_deposito: TBooleanField;
    QueryManutencaooptante_simples: TBooleanField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    V_VrBaseTrib, V_VrBaseIR, VPercentIR, VPercentTrib,VPercentINSS : currency;
  public

  end;

var
  QRListaManutencaoNovo: TQRListaManutencaoNovo;
  DIntervalo1, DIntervalo2, DataHoje, Data_Base : TDateTime;
  Dentista : Integer;
  Valor_Servico, Valor_Bruto : Currency;
  VTipoPessoa : String[2];
  VClinica : Integer;
  VMesAno  : String[7];
  VTotalDentista : Currency;

implementation

{$R *.DFM}

uses RelManutencao, Senha,tacio;

procedure TQRListaManutencaoNovo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

     QueryParam.Close;
     QueryParam.Open;

     V_VrBaseTrib  := QueryParam.FieldByName('vrBaseCobr_tributos').AsCurrency;
     V_VrBaseIR    := QueryParam.FieldByName('VrBaseCobr_ir').AsCurrency;
     VPercentIR    := QueryParam.FieldByName('Percent_ir').AsCurrency;
     VPercentTrib  := QueryParam.FieldByName('Percent_tributos').AsCurrency;
     VPercentINSS  := QueryParam.FieldByName('Percent_inss').AsCurrency;

    QueryDtPagto.Close;
    QueryDtPagto.ParamByName('DtStr').AsString := '01/' + VMesAno;
    QueryDtPagto.Open;
    QRLabelData.Caption := 'RIBEIRÃO PRETO, ' + inputbox('Data','Informe a data',QueryDtPagto.FieldByName('Data').AsString);

   QRLabelAcordo.Caption := 'Confirmo ter recebido da ' +  Senha.Empresa + ' a Importância Acima.';
   if VTipoPessoa = '' then // escolheu clinica
      QueryManutencao.SQL[11] := ' '
   else
     QueryManutencao.ParamByName('TipoPessoa').asString := VtipoPessoa;

   if VtipoPessoa = 'PJ' then
   begin
      QRListaManutencaoNovo.ReportTitle := 'Recibo de Manutenções Recebidas (PJ)';

//      QRLabelDs1.enabled := True;
//      QRLabelDs2.enabled := True;
//      QRShapeDs.enabled := True;


//      QRLabelDs3.enabled := True;
//      QRLabelDs4.enabled := True;

      QueryVrTotalClinica.Close;
      QueryVrTotalClinica.ParamByName('Data1').asDateTime := DIntervalo1;
      QueryVrTotalClinica.ParamByName('Data2').asDateTime := DIntervalo2;
   end
   else
      QRListaManutencaoNovo.ReportTitle := 'Recibo de Manutenções Recebidas (Autônomo)';


   QRLabelEmpresa.Caption := Senha.Empresa;
   QueryManutencao.Close;
   QueryManutencao.ParamByName('Data1').asDateTime := DIntervalo1;
   QueryManutencao.ParamByName('Data2').asDateTime := DIntervalo2;

   if VClinica <> 0 then
      QueryManutencao.ParamByName('PClinica').asInteger := VClinica
   else
       QueryManutencao.SQL[12] := '';

   if Dentista <> 0 then
     QueryManutencao.ParamByName('Codigo_Dentista').asInteger := Dentista
   else
     begin
       QueryManutencao.SQL[07] := ' Where ';
//       QueryManutencao.SQL[08] := 'and Receber.Data_Pagamento between :Data1 and :Data2';
//       QueryManutencao.SQL[09] := 'and Receber.Tipo_Documento = 5';
//       QueryManutencao.SQL[10] := ' ';
//       QueryManutencao.SQL[11] := ' and c.codigo               = :PClinica ';
//       QueryManutencao.SQL[12] := 'order by Orcamento.Dentista, Receber.Data_vencimento, Orcamento.Usuario';

//       QueryManutencao.SQL[13] := '';
     end;

   FormRelManutencao.Memo1.Lines.Clear;
   FormRelManutencao.Memo1.Lines.add(QueryManutencao.Text);
   QueryManutencao.Open;

end;

procedure TQRListaManutencaoNovo.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  Var VtotLiq : Currency;
begin
   if QueryManutencaolg_recebimento_deposito.AsBoolean then
      QRLabelDadosDep.Caption := 'BANCO : ' + QueryManutencaobanco.AsString + ' AG: ' + QueryManutencaoagencia.AsString + ' C/C : ' + QueryManutencaocontaCorrente.AsString + '-' + QueryManutencaodigitoCC.AsString
   else
       QRLabelDadosDep.Caption := '';

   QRLabelIR.Enabled :=
   (QueryManutencaoTipoPessoa.AsString = 'PJ');
   QRLabelDsIR.Enabled := QRLabelIR.Enabled;
   if QueryManutencaoTipoPessoa.AsString = 'PJ' then
   begin
      // pega o valor total da clinica para ver se deduz  tributos e IR
      QueryVrTotalClinica.Close;
      QueryVrTotalClinica.ParamByName('PClinica').AsInteger := QueryManutencaoCodClinica.AsInteger;
      QueryVrTotalClinica.Open;

      QRLabelTribOuInss.Caption := 'TRIBUTOS(' + FloatToStr(VPercentTrib) + '%)';
      VTotLiq := 0;
//      VTotalDentista
      if not QueryManutencaooptante_simples.AsBoolean and (QueryVrTotalClinica.FieldByName('VrToClinica').AsCurrency >= V_VrBaseIR) then // somente quem recebe mais que 666.66 paga 4.65
      begin
         VtotLiq := VtotLiq + round(VTotalDentista * ( VPercentIR / 100) * 100) / 100;
         QRLabelIR.Caption  := FormatFloat('R$ ' + '###,##0.00', VTotalDentista * ( VPercentIR / 100));
      end
      else
         QRLabelIR.Caption  := 'R$ 0.00';

      if not QueryManutencaooptante_simples.AsBoolean and (QueryVrTotalClinica.FieldByName('VrToClinica').AsCurrency >= V_VrBaseTrib) then // somente quem recebe mais que 215 paga 4.65
      begin
         VTotLiq := VTotLiq + (round(VTotalDentista * (VPercentTrib / 100) * 100) / 100);
         QRLabelImposto.Caption  := FormatFloat('R$ ' + '###,##0.00', VTotalDentista * (VPercentTrib / 100));
      end
      else
         QRLabelImposto.Caption  := 'R$ 0.00';

   QRLabelVrTotLiq.Caption := FormatFloat('R$ ' + '###,##0.00', VTotalDentista - VTotLiq);
   end// Autonomo
   else
   begin
      QRLabelImposto.Caption  := FormatFloat('R$ ' + '###,##0.00', VTotalDentista * (VPercentINSS / 100));
      QRLabelTribOuInss.Caption := 'INSS(' + FloatToStr(VPercentINSS) + '%)';
      QRLabelVrTotLiq.Caption := FormatFloat('R$ ' + '###,##0.00', VTotalDentista - (VTotalDentista * (VPercentINSS / 100)) );
   end;

end;

procedure TQRListaManutencaoNovo.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   VTotalDentista := 0;
end;

procedure TQRListaManutencaoNovo.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   VTotalDentista := VTotalDentista + QueryManutencaoTotal_Dentista.AsCurrency;
end;

end.
