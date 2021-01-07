unit QRPagamentoManutRecibo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QRPagamentoDentistaRecibo, Db, DBTables, Qrctrls, QuickRpt, ExtCtrls,
  jpeg;

type
  TQrPagManutencaoRecibo = class(TQRPagDentistaRecibo)
    QueryDtPagto: TQuery;
    QRLabelDadosDep: TQRLabel;
    QueryItensPagDentistabanco: TStringField;
    QueryItensPagDentistaagencia: TStringField;
    QueryItensPagDentistacontaCorrente: TStringField;
    QueryItensPagDentistadigitoCC: TStringField;
    QueryItensPagDentistalg_recebimento_deposito: TBooleanField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBandPrincipalBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    DtIni, DtFim : TDateTime;
  end;

var
  QrPagManutencaoRecibo: TQrPagManutencaoRecibo;

implementation

uses RelManutencao;

{$R *.DFM}

procedure TQrPagManutencaoRecibo.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
    QueryItensPagDentista.Close;
    QueryItensPagDentista.ParamByName('Data1').asDatetime := DtIni;
    QueryItensPagDentista.ParamByName('Data2').asDatetime := DtFim;

    If Dentista <> 0 then
       QueryItensPagDentista.ParamByName('Codigo_Dentista').asInteger := Dentista
    else
       QueryItensPagDentista.Sql[29] := '';

    if Clinica <> 0 then
       QueryItensPagDentista.ParamByName('Clinica').asInteger := Clinica
    else
       QueryItensPagDentista.Sql[32] := '';

    QueryItensPagDentista.Open;
    FormRelManutencao.Memo1.Clear;
    FormRelManutencao.Memo1.Text := QueryItensPagDentista.Text;
    QueryDtPagto.Close;
    QueryDtPagto.ParamByName('DtStr').AsString := '01/' + MesAno;
    QueryDtPagto.Open;
    QRMemo1.Lines.Add('RIBEIRÃO PRETO, ' + inputbox('Data','Informe a data',QueryDtPagto.FieldByName('Data').AsString));
//    QRMemo1.Lines.Add('RIBEIRÃO PRETO, ' + QueryDtPagto.FieldByName('Data').AsString);

end;

procedure TQrPagManutencaoRecibo.QRBandPrincipalBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
   if QueryItensPagDentistalg_recebimento_deposito.AsBoolean then
      QRLabelDadosDep.Caption := 'BANCO : ' + QueryItensPagDentistabanco.AsString + ' AG: ' + QueryItensPagDentistaagencia.AsString + ' C/C : ' + QueryItensPagDentistacontaCorrente.AsString + '-' + QueryItensPagDentistadigitoCC.AsString
   else
       QRLabelDadosDep.Caption := '';

end;

end.
