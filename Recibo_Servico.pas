unit Recibo_Servico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls;

type
  TQuickRRecibo = class(TForm)
    QuickReportRecibo: TQuickRep;
    QRLogo: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel16: TQRLabel;
    QRMemoRecibo: TQRMemo;
    QRLabel17: TQRLabel;
    QRLabel15: TQRLabel;
    QRMemo1: TQRMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QuickRRecibo: TQuickRRecibo;

implementation

{$R *.DFM}

end.
