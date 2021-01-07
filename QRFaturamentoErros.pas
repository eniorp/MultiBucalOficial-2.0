{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório do Faturamento                     }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRFaturamentoErros;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Dialogs;

type
  TQRListaFaturamentoErros = class(TQuickRep)
    QueryFaturamento: TQuery;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QueryFaturamentoNumero_Titulo: TIntegerField;
    QueryFaturamentoDesdobramento: TStringField;
    QueryFaturamentoData_Vencimento: TDateTimeField;
    QueryFaturamentoCodigo_Contratante: TIntegerField;
    QueryFaturamentoCodigo_Usuario: TIntegerField;
    QueryFaturamentoTipo_Documento: TIntegerField;
    QueryFaturamentoValor: TFloatField;
    QueryFaturamentoNome: TStringField;
    QueryFaturamentoDescricao: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaFaturamentoErros: TQRListaFaturamentoErros;

implementation

{$R *.DFM}

uses GeraReceber, Senha;

procedure TQRListaFaturamentoErros.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryFaturamento do
       begin
         Close;
         Open;
         FormGeraReceber.Memo1.lines.add(text);
       end;
end;

end.


