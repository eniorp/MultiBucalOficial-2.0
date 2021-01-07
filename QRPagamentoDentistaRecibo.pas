{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Pagamento de Dentistas             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRPagamentoDentistaRecibo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,Dialogs,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Extenso;

type
  TQRPagDentistaRecibo = class(TQuickRep)
    QueryItensPagDentista: TQuery;
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
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabelExtenso: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QueryItensPagDentistaQuantidade_Paga: TIntegerField;
    QueryItensPagDentistaValor: TFloatField;
    QueryItensPagDentistadentista: TIntegerField;
    QueryItensPagDentistadesconto: TFloatField;
    QueryItensPagDentistaTotal: TFloatField;
    QueryItensPagDentistanome: TStringField;
    QueryItensPagDentistacic: TStringField;
    QueryItensPagDentistainss: TStringField;
    QueryItensPagDentistacodigo: TIntegerField;
    QRDBText10: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel22: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBandPrincipalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
     Clinica  : Integer;
     MesAno   : String[7];
     Dentista : Integer;
  end;

var
  QRPagDentistaRecibo: TQRPagDentistaRecibo;


implementation
   uses Senha;
{$R *.DFM}

procedure TQRPagDentistaRecibo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QueryItensPagDentista.Close;
    QueryItensPagDentista.ParamByName('Mes').asString := MesAno;
    If Dentista <> 0 then
       QueryItensPagDentista.ParamByName('Dentista').asInteger := Dentista
    else
       QueryItensPagDentista.Sql[25] := '';

    if Clinica <> 0 then
       QueryItensPagDentista.ParamByName('Clinica').asInteger := Clinica
    else
       QueryItensPagDentista.Sql[26] := '';

    QueryItensPagDentista.Open;

    QRMemo1.Lines.Add('RIBEIRÃO PRETO, ' + inputbox('Data','Informe a data','29/' + MesAno));
end;

procedure TQRPagDentistaRecibo.QRBandPrincipalBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelExtenso.Caption := ValorExtenso(QueryItensPagDentistaTotal.AsCurrency);
end;

end.
