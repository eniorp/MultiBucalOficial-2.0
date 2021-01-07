{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Pagamento de Protéticos            }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRPagamentoProtetico;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaPagProtetico = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelReferencia: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QueryItensPagProtetico: TQuery;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabelAcordo: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QueryItensPagProteticoProtetico: TIntegerField;
    QueryItensPagProteticoServico: TIntegerField;
    QueryItensPagProteticoQuantidade: TIntegerField;
    QueryItensPagProteticoValor: TFloatField;
    QueryItensPagProteticoOrcamento: TIntegerField;
    QueryItensPagProteticoNome_Protetico: TStringField;
    QueryItensPagProteticoNome_Usuario: TStringField;
    QRDBText2: TQRDBText;
    QueryItensPagProteticoData: TDateTimeField;
    QRDBText4: TQRDBText;
    QueryItensPagProteticoDesconto: TIntegerField;
    QRLabelValor: TQRLabel;
    QRLabelValorTotal: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabelIR: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabelImposto: TQRLabel;
    QRShape1: TQRShape;
    QRLabelVrTotLiq: TQRLabel;
    QRLabelData: TQRLabel;
    QueryVrTotalClinicaP: TQuery;
    QueryItensPagProteticocodigo: TIntegerField;
    QueryItensPagProteticoNmClinica: TStringField;
    QueryItensPagProteticoTipoPessoa: TStringField;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QueryDtPagto: TQuery;
    QueryParam: TQuery;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabelVrUnit: TQRLabel;
    QueryItensPagProteticoVrUnit: TFloatField;
    QRLabelDadosDep: TQRLabel;
    QueryItensPagProteticoagencia: TStringField;
    QueryItensPagProteticobanco: TStringField;
    QueryItensPagProteticocontacorrente: TStringField;
    QueryItensPagProteticodigitoCC: TStringField;
    QueryItensPagProteticolg_recebimento_deposito: TBooleanField;
    QueryItensPagProteticooptante_simples: TBooleanField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    V_VrBaseTrib, V_VrBaseIR, VPercentIR, VPercentTrib,VPercentINSS : currency;
  public

  end;

var
  QRListaPagProtetico: TQRListaPagProtetico;
  MesAno : String[7];
  VTipoPessoa : String[2];
  Protetico, Clinica : Integer;
  ValorD, ValorTotal : Currency;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaPagProtetico.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
    QueryDtPagto.ParamByName('DtStr').AsString := '01/' + MesAno;
    QueryDtPagto.Open;
    QRLabelData.Caption := 'RIBEIRÃO PRETO, ' + inputbox('Data','Informe a data',QueryDtPagto.FieldByName('Data').AsString);
//    QRLabelData.Caption := 'RIBEIRÃO PRETO, ' + QueryDtPagto.FieldByName('Data').AsString;

    ValorTotal := 0;
    ValorD := 0;
    QRLabelEmpresa.Caption := Senha.Empresa;
    QRLabelAcordo.Caption := 'Confirmo ter recebido da ' +  Senha.Empresa + ' a Importância Acima.';

    QueryItensPagProtetico.Close;
    QueryItensPagProtetico.ParamByName('MesAno').asString := MesAno;
    if Protetico <> 0 then
       QueryItensPagProtetico.ParamByName('Protetico').asInteger := Protetico
    else
       QueryItensPagProtetico.SQL[6] := '';

    if Clinica <> 0 then
    begin
       QueryItensPagProtetico.ParamByName('Clinica').asInteger := Clinica;
       QueryItensPagProtetico.SQL[8] := '';
    end
    else
    begin
       QueryItensPagProtetico.SQL[7] := '';
       QueryItensPagProtetico.ParamByName('TipoPessoa').AsString := VTipoPessoa;
    end;

    QueryItensPagProtetico.Open;
    if QueryItensPagProtetico.FieldByName('TipoPessoa').AsString = 'PJ' then
    begin
       QRListaPagProtetico.ReportTitle := 'Recibo de Pagamento de Protéticos Pessoa Jurídica';
//       QRLabel12.enabled               := True;
//       QRLabel13.enabled               := True;
//       QRShape2.enabled                := True;
//       QRLabel14.enabled               := True;
//       QRLabel15.enabled               := True;
       QueryVrTotalClinicaP.Close;
       QueryVrTotalClinicaP.ParamByName('MesAno').AsString := MesAno;
    end
    else
       QRListaPagProtetico.ReportTitle := 'Recibo de Pagamento de Protéticos Autônomos';

