unit QRReciboImpRenda;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,dialogs;

type
  TQRReciboImpostoRenda = class(TQuickRep)
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QueryReceber: TQuery;
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
    QRExprtotal: TQRExpr;
    QRLabelContratante1: TQRLabel;
    QRLabelContratante2: TQRLabel;
    QRLabelContratante3: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabelDtBase: TQRLabel;
    QRSysData2: TQRSysData;
    QueryContratanteEmpresa: TBooleanField;
    QueryContratanteNumero_Com: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);

    procedure QuickRepAfterPrint(Sender: TObject);
  private

  public
     imprimiu : boolean;
  end;

var
  QRReciboImpostoRenda: TQRReciboImpostoRenda;
  Ano, Contratante : Integer;

implementation

{$R *.DFM}

procedure TQRReciboImpostoRenda.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  imprimiu := false;
  QueryEmpresa.Close;
  QueryEmpresa.Open;
   with QueryContratante do
     begin
       close;
       ParamByName('Codigo').asInteger := Contratante;
       open;
     end;

   QueryReceber.close;
   QueryReceber.sql[11] := IntTostr(Contratante);
   QueryReceber.sql[13] := IntTostr(Ano);
   QueryReceber.open;


   QRLabelEmpresa.Caption := 'A ' + QueryEmpresaRazao_Social.AsString + ' recebeu de ' + QueryContratanteNome.AsString;
   if not QueryContratanteEmpresa.AsBoolean then
   begin
      QRLabelContratante1.Caption := 'portador(a) do R.G. nº ' + QueryContratanteRG.AsString + ' e, CPF nº ' + QueryContratanteCGC_CPF.AsString +
                                    ' morador(a) no endereço';
      QRLabelContratante2.Caption := QueryContratanteEndereco_Comercial.AsString + ',' + QueryContratanteNumero_Com.AsString + ' no bairro ' + QueryContratanteBairro_Comercial.AsString
                                  + ', na cidade ' + QueryContratanteCidade_Comercial.AsString + ' - ' + QueryContratanteEstado_Comercial.AsString;
      QRLabelContratante3.Caption := 'CEP ' + QueryContratanteCEP_Comercial.AsString + ', o valor abaixo descriminado:';

   end
   else
   begin
      QRLabelContratante1.Caption := 'Inscrita no CNPJ nº ' +  QueryContratanteCGC_CPF.AsString + ' com sede na cidade de ' + QueryContratanteCidade_Comercial.AsString + '-' + QueryContratanteEstado_Comercial.AsString + ',endereço ' ;

      QRLabelContratante2.Caption := QueryContratanteEndereco_Comercial.AsString + ',' + QueryContratanteNumero_Com.AsString +
                                     ' no bairro ' + QueryContratanteBairro_Comercial.AsString + ' CEP ' + QueryContratanteCEP_Comercial.AsString + ', o valor abaixo descriminado:';
      QRLabelContratante3.Caption := '';

   end;
end;


procedure TQRReciboImpostoRenda.QuickRepAfterPrint(Sender: TObject);
begin
   imprimiu := true;
end;

end.
