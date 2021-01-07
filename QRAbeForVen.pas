{ Programa ........: Relatório de Títulos em Aberto por Vencimento             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRAbeForVen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitAbeForVencimento = class(TQuickRep)
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
    QueryTitulo: TQuery;
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
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryTituloCodigo_Fornecedor: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloNome_Fantasia: TStringField;
    QueryTituloDescricao: TStringField;
    QueryTituloDescricao_1: TStringField;
    QueryTituloTipo_Documento: TSmallintField;
    QueryTituloTipo_Cobranca: TSmallintField;
    QueryTituloNumero_Titulo: TStringField;
    procedure QueryTituloCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitAbeForVencimento: TQRTitAbeForVencimento;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;

implementation

{$R *.DFM}
uses RelatoReceber, Senha, RelatoPagar, udm;

procedure TQRTitAbeForVencimento.QueryTituloCalcFields(DataSet: TDataSet);
begin
     DataHoje := dm.Date;
end;

procedure TQRTitAbeForVencimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   QRLabelEmpresa.Caption := Senha.Empresa;
   with QueryTitulo do
     begin
       Close;
       ParamByName('Data1').asDateTime := DIntervalo1;
       ParamByName('Data2').asDateTime := DIntervalo2;
//Parametros
      if RelatoPagar.TipoCobranca <> 0 then
        ParamByName('tpCob').asinteger := RelatoPagar.TipoCobranca
       else
          SQL[5] := '';
      if RelatoPagar.TipoPgto <> 0 then
        ParamByName('TpPgt').asInteger := RelatoPagar.TipoPgto
      else
        SQL[6] := '';
      if RelatoPagar.Custo <> 0 then
        ParamByName('CenCusto').asInteger := RelatoPagar.Custo
      else SQL[7] := '';
       Open;
     end;
end;

end.
