{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Pagamento de Dentistas             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRPagamentoProteticoClinica;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaPagProteticoClinica = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelReferencia: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    QueryItensPagProtetico: TQuery;
    PageFooterBand1: TQRBand;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRGroupClinica: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QueryItensPagProteticoClinica: TIntegerField;
    QueryItensPagProteticoValor: TFloatField;
    QRDBText3: TQRDBText;
    QueryProtetico: TQuery;
    QueryClinicas: TQuery;
    QueryClinicasCodigo: TIntegerField;
    QueryClinicasDescricao: TStringField;
    QueryProteticoCodigo: TIntegerField;
    QueryProteticoNome: TStringField;
    QueryItensPagProteticoClinica_Nome: TStringField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRExprImposto: TQRExpr;
    QRExprVrLiqui: TQRExpr;
    QRExpr5: TQRExpr;
    QueryItensPagProteticoProtetico: TIntegerField;
    QueryItensPagProteticoProtetico_Nome: TStringField;
    QRExprTotalAcr: TQRExpr;
    QRExprSumTotDesc: TQRExpr;
    QueryProteticoDesconto: TIntegerField;
    QueryItensPagProteticoDesconto: TIntegerField;
    QRLabelAvisoPJ: TQRLabel;
    QueryItensPagProteticoTipoPessoa: TStringField;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelImposto: TQRLabel;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabelAvisoAutonomo: TQRLabel;
    QRBandClinica: TQRBand;
    QRLabel9: TQRLabel;
    QRLabelTotal: TQRLabel;
    QRLabelTotalDesc: TQRLabel;
    QRLabelIR: TQRLabel;
    QRLabelTotImposto1: TQRLabel;
    QRLabelVrLiquid: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabelTotImposto: TQRLabel;
    QRLabelTotIR: TQRLabel;
    QRLabeltotalzaoLiq: TQRLabel;
    QueryParam: TQuery;
    QueryItensPagProteticolg_recebimento_deposito: TStringField;
    QRDBText2: TQRDBText;
    QueryItensPagProteticooptante_simples: TBooleanField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBandClinicaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
     IR, VTotIR, VTotImposto, VImposto , Total,VTotalDesc,VTotalzaoLiq : currency;
     V_VrBaseTrib, V_VrBaseIR, VPercentIR, VPercentTrib,VPercentINSS : currency;
  public

  end;

var
  QRListaPagProteticoClinica: TQRListaPagProteticoClinica;
  MesAno  : String[7];
  VTipoPessoa : String[2];
  Clinica : Integer;


implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaPagProteticoClinica.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

     QueryParam.Close;
     QueryParam.Open;

     V_VrBaseTrib  := QueryParam.FieldByName('vrBaseCobr_tributos').AsCurrency;
     V_VrBaseIR    := QueryParam.FieldByName('VrBaseCobr_ir').AsCurrency;
     VPercentIR    := QueryParam.FieldByName('Percent_ir').AsCurrency;
     VPercentTrib  := QueryParam.FieldByName('Percent_tributos').AsCurrency;
     VPercentINSS  := QueryParam.FieldByName('Percent_inss').AsCurrency;

     IR            := 0;
     VImposto      := 0;
     VTotalzaoLiq  := 0;
     VTotImposto   := 0;
     VTotIR        := 0;
     Total         := 0;
     VTotalDesc    := 0;

     QRLabelEmpresa.Caption := Senha.Empresa;
     QueryItensPagProtetico.Close;
     QueryItensPagProtetico.ParamByName('MesAno').asString := MesAno;
     if Clinica <> 0 then
     begin
        QueryItensPagProtetico.ParamByName('Clinica').asInteger := Clinica;
        QueryItensPagProtetico.Sql[6] := '';
     end
     else
     begin
         QueryItensPagProtetico.SQL[5] := '';
         QueryItensPagProtetico.ParamByName('PTipoPessoa').asString := VTipoPessoa;
     end;
     QueryItensPagProtetico.Open;

     if QueryItensPagProtetico.FieldByName('TipoPessoa').AsString = 'PJ' then
     begin
        QRListaPagProteticoClinica.ReportTitle := 'Relatório de Protéticos p/ Clínica(PJ)';
        QRExprImposto.Enabled := False;
        QRExprVrLiqui.Enabled := False;
        QRLabelImposto.Caption := 'TRIBUTOS';
        QRLabelAvisoPJ.Enabled := True;
     end
     else
     begin
        QRListaPagProteticoClinica.ReportTitle := 'Relatório de Protético p/ Clínica(Autônomos)';
        QRExprImposto.Enabled := True;
        QRExprVrLiqui.Enabled := True;
        QRLabelTotIR.enabled := False;
        QRExprVrLiqui.expression := 'QueryItensPagProtetico.Valor - ((QueryItensPagProtetico.Valor * QueryItensPagProtetico.Desconto)/100) - ((QueryItensPagProtetico.Valor - ((QueryItensPagProtetico.Valor * QueryItensPagProtetico.Desconto)/100)) * ' + StringReplace(currToStr(VPercentINSS),',','.',[]) + ') /100';
        QRExprImposto.expression := '((QueryItensPagProtetico.Valor - ((QueryItensPagProtetico.Valor * QueryItensPagProtetico.Desconto)/100)) * ' +  StringReplace(currToStr(VPercentINSS),',','.',[]) +  ') /100';
        QRLabelImposto.Caption := 'INSS';
        QRLabel6.enabled := False;
        QRLabelIR.enabled := False;
//        QRLabelIR.enabled := False;
        QRLabelAvisoAutonomo.Enabled := True;
//        SummaryBand1.Enabled := False;
     end;

end;

procedure TQRListaPagProteticoClinica.QRBandClinicaBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
  Var VTotLiq : Currency;
begin
   if (QueryItensPagProtetico.FieldByName('TipoPessoa').AsString = 'PJ') then
   begin
      if not QueryItensPagProteticooptante_simples.AsBoolean and (VTotalDesc >= V_VrBaseTrib) then
      //if VTotalDesc >= 215 then
      begin
         VTotLiq := (Round(VTotalDesc * 100) / 100) - (Round(VImposto * 100) / 100);
         QRLabelTotImposto1.Caption      := FormatFloat( 'R$' + '###,##0.00', VImposto);
         VTotImposto := VTotImposto + round(VImposto * 100) / 100;
      end
      else
      begin
         QRLabelTotImposto1.Caption := 'R$ 0.00';
         VTotLiq := VTotalDesc;
      end;
      if not QueryItensPagProteticooptante_simples.AsBoolean and (VTotalDesc >= V_VrBaseIR) then
      //if VTotalDesc >= 666.66 then
      begin
         VTotLiq := VTotLiq - (Round(IR * 100) / 100);
         QRLabelIR.Caption      := FormatFloat( 'R$' + '###,##0.00', IR);
         VTotIR := VTotIR + (round(IR * 100) / 100);
      end
      else
         QRLabelIR.Caption      := 'R$ 0.00';

      QRLabelVrLiquid.Caption := FormatFloat( 'R$' + '###,##0.00', VTotLiq);
      VTotalzaoLiq := VTotalzaoLiq + VTotLiq;
   end
   else
   begin
      QRLabelTotImposto1.Caption     := FormatFloat( 'R$' + '###,##0.00', VImposto);
      VTotImposto := VTotImposto + VImposto;
      QRLabelVrLiquid.Caption := FormatFloat( 'R$' + '###,##0.00', VTotalDesc - VImposto);
      VTotalzaoLiq := VTotalzaoLiq + (VTotalDesc - VImposto);
   end;

   QRLabelTotal.Caption     := FormatFloat( 'R$' + '###,##0.00', Total);
   QRLabelTotalDesc.Caption := FormatFloat( 'R$' + '###,##0.00', VTotalDesc);

   IR          := 0;
   VImposto    := 0;
   Total       := 0;
   VTotalDesc  := 0;

end;

procedure TQRListaPagProteticoClinica.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     IR :=  IR + (QueryItensPagProteticoValor.AsCurrency * VPercentIR) /100;
     if QueryItensPagProtetico.FieldByName('TipoPessoa').AsString = 'PJ' then
        VImposto := VImposto + ((QueryItensPagProteticoValor.AsCurrency - ((QueryItensPagProteticoValor.AsCurrency * QueryItensPagProteticoDesconto.AsCurrency)/100)) * VPercentTrib) /100
     else
        VImposto := VImposto + ((QueryItensPagProteticoValor.AsCurrency - ((QueryItensPagProteticoValor.AsCurrency * QueryItensPagProteticoDesconto.AsCurrency)/100)) * VPercentINSS) /100;
     Total := Total + QueryItensPagProteticoValor.AsCurrency;
     VTotalDesc := VTotalDesc +
     (QueryItensPagProteticoValor.AsCurrency - ((QueryItensPagProteticoValor.AsCurrency * QueryItensPagProteticoDesconto.AsCurrency)/100));

end;

procedure TQRListaPagProteticoClinica.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelTotImposto.caption := FormatFloat( 'R$' + '###,##0.00', VTotImposto);
   QRLabelTotIR.caption      := FormatFloat( 'R$' + '###,##0.00', VTotIR);
   QRLabeltotalzaoLiq.caption := FormatFloat( 'R$' + '###,##0.00', VTotalzaoLiq);
end;

end.
