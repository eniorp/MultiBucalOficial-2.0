unit ReciboBaixa;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,extenso,dialogs,
  jpeg ;

type
  TQrReciboBaixa = class(TQuickRep)
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRShape2: TQRShape;
    QRSysData1: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRShape5: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRShape6: TQRShape;
    QueryReceber: TQuery;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRLabelVrExtenso: TQRLabel;
    QRImage1: TQRImage;
    QueryEmpresa: TQuery;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape7: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    QRImage2: TQRImage;
    QRLabel15: TQRLabel;
    QRDBText16: TQRDBText;
    QRSysData2: TQRSysData;
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QrReciboBaixa: TQrReciboBaixa;

implementation

uses Senha, Seletor;

{$R *.DFM}

procedure TQrReciboBaixa.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabelVrExtenso.Caption := ValorExtenso(QueryReceber.FieldByName('vrtotal').AsCurrency);
end;

procedure TQrReciboBaixa.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   try
      if senha.Cod_Empresa = 1 then
      begin
         QRImage1.Enabled := true;
         QRImage2.Enabled := false;
      end
      else
      begin
         QRImage1.Enabled := false;
         QRImage2.Enabled := true;
         QRImage2.Picture := FormSeletor.Image2.Picture;
      end
   except
      QRImage2.Picture := nil;
      QRImage1.Picture := nil;
   end;



end;

end.
