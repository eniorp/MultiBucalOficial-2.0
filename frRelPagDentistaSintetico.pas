unit frRelPagDentistaSintetico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadraoGroup, DB, RLParser, RLReport, ADODB;

type
  TFmfrRelPagDentistaSintetico = class(TFmFortesPadraoGroup)
    ADOQuery1: TADOQuery;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    QRLabelTrib: TRLLabel;
    QRLabelImposto: TRLLabel;
    RLDraw1: TRLDraw;
    QueryParam: TADOQuery;
    QRLabelData: TRLLabel;
    QRLabelEmpresa: TRLLabel;
    RLLabelPeriodo: TRLLabel;
    QRLabelDadosDep: TRLLabel;
    QueryVrTotalClinica: TADOQuery;
    QRLabel9: TRLLabel;
    QRLabelIR: TRLLabel;
    QRLabelVrTotLiq: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    QRLabelAcordo: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBResult3: TRLDBResult;
    procedure RLReportHBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
     V_VrBaseTrib, V_VrBaseIR, VPercentIR, VPercentTrib,VPercentINSS : currency;

       ValorD, ValorTotal : Currency;
  public
      MesAno : String[7];
    { Public declarations }
  end;

var
  FmfrRelPagDentistaSintetico: TFmfrRelPagDentistaSintetico;

implementation

uses udm, Senha, RelFortesPadrao;

{$R *.dfm}

procedure TFmfrRelPagDentistaSintetico.RLReportHBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
     QueryParam.Close;
     QueryParam.Open;

     V_VrBaseTrib  := QueryParam.FieldByName('vrBaseCobr_tributos').AsCurrency;
     V_VrBaseIR    := QueryParam.FieldByName('VrBaseCobr_ir').AsCurrency;
     VPercentIR    := QueryParam.FieldByName('Percent_ir').AsCurrency;
     VPercentTrib  := QueryParam.FieldByName('Percent_tributos').AsCurrency;
     VPercentINSS  := QueryParam.FieldByName('Percent_inss').AsCurrency;

     QRLabelData.Caption := 'RIBEIRÃO PRETO, ' + inputbox('Data','Informe a data','29/' + MesAno);
    ValorTotal := 0;
    ValorD := 0;
    QRLabelEmpresa.Caption := Senha.Empresa;
    if ADOQuery1.FieldByName('TipoPessoa').AsString = 'PJ' then
       RLReportH.Title := 'Recibo de Pagamento de Dentistas Pessoa Jurídica'
    else
       RLReportH.Title := 'Recibo de Pagamento de Dentistas Autônomos';

    QRLabelAcordo.Caption := 'Confirmo ter recebido da ' +  Senha.Empresa + ' a Importância Acima.';
end;

procedure TFmfrRelPagDentistaSintetico.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
      ValorTotal := ValorTotal + ADOQuery1.FieldByName('Valor').AsCurrency

end;

procedure TFmfrRelPagDentistaSintetico.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
    var VTotLiq : Currency;
begin
  inherited;
   // pega o valor total da clinica para ver se deduz  tributos e IR
   if ADOQuery1.FieldByName('lg_recebimento_deposito').AsBoolean then
      QRLabelDadosDep.Caption := 'BANCO : ' + ADOQuery1.FieldByName('banco').AsString + ' AG: ' + ADOQuery1.FieldByName('agencia').AsString + ' C/C : '
      + ADOQuery1.FieldByName('contaCorrente').AsString + '-' + ADOQuery1.FieldByName('digitoCC').AsString
   else
       QRLabelDadosDep.Caption := '';

   QueryVrTotalClinica.Close;
   QueryVrTotalClinica.SQL[14] := '''' +  mesano + '''';
   QueryVrTotalClinica.SQL[16] := ADOQuery1.FieldByName('Codigo').AsString;
   QueryVrTotalClinica.Open;


   QRLabelIR.Visible :=
   (ADOQuery1.FieldByName('TipoPessoa').AsString = 'PJ');
   QRLabel9.Visible := QRLabelIR.Visible;
   VTotLiq := 0;
   //veraqui
   QRLabel9.Caption := 'IR(' + FloatToStr(VPercentIR) + '%)';
   if ADOQuery1.FieldByName('TipoPessoa').AsString = 'PJ' then
   begin
      QRLabelTrib.Caption := 'Tributos(' + FloatToStr(VPercentTrib) + '%)';
      if QueryVrTotalClinica.FieldByName('valor').AsCurrency >= V_VrBaseIR then // somente quem recebe mais que 666.66 paga 4.65
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
      if QueryVrTotalClinica.FieldByName('valor').AsCurrency >= V_VrBaseTrib then // somente quem recebe mais que 215 paga 4.65
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
