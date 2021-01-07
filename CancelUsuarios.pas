unit CancelUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RelPadrao, QRExport, Qrctrls, QuickRpt, ExtCtrls, Db, DBTables,enio;

type
  TQrCancelUsuarios = class(TQuickReportPadrao)
    QueryUsuCancel: TQuery;
    QRGroup1: TQRGroup;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel11: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabelVrMens: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabelTot: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    VrMensTot : real;
  public
    { Public declarations }
  end;

var
  QrCancelUsuarios: TQrCancelUsuarios;

implementation

uses Contratante, udm;

{$R *.DFM}

procedure TQrCancelUsuarios.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  Var VrMens : String;
begin
  inherited;
  if QueryUsuCancel.FieldByName('cd_usuario').Asinteger = 168753 then
    beep;
  VrMens := FormContratante.GetVrMensUsu(QueryUsuCancel.FieldByName('codigo').Asinteger,
                                            QueryUsuCancel.FieldByName('digito').Asinteger,
                                            QueryUsuCancel.FieldByName('cd_usuario').Asinteger);
   QRLabelVrMens.caption := VrMens;
   try
      VrMensTot := VrMensTot + StrToFloat(VrMens);
   except
   end;

end;
procedure TQrCancelUsuarios.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
   QRLabelTot.caption := 'Total : ' + FormatFloat('###,###,###,##0.00',VrMensTot);
end;

procedure TQrCancelUsuarios.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
      VrMensTot := 0;
end;

end.
