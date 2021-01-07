{ Programa ........: Relatório de Títulos em Aberto por Cliente                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRAbeGrupo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitAbeGrupoContr = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel5: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRBandGrupo: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryTitulo: TQuery;
    QueryTitulocodigo: TIntegerField;
    QueryTituloDescricao: TStringField;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloDesdobramento: TStringField;
    QueryTituloTipo_Documento: TSmallintField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloCodigo_Usuario: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloSaldo: TFloatField;
    QueryTituloTipo_Cobranca: TSmallintField;
    QueryTituloNumero_Banco: TStringField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloValor_Pago: TFloatField;
    QueryTituloDesconto: TFloatField;
    QueryTituloJuros: TFloatField;
    QueryTituloOperador: TSmallintField;
    QueryTituloOrcamento: TIntegerField;
    QueryTituloParcela: TSmallintField;
    QueryTituloStatus_Cheque: TStringField;
    QueryTituloObservacoes: TStringField;
    QueryTituloStatus_Orcamento: TSmallintField;
    QueryTituloStatus_Ocorrencia: TSmallintField;
    QueryTituloNro_cheque: TStringField;
    QueryTituloBanco_Cheque: TStringField;
    QueryTituloNro_ContaCheque: TStringField;
    QRDBText10: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText14: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QueryTituloNome: TStringField;
    QueryTituloFone1: TStringField;
    QueryTituloAgencia_Cheque: TStringField;
    QueryTituloDeposito: TBooleanField;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitAbeGrupoContr: TQRTitAbeGrupoContr;
  Intervalo1, Intervalo2 : String;
  DIntervalo1, DIntervalo2 : TDateTime;
  Grupo : Integer;

implementation

{$R *.DFM}
uses RelatoReceber, Senha;

procedure TQRTitAbeGrupoContr.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryTitulo do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if grupo <> 0 then
            ParamByName('Grupo').asInteger := Grupo
         else
            SQL[7] := '';
         Open;
       end;
end;

end.

