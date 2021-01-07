unit EtiquetasEndereco;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQREtiquetasEnd = class(TQuickRep)
    QueryContratante: TQuery;
    QueryContratanteNome: TStringField;
    QueryContratanteEndereco_Residencial: TStringField;
    QueryContratanteBairro_Residencial: TStringField;
    QueryContratanteCidade_Residencial: TStringField;
    QueryContratanteEstado_Residencial: TStringField;
    QueryContratanteCEP_Residencial: TStringField;
    QueryContratanteNumero_Res: TStringField;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
  private

  public

  end;

var
  QREtiquetasEnd: TQREtiquetasEnd;

implementation

{$R *.DFM}

end.
