unit QRRepresentantes;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaRepresentantes = class(TQuickRep)
    DetailBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QueryRepresentantes: TQuery;
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
    QRDBTextCodigo: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRExpr1: TQRExpr;
    PageFooterBand1: TQRBand;
    QueryRepresentantesCodigo: TSmallintField;
    QueryRepresentantesNome: TStringField;
    QueryRepresentantesCNPJ_CPF: TStringField;
    QueryRepresentantesRg: TStringField;
    QueryRepresentantesFone: TStringField;
    QueryRepresentantesFax: TStringField;
    QueryRepresentantese_mail: TStringField;
    QueryRepresentantesEndereco: TStringField;
    QueryRepresentantesBairro: TStringField;
    QueryRepresentantesCidade: TStringField;
    QueryRepresentantesEstado: TStringField;
    QueryRepresentantesCep: TStringField;
    QueryRepresentantesDia_Comissao: TSmallintField;
    QueryRepresentantesComissa_Vendedor_Representante: TBooleanField;
    QRLabelFiltro: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaRepresentantes: TQRListaRepresentantes;
  Filtro : Integer;

implementation
   uses Senha;

{$R *.DFM}

procedure TQRListaRepresentantes.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryRepresentantes do
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
