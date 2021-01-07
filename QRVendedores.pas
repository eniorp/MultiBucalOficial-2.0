unit QRVendedores;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaVendedores = class(TQuickRep)
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QueryVendedores: TQuery;
    QRLabelEmpresa: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    ColumnHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBTextCodigo: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    PageFooterBand1: TQRBand;
    QueryVendedoresCodigo: TIntegerField;
    QueryVendedoresNome: TStringField;
    QueryVendedoresCNPJ_CPF: TStringField;
    QueryVendedoresRg: TStringField;
    QueryVendedoresEndereco: TStringField;
    QueryVendedoresBairro: TStringField;
    QueryVendedoresCidade: TStringField;
    QueryVendedoresEstado: TStringField;
    QueryVendedoresCep: TStringField;
    QueryVendedoresData_Inclusao: TDateTimeField;
    QueryVendedoresData_Exclusao: TDateTimeField;
    QueryVendedoresData_Nascimento: TDateTimeField;
    QueryVendedorese_mail: TStringField;
    QueryVendedoresFone: TStringField;
    QueryVendedoresFax: TStringField;
    QueryVendedoresRepresentante: TSmallintField;
    QueryVendedoresDia_Comissao: TSmallintField;
    QRLabelFiltro: TQRLabel;
    QRBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaVendedores: TQRListaVendedores;
  Filtro : Integer;

implementation
   uses Senha;

{$R *.DFM}

procedure TQRListaVendedores.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryVendedores do
     begin
       close;
       Case filtro of
         0 : SQL[1] := 'where data_exclusao is null';
         1 : SQL[1] := 'where data_exclusao is not null';
         2 : SQL[1] := '';
       end;
       open;
     end;
end;

end.
