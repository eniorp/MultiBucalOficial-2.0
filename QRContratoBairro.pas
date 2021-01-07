{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Contratos Cancelados               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }
{ Data.............: 21/05/2002                                                }

unit QRContratoBairro;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaContratosBairro = class(TQuickRep)
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand3: TQRBand;
    QueryContratante: TQuery;
    QRLabel3: TQRLabel;
    QRGroup2: TQRGroup;
    QRLabel7: TQRLabel;
    QRLabel1: TQRLabel;
    QueryContratanteBairro_comercial: TStringField;
    QueryContratantevidas: TIntegerField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabelFiltro: TQRLabel;
    QueryContratanteCidade_Comercial: TStringField;
    QRLabel4: TQRLabel;
    QRBandCidade: TQRBand;
    QRLabel5: TQRLabel;
    QRLabelCidade: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaContratosBairro: TQRListaContratosBairro;
  Bairro : String;

implementation
   uses Senha;

{$R *.DFM}

procedure TQRListaContratosBairro.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryContratante do
       begin
         Close;
         if Bairro <> 'Todos' then
            Parambyname('Bairro').asString := Bairro
         else
            SQL[4] := '';
         Open;
       end;
end;

end.
