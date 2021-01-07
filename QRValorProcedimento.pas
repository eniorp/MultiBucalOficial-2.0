unit QRValorProcedimento;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaValorProcedimento = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    DataSourceValorProcedimento: TDataSource;
    QueryValorProcedimento: TQuery;
    QueryValorProcedimentoCodigo_Tabela: TIntegerField;
    QueryValorProcedimentoCodigo_Servico: TIntegerField;
    QueryValorProcedimentoValor_Cobranca: TFloatField;
    QueryValorProcedimentoValor_Dentista: TFloatField;
    QueryValorProcedimentoValor_Protetico: TFloatField;
    QueryValorProcedimentoDescricao_Servico: TStringField;
    QueryServicos: TQuery;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    PageFooterBand1: TQRBand;
    QRDBText5: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaValorProcedimento: TQRListaValorProcedimento;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaValorProcedimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  QRLabelEmpresa.Caption := Senha.Empresa;
end;

end.
