unit QRTaxaSuplementar;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,enio;

type
  TQRListaTaxaSuplementar = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel_menor: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel_maior: TQRLabel;
    QRLabelMenor: TQRLabel;
    QRLabelMaior: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabelTotal: TQRLabel;
    QueryUsuariosMaior: TQuery;
    QueryUsuariosMenor: TQuery;
    QRLabelEmpresa: TQRLabel;
    QRLabelTotContrat: TQRLabel;
    QRLabel2: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaTaxaSuplementar: TQRListaTaxaSuplementar;
  Maior, Menor, Total : Integer;
  DataFim : TDateTime;

implementation
   uses Senha, udm;
{$R *.DFM}

procedure TQRListaTaxaSuplementar.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryUsuariosMenor do
     begin
       close;
       ParamByName('Data1').AsDateTime   := DataFim;
       ParamByName('Data2').AsDateTime   := DataFim;
       open;
       Menor := recordcount;
     end;
   with QueryUsuariosMaior do
     begin
       close;
       ParamByName('Data1').AsDateTime   := DataFim;
       ParamByName('Data2').AsDateTime   := DataFim;
       open;
       Maior := recordcount;
     end;

   Total := Maior + Menor;
   QRLabelMenor.Caption := IntToStr(Menor);
   QRLabelMaior.Caption := IntToStr(Maior);
   QRLabelTotal.Caption := IntToStr(Total);
   QRLabel3.caption := 'Total Geral de Usuários em ' + QRLabelPeriodo2.Caption + ':  ';
   QRLabel2.caption := 'Total Geral de contratantes em ' + QRLabelPeriodo2.Caption + ':  ';
   QRLabelTotContrat.Caption := dm.execmd('set dateformat dmy select count(*) qt from contratante where (exclusao is null or exclusao > ''' + DateToStr(DataFim) + ''') and inclusao < ''' + DateToStr(DataFim) + '''','qt');
end;

end.
