{ Programa ........: Relatório de Títulos em Aberto por Cliente                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRAbeCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitAbeCliente = class(TQuickRep)
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
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryTitulo: TQuery;
    QueryTituloDesdobramento: TStringField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloSaldo: TFloatField;
    QueryTituloNumero_Banco: TStringField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloTipo_Documento: TIntegerField;
    QueryTituloTipo_Cobranca: TIntegerField;
    QueryTituloValor_Pago: TFloatField;
    QueryTituloDesconto: TFloatField;
    QueryTituloJuros: TFloatField;
    QueryTituloOperador: TSmallintField;
    QueryTituloOrcamento: TIntegerField;
    QueryTituloNome_Contratante: TStringField;
    QueryTituloDescricaoDocumento: TStringField;
    QueryTituloDescricaoCobranca: TStringField;
    QRGroup1: TQRGroup;
    QRDBText10: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText11: TQRDBText;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRLabelValor: TQRLabel;
    QRLabel12: TQRLabel;
    QueryTituloNumero_Titulo: TIntegerField;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QueryTituloParcela: TSmallintField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitAbeCliente: TQRTitAbeCliente;
  Intervalo1, Intervalo2 : String;
  DIntervalo1, DIntervalo2 : TDateTime;
  Valor : Currency;

implementation

{$R *.DFM}
uses RelatoReceber, Senha,Tacio;

procedure TQRTitAbeCliente.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     Valor := 0;
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryTitulo do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         case FormRelatoriosReceber.RadioGroupTp.ItemIndex of
             0 : SQL[9] := ' and Contratante.empresa = 1';
             1 : SQL[9] := ' and Contratante.empresa = 0';
             2 : SQL[9] := ' ';
         end;
         Open;
       end;
end;

procedure TQRTitAbeCliente.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   Valor := Valor + QueryTituloValor.asCurrency;
end;

procedure TQRTitAbeCliente.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabelValor.Caption := FormatFloat( 'R$' + '###,##0.00', Valor);
   Valor := 0;
end;



end.

