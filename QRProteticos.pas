unit QRProteticos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaProteticos = class(TQuickRep)
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QueryProteticos: TQuery;
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
    QueryProteticosCodigo: TIntegerField;
    QueryProteticosNome: TStringField;
    QueryProteticosEndereco_Comercial: TStringField;
    QueryProteticosBairro_Comercial: TStringField;
    QueryProteticosCep_Comercial: TStringField;
    QueryProteticosCidade_Comercial: TStringField;
    QueryProteticosEstado_Comercial: TStringField;
    QueryProteticosEndereco_Residencial: TStringField;
    QueryProteticosBairro_Residencial: TStringField;
    QueryProteticosCep_Residencial: TStringField;
    QueryProteticosCidade_Residencial: TStringField;
    QueryProteticosEstado_Residencial: TStringField;
    QueryProteticosFone1: TStringField;
    QueryProteticosFone2: TStringField;
    QueryProteticosFax: TStringField;
    QueryProteticosCelular: TStringField;
    QueryProteticosemail: TStringField;
    QueryProteticosEspecialidade: TSmallintField;
    QueryProteticosData_Exclusao: TDateTimeField;
    QueryProteticosCodigo_Clinica: TIntegerField;
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
  QRListaProteticos: TQRListaProteticos;
  Filtro : Integer;

implementation
   uses Senha;

{$R *.DFM}

procedure TQRListaProteticos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryProteticos do
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
