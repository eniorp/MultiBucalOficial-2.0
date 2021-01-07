unit QRServicos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaServicos = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QueryServicos: TQuery;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    DetailBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRDBText5: TQRDBText;
    QueryServicosSip: TIntegerField;
    QuerySip: TQuery;
    QueryServicosDescricaoSip: TStringField;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRExpr1: TQRExpr;
    QRBand2: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaServicos: TQRListaServicos;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaServicos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryServicos do
       begin
         Close;
         Open;
       end;
end;

end.
