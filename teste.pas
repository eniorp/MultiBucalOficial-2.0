unit teste;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, Qrctrls, Db, DBTables, ExtCtrls;

type
  TForm1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    Query1: TQuery;
    Query2: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand5: TQRBand;
    QuickRep2: TQuickRep;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.QRBand5BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QuickRep2.Preview;
end;

end.
