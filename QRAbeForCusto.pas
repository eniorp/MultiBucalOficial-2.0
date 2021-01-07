{ Programa ........: Relatório de Títulos em Aberto por Cliente                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRAbeForCusto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitAbeFornCusto = class(TQuickRep)
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
    QRBandGrupo: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryTitulo: TQuery;
    QueryTituloCod_Grupo: TStringField;
    QueryTituloGrupo: TStringField;
    QueryTituloconta: TStringField;
    QueryTituloDescricao: TStringField;
    QueryTituloCodigo_Fornecedor: TIntegerField;
    QueryTituloTipo_Documento: TSmallintField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloSaldo: TFloatField;
    QueryTituloTipo_Cobranca: TSmallintField;
    QueryTituloDesconto: TFloatField;
    QueryTituloJuros: TFloatField;
    QueryTituloCentro_Custo: TIntegerField;
    QueryTituloBanco_Cheque: TStringField;
    QueryTituloNro_Cheque: TStringField;
    QueryTituloObservacao: TStringField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloValor_Pago: TFloatField;
    QueryTituloParcela: TIntegerField;
    QueryTituloOperador: TIntegerField;
    QRDBText3: TQRDBText;
    QRDBText10: TQRDBText;
    QRGroup2: TQRGroup;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QueryTitulonome_fantasia: TStringField;
    QRBandCusto: TQRBand;
    QRLabel8: TQRLabel;
    QRLabelTotalCentro: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabelTotalGrupo: TQRLabel;
    QueryTituloNumero_Titulo: TStringField;
    QueryTituloTipo_Pagamento: TIntegerField;
    QueryTituloID_Pagto: TIntegerField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBandGrupoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBandCustoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitAbeFornCusto: TQRTitAbeFornCusto;
  Intervalo1, Intervalo2 : TDateTime;
  Total_Grupo, Total_Centro : currency;
  Custo, Grupo : Integer;    

implementation

{$R *.DFM}
uses RelatoReceber, Senha, RelatoPagar;

procedure TQRTitAbeFornCusto.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
   Total_Grupo := 0;
   Total_Centro := 0;
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryTitulo do
     begin
        close;
        ParambyName('data1').AsDateTime := Intervalo1;
        ParambyName('data2').AsDateTime := Intervalo2;
        if custo <> 0 then
           Parambyname('Custo').asinteger := custo
        else
           SQL[7] := '';

        if grupo <> 0 then
           Parambyname('Grupo').asinteger := grupo
        else
           SQL[8] := '';
        If RelatoPagar.TipoCobranca <> 0 then
          ParamByName('TpCob').asinteger := RelatoPagar.TipoCobranca
        else
          SQL[9] := '';
        If RelatoPagar.TipoPgto <> 0 then
          ParamByName('TpPgt').asinteger := RelatoPagar.TipoPgto
        else
          SQL[10] := '';

         open;
     end;
end;

procedure TQRTitAbeFornCusto.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   Total_Centro := Total_Centro + QueryTituloValor.AsCurrency;
   Total_Grupo  := Total_Grupo + QueryTituloValor.AsCurrency;
end;

procedure TQRTitAbeFornCusto.QRBandGrupoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabelTotalGrupo.Caption := FormatFloat( '###,###,###,##0.00', Total_Grupo);
   Total_Grupo := 0;
end;

procedure TQRTitAbeFornCusto.QRBandCustoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabelTotalCentro.Caption := FormatFloat( '###,###,###,##0.00', Total_Centro);
   Total_Centro := 0;
end;

end.

