{ Programa ........: Relatório de Títulos em Aberto por Cliente                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRTitulosGerado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls, TeeProcs, TeEngine, Chart,
  DBChart, QrTee, Series, ADODB;

type
  TQrTitulosGerados = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand2: TQRBand;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryTitulo: TQuery;
    QRGroup1: TQRGroup;
    QRDBText2: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRLabel12: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QueryTituloNome: TStringField;
    QueryTituloCodigo: TIntegerField;
    QueryTituloCodigo_Usuario: TIntegerField;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloDesdobramento: TStringField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloValor_Pago: TFloatField;
    QueryTituloParcela: TSmallintField;
    QRDBText5: TQRDBText;
    QRLabelDesd: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr4: TQRExpr;
    QRBand4: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr2: TQRExpr;
    QueryTituloNome_Contratante: TStringField;
    QueryTituloNome_Usuario: TStringField;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabelAberto: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabelPago: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel3: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabelAbertoTot: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabelPagoTot: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBChart1: TQRDBChart;
    QRChart1: TQRChart;
    QueryGrafico: TQuery;
    Series1: TPieSeries;
    QueryGraficoTotal: TIntegerField;
    QueryGraficoPagoNome: TStringField;
    QRChart2: TQRChart;
    QRDBChart2: TQRDBChart;
    Series2: TPieSeries;
    QueryGrafico2: TQuery;
    QueryGrafico2PagoNome: TStringField;
    QueryGrafico2Total: TIntegerField;
    QRLabel22: TQRLabel;
    QRChart3: TQRChart;
    QRDBChart3: TQRDBChart;
    PieSeries1: TPieSeries;
    QueryGraficoValores: TFloatField;
    QueryGrafico2Valores: TFloatField;
    QRChart4: TQRChart;
    QRDBChart4: TQRDBChart;
    PieSeries2: TPieSeries;
    QRDBText8: TQRDBText;
    QRLabelDesd1: TQRLabel;
    Query1: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    ADOQuery1: TADOQuery;
    ADOQuery1PagoNome: TStringField;
    ADOQuery1Total: TIntegerField;
    ADOQuery1Valores: TBCDField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QueryTituloCalcFields(DataSet: TDataSet);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

    { Private declarations }
  public
    indice : Integer;
    ImprimeGraf : Boolean;
    { Public declarations }
  end;

var
  QrTitulosGerados: TQrTitulosGerados;
  DIntervalo1, DIntervalo2 : TDateTime;
  Aberto, AbertoTot, Pago, PagoTot : Integer;

implementation

{$R *.DFM}
uses Senha, RelatoReceber, SelTpDoc, udm;

procedure TQrTitulosGerados.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
  Var VSql : String;
  var I : integer;
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     QueryTitulo.Close;
     QueryTitulo.ParamByName('Data1').asDateTime := DIntervalo1;
     QueryTitulo.ParamByName('Data2').asDateTime := DIntervalo2;
     if FmSelTpdoc.RadioGroup1.ItemIndex <> 0 then
     begin
        VSql := 'and Tipo_Documento in (';
        For I := 0 to FmSelTpdoc.ListView.Items.Count - 1 do
           if FmSelTpdoc.ListView.Items.Item[I].Checked then
              VSql := VSql + FmSelTpdoc.ListView.Items[I].caption + ',';
        QueryTitulo.Sql[7] := Copy(VSql,1, length(VSql) - 1) + ')';
        QueryGrafico.SQL[2] := ' and Valor <> 0 ' + QueryTitulo.Sql[7];
     end;

{     if FormRelatoriosReceber.ComboBoxClassificacao.Text <> 'Todos' then

     begin
        with FormRelatoriosReceber.QueryTipoDocumento2 do
        begin
           First;
           VSql := 'and Tipo_Documento in (';
           While Not Eof do
           begin
              VSql := VSql + FieldByName('codigo').AsString + ',';
              next;
           end;
        end;
        QueryTitulo.Sql[7] := Copy(VSql,1, length(VSql) - 1) + ')';
     end;}


     QueryTitulo.Open;
     if QueryTitulo.bof and QueryTitulo.eof then
        ShowMessage('Nenhum registro encontrado com os parâmetros passados');
     
end;

procedure TQrTitulosGerados.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   If QueryTituloDesdobramento.AsString = 'O' then
     QrLabelDesd.Caption := ' - Orçamento'
   else
   If QueryTituloDesdobramento.AsString = 'M' then
     QrLabelDesd.Caption := ' - Mensalidade'
   else
   If QueryTituloDesdobramento.AsString = 'T' then
     QrLabelDesd.Caption := ' - Manutenção'
   else
   If QueryTituloDesdobramento.AsString = 'A' then
      QrLabelDesd.Caption := ' - Acordo'
   else
   If QueryTituloDesdobramento.AsString = 'I' then
      QrLabelDesd.Caption := ' - Inclusão de Usuários'
   else
      QrLabelDesd.Caption := ' - Desdobramento não especificado';
  QRLabelDesd1.caption := QrLabelDesd.Caption;
end;

procedure TQrTitulosGerados.QueryTituloCalcFields(DataSet: TDataSet);
begin
try

  if QueryTituloDesdobramento.AsString = 'M' then
  begin
    QueryTituloNome.AsString := QueryTituloNome_Contratante.AsString;
    QueryTituloCodigo.AsInteger := QueryTituloCodigo_Contratante.AsInteger;
  end
  else
  begin
    QueryTituloNome.AsString := QueryTituloNome_Usuario.AsString;
    if QueryTituloCodigo_Usuario.AsInteger = 0 then
       QueryTituloCodigo.AsInteger := QueryTituloCodigo_Contratante.AsInteger
    else
       QueryTituloCodigo.AsInteger := QueryTituloCodigo_Usuario.AsInteger;
  end;
except
  on E: Exception do
  begin
    ShowMessage('Erro : ' + e.message);
    beep;
  end;
    //QueryTituloCodigo_Contratante.AsStriong + ' Nome : ' + QueryTituloNome_Contratante.AsString +
    //QueryTituloNome_Usuario.AsString
end;

end;

procedure TQrTitulosGerados.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   if QueryTituloData_Pagamento.AsString = '' then
     Inc(Aberto)
   else
     Inc(Pago);
end;

procedure TQrTitulosGerados.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
try
  QRLabelPago.Caption   := IntToStr(Pago);
  QRLabelAberto.Caption := IntToStr(Aberto);
  PagoTot   := PagoTot + Pago;
  AbertoTot := AbertoTot + Aberto;
  Pago   := 0;
  Aberto := 0;

  if not  ImprimeGraf then
    exit;
  
  AdoQuery1.Close;
  AdoQuery1.Parameters[0].Value := DIntervalo1;
  AdoQuery1.Parameters[1].Value := DIntervalo2;
  AdoQuery1.Parameters[2].Value    := QueryTituloDesdobramento.AsString;
  AdoQuery1.open;

except
  on E: Exception do
  begin
    ShowMessage('Erro : ' + e.message);
    beep;
  end;
  end;
end;

procedure TQrTitulosGerados.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
try
  QRLabelPagoTot.Caption   := IntToStr(PagoTot);
  QRLabelAbertoTot.Caption := IntToStr(AbertoTot);
  PagoTot   := 0;
  AbertoTot := 0;

  if not  ImprimeGraf then
    exit;
  with QueryGrafico2 do
  begin
    Close;
    ParamByName('Data1').asDateTime := DIntervalo1;
    ParamByName('Data2').asDateTime := DIntervalo2;
    Open;
  end;
except
  on E: Exception do
  begin
    ShowMessage('Erro : ' + e.message);
    beep;
  end;
end;
end;
end.

