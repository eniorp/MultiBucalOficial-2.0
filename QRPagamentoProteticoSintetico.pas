{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Pagamento de Protéticos            }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRPagamentoProteticoSintetico;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaPagProteticoSintetico = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelReferencia: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo_Completo: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryProtetico: TQuery;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRLabel1: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QueryItensPagProtetico: TQuery;
    QueryProteticoCodigo: TIntegerField;
    QueryProteticoNome: TStringField;
    QueryItensPagProteticoValor_Protetico: TFloatField;
    QueryItensPagProteticoProtetico: TIntegerField;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QueryItensPagProteticoNome_Protetico: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaPagProteticoSintetico: TQRListaPagProteticoSintetico;
  MesAno : String[7];
  Protetico : Integer;
  Valor, Total : Currency;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaPagProteticoSintetico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryItensPagProtetico do
       begin
         Close;
         ParamByName('MesAno').asString := MesAno;
         if Protetico <> 0 then
            begin
              SQL[2] := 'and Itens_PagProtetico.Protetico = :Codigo_Protetico';
              Params[1].DataType := ftInteger;
              Params[1].ParamType := ptInput;
              ParamByName('Codigo_Protetico').asInteger := Protetico;
              SQL[3] := 'group by Itens_PagProtetico.Protetico';
            end
         else
            begin
              SQL[2] := 'group by Itens_PagProtetico.Protetico';
              SQL[3] := '';
            end;
         Open;
       end;
end;

end.
