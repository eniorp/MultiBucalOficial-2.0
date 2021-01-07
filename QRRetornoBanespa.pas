unit QRRetornoBanespa;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaRetornoBanespa = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText3: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelBanco: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel12: TQRLabel;
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
    QRExpr5: TQRExpr;
    QueryRetorno: TQuery;
    QueryRetornoData_Pagamento: TDateTimeField;
    QueryRetornoValor_Titulo: TFloatField;
    QueryRetornoJuros: TFloatField;
    QueryRetornoFlag: TStringField;
    QueryRetornoDescricao_Flag: TStringField;
    QRLabel2: TQRLabel;
    QRDBText2: TQRDBText;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QueryTitulos: TQuery;
    QueryTitulosCodigo: TIntegerField;
    QueryTitulosNome: TStringField;
    QueryTitulosNumero_Titulo: TIntegerField;
    QueryTitulosDesdobramento: TStringField;
    QueryTitulosTipo_Documento: TSmallintField;
    QueryTitulosCodigo_Contratante: TIntegerField;
    QueryTitulosCodigo_Usuario: TIntegerField;
    QueryTitulosData_Emissao: TDateTimeField;
    QueryTitulosData_Vencimento: TDateTimeField;
    QueryTitulosValor: TFloatField;
    QueryTitulosSaldo: TFloatField;
    QueryTitulosTipo_Cobranca: TSmallintField;
    QueryTitulosNumero_Banco: TStringField;
    QueryTitulosData_Pagamento: TDateTimeField;
    QueryTitulosValor_Pago: TFloatField;
    QueryTitulosDesconto: TFloatField;
    QueryTitulosJuros: TFloatField;
    QueryTitulosOperador: TSmallintField;
    QueryTitulosOrcamento: TIntegerField;
    QueryTitulosParcela: TSmallintField;
    QueryTitulosStatus_Cheque: TStringField;
    QueryTitulosObservacoes: TStringField;
    QueryTitulosStatus_Orcamento: TSmallintField;
    QueryRetornoNome_Contratante: TStringField;
    QueryRetornoNumero_Banco: TIntegerField;
    procedure QueryRetornoCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaRetornoBanespa: TQRListaRetornoBanespa;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaRetornoBanespa.QueryRetornoCalcFields(DataSet: TDataSet);
begin
     if QueryRetornoFlag.asString = 'C  ' then
        QueryRetornoDescricao_Flag.asString := 'Creditado'
     else
     if QueryRetornoFlag.asString = '041' then
        QueryRetornoDescricao_Flag.asString := 'Cep Não Localizado ou Inválido'
     else
     if QueryRetornoFlag.asString = '006' then
        QueryRetornoDescricao_Flag.asString := 'Código de Cedente Inválido'
     else
     if QueryRetornoFlag.asString = '007' then
        QueryRetornoDescricao_Flag.asString := 'Nosso Número Não Informado'
     else
     if QueryRetornoFlag.asString = '008' then
        QueryRetornoDescricao_Flag.asString := 'Nosso Número Duplicado no Movimento'
     else
     if QueryRetornoFlag.asString = '015' then
        QueryRetornoDescricao_Flag.asString := 'Data de Vencimento Inválida'
     else
     if QueryRetornoFlag.asString = '016' then
        QueryRetornoDescricao_Flag.asString := 'Título Vencido há mais de 1 ano'
     else
     if QueryRetornoFlag.asString = '022' then
        QueryRetornoDescricao_Flag.asString := 'Data de Emissão Inválida'
     else
     if QueryRetornoFlag.asString = '023' then
        QueryRetornoDescricao_Flag.asString := 'Data de Emissão Posterior a Data de Entrada'
     else
     if QueryRetornoFlag.asString = '025' then
        QueryRetornoDescricao_Flag.asString := 'Juros de Mora Inválido'
     else
     if QueryRetornoFlag.asString = '042' then
        QueryRetornoDescricao_Flag.asString := 'Cep Referente à Cobrança a Cargo de Banco Correspondente';
     with QueryTitulos do
       begin
         Close;
         ParamByName('NumeroBanco').asInteger := QueryRetornoNumero_Banco.asInteger;
         Open;
         QueryRetornoNome_Contratante.asString := QueryTitulosNome.asString;
       end;
end;

procedure TQRListaRetornoBanespa.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
end;

end.
