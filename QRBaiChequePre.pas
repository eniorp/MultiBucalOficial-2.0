{ Programa ........: Relatório de Títulos Baixados por Cliente                 }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRBaiChequePre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitBaiChequePre = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel5: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabelTipoCob: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryReceber: TQuery;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText10: TQRDBText;
    QueryReceberagencia_cheque: TStringField;
    QueryReceberBanco_cheque: TStringField;
    QueryReceberNro_ContaCheque: TStringField;
    QueryReceberNro_cheque: TStringField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberData_Pagamento: TDateTimeField;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRBand2: TQRBand;
    QRLabel3: TQRLabel;
    QueryReceberValor_Pago: TFloatField;
    QRGroup2: TQRGroup;
    QRExprStatus: TQRExpr;
    QueryReceberNome_Contratante: TStringField;
    QueryReceberDescricao_TipoPgto: TStringField;
    QueryReceberTipo_Pagamento: TIntegerField;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
    QueryReceberStatus_Cheque: TStringField;
    QueryReceberValor: TFloatField;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRDBText3: TQRDBText;
    QueryReceberParcela: TSmallintField;
    QRLabel4: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitBaiChequePre: TQRTitBaiChequePre;
  Intervalo1, Intervalo2 : String;
  DIntervalo1, DIntervalo2, DIntervalo3, DIntervalo4 : TDateTime;
  Pgto : Integer;

implementation

{$R *.DFM}
uses Senha;

procedure TQRTitBaiChequePre.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryReceber do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         ParamByName('Data3').asDateTime := DIntervalo3;
         ParamByName('Data4').asDateTime := DIntervalo4;
         if Pgto = 0 then
           SQL[7] := ''
         else
           ParamByName('Pgto').asInteger := Pgto;
         Open;
       end;
end;

end.
