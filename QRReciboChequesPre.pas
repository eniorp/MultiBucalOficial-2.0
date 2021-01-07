unit QRReciboChequesPre;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRRecChequesPre = class(TQuickRep)
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabelContratante1: TQRLabel;
    QRLabelEmpresa: TQRLabel;
    QueryPrestacoes: TQuery;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryContratanteRG: TStringField;
    QueryContratanteCGC_CPF: TStringField;
    QueryContratanteEndereco_Comercial: TStringField;
    QueryContratanteBairro_Comercial: TStringField;
    QueryContratanteCidade_Comercial: TStringField;
    QueryContratanteEstado_Comercial: TStringField;
    QueryContratanteCep_Comercial: TStringField;
    QueryEmpresa: TQuery;
    QueryEmpresaRazao_Social: TStringField;
    QueryEmpresaFantasia: TStringField;
    QueryEmpresaEndereco: TStringField;
    QueryEmpresaCidade: TStringField;
    QueryEmpresaEstado: TStringField;
    QueryEmpresaCGC: TStringField;
    QueryEmpresaIns_Estadual: TStringField;
    QueryEmpresacodigo: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText5: TQRDBText;
    QueryEmpresaCEP: TStringField;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText11: TQRDBText;
    QueryPrestacoesOrcamento: TIntegerField;
    QueryPrestacoesParcela: TSmallintField;
    QueryPrestacoesVencimento: TDateTimeField;
    QueryPrestacoesValor: TFloatField;
    QueryPrestacoesNro_Cheque: TStringField;
    QueryPrestacoesBanco_Cheque: TStringField;
    QueryPrestacoesNro_ContaCheque: TStringField;
    QueryPrestacoesAgencia_Cheque: TStringField;
    QueryPrestacoesStatus_Cheque: TStringField;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRExprtotal: TQRExpr;
    QRLabelContratante2: TQRLabel;
    QRLabelContratante3: TQRLabel;
    QueryUsuario: TQuery;
    QueryUsuarioNome: TStringField;
    QRLabelContratante4: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRRecChequesPre: TQRRecChequesPre;
  Orcamento, Contratante, Usuario : Integer;

implementation

{$R *.DFM}

procedure TQRRecChequesPre.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   with QueryContratante do
     begin
       close;
       ParamByName('Codigo').asInteger := Contratante;
       open;
     end;
   with QueryPrestacoes do
     begin
       close;
       ParamByName('Orcamento').asInteger := Orcamento;
       open;
     end;
   with QueryUsuario do
     begin
       close;
       ParamByName('Codigo').asInteger := Usuario;       
       open;
     end;

   QRLabelEmpresa.Caption := 'Eu ' + QueryEmpresaRazao_Social.AsString + ' recebi de ' + QueryContratanteNome.AsString;
   QRLabelContratante1.Caption := 'portador(a) do R.G. nº ' + QueryContratanteRG.AsString + ' e, CPF nº ' + QueryContratanteCGC_CPF.AsString +
                                 ' morador(a) no endereço';
   QRLabelContratante2.Caption := QueryContratanteEndereco_Comercial.AsString + ' no bairro ' + QueryContratanteBairro_Comercial.AsString
                                  + ', na cidade ' + QueryContratanteCidade_Comercial.AsString + ' - ' + QueryContratanteEstado_Comercial.AsString;
   QRLabelContratante3.Caption := 'CEP ' + QueryContratanteCEP_Comercial.AsString + ', referente ao tratamento odontologico do conveniado ' + QueryUsuarioNome.AsString;
   QRLabelContratante4.Caption := 'com valor(es) e vencimento(s) descriminados abaixo.';

end;

end.
