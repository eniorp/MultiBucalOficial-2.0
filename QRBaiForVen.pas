{ Programa ........: Relatório por Data de Baixa                               }
{ Cliente .........: Pronto Vida Emergências Médicas                           }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRBaiForVen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitBaiForVencimento = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QueryBaixa: TQuery;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabelSituacao: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData4: TQRSysData;
    QueryBaixaNome_Fantasia: TStringField;
    QueryBaixadescricao: TStringField;
    QueryBaixaDescricao_1: TStringField;
    QueryBaixaNumero_Titulo: TIntegerField;
    QueryBaixaCodigo_Fornecedor: TIntegerField;
    QueryBaixaTipo_Documento: TSmallintField;
    QueryBaixaData_Emissao: TDateTimeField;
    QueryBaixaData_Vencimento: TDateTimeField;
    QueryBaixaValor: TFloatField;
    QueryBaixaSaldo: TFloatField;
    QueryBaixaTipo_Cobranca: TSmallintField;
    QueryBaixaDesconto: TFloatField;
    QueryBaixaJuros: TFloatField;
    QueryBaixaCentro_Custo: TIntegerField;
    QueryBaixaBanco_Cheque: TStringField;
    QueryBaixaNro_Cheque: TStringField;
    QueryBaixaObservacao: TStringField;
    QueryBaixaData_Pagamento: TDateTimeField;
    QueryBaixaValor_Pago: TFloatField;
    QueryBaixaParcela: TIntegerField;
    QueryBaixaOperador: TIntegerField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitBaiForVencimento: TQRTitBaiForVencimento;
  Intervalo1, Intervalo2 : TDateTime;

implementation

{$R *.DFM}
uses RelatoReceber, Senha;

procedure TQRTitBaiForVencimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryBaixa do
     begin
        close;
        Parambyname('Data1').asDateTime := Intervalo1;
        Parambyname('Data2').asDateTime := Intervalo2;
        if RelatoReceber.TipoDocumento <> 0 then
           Parambyname('Documento').asInteger := RelatoReceber.TipoDocumento
        else
           SQL[5] := '';
        if RelatoReceber.TipoCobranca <> 0 then
           Parambyname('cobranca').asInteger := RelatoReceber.Tipocobranca
        else
           SQL[6] := '';
        open;

     end;

end;

end.
