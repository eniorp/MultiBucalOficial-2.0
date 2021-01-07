{ Programa ........: Relatório de Títulos em Aberto por Cliente                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRCanFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitCanFornecedor = class(TQuickRep)
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
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryFornecedor: TQuery;
    QueryCancelados: TQuery;
    QueryTipoDocumento: TQuery;
    QueryTipoCobranca: TQuery;
    DataSourceContratante: TDataSource;
    QueryFornecedorCodigo: TIntegerField;
    QueryFornecedorRazao_Social: TStringField;
    QueryFornecedorNome_Fantasia: TStringField;
    QueryCanceladosData_Cancelamento: TDateTimeField;
    QueryCanceladosNumero_Titulo: TIntegerField;
    QueryCanceladosCodigo_Fornecedor: TIntegerField;
    QueryCanceladosData_Emissao: TDateTimeField;
    QueryCanceladosData_Vencimento: TDateTimeField;
    QueryCanceladosValor: TFloatField;
    QueryCanceladosSaldo: TFloatField;
    QueryCanceladosNome_Tipo: TStringField;
    QueryCanceladosNome_Cobranca: TStringField;
    QueryCanceladosTipo_Documento: TSmallintField;
    QueryCanceladosTipo_Cobranca: TSmallintField;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure TableClienteFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure TableCanceladosFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure DataSourceContratanteDataChange(Sender: TObject;
      Field: TField);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitCanFornecedor: TQRTitCanFornecedor;
  Intervalo1, Intervalo2 : String;

implementation

{$R *.DFM}
uses RelatoReceber, Senha;

procedure TQRTitCanFornecedor.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     PrintBand := QueryCancelados.RecordCount <> 0;
end;

procedure TQRTitCanFornecedor.TableClienteFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
   I, J: Integer;
begin
     I := CompareText(QueryFornecedorNome_Fantasia.asString, Intervalo1);
     J := CompareText(QueryFornecedorNome_Fantasia.asString, Intervalo2);

     if (I >= 0) and (J <= 0) then
        Accept := True
     else
        Accept := False;
end;

procedure TQRTitCanFornecedor.TableCanceladosFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
     if RelatoReceber.TipoDocumento <> 0 then
        Accept := QueryCanceladosTipo_Documento.asInteger = RelatoReceber.TipoDocumento;
     if Accept then
        if RelatoReceber.TipoCobranca <> 0 then
           Accept := QueryCanceladosTipo_Cobranca.asInteger = RelatoReceber.TipoCobranca;
end;

procedure TQRTitCanFornecedor.DataSourceContratanteDataChange(Sender: TObject;
  Field: TField);
begin
     with QueryCancelados do
       begin
         Close;
         SQL[1] := ('where Codigo_Fornecedor = ' + QueryFornecedorCodigo.asString);
         Open;
       end;
end;

procedure TQRTitCanFornecedor.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
end;

end.
