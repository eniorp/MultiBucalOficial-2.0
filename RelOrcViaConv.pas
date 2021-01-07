unit RelOrcViaConv;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,biblio, jpeg;

type
  TQrViaConv = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRSysData_: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabelTotProt: TQRLabel;
    QRLabelSaldo: TQRLabel;
    QRShape2: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText17: TQRDBText;
    QRImage1: TQRImage;
    DetailBand1: TQRBand;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBTextTotProt: TQRDBText;
    QRDBTextSaldo: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel19: TQRLabel;
    QRExprDent: TQRExpr;
    QRExprSaldo: TQRExpr;
    QRLabel20: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel22: TQRLabel;
    QRShape5: TQRShape;
    QRLabel23: TQRLabel;
    QRDBText20: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabelTotDent: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QueryOrcamento: TQuery;
    QRDBTextTotDent: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRExprTotProt: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabelp1: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabelp2: TQRLabel;
    QRLabelv1: TQRLabel;
    QRLabeld1: TQRLabel;
    QRLabelt_1: TQRLabel;
    QRLabelv2: TQRLabel;
    QRLabeld2: TQRLabel;
    QRLabelt2: TQRLabel;
    QRLabelp3: TQRLabel;
    QRLabelv3: TQRLabel;
    QRLabeld3: TQRLabel;
    QRLabelt3: TQRLabel;
    QRLabelp4: TQRLabel;
    QRLabelv4: TQRLabel;
    QRLabeld4: TQRLabel;
    QRLabelt4: TQRLabel;
    QRLabelp5: TQRLabel;
    QRLabelv5: TQRLabel;
    QRLabeld5: TQRLabel;
    QRLabelt5: TQRLabel;
    QRLabelp6: TQRLabel;
    QRLabelv6: TQRLabel;
    QRLabeld6: TQRLabel;
    QRLabelt6: TQRLabel;
    QRLabelp7: TQRLabel;
    QRLabelp8: TQRLabel;
    QRLabelv7: TQRLabel;
    QRLabeld7: TQRLabel;
    QRLabelt7: TQRLabel;
    QRLabelv8: TQRLabel;
    QRLabeld8: TQRLabel;
    QRLabelt8: TQRLabel;
    QRLabelp9: TQRLabel;
    QRLabelv9: TQRLabel;
    QRLabeld9: TQRLabel;
    QRLabelt9: TQRLabel;
    QRLabelp10: TQRLabel;
    QRLabelv10: TQRLabel;
    QRLabeld10: TQRLabel;
    QRLabelt10: TQRLabel;
    QRLabelp11: TQRLabel;
    QRLabelv11: TQRLabel;
    QRLabeld11: TQRLabel;
    QRLabelt11: TQRLabel;
    QRLabelp12: TQRLabel;
    QRLabelv12: TQRLabel;
    QRLabeld12: TQRLabel;
    QRLabelt12: TQRLabel;
    QRLabel26: TQRLabel;
    QRShape6: TQRShape;
    QRLabel21: TQRLabel;
    QRLabelvIA: TQRLabel;
    QRLabelDesc: TQRLabel;
    QRShapeDesc: TQRShape;
    QRExprDesc: TQRExpr;
    QRSysData4: TQRSysData;
    QRLabelLocal: TQRLabel;
    QRDBTextLocal: TQRDBText;
    QRLabelPer1: TQRLabel;
    QRLabelPer2: TQRLabel;
    QRLabelPer3: TQRLabel;
    QRLabelPer4: TQRLabel;
    QRLabelPer5: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel17: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabelAlerta: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBRichText1: TQRDBRichText;
    QRLabelAtraso: TQRLabel;
    QRBandPageFooter: TQRBand;
    QRSysDataCan: TQRSysData;
    QRSysData8Can: TQRSysData;
    QRLabelCan: TQRLabel;
    QRLabel34Can: TQRLabel;
    QRShapeCan: TQRShape;
    QRLabel38Can: TQRLabel;
    QRLabel39Can: TQRLabel;
    QRLabel40Can: TQRLabel;
    QRLabel41Can: TQRLabel;
    QRLabel43Can: TQRLabel;
    QRLabel44Can: TQRLabel;
    QRDBText21Can: TQRDBText;
    QRDBText27Can: TQRDBText;
    QRDBText28Can: TQRDBText;
    QRDBText31Can: TQRDBText;
    QRDBText32Can: TQRDBText;
    QRDBText33Can: TQRDBText;
    QRDBTextCan: TQRDBText;
    QRDBText35: TQRDBText;
    QRExpr2Can: TQRExpr;
    QRLabel45Can: TQRLabel;
    QRShape12Can: TQRShape;
    QueryPrestacoes: TQuery;
    QRDBTextDenteFace: TQRDBText;
    QRLabelDenteFace: TQRLabel;
    QRImage2: TQRImage;
    QRLabelPericiaIni: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabelClinica: TQRLabel;
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QrViaConv: TQrViaConv;

implementation

uses udm;

