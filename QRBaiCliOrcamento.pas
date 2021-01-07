{ Programa ........: Relatório de Títulos em Aberto por Vencimento             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRBaiCliOrcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitBaiCliOrcamento = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    v: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QueryTitulo: TQuery;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
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
    QueryTituloDescricao: TStringField;
    QueryTituloDescricao_1: TStringField;
    QueryTituloTipo_Documento: TIntegerField;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloDesdobramento: TStringField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloTipo_Cobranca: TIntegerField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloNome: TStringField;
    QueryTituloStatus_Cheque: TStringField;
    QRDBText3: TQRDBText;
    QueryTituloOrcamento: TIntegerField;
    QueryTituloExclusao: TDateTimeField;
    QueryStatus: TQuery;
    QueryStatusCodigo: TSmallintField;
    QueryStatusDescricao: TStringField;
    QueryTituloStatus_Orcamento: TSmallintField;
    QRDBText5: TQRDBText;
    QueryTituloDescricao_Status: TStringField;
    QRLabel3: TQRLabel;
    QRLabelParalisado: TQRLabel;
    QueryOrcamentosAux: TQuery;
    QRDBText8: TQRDBText;
    QueryTituloValor_Pago: TFloatField;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel12: TQRLabel;
    QRDBText10: TQRDBText;
    QueryTituloparalizado: TStringField;
    procedure QueryTituloCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitBaiCliOrcamento: TQRTitBaiCliOrcamento;
  NIntervalo1, NIntervalo2, NCheque : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;


implementation

{$R *.DFM}
uses RelatoReceber, Senha, udm;

procedure TQRTitBaiCliOrcamento.QueryTituloCalcFields(DataSet: TDataSet);
begin
     DataHoje := dm.Date;
end;

procedure TQRTitBaiCliOrcamento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var  i : Short;
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     i := 2;
     with QueryTitulo do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if RelatoReceber.TipoDocumento <> 0 then
            begin
               SQL[19] := 'and D.Tipo_Documento = :TipoDocumento';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoDocumento').asInteger := RelatoReceber.TipoDocumento;
               i := i + 1;
            end
         else
               SQL[19] := '';
         if RelatoReceber.TipoCobranca <> 0 then
            begin
               SQL[20] := 'and D.Tipo_Cobranca = :TipoCobranca';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoCobranca').asInteger := RelatoReceber.TipoCobranca;
               i := i + 1;
            end
         else
               SQL[20] := '';
         FormRelatoriosReceber.Memo1.Lines.Add(text);
         Open;
        //FormRelatoriosReceber.Memo1.Lines.Add(text);

       end;
end;

procedure TQRTitBaiCliOrcamento.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
{     if QueryTituloOrcamento.asString = '' then exit;

     with QueryOrcamentosAux do
       begin
         Close;
         ParamByName('Codigo').asInteger := QueryTituloCodigo_Contratante.asInteger;
         Open;
         if recordcount <> 0 then
         begin
            QRLabelParalisado.Caption := 'S';

         end
         else
         begin
            QRLabelParalisado.Caption := 'N';
         end;
       end;
       }

end;

end.
