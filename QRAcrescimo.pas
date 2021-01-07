unit QRAcrescimo;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaAcrescimo = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QueryAcrescimo: TQuery;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QueryAcrescimoPlano: TIntegerField;
    QueryAcrescimoDias: TSmallintField;
    QueryAcrescimoPercentual: TFloatField;
    QueryPlanos: TQuery;
    QueryPlanosCodigo: TIntegerField;
    QueryPlanosDescricao: TStringField;
    QueryPlanosCodigo_Susep: TIntegerField;
    QueryPlanosTitular_Contratante: TStringField;
    QueryPlanosFis_Jur: TStringField;
    QueryPlanosFlag_Envio_Ans: TStringField;
    QueryAcrescimoDescricao_Plano: TStringField;
    QRLabelEmpresa: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaAcrescimo: TQRListaAcrescimo;

implementation
  uses senha;

{$R *.DFM}

procedure TQRListaAcrescimo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
end;

end.
