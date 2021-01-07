{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Contratos Cancelados               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRContLigSint;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, TeEngine,
  Series, TeeProcs, Chart, DBChart, QrTee;

type
  TQRListaContLigSint = class(TQuickRep)
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRBandData: TQRBand;
    QRBand3: TQRBand;
    QueryContatos: TQuery;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel1: TQRLabel;
    QRGroupData: TQRGroup;
    QRExpr4: TQRExpr;
    QRGroupTipo: TQRGroup;
    QRExpr3: TQRExpr;
    QRBandTipo: TQRBand;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRLabel2: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel8: TQRLabel;
    QueryContatosOperador_Nm: TStringField;
    QueryContatosdata_AGenda: TDateTimeField;
    QueryContatosOperador: TIntegerField;
    QueryContatosTT_Ligacao: TIntegerField;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRDBText1: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr5: TQRExpr;
    QRDBChart1: TQRDBChart;
    QRChart1: TQRChart;
    Series1: TBarSeries;
    QueryContatos2: TQuery;
    QueryContatosLigacao: TIntegerField;
    QueryContatosdescricao: TStringField;
    QueryContatos2Ligacao: TIntegerField;
    QueryContatos2descricao: TStringField;
    QueryContatos2TT_Ligacao: TIntegerField;
    QRLabelTpContato: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelOperador: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaContLigSint: TQRListaContLigSint;
  Tipo, oper : Short;
  DIntervalo1, DIntervalo2 : TDate;

implementation
  uses Senha, RelAgenda;

{$R *.DFM}

procedure TQRListaContLigSint.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryContatos do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if Tipo <> 0 then
            ParamByName('Tipo').asInteger := Tipo
         else
           SQL[4] := '';
         if Oper <> 0 then
            ParamByName('Oper').asInteger := Oper
         else
           SQL[5] := '';

         if FormRelAgenda.ADOQueryRegiao.FieldByName('cd_regiao').AsInteger <> 0 then
            QueryContatos.sql[05] :=  QueryContatos.sql[05] + ' and cont.cd_regiao_res = ' + FormRelAgenda.ADOQueryRegiao.FieldByName('cd_regiao').AsString ;

           FormRelAgenda.memo1.lines.add(text);
         Open;
       end;
     with QueryContatos2 do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if Tipo <> 0 then
            ParamByName('Tipo').asInteger := Tipo
         else
           SQL[3] := '';
         if Oper <> 0 then
            ParamByName('Oper').asInteger := Oper
         else
           SQL[4] := '';

         if FormRelAgenda.ADOQueryRegiao.FieldByName('cd_regiao').AsInteger <> 0 then
            QueryContatos2.sql[04] :=  QueryContatos2.sql[04] + ' and cont.cd_regiao_res = ' + FormRelAgenda.ADOQueryRegiao.FieldByName('cd_regiao').AsString ;

         Open;
       end;
end;

end.
