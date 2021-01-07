{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Contratos p/ Tipo de Cobrança      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRContratoCobranca;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaContratosCobranca = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBTextNome: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
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
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QueryTipoCobranca: TQuery;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryContratanteDescricao_Cobranca: TStringField;
    QueryContratanteFone1: TStringField;
    QueryContratanteSituacao: TStringField;
    QueryContratanteAgencia: TStringField;
    QueryContratanteConta: TStringField;
    QueryContratanteDigito: TStringField;
    QRLabel8: TQRLabel;
    QRDBText2: TQRDBText;
    QueryContratanteForma_Cobranca: TIntegerField;
    QueryContratanteCGC_CPF: TStringField;
    QueryContratanteVencimento: TIntegerField;
    QueryContratanteTitular_Conta: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    QRLabel3: TQRLabel;
    QRLabelVenc: TQRLabel;
    QueryReceber: TQuery;
    QueryReceberData_Vencimento: TDateTimeField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaContratosCobranca: TQRListaContratosCobranca;

implementation


{$R *.DFM}
uses RelatoReceber, Senha;

procedure TQRListaContratosCobranca.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     QueryTipoCobranca.Open;
     with QueryContratante do
        begin
          Close;
          if RelatoReceber.TipoCobranca <> 0 then
             SQL[2] := ' and Forma_Cobranca = ''' + IntToStr(RelatoReceber.TipoCobranca) + ''''
          else
             SQL[2] := ' and Forma_Cobranca <> ''''';
          Open;
         end;
end;

procedure TQRListaContratosCobranca.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    with QueryReceber do
      begin
         close;
         parambyname('contratante').asinteger := QueryContratanteCodigo.asInteger;
         open;
         QRLabelVenc.Caption := QueryReceberData_Vencimento.asString;
      end;


end;

end.
