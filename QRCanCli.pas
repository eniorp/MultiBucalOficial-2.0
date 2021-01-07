{ Programa ........: Relatório de Títulos em Aberto por Cliente                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRCanCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitCanCliente = class(TQuickRep)
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
    QRDBText3: TQRDBText;
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
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryCancelados: TQuery;
    QueryTipoDocumento: TQuery;
    QueryTipoCobranca: TQuery;
    DataSourceContratante: TDataSource;
    QueryCanceladosData_Cancelamento: TDateTimeField;
    QueryCanceladosNumero_Titulo: TIntegerField;
    QueryCanceladosDesdobramento: TStringField;
    QueryCanceladosCodigo_Contratante: TIntegerField;
    QueryCanceladosData_Emissao: TDateTimeField;
    QueryCanceladosData_Vencimento: TDateTimeField;
    QueryCanceladosValor: TFloatField;
    QueryCanceladosSaldo: TFloatField;
    QueryCanceladosNome_Tipo: TStringField;
    QueryCanceladosNome_Cobranca: TStringField;
    QueryCanceladosNumero_Banco: TStringField;
    QueryCanceladosTipo_Documento: TStringField;
    QueryCanceladosTipo_Cobranca: TStringField;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
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
  QRTitCanCliente: TQRTitCanCliente;
  Intervalo1, Intervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;

implementation

{$R *.DFM}
uses Senha;

procedure TQRTitCanCliente.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     PrintBand := QueryCancelados.RecordCount <> 0;
end;

procedure TQRTitCanCliente.DataSourceContratanteDataChange(Sender: TObject;
  Field: TField);
begin
     with QueryCancelados do
       begin
         Close;
         SQL[1] := ('where Codigo_Contratante = ' + QueryContratanteCodigo.asString);
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         Open;
       end;
end;

procedure TQRTitCanCliente.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
end;

end.
