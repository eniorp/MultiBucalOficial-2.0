unit ReciboServico;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRRecibo = class(TQuickRep)
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
    QueryProteticos: TQuery;
    QueryProteticosCic: TStringField;
    QueryProteticosNome: TStringField;
    QueryProteticosInss: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRRecibo: TQRRecibo;

implementation

{$R *.DFM}

procedure TQRRecibo.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   with QueryProteticos do
   begin
     Close;
//     parambyname('cod').asinteger :=  StrToInt(Copy(ComboBoxProtetico.Text , 1, 3));
     Open;
   end;
end;

end.
