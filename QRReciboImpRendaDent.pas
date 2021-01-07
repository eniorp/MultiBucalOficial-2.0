unit QRReciboImpRendaDent;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRReciboImpostoRendaDent = class(TQuickRep)
    DetailBand1: TQRBand;
    SummaryBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QueryItensPagDentista: TQuery;
    QueryDentista: TQuery;
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
    QRLabelAno: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRExprtotal: TQRExpr;
    QRLabelMes: TQRLabel;
    QRLabelContratante1: TQRLabel;
    QRLabelContratante2: TQRLabel;
    QRLabelContratante3: TQRLabel;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryItensPagDentistavalor_Total: TFloatField;
    QueryItensPagDentistadentista: TIntegerField;
    QueryItensPagDentistaNomeDentista: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRReciboImpostoRendaDent: TQRReciboImpostoRendaDent;
  Ano, Dentista : Integer;

implementation

{$R *.DFM}

procedure TQRReciboImpostoRendaDent.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   with QueryItensPagDentista do
     begin
       close;
       ParamByName('Dentista').asInteger := Dentista;
       ParamByName('Ano').asInteger := Ano;
       open;
     end;
{   QRLabelAno.Caption := IntToStr(Ano);
   QRLabelEmpresa.Caption := 'Eu ' + QueryEmpresaRazao_Social.AsString + ' recebi de ' + QueryContratanteNome.AsString;
   QRLabelContratante1.Caption := 'portador(a) do R.G. nº ' + QueryContratanteRG.AsString + ' e, CPF nº ' + QueryContratanteCGC_CPF.AsString +
                                 ' morador(a) no endereço';
   QRLabelContratante2.Caption := QueryContratanteEndereco_Comercial.AsString + ' no bairro ' + QueryContratanteBairro_Comercial.AsString
                                  + ', na cidade ' + QueryContratanteCidade_Comercial.AsString + ' - ' + QueryContratanteEstado_Comercial.AsString;
   QRLabelContratante3.Caption := 'CEP ' + QueryContratanteCEP_Comercial.AsString + ', o valor abaixo descriminado:';}
end;

procedure TQRReciboImpostoRendaDent.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{   case QueryReceberMes.AsInteger of
     1:  QRLabelMes.Caption := 'Janeiro';
     2:  QRLabelMes.Caption := 'Fevereiro';
     3:  QRLabelMes.Caption := 'Março';
     4:  QRLabelMes.Caption := 'Abril';
     5:  QRLabelMes.Caption := 'Maio';
     6:  QRLabelMes.Caption := 'Junho';
     7:  QRLabelMes.Caption := 'Julho';
     8:  QRLabelMes.Caption := 'Agosto';
     9:  QRLabelMes.Caption := 'Setembro';
     10: QRLabelMes.Caption := 'Outubro';
     11: QRLabelMes.Caption := 'Novembro';
     12: QRLabelMes.Caption := 'Dezembro';
     else
       QRLabelMes.Caption := '';
   end;}
end;

end.