{$R *.DFM}

procedure TQrViaConv.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

   if (QueryOrcamento.FieldByName('desconto').AsCurrency > 0) then
   begin
      QRShapeDesc.Enabled := True;
      QRLabelDesc.Enabled := true;
      QRExprDesc.Enabled := true;
      QRLabelDesc.caption := 'Desconto de ' + QueryOrcamento.FieldByName('desconto').AsString + '% para Pagamento a Vista';
   end
      else
      if (QueryOrcamento.FieldByName('desconto').AsCurrency < 0) then // tem acrescimo desconto negativo...dificil de acreditar mas e.. nesse caso habilita o somatorio..
      begin
         QRExprDesc.Enabled := true;
         QRLabelDesc.Enabled := true;
         QRLabelDesc.Caption := 'Acréscimo de ' + FormatFloat('##0.00',QueryOrcamento.FieldByName('desconto').AsCurrency * -1) + '%';

      end;

   if QueryPrestacoes.Recordcount > 12 then
      QRLabel21.caption := 'ATENÇÃO ESTE ORÇAMENTO POSSUI MAIS DE 12 PRESTAÇÕES, FORAM IMPRESSA SOMENTE AS 12 PRIMEIRAS'
   else
      QRLabel21.caption := '';
   // quando ainda nao foi gerado as parcelas mostrar um resumo pra saber quanto dara cada parcela(solicitado peloa gabi para seato
   if (QueryPrestacoes.RecordCount = 0) and (QueryOrcamento.FieldByName('numero_parcelas').AsInteger > 0) then
   begin
      QRLabel20.Caption := 'Condições de Pagamento : ' + QueryOrcamento.FieldByName('numero_parcelas').AsString + ' de ' + FormatFloat('#,##0.00', QueryOrcamento.FieldByName('Total').AsFloat / QueryOrcamento.FieldByName('numero_parcelas').AsInteger) ;
   end;

   while not QueryPrestacoes.eof do
   begin
      case QueryPrestacoes.FieldByName('parcela').AsInteger of

      1: begin
           QRLabelp1.caption := '1';
           QRLabelv1.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld1.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           //QRLabelt_1.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
           QRLabelt_1.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;

         end;
      2: begin
           QRLabelp2.caption := '2';
           QRLabelv2.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld2.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt2.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt2.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      3: begin
           QRLabelp3.caption := '3';
           QRLabelv3.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld3.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt3.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt3.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      4: begin
           QRLabelp4.caption := '4';
           QRLabelv4.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld4.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt4.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt4.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      5: begin
           QRLabelp5.caption := '5';
           QRLabelv5.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld5.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt5.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt5.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      6: begin
           QRLabelp6.caption := '6';
           QRLabelv6.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld6.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt6.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt6.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      7: begin
           QRLabelp7.caption := '7';
           QRLabelv7.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld7.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt7.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt7.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      8: begin
           QRLabelp8.caption := '8';
           QRLabelv8.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld8.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt8.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt8.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      9: begin
           QRLabelp9.caption := '9';
           QRLabelv9.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld9.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt9.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt9.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      10: begin
           QRLabelp10.caption := '10';
           QRLabelv10.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld10.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           QRLabelt10.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
           //QRLabelt10.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
         end;
      11: begin
           QRLabelp11.caption := '11';
           QRLabelv11.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld11.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           //QRLabelt11.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
           QRLabelt11.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
         end;
      12: begin
           QRLabelp12.caption := '12';
           QRLabelv12.caption := QueryPrestacoes.FieldByName('valor').AsString;
           QRLabeld12.caption := QueryPrestacoes.FieldByName('vencimento').AsString;
           //QRLabelt12.caption := QueryPrestacoes.FieldByName('orcamento').AsString + lpad(QueryPrestacoes.FieldByName('parcela').AsString,2,'0');
           QRLabelt12.caption := QueryPrestacoes.FieldByName('tp_pagto').AsString;
         end;
      end;
      QueryPrestacoes.next;
   end;
    if dm.execmd('SELECT COUNT(ORCAMENTO) q FROM EventOdontograma WHERE incremento = 0 and ORCAMENTO = ' + QueryOrcamento.fieldByName('numero').AsString + ' AND TP_EVENTO = ''S''','q') <> '0' then
    begin
       QRLabelAtraso.Enabled := true;
       QRLabelAtraso.Caption := 'USUÁRIO POSSUI TÍTULOS EM ATRASO ';
    end

end;

procedure TQrViaConv.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if  QueryOrcamento.FieldByName('tx_evento').AsString <> '' then
       QrViaConv.DetailBand1.Height := 50
   else
      QrViaConv.DetailBand1.Height := 16;
end;

procedure TQrViaConv.PageHeaderBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if QueryOrcamento.FieldByName('PericiaInicial').AsBoolean then
      QRLabelPericiaIni.Caption := 'Pericia Ini : S'
   else
     QRLabelPericiaIni.Caption := 'Pericia Ini : N';
end;

end.
