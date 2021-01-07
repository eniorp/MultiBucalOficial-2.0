unit QRRetorno;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaRetorno = class(TQuickRep)
    QueryRetorno: TQuery;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
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
    QRLabelBanco: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
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
    QueryRetornoIdentificacao_Empresa: TStringField;
    QueryRetornoAgencia: TStringField;
    QueryRetornoConta: TStringField;
    QueryRetornoData_Vencimento: TDateTimeField;
    QueryRetornoValor_Debito: TFloatField;
    QueryRetornoCodigo_Retorno: TStringField;
    QueryRetornoDescricao_Retorno: TStringField;
    QRExpr5: TQRExpr;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryRetornoNome_Contratante: TStringField;
    QRLabel12: TQRLabel;
    QueryRetornoCodigo_Contratante: TIntegerField;
    QueryRetornoFlag: TStringField;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QueryOcorrencias: TQuery;
    QueryOcorrenciasCodigo: TStringField;
    QueryOcorrenciasDescricao: TStringField;
    QueryOcorrenciasBanco: TStringField;
    procedure QueryRetornoCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaRetorno: TQRListaRetorno;
  Cod_Banco : String;


implementation
   uses Senha;

{$R *.DFM}

procedure TQRListaRetorno.QueryRetornoCalcFields(DataSet: TDataSet);
begin
  with QueryOcorrencias do
    begin
      close;
      ParamByName('Codigo_Banco').AsString := Cod_Banco;
      ParamByName('Retorno').AsString := QueryRetornoCodigo_Retorno.asString;
      open;
      QueryRetornoDescricao_Retorno.asString := QueryOcorrenciasDescricao.AsString;
    end;
    with QueryContratante do
      begin
        Close;
        SQL[1] := 'where Codigo = ''' + QueryRetornoCodigo_Contratante.asString + '''';
        Open;
        QueryRetornoNome_Contratante.asString := QueryContratanteNome.asString;
      end;
end;

procedure TQRListaRetorno.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
end;

end.