end;

procedure TQRListaPagProtetico.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   if QueryItensPagProteticoDesconto.AsInteger <> 0 then begin
      ValorD := QueryItensPagProteticoValor.AsCurrency - ((QueryItensPagProteticoValor.AsCurrency * QueryItensPagProteticoDesconto.AsInteger)/100);
      QRLabelValor.Caption := FormatFloat('R$ ' + '###,##0.00', ValorD);
      ValorTotal := ValorTotal + ValorD;
      ValorD := QueryItensPagProteticoVrUnit.AsCurrency - ((QueryItensPagProteticoVrUnit.AsCurrency * QueryItensPagProteticoDesconto.AsInteger)/100);
      QRLabelVrUnit.Caption := FormatFloat('R$ ' + '###,##0.00', ValorD);

   end
   else begin
      ValorD := QueryItensPagProteticoValor.AsCurrency;
      QRLabelValor.Caption := FormatFloat('R$ ' + '###,##0.00', ValorD);
      QRLabelVrUnit.Caption := FormatFloat('R$ ' + '###,##0.00', QueryItensPagProteticoVrUnit.AsCurrency);
      ValorTotal := ValorTotal + ValorD;
   end;
end;

procedure TQRListaPagProtetico.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var VTotLiq: Currency;

begin

   if QueryItensPagProteticolg_recebimento_deposito.AsBoolean then
      QRLabelDadosDep.Caption := 'BANCO : ' + QueryItensPagProteticobanco.AsString + ' AG: ' + QueryItensPagProteticoagencia.AsString + ' C/C : ' + QueryItensPagProteticocontaCorrente.AsString + '-' + QueryItensPagProteticodigitoCC.AsString
   else
       QRLabelDadosDep.Caption := '';

   // pega o valor total da clinica para ver se deduz  tributos e IR
   QueryVrTotalClinicaP.Close;
   QueryVrTotalClinicaP.ParamByName('clinica').AsInteger := QueryItensPagProteticoCodigo.AsInteger;
   QueryVrTotalClinicaP.Open;

   QRLabelValorTotal.Caption := FormatFloat('R$ ' + '###,##0.00', ValorTotal);
   QRLabelIR.Enabled :=
   (QueryItensPagProtetico.FieldByName('TipoPessoa').AsString = 'PJ');
   QRLabel9.Enabled := QRLabelIR.Enabled;
//   VTotalAux := ValorTotal;
   VTotLiq := 0;
   QRLabel9.Caption := 'IR(' + FloatToStr(VPercentIR) + '%)';
   if QueryItensPagProtetico.FieldByName('TipoPessoa').AsString = 'PJ' then
   begin
      QRLabel10.Caption := 'Tributos(' + FloatToStr(VPercentTrib) + '%)';
      if not QueryItensPagProteticooptante_simples.AsBoolean and (QueryVrTotalClinicaP.FieldByName('valor').AsCurrency >= V_VrBaseIR) then // somente quem recebe mais que 666.66 paga 4.65
      begin
         VTotLiq := VTotLiq + round(ValorTotal * ( VPercentIR / 100) * 100) / 100;
         QRLabelIR.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * ( VPercentIR / 100));
      end
      else
         QRLabelIR.Caption  := 'R$ 0.00';


      if not QueryItensPagProteticooptante_simples.AsBoolean and (QueryVrTotalClinicaP.FieldByName('valor').AsCurrency >= V_VrBaseTrib) then // somente quem recebe mais que 215 paga 4.65
      begin
         VTotLiq := VTotLiq + (round(ValorTotal * (VPercentTrib / 100) * 100) / 100);
         QRLabelImposto.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * (VPercentTrib / 100));
      end
      else
         QRLabelImposto.Caption  := 'R$ 0.00';

     QRLabelVrTotLiq.Caption := FormatFloat('R$ ' + '###,##0.00', ValorTotal - VTotLiq);
   end
   else
   begin
      QRLabelImposto.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * (VPercentINSS / 100));
      QRLabel10.Caption := 'INSS(' + FloatToStr(VPercentINSS) + '%)';
      QRLabelVrTotLiq.Caption := FormatFloat('R$ ' + '###,##0.00', ValorTotal - (ValorTotal * (VPercentINSS / 100)) );
   end;
   ValorTotal := 0;
end;

end.
