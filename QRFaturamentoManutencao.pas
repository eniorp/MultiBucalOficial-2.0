{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório do Faturamento                     }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRFaturamentoManutencao;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Dialogs;

type
  TQRListaFaturamentoManutencao = class(TQuickRep)
    QueryTipoCobranca: TQuery;
    QueryTipoDocumento: TQuery;
    QueryFaturamento: TQuery;
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
    QRLabelRodape: TQRLabel;
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
    QueryFaturamentoOrcamento: TIntegerField;
    QueryFaturamentoCodigo_Usuario: TIntegerField;
    QueryFaturamentonome: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaFaturamentoManutencao: TQRListaFaturamentoManutencao;
  Chamada : String[1];
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;

implementation

{$R *.DFM}

uses GeraReceber, Senha;

procedure TQRListaFaturamentoManutencao.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     if Chamada = '1' then
        with QueryFaturamento do
          begin
            Close;
            SQL[3] := ('where Emitido_Documento = 0');
            Open;
          end
     else
        with QueryFaturamento do
          begin
            Close;
            ParamByName('Data1').asDateTime := DIntervalo1;
            ParamByName('Data2').asDateTime := DIntervalo2;
            ParamByName('Desdobramento').asString := GeraReceber.Desdobr; // .FormGeraReceber.QueryTipoDocumentoCodigo.asInteger;            Open;
            open;
          end;
end;

end.
