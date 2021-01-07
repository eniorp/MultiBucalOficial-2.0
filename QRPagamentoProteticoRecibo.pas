unit QRPagamentoProteticoRecibo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,Dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Extenso, jpeg;

type
  TQRPagProteticoRecibo = class(TQuickRep)
    QRBandPrincipal: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRMemoRecibo: TQRMemo;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRMemo1: TQRMemo;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLogo: TQRImage;
    QRLabel1: TQRLabel;
    QueryItens_PagProtetico: TQuery;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabelExtenso: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText4: TQRDBText;
    QueryItens_PagProteticoQuantidade_Paga: TIntegerField;
    QueryItens_PagProteticoValor: TFloatField;
    QueryItens_PagProteticodesconto: TFloatField;
    QueryItens_PagProteticoTotal: TFloatField;
    QueryItens_PagProteticonome: TStringField;
    QueryItens_PagProteticocic: TStringField;
    QueryItens_PagProteticoinss: TStringField;
    QueryItens_PagProteticoprotetico: TIntegerField;
    QueryDtPagto: TQuery;
    QRLabelDadosDep: TQRLabel;
    QueryItens_PagProteticoagencia: TStringField;
    QueryItens_PagProteticobanco: TStringField;
    QueryItens_PagProteticocontacorrente: TStringField;
    QueryItens_PagProteticodigitoCC: TStringField;
    QueryItens_PagProteticolg_recebimento_deposito: TBooleanField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBandPrincipalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRPagProteticoRecibo: TQRPagProteticoRecibo;
  MesAno : String[7];
  VProtetico, VClinica : Integer;


implementation

uses RelPagamentosProteticos;

{$R *.DFM}

procedure TQRPagProteticoRecibo.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
    QueryItens_PagProtetico.Close;
    QueryItens_PagProtetico.ParamByName('Mes').asString := MesAno;
    if VProtetico <> 0 then
       QueryItens_PagProtetico.ParamByName('Protetico').asInteger := VProtetico
    else
       QueryItens_PagProtetico.Sql[22] := '';
    if Vclinica <> 0 then
       QueryItens_PagProtetico.ParamByName('clinica').asInteger := VClinica
    else
       QueryItens_PagProtetico.Sql[23] := '';

    QueryItens_PagProtetico.Open;

    FormRelPagamentosProteticos.Memo1.Text := QueryItens_PagProtetico.text;
    QueryDtPagto.Close;
    QueryDtPagto.ParamByName('DtStr').AsString := '01/' + MesAno;
    QueryDtPagto.Open;
    QRMemo1.Lines.Add('RIBEIRÃO PRETO, ' + inputbox('Data','Informe a data',QueryDtPagto.FieldByName('Data').AsString));

end;

procedure TQRPagProteticoRecibo.QRBandPrincipalBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   if QueryItens_PagProteticolg_recebimento_deposito.AsBoolean then
      QRLabelDadosDep.Caption := 'BANCO : ' + QueryItens_PagProteticobanco.AsString + ' AG: ' + QueryItens_PagProteticoagencia.AsString + ' C/C : ' + QueryItens_PagProteticocontaCorrente.AsString + '-' + QueryItens_PagProteticodigitoCC.AsString
   else
       QRLabelDadosDep.Caption := '';

   QRLabelExtenso.Caption := ValorExtenso(QueryItens_PagProteticoTotal.AsCurrency);
end;

end.
