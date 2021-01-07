{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Pagamento de Dentistas             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRPagamentoDentista;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaPagDentista = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
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
    QueryItensPagDentista: TQuery;
    QueryItensPagDentistaUsuario: TIntegerField;
    QueryItensPagDentistaData: TDateTimeField;
    QueryItensPagDentistaDentista: TIntegerField;
    QueryItensPagDentistaOrcamento: TIntegerField;
    QueryItensPagDentistaServico: TIntegerField;
    QueryItensPagDentistaQuantidade: TIntegerField;
    QueryItensPagDentistaValor: TFloatField;
    QueryItensPagDentistaNumero: TIntegerField;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabelAcordo: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QueryItensPagDentistaNome_Dentista: TStringField;
    QueryItensPagDentistaNome_Usuario: TStringField;
    QueryItensPagDentistaDesconto: TIntegerField;
    QRLabelValor: TQRLabel;
    QRLabelValorTotal: TQRLabel;
    QueryItensPagDentistaTipoPessoa: TStringField;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QueryItensPagDentistaNmClinica: TStringField;
    QRLabelData: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabelTrib: TQRLabel;
    QRLabelIR: TQRLabel;
    QRLabelImposto: TQRLabel;
    QRShape1: TQRShape;
    QRLabelVrTotLiq: TQRLabel;
    QueryVrTotalClinica: TQuery;
    QueryItensPagDentistacodigo: TIntegerField;
    QueryParam: TQuery;
    QRLabel12: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabelVrUnit: TQRLabel;
    QueryItensPagDentistaVrUnit: TFloatField;
    QRLabelDadosDep: TQRLabel;
    QueryItensPagDentistabanco: TStringField;
    QueryItensPagDentistaagencia: TStringField;
    QueryItensPagDentistacontaCorrente: TStringField;
    QueryItensPagDentistadigitoCC: TStringField;
    QueryItensPagDentistalg_recebimento_deposito: TBooleanField;
    QueryItensPagDentistaoptante_simples: TBooleanField;
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
  QRListaPagDentista: TQRListaPagDentista;
  MesAno : String[7];
  VTipoPessoa : String[2];
  Rol : String[2];  
  Dentista, Clinica : Integer;
  ValorD, ValorTotal : Currency;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaPagDentista.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

     QueryParam.Close;
     QueryParam.Open;

     V_VrBaseTrib  := QueryParam.FieldByName('vrBaseCobr_tributos').AsCurrency;
     V_VrBaseIR    := QueryParam.FieldByName('VrBaseCobr_ir').AsCurrency;
     VPercentIR    := QueryParam.FieldByName('Percent_ir').AsCurrency;
     VPercentTrib  := QueryParam.FieldByName('Percent_tributos').AsCurrency;
     VPercentINSS  := QueryParam.FieldByName('Percent_inss').AsCurrency;

     QRLabelData.Caption := 'RIBEIRÃO PRETO, ' + inputbox('Data','Informe a data','29/' + MesAno);

//    QRLabelData.Caption := 'Ribeirão Preto, 29/' + MesAno;
    ValorTotal := 0;
    ValorD := 0;
    QRLabelEmpresa.Caption := Senha.Empresa;
    QRLabelAcordo.Caption := 'Confirmo ter recebido da ' +  Senha.Empresa + ' a Importância Acima.';
     with QueryItensPagDentista do
       begin
         Close;
         ParamByName('MesAno').asString := MesAno;
         if Dentista <> 0 then
            ParamByName('Dentista').asInteger := Dentista
         else
            SQL[6] := '';
         if clinica <> 0 then
         begin
            ParamByName('Clinica').asInteger := Clinica;
            Sql[8] := '';
         end
         else
         begin
            ParamByName('TipoPessoa').AsString := VTipoPessoa;
            SQL[7] := '';
         end;
         if Rol='RS' then
           SQL[9] := 'and servicos.rol = 1';
         if Rol='RN' then
           SQL[9] := 'and servicos.rol = 0';
         if Rol='TD' then
           SQL[9] := '';

         Open;
         if QueryItensPagDentista.FieldByName('TipoPessoa').AsString = 'PJ' then
         begin
            QRListaPagDentista.ReportTitle := 'Recibo de Pagamento de Dentistas Pessoa Jurídica';
            //QRLabel12.enabled := True;
            //QRLabel13.enabled := True;
            //QRShape2.enabled := True;

            //QRLabel14.enabled := True;
            //QRLabel15.enabled := True;

            QueryVrTotalClinica.Close;
            QueryVrTotalClinica.ParamByName('MesAno').AsString := MesAno;
         end
         else
         begin
            QRListaPagDentista.ReportTitle := 'Recibo de Pagamento de Dentistas Autônomos';
         end;
       end;
end;

procedure TQRListaPagDentista.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if (QueryItensPagDentistaDesconto.AsInteger <> 0) then begin
      ValorD := QueryItensPagDentistaValor.AsCurrency - ((QueryItensPagDentistaValor.AsCurrency * QueryItensPagDentistaDesconto.AsInteger)/100);
      QRLabelValor.Caption := FormatFloat('R$ ' + '###,##0.00', ValorD);
      ValorTotal := ValorTotal + ValorD;

      // utilizando a var ValorD para aproveitar...

      ValorD := QueryItensPagDentistaVrUnit.AsCurrency - ((QueryItensPagDentistaVrUnit.AsCurrency * QueryItensPagDentistaDesconto.AsInteger)/100);
      QRLabelVrUnit.Caption := FormatFloat('R$ ' + '###,##0.00', ValorD);
   end
   else begin
      ValorD := QueryItensPagDentistaValor.AsCurrency;
      QRLabelValor.Caption := FormatFloat('R$ ' + '###,##0.00', ValorD);
      ValorTotal := ValorTotal + ValorD;
      QRLabelVrUnit.Caption := FormatFloat('R$ ' + '###,##0.00', QueryItensPagDentistaVrUnit.AsCurrency);

   end;


end;

procedure TQRListaPagDentista.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  var VTotLiq : Currency;
begin
   // pega o valor total da clinica para ver se deduz  tributos e IR
   if QueryItensPagDentistalg_recebimento_deposito.AsBoolean then
      QRLabelDadosDep.Caption := 'BANCO : ' + QueryItensPagDentistabanco.AsString + ' AG: ' + QueryItensPagDentistaagencia.AsString + ' C/C : ' + QueryItensPagDentistacontaCorrente.AsString + '-' + QueryItensPagDentistadigitoCC.AsString
   else
       QRLabelDadosDep.Caption := '';

   QueryVrTotalClinica.Close;
   QueryVrTotalClinica.ParamByName('codigo').AsInteger := QueryItensPagDentistaCodigo.AsInteger;;
   QueryVrTotalClinica.Open;

   QRLabelValorTotal.Caption := FormatFloat('R$ ' + '###,##0.00', ValorTotal);
   QRLabelIR.Enabled :=
   (QueryItensPagDentista.FieldByName('TipoPessoa').AsString = 'PJ');
   QRLabel9.Enabled := QRLabelIR.Enabled;
   VTotLiq := 0;
   //veraqui
   QRLabel9.Caption := 'IR(' + FloatToStr(VPercentIR) + '%)';
   if QueryItensPagDentista.FieldByName('TipoPessoa').AsString = 'PJ' then
   begin
      QRLabelTrib.Caption := 'Tributos(' + FloatToStr(VPercentTrib) + '%)';
      if not (QueryItensPagDentista.FieldByName('optante_simples').AsBoolean) and (QueryVrTotalClinica.FieldByName('valor').AsCurrency >= V_VrBaseIR) then // somente quem recebe mais que 666.66 paga 4.65
      //if QueryVrTotalClinica.FieldByName('valor').AsCurrency >= 666.66 then // somente quem recebe mais que 666.66 paga 4.65
      begin
         //VTotLiq := VTotLiq + round(ValorTotal * 0.015 * 100) / 100;
         VTotLiq := VTotLiq + round(ValorTotal * ( VPercentIR / 100) * 100) / 100;

         //QRLabelIR.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * 0.015);
         QRLabelIR.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * ( VPercentIR / 100));
      end
      else
         QRLabelIR.Caption  := 'R$ 0.00';

      //VerAqui
      //if QueryVrTotalClinica.FieldByName('valor').AsCurrency >= 215 then // somente quem recebe mais que 215 paga 4.65
      if not (QueryItensPagDentista.FieldByName('optante_simples').AsBoolean) and (QueryVrTotalClinica.FieldByName('valor').AsCurrency >= V_VrBaseTrib) then // somente quem recebe mais que 215 paga 4.65
      begin
         //VTotLiq := VTotLiq + (round(ValorTotal * 0.0465 * 100) / 100);
         VTotLiq := VTotLiq + (round(ValorTotal * (VPercentTrib / 100) * 100) / 100);
         //QRLabelImposto.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * 0.0465);
         QRLabelImposto.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * (VPercentTrib / 100));

      end
      else
         QRLabelImposto.Caption  := 'R$ 0.00';

     QRLabelVrTotLiq.Caption := FormatFloat('R$ ' + '###,##0.00', ValorTotal - VTotLiq);
   end
   else
   begin
      //verAqui
//      QRLabelImposto.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * 0.11);
      QRLabelImposto.Caption  := FormatFloat('R$ ' + '###,##0.00', ValorTotal * (VPercentINSS / 100));
      QRLabelTrib.Caption := 'INSS(' + FloatToStr(VPercentINSS) + '%)';

      //QRLabelVrTotLiq.Caption := FormatFloat('R$ ' + '###,##0.00', ValorTotal - (ValorTotal * 0.11) );
      QRLabelVrTotLiq.Caption := FormatFloat('R$ ' + '###,##0.00', ValorTotal - (ValorTotal * (VPercentINSS / 100)));
   end;
   ValorTotal := 0;
end;

end.


