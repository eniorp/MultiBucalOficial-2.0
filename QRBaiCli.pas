{ Programa ........: Relatório de Títulos Baixados por Cliente                 }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRBaiCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitBaiCliente = class(TQuickRep)
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
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabelTipoCob: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryReceber: TQuery;
    QueryTipoDocumento: TQuery;
    QueryTipoCobranca: TQuery;
    QueryReceberData_Pagamento: TDateTimeField;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberData_Emissao: TDateTimeField;
    QueryReceberData_Vencimento: TDateTimeField;
    QueryReceberValor: TFloatField;
    QueryReceberJuros: TFloatField;
    QueryReceberDesconto: TFloatField;
    QueryReceberNome_Tipo: TStringField;
    QueryReceberNome_Cobranca: TStringField;
    QueryReceberNumero_Banco: TStringField;
    QueryReceberTipo_Documento: TIntegerField;
    QueryReceberSaldo: TFloatField;
    QueryReceberTipo_Cobranca: TIntegerField;
    QueryReceberOperador: TSmallintField;
    QueryReceberOrcamento: TIntegerField;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    QueryReceberValor_Pago: TFloatField;
    QueryReceberCodigo: TIntegerField;
    QueryReceberNome: TStringField;
    QueryReceberCodigo_Usuario: TIntegerField;
    QueryReceberParcela: TSmallintField;
    QueryReceberStatus_Cheque: TStringField;
    QueryReceberObservacoes: TStringField;
    QueryReceberStatus_Orcamento: TSmallintField;
    QRGroup1: TQRGroup;
    QRExpr6: TQRExpr;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TableBaixaCalcFields(DataSet: TDataSet);
    procedure TitleBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitBaiCliente: TQRTitBaiCliente;
  Intervalo1, Intervalo2 : String;
  DIntervalo1, DIntervalo2, DIntervalo3, DIntervalo4 : TDateTime;

implementation

{$R *.DFM}
uses RelatoReceber, Senha;

procedure TQRTitBaiCliente.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     PrintBand := QueryReceber.RecordCount <> 0;
end;

procedure TQRTitBaiCliente.TableBaixaCalcFields(DataSet: TDataSet);
var
Atraso : Real;
begin
     QRLabel.Caption := '';
     QRLabel13.Caption := '';
     if QueryReceberData_Pagamento.asDateTime > QueryReceberData_Vencimento.asDateTime then
        begin
           Atraso := QueryReceberData_Pagamento.asDateTime - QueryReceberData_Vencimento.asDateTime;
           if Atraso <> 0 then
              begin
                QrLabel.Caption := FloatToStr(Atraso);
                QrLabel13.Caption := ' dias';
              end;
        end
     else
        begin
           QrLabel.Caption := '';
           QrLabel13.Caption := '';
        end;
end;

procedure TQRTitBaiCliente.TitleBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     if FormRelatoriosReceber.ComboBoxTipoCob.Text <> '' then
       QRTitBaiCliente.QRLabelTipoCob.Caption := FormRelatoriosReceber.ComboBoxTipoCob.Text;
end;

procedure TQRTitBaiCliente.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryReceber do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         ParamByName('Data3').asDateTime := DIntervalo3;
         ParamByName('Data4').asDateTime := DIntervalo4;
         Open;
       end;
end;

end.
