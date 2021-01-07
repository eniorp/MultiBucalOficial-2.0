unit QRManutencoesFinalizadas;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaManutencoesFinalizadas = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRBand5: TQRBand;
    QueryItensPagDentista: TQuery;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaManutencoesFinalizadas: TQRListaManutencoesFinalizadas;
  Mes_Ano : string;


implementation

{$R *.DFM}

procedure TQRListaManutencoesFinalizadas.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     with QueryItensPagDentista do
       begin
         Close;
         ParamByName('Mes_Ano').asString := Mes_Ano;
         Open;
       end;
end;

end.
