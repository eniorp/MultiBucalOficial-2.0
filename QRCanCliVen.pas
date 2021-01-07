{ Programa ........: Relatório de Títulos em Aberto por Vencimento             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRCanCliVen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitCanCliVencimento = class(TQuickRep)
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
    QueryTituloDesdobramento: TStringField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloData_Cancelamento: TDateTimeField;
    QueryTituloNome: TStringField;
    QueryTituloDescricao: TStringField;
    QueryTituloDescricao_1: TStringField;
    QueryTituloTipo_Documento: TStringField;
    QueryTituloTipo_Cobranca: TStringField;
    procedure QueryTituloCalcFields(DataSet: TDataSet);
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
  QRTitCanCliVencimento: TQRTitCanCliVencimento;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;

implementation

{$R *.DFM}
uses RelatoReceber, Senha, udm;

procedure TQRTitCanCliVencimento.QueryTituloCalcFields(DataSet: TDataSet);
begin
     DataHoje := dm.Date;
     if (QueryTituloDesdobramento.asString = '') or (QueryTituloDesdobramento.asString = ' ') then
        QueryTituloDesdobramento.asString := ''
     else
         QueryTituloDesdobramento.asString := '/' + QueryTituloDesdobramento.asString;
end;

procedure TQRTitCanCliVencimento.QueryTituloFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
    if Accept then
      if RelatoReceber.TipoDocumento <> 0 then
        Accept := QueryTituloTipo_Documento.asInteger = RelatoReceber.TipoDocumento;

    if Accept then
      if RelatoReceber.TipoCobranca <> 0 then
        Accept := QueryTituloTipo_Cobranca.asInteger = RelatoReceber.TipoCobranca;
end;

procedure TQRTitCanCliVencimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryTitulo do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         Open;
       end;  
end;

end.
