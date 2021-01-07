unit QRProcedimentosPagos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaProcedimentosPagos = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRBand3: TQRBand;
    QRBand5: TQRBand;
    QueryItensPagDentista: TQuery;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QueryItensPagDentistaMesAno: TStringField;
    QueryItensPagDentistaServico: TIntegerField;
    QueryItensPagDentistaDentista: TIntegerField;
    QueryDentistas: TQuery;
    QueryDentistasCodigo: TIntegerField;
    QueryDentistasNome: TStringField;
    QueryItensPagDentistaNomeDentista: TStringField;
    QueryServicos: TQuery;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryItensPagDentistaDescricaoServico: TStringField;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QueryItensPagDentistaQuantidade_Paga: TIntegerField;
    QRGroup1: TQRGroup;
    QRExprServico: TQRExpr;
    QRExpr1: TQRExpr;
    QRBandServico: TQRBand;
    QRLabelTotalQtde: TQRLabel;
    QRLabel6: TQRLabel;
    QRExprTotalPeriodo: TQRExpr;
    QRLabel5: TQRLabel;
    LabelFiltro: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBandServicoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaProcedimentosPagos: TQRListaProcedimentosPagos;
  MesAnoIni, MesAnoFim, Valor : string;
  QtdeServico, Dentista, Servico : integer;


implementation
  uses Senha;
{$R *.DFM}

procedure TQRListaProcedimentosPagos.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
    QtdeServico := 0;
    QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryItensPagDentista do
       begin
         Close;
         ParamByName('MesAno1').asString := MesAnoIni;
         ParamByName('MesAno2').asString := MesAnoFim;
         if Servico <> 0 then
            ParamByName('Servico').asInteger := Servico
         else
            SQL[3] := '';
         if Dentista <> 0 then
            ParamByName('Dentista').asInteger := Dentista
         else
            SQL[4] := '';
         if Valor <> '' then
            ParamByName('Valor').AsCurrency := StrToCurr(Valor)
         else
            SQL[5] := '';

         Open;
       end;
end;

procedure TQRListaProcedimentosPagos.QRBand3AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
   QtdeServico := QtdeServico + QueryItensPagDentistaQuantidade_Paga.AsInteger;
end;

procedure TQRListaProcedimentosPagos.QRBandServicoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelTotalQtde.Caption := IntToSTr(QtdeServico);
   QtdeServico := 0;
end;

end.
