{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impress�o do Relat�rio Pagamento de Dentistas             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRPagamentoDentistaClinica;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,dialogs;

type

  TQRListaPagDentistaClinica = class(TQuickRep)
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
    QueryItensPagDentista: TQuery;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRGroupClinica: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabelImposto: TQRLabel;
    QRBandClinica: TQRBand;
    QRLabel9: TQRLabel;
    QRBand2: TQRBand;
    QueryItensPagDentistaClinica: TIntegerField;
    QueryItensPagDentistaDentista: TIntegerField;
    QueryItensPagDentistaValor: TFloatField;
    QRDBText3: TQRDBText;
    QueryDentista: TQuery;
    QueryClinicas: TQuery;
    QueryClinicasCodigo: TIntegerField;
    QueryClinicasDescricao: TStringField;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryItensPagDentistaClinica_Nome: TStringField;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRExprImposto: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel6: TQRLabel;
    QRLabelISS: TQRLabel;
    QRLabelIR: TQRLabel;
    QRLabelTotal: TQRLabel;
    QRLabel8: TQRLabel;
    QRExprTotalAcr: TQRExpr;
    QueryDentistaDesconto: TIntegerField;
    QueryItensPagDentistaDesconto: TIntegerField;
    QueryItensPagDentistaTipoPessoa: TStringField;
    QRLabelTotImposto: TQRLabel;
    QRLabelTotalDesc: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabelVrLiquid: TQRLabel;
    QRExprVrLiqui: TQRExpr;
    QRLabelTotIR: TQRLabel;
    QRLabelAvisoPJ: TQRLabel;
    QRLabelAvisoAutonomo: TQRLabel;
    QRLabeltotalzaoLiq: TQRLabel;
    QueryParam: TQuery;
    QueryItensPagDentistalg_recebimento_deposito: TStringField;
    QueryItensPagDentistadentista_nome: TStringField;
    QRDBText2: TQRDBText;
    QueryItensPagDentistaoptante_simples: TBooleanField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBandClinicaBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
       V_VrBaseTrib, V_VrBaseIR, VPercentIR, VPercentTrib,VPercentINSS : currency;
  public

  end;

var
  QRListaPagDentistaClinica: TQRListaPagDentistaClinica;
  MesAno  : String[7];
  TipoPessoa : String[2];
  Rol : String[2];  
  Clinica : Integer;
//  IR, Imposto, PIS, CONFINS, Total : currency;
  IR, VTotIR, Imposto, VTotImposto, VTotalzaoLiq , Total,VTotalDesc : currency;

implementation
   uses Senha, RelPagamentos;
{$R *.DFM}

procedure TQRListaPagDentistaClinica.QuickRepBeforePrint(Sender: TCustomQuickRep;
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
     Imposto       := 0;
     VTotImposto   := 0;
     VTotalzaoLiq  := 0;
     VTotIR        := 0;
     Total         := 0;
     VTotalDesc    := 0;
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryItensPagDentista do
       begin
         Close;
         ParamByName('MesAno').asString := MesAno;
         if Clinica <> 0 then
         begin
           ParamByName('Clinica').asInteger := Clinica;
           Sql[6] := '';
         end
         else
         begin
           SQL[5] := '';
           ParamByName('TipoPessoa').asString := TipoPessoa;
         end;
          if Rol='RS' then
           SQL[7] := 'and servicos.rol = 1';
         if Rol='RN' then
           SQL[7] := 'and servicos.rol = 0';
         if Rol='TD' then
           SQL[7] := '';

         FormRelPagamentos.Memo1.lines.add(text);         
         Open;

         if QueryItensPagDentista.FieldByName('TipoPessoa').AsString = 'PJ' then
         begin
            QRListaPagDentistaClinica.ReportTitle := 'Relat�rio do Dentistas p/ Cl�nica(PJ)';
            QRExprImposto.Enabled := False;
            QRExprVrLiqui.Enabled := False;
            //QRExprImposto.expression := '((QueryItensPagDentista.Valor - ((QueryItensPagDentista.Valor * QueryItensPagDentista.Desconto)/100)) * 4.65) /100';
            //QRExprTotTributos.expression := 'SUM(((QueryItensPagDentista.Valor - ((QueryItensPagDentista.Valor * QueryItensPagDentista.Desconto)/100)) * 4.65) /100)';
            QRLabelImposto.Caption := 'TRIBUTOS';
            QRLabelAvisoPJ.Enabled := True;
         end
         else
         begin
            QRListaPagDentistaClinica.ReportTitle := 'Relat�rio do Dentistas p/ Cl�nica(Aut�nomos)';
            QRExprImposto.Enabled := True;
            QRExprVrLiqui.Enabled := True;
            QRExprVrLiqui.expression := 'QueryItensPagDentista.Valor - ((QueryItensPagDentista.Valor * QueryItensPagDentista.Desconto)/100) - ((QueryItensPagDentista.Valor - ((QueryItensPagDentista.Valor * QueryItensPagDentista.Desconto)/100)) * ' + StringReplace(currToStr(VPercentINSS),',','.',[]) + ') /100';
            QRExprImposto.expression := '((QueryItensPagDentista.Valor - ((QueryItensPagDentista.Valor * QueryItensPagDentista.Desconto)/100)) * ' +  StringReplace(currToStr(VPercentINSS),',','.',[]) +  ') /100';
            QRLabelImposto.Caption := 'INSS';
            QRLabel6.enabled := False;
            QRLabelTotIR.enabled := False;
            //QRExpr.enabled := False;
            QRLabelIR.enabled := False;
//            QRExpr10.enabled := False;
            QRLabelAvisoAutonomo.Enabled := True;
            //SummaryBand1.Enabled := False;
         end;
       end;
end;

procedure TQRListaPagDentistaClinica.QRBandClinicaBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
  Var VTotLiq : Currency;
begin

//   QRLabelCONFINS.Caption := FormatFloat( 'R$' + '###,##0.00', CONFINS);
//   QRLabelPIS.Caption     := FormatFloat( 'R$' + '###,##0.00', PIS);
   if (QueryItensPagDentista.FieldByName('TipoPessoa').AsString = 'PJ') then
   begin
      //verAqui
      if VTotalDesc >= V_VrBaseTrib then
      //if VTotalDesc >= 215 then
      begin
         VTotLiq := (Round(VTotalDesc * 100) / 100) - (Round(Imposto * 100) / 100);
         QRLabelISS.Caption      := FormatFloat( '###,##0.00', Imposto);
         VTotImposto := VTotImposto + round(Imposto * 100) / 100;
      end
      else
      begin
         QRLabelISS.Caption := '0.00';
         VTotLiq := VTotalDesc;
      end;
       //VerAqui
       if (VTotalDesc >= V_VrBaseIR) then
      //if VTotalDesc >= 666.66 then
      begin
         if not QueryItensPagDentista.FieldByName('optante_simples').AsBoolean then
         begin
            VTotLiq := VTotLiq - (Round(IR * 100) / 100);
            QRLabelIR.Caption      := FormatFloat( '###,##0.00', IR);
            VTotIR := VTotIR + (round(IR * 100) / 100);
         end
         else
            QRLabelIR.Caption      := FormatFloat( '###,##0.00', IR);
      end
      else
         QRLabelIR.Caption      := '0.00';

      QRLabelVrLiquid.Caption := FormatFloat( '###,##0.00', VTotLiq);
      VTotalzaoLiq := VTotalzaoLiq + VTotLiq;
   end
   else
   begin
      QRLabelISS.Caption     := FormatFloat( '###,##0.00', Imposto);
      VTotImposto := VTotImposto + Imposto;
      QRLabelVrLiquid.Caption := FormatFloat( '###,##0.00', VTotalDesc -Imposto);
      VTotalzaoLiq := VTotalzaoLiq + (VTotalDesc -Imposto);
   end;

   QRLabelTotal.Caption   := FormatFloat( '###,##0.00', Total);
   QRLabelTotalDesc.Caption   := FormatFloat( '###,##0.00', VTotalDesc);
   IR  := 0;
   Imposto := 0;
//   PIS := 0;
//   CONFINS := 0;
   Total := 0;
   VTotalDesc := 0;
end;

procedure TQRListaPagDentistaClinica.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    //showmessage(QueryItensPagDentistaDentista_Nome.AsString);
     //veraqui
     if not QueryItensPagDentista.FieldByName('optante_simples').AsBoolean then
        IR :=  IR + (QueryItensPagDentistaValor.AsCurrency * VPercentIR) /100;
     //IR :=  IR + (QueryItensPagDentistaValor.AsCurrency * 1.5) /100;
     if QueryItensPagDentista.FieldByName('TipoPessoa').AsString = 'PJ' then
     begin
          if QueryItensPagDentista.FieldByName('optante_simples').AsBoolean then
          begin
             Imposto := 0;
             QRExprImposto.Visible := false;
          end
          else
          begin
             Imposto := Imposto + ((QueryItensPagDentistaValor.AsCurrency - ((QueryItensPagDentistaValor.AsCurrency * QueryItensPagDentistaDesconto.AsCurrency)/100)) * VPercentTrib) /100;
             QRExprImposto.Visible := true;
          end;
     end
     else
        Imposto := Imposto + ((QueryItensPagDentistaValor.AsCurrency - ((QueryItensPagDentistaValor.AsCurrency * QueryItensPagDentistaDesconto.AsCurrency)/100)) * VPercentINSS) /100;
        //Imposto := Imposto + ((QueryItensPagDentistaValor.AsCurrency - ((QueryItensPagDentistaValor.AsCurrency * QueryItensPagDentistaDesconto.AsCurrency)/100)) * 11) /100;

//     ISS := ISS + (QueryItensPagDentistaValor.AsCurrency * 5) /100;
//     PIS := PIS + (QueryItensPagDentistaValor.AsCurrency * 0.65) / 100;
//     CONFINS := CONFINS + (QueryItensPagDentistaValor.AsCurrency * 3) / 100;
     Total := Total + QueryItensPagDentistaValor.AsCurrency;
     VTotalDesc := VTotalDesc +
     (QueryItensPagDentistaValor.AsCurrency - ((QueryItensPagDentistaValor.AsCurrency * QueryItensPagDentistaDesconto.AsCurrency)/100));
end;

procedure TQRListaPagDentistaClinica.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelTotImposto.caption  := FormatFloat( '###,##0.00', VTotImposto);

   QRLabelTotIR.caption       := FormatFloat( '###,##0.00', VTotIR);
   QRLabeltotalzaoLiq.caption := FormatFloat( '###,##0.00', VTotalzaoLiq);

end;

end.
