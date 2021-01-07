{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Contratos Cancelados               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRContatos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaContatos = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBTextNome: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRBandData: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QueryContatos: TQuery;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel15: TQRLabel;
    QueryContatosIncremento: TIntegerField;
    QueryContatosData_Contato: TDateTimeField;
    QueryContatosHora_Contato: TDateTimeField;
    QueryContatosCodigo_Contratante: TIntegerField;
    QueryContatosDigito_Usuario: TSmallintField;
    QueryContatosData_Agenda: TDateTimeField;
    QueryContatosHora_Agenda: TDateTimeField;
    QueryContatosOperador: TIntegerField;
    QueryContatosTexto_Contato: TMemoField;
    QueryContatosTipo: TSmallintField;
    QueryContatosNome: TStringField;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRGroupData: TQRGroup;
    QRExpr4: TQRExpr;
    QRGroupTipo: TQRGroup;
    QRExpr3: TQRExpr;
    QueryContatosDescricao: TStringField;
    QRBandTipo: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel2: TQRLabel;
    QRLabelTotalTipo: TQRLabel;
    QRLabelTotalData: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QueryContatoscd_contratante: TIntegerField;
    QueryContatosnm_contratante: TStringField;
    QRLabel3: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBandTipoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBandDataBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaContatos: TQRListaContatos;
  Tipo, cdOperador : Short;
  DIntervalo1, DIntervalo2 : TDate;
  Total_tipo, Total_Data : integer;
  
implementation
  uses Senha, RelAgenda;

{$R *.DFM}

procedure TQRListaContatos.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     Total_Tipo := 0;
     Total_Data := 0;
     QRLabelEmpresa.Caption := Senha.Empresa;
     QueryContatos.Close;
     QueryContatos.ParamByName('Data1').asDateTime := DIntervalo1;
     QueryContatos.ParamByName('Data2').asDateTime := DIntervalo2;
     if Tipo <> 0 then
        QueryContatos.ParamByName('Tipo').asInteger := Tipo
     else
        QueryContatos.SQL[8] := '';
     FormRelAgenda.memo1.lines.add(text);
     if(cdOperador <> 0) then
        QueryContatos.sql[10] := ' and operador = ' + IntToStr(cdOperador) + QueryContatos.sql[10]; 
     QueryContatos.Open;
end;

procedure TQRListaContatos.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
   Total_tipo := Total_tipo + 1;
   Total_Data := Total_data + 1;   
end;

procedure TQRListaContatos.QRBandTipoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabelTotalTipo.Caption := IntToStr(Total_Tipo);
   Total_Tipo := 0;
end;

procedure TQRListaContatos.QRBandDataBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   QRLabelTotalData.Caption := IntToStr(Total_Data);
   Total_Data := 0;
end;

end.
