{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório do Faturamento                     }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRFaturamento;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Dialogs,
  ADODB,enio;

type
  TQRListaFaturamento = class(TQuickRep)
    QueryTipoCobranca: TQuery;
    DataSourceFaturamento: TDataSource;
    QueryTipoDocumento: TQuery;
    QueryFaturamento: TQuery;
    DataSourceTipoDocumento: TDataSource;
    DataSourceContratante: TDataSource;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    QueryFaturamentoForma_Cobranca: TIntegerField;
    QueryFaturamentoNumero_Titulo: TIntegerField;
    QueryFaturamentoDesdobramento: TStringField;
    QueryFaturamentoTipo_Documento: TIntegerField;
    QueryFaturamentoCodigo_Contratante: TIntegerField;
    QueryFaturamentoData_Emissao: TDateTimeField;
    QueryFaturamentoData_Vencimento: TDateTimeField;
    QueryFaturamentoValor: TFloatField;
    QueryFaturamentoNumero_Banco: TStringField;
    QueryFaturamentoTipo_Cobranca: TIntegerField;
    QueryFaturamentoExportado_Receber: TBooleanField;
    QueryFaturamentoEmitido_Documento: TBooleanField;
    QueryFaturamentoDescricao_Cobranca: TStringField;
    QueryFaturamentoDescricao_Documento: TStringField;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    QueryFaturamentoAlteracao_Cobranca: TBooleanField;
    QueryFaturamentoAlteracao_Valor: TBooleanField;
    QueryFaturamentoAltera_Cobranca: TStringField;
    QueryFaturamentoAltera_Valor: TStringField;
    QRDBText5: TQRDBText;
    QueryFaturamentoNome: TStringField;
    QueryFaturamentoOrcamento: TIntegerField;
    QueryFaturamentoCodigo_Usuario: TIntegerField;
    ADOQueryTotVidas: TADOQuery;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QueryFaturamentoCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  QRListaFaturamento: TQRListaFaturamento;
  Chamada : String[1];
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;

implementation

{$R *.DFM}

uses GeraReceber, Senha, udm;

procedure TQRListaFaturamento.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     ADOQueryTotVidas.close;
     QRLabelEmpresa.Caption := Senha.Empresa;
     if Chamada = '1' then
        with QueryFaturamento do
          begin
            Close;
            SQL[2] := ('where Emitido_Documento = 0');
            Open;
            ADOQueryTotVidas.sql[5] := 'where Emitido_Documento = 0';
          end
     else
        with QueryFaturamento do
          begin
            Close;
            ParamByName('Data1').asDateTime := DIntervalo1;
            ParamByName('Data2').asDateTime := DIntervalo2;
            ParamByName('Desdobramento').asString := GeraReceber.Desdobr; // .FormGeraReceber.QueryTipoDocumentoCodigo.asInteger;
            //FormGeraReceber.Memo1.lines.add(QueryFaturamento.text);
            Open;
          end;
   ADOQueryTotVidas.sql[07] := '''' + FormatData(DateToStr(DIntervalo1),'MDY') + ''' AND ''' + FormatData(DateToStr(DIntervalo2),'MDY') + '''';
   ADOQueryTotVidas.sql[09] := '''' + GeraReceber.Desdobr + '''';
   ADOQueryTotVidas.sql[11] := '''' + FormatData(DateToStr(DIntervalo2),'MDY') + '''';
   ADOQueryTotVidas.sql[14] := '''' + FormatData(DateToStr(DIntervalo1),'MDY') + '''';
   FormGeraReceber.Memo1.lines.add(ADOQueryTotVidas.sql.text);
   ADOQueryTotVidas.open;
   QRLabel13.Caption := 'Total de Vidas PF : ' + ADOQueryTotVidas.FieldByName('qtde').AsString;
   ADOQueryTotVidas.next;
   QRLabel14.Caption := 'Total de Vidas PJ : ' + ADOQueryTotVidas.FieldByName('qtde').AsString;
end;

procedure TQRListaFaturamento.QueryFaturamentoCalcFields(
  DataSet: TDataSet);
begin
     if QueryFaturamentoAlteracao_Cobranca.asBoolean then
        QueryFaturamentoAltera_Cobranca.asString := '*'
     else
        QueryFaturamentoAltera_Cobranca.asString := ' ';

     if QueryFaturamentoAlteracao_Valor.asBoolean then
        QueryFaturamentoAltera_Valor.asString := '*'
     else
        QueryFaturamentoAltera_Valor.asString := ' ';
end;

end.
