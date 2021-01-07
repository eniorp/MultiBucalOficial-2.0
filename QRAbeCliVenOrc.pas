{ Programa ........: Relatório de Títulos em Aberto por Vencimento             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRAbeCliVenOrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitAbeCliVencOrc = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QueryTitulo: TQuery;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRSysData4: TQRSysData;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QueryContratante: TQuery;
    QueryTitulocontratante: TIntegerField;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryContratanteFone1: TStringField;
    QueryContratanteFone2: TStringField;
    QueryTituloNome: TStringField;
    QueryTituloFone1: TStringField;
    QueryTituloFone2: TStringField;
    QRLabelVencto: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitAbeCliVencOrc: TQRTitAbeCliVencOrc;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;
  Pgto : Integer;

implementation

{$R *.DFM}
uses RelatoReceber, Senha, udm;

procedure TQRTitAbeCliVencOrc.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryTitulo do
       begin
         Close;
         //Parambyname('Data1').asDateTime := dm.Now();
         //Parambyname('Data2').asDateTime := dm.Now();
         //ShowMessage(text);
         Open;
       end;
end;

end.
