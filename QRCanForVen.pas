{ Programa ........: Relatório de Títulos em Aberto por Vencimento             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRCanForVen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitCanForVencimento = class(TQuickRep)
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
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QueryTitulo: TQuery;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloCodigo_Fornecedor: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloData_Cancelamento: TDateTimeField;
    QueryTituloNome_Fantasia: TStringField;
    QueryTituloDescricao: TStringField;
    QueryTituloDescricao_1: TStringField;
    QueryTituloTipo_Documento: TSmallintField;
    QueryTituloTipo_Cobranca: TSmallintField;
    procedure QueryTituloFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitCanForVencimento: TQRTitCanForVencimento;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;

implementation

{$R *.DFM}
uses RelatoReceber, Senha;

procedure TQRTitCanForVencimento.QueryTituloFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var
   I, J: Integer;
begin
     I := CompareText(QueryTituloNome_Fantasia.asString, NIntervalo1);
     J := CompareText(QueryTituloNome_Fantasia.asString, NIntervalo2);
     if (I >= 0) and
        (J <= 0) and
        (QueryTituloData_Cancelamento.asDateTime >= DIntervalo1) and
        (QueryTituloData_Cancelamento.asDateTime <= DIntervalo2)
        then Accept := True else Accept := False;

    if Accept then
      if RelatoReceber.TipoDocumento <> 0 then
        Accept := QueryTituloTipo_Documento.asInteger = RelatoReceber.TipoDocumento;

    if Accept then
      if RelatoReceber.TipoCobranca <> 0 then
        Accept := QueryTituloTipo_Cobranca.asInteger = RelatoReceber.TipoCobranca;
end;

procedure TQRTitCanForVencimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
end;

end.
