{ Programa ........: Relatório por Data de Baixa                               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRBaiCliVenSint;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitBaiCliVencimentoSint = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QueryReceber: TQuery;
    QRGroup1: TQRGroup;
    QRLabelSituacao: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData4: TQRSysData;
    PageFooterBand1: TQRBand;
    QRDBText7: TQRDBText;
    QueryReceberData_Pagamento: TDateTimeField;
    QueryReceberClassificacao: TStringField;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabelMens: TQRLabel;
    QRLabelOrc: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelTTMens: TQRLabel;
    QRLabelTTOrc: TQRLabel;
    QRLabelDia: TQRLabel;
    QRLabelTtlDia: TQRLabel;
    QueryReceberValor_Pago: TFloatField;
    QRLabel4: TQRLabel;
    QRLabelManut: TQRLabel;
    QRLabelTTManut: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitBaiCliVencimentoSint: TQRTitBaiCliVencimentoSint;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DIntervalo3, DIntervalo4, DataHoje : TDateTime;
  Valor_Mens, Valor_Orc,Valor_manut, ValorTotal_Mens, ValorTotal_Orc,ValorTotal_Manut : Currency;
  Pgto : Integer;

implementation

{$R *.DFM}
uses Senha, RelatoReceber;

procedure TQRTitBaiCliVencimentoSint.QuickRepBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   Valor_Mens          := 0;
   Valor_Orc           := 0;
   Valor_manut         := 0;

     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryReceber do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         ParamByName('Data3').asDateTime := DIntervalo3;
         ParamByName('Data4').asDateTime := DIntervalo4;
         //FormRelatoriosReceber.Memo1.Lines.Add(text);
         open;
       end;
end;

procedure TQRTitBaiCliVencimentoSint.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   If QueryReceberClassificacao.asString = 'Mensalidade' then
      Valor_Mens := Valor_Mens + QueryReceberValor_Pago.asCurrency
   else
   If QueryReceberClassificacao.asString = 'Manutenção' then
      Valor_manut := Valor_manut + QueryReceberValor_Pago.asCurrency
   else
      Valor_Orc := Valor_Orc + QueryReceberValor_Pago.asCurrency;
end;

procedure TQRTitBaiCliVencimentoSint.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelMens.Caption := FormatFloat('R$ ' + '###,###,###,##0.00', Valor_Mens);
   QRLabelOrc.Caption  := FormatFloat('R$ ' + '###,###,###,##0.00', Valor_Orc);
   QRLabelManut.Caption  := FormatFloat('R$ ' + '###,###,###,##0.00', Valor_manut);
   QRLabelDia.Caption  := FormatFloat('R$ ' + '###,###,###,##0.00', Valor_Mens + Valor_Orc + Valor_manut);
   ValorTotal_Mens     := ValorTotal_Mens + Valor_Mens;
   ValorTotal_Orc      := ValorTotal_Orc + Valor_Orc;
   ValorTotal_Manut    := ValorTotal_Manut + Valor_manut;
   Valor_Mens          := 0;
   Valor_Orc           := 0;
   Valor_manut         := 0;
end;

procedure TQRTitBaiCliVencimentoSint.PageFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelTTMens.Caption := FormatFloat('R$ ' + '###,###,###,##0.00', ValorTotal_Mens);
   QRLabelTTOrc.Caption  := FormatFloat('R$ ' + '###,###,###,##0.00', ValorTotal_Orc);
   QRLabelTTManut.Caption  := FormatFloat('R$ ' + '###,###,###,##0.00', ValorTotal_Manut);
   QRLabelTtlDia.Caption := FormatFloat('R$ ' + '###,###,###,##0.00', ValorTotal_Mens + ValorTotal_Orc + ValorTotal_Manut);
   ValorTotal_Mens       := 0;
   ValorTotal_Orc        := 0;
   ValorTotal_Manut      := 0;
end;

end.
