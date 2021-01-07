unit QRDiopsSIP;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaDiopsSip = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QueryUsuarios: TQuery;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabelFamiliar: TQRLabel;
    QRLabelEmpresarial: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabelGeral: TQRLabel;
    QRLabelEmpresa: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaDiopsSip: TQRListaDiopsSip;
  TotalGeral, TotalFamiliar, TotalEmpresarial : Integer;
  DataFim : TDateTime;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaDiopsSip.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryUsuarios do
     begin
       close;
       ParamByName('Data1').AsDateTime   := DataFim;
       ParamByName('Data2').AsDateTime   := DataFim;
       ParamByName('Familiar').AsInteger := 1;
       open;
       TotalFamiliar := recordcount;
       close;
       ParamByName('Data1').AsDateTime   := DataFim;
       ParamByName('Data2').AsDateTime   := DataFim;
       ParamByName('Familiar').AsInteger := 0;
       open;
       TotalEmpresarial := recordcount;
       TotalGeral := TotalFamiliar + TotalEmpresarial;
     end;
   QRLabelFamiliar.Caption    := IntToStr(TotalFamiliar);
   QRLabelEmpresarial.Caption := IntToStr(TotalEmpresarial);
   QRLabelGeral.Caption       := IntToStr(TotalGeral);

end;

end.
