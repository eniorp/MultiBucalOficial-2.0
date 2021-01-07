unit Unit2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQuickReport2 = class(TQuickRep)
    QueryTitulo: TQuery;
    QueryTituloNome: TStringField;
    QueryTituloEndereco_Comercial: TStringField;
    QueryTituloBairro_Comercial: TStringField;
    QueryTituloCidade_Comercial: TStringField;
    QueryTituloEstado_Comercial: TStringField;
    QueryTituloCEP_Comercial: TStringField;
    QueryTitulonumero_com: TStringField;
    DatabaseMultiOdonto: TDatabase;
    v: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
  private

  public

  end;

var
  QuickReport2: TQuickReport2;

implementation

{$R *.DFM}

end.
