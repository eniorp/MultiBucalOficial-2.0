{ Programa ........: Relatório de Títulos Baixados por Cliente                 }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRBaiFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitBaiFornecedor = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText11: TQRDBText;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabelTipoCob: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryBaixa: TQuery;
    QueryBaixaData_Pagamento: TDateTimeField;
    QueryBaixaCodigo_Fornecedor: TIntegerField;
    QueryBaixaData_Emissao: TDateTimeField;
    QueryBaixaData_Vencimento: TDateTimeField;
    QueryBaixaValor: TFloatField;
    QueryBaixaValor_Pago: TFloatField;
    QueryBaixaJuros: TFloatField;
    QueryBaixaDesconto: TFloatField;
    QueryBaixaTipo_Documento: TSmallintField;
    QueryBaixaTipo_Cobranca: TSmallintField;
    QueryBaixaNome_Fantasia: TStringField;
    QueryBaixaNumero_Titulo: TStringField;
    QueryBaixaSaldo: TFloatField;
    QueryBaixaCentro_Custo: TIntegerField;
    QueryBaixaBanco_Cheque: TStringField;
    QueryBaixaNro_Cheque: TStringField;
    QueryBaixaObservacao: TStringField;
    QueryBaixaParcela: TIntegerField;
    QueryBaixaOperador: TIntegerField;
    QueryBaixaTipo_Pagamento: TIntegerField;
    QueryBaixaID_Pagto: TIntegerField;
    QueryBaixaDesc_TpDoc: TStringField;
    QueryBaixaDesc_Cobr: TStringField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TableBaixaCalcFields(DataSet: TDataSet);
    procedure TableBaixaFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitBaiFornecedor: TQRTitBaiFornecedor;
  DIntervalo1, DIntervalo2 : TDateTime;

implementation

{$R *.DFM}
uses RelatoReceber, Senha, RelatoPagar;

procedure TQRTitBaiFornecedor.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     PrintBand := QueryBaixa.RecordCount <> 0;
end;

procedure TQRTitBaiFornecedor.TableBaixaCalcFields(DataSet: TDataSet);
var
Atraso : Real;
begin
     QRLabel.Caption := '';
     QRLabel13.Caption := '';
     if QueryBaixaData_Pagamento.asDateTime > QueryBaixaData_Vencimento.asDateTime then
        begin
           Atraso := QueryBaixaData_Pagamento.asDateTime - QueryBaixaData_Vencimento.asDateTime;
           QrLabel.Caption := FloatToStr(Atraso);
           QrLabel13.Caption := ' dias';
//           (FloatToStr(Atraso) + ' dias');
           Atraso := 0;
        end
     else
        begin
           QrLabel.Caption := '';
           QrLabel13.Caption := '';
        end;
end;

procedure TQRTitBaiFornecedor.TableBaixaFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
     if RelatoReceber.TipoDocumento <> 0 then
        Accept := QueryBaixaTipo_Documento.asInteger = RelatoReceber.TipoDocumento;
     if Accept then
        if RelatoReceber.TipoCobranca <> 0 then
           Accept := QueryBaixaTipo_Cobranca.asInteger = RelatoReceber.TipoCobranca;
end;

procedure TQRTitBaiFornecedor.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryBaixa do
     begin
       Close;
       ParamByName('Data1').asDateTime := DIntervalo1;
       ParamByName('Data2').asDateTime := DIntervalo2;
     end;

end;

end.
