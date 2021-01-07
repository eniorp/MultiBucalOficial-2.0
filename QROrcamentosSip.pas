unit QROrcamentosSip;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, QRExport;

type
  TQRListaOrcamentosSip = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabelPeriodo: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRBandServico: TQRBand;
    QRExpr3: TQRExpr;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRLabelTServico: TQRLabel;
    QRLabelVServico: TQRLabel;
    QRBandSip: TQRBand;
    QRLabelTSip: TQRLabel;
    QRLabelVSip: TQRLabel;
    QRExpr5: TQRExpr;
    QRGroupPlano: TQRGroup;
    QRGroupSip: TQRGroup;
    QRExpr4: TQRExpr;
    QRGroupServico: TQRGroup;
    QRExpr6: TQRExpr;
    QRLabelPlano: TQRLabel;
    QRBandPlano: TQRBand;
    QRLabelTPlano: TQRLabel;
    QRLabelVPlano: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabelVrCoopServ: TQRLabel;
    QRLabelVlTotCoop: TQRLabel;
    QRLabelVCoopPlano: TQRLabel;
    QRExpr7: TQRExpr;
    QRTextFilter1: TQRTextFilter;
    QueryOrcamentos: TStoredProc;
    QueryOrcamentosSip: TIntegerField;
    QueryOrcamentosCodigo: TIntegerField;
    QueryOrcamentosDescricao: TStringField;
    QueryOrcamentosvalor_dentista: TFloatField;
    QueryOrcamentosvrCoop: TFloatField;
    QueryOrcamentosquantidade: TIntegerField;
    QueryOrcamentosDescricaoSip: TStringField;
    QRLabel3: TQRLabel;
    QueryOrcamentosfamiliar: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBandServicoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroupServicoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBandSipBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroupSipBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroupPlanoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBandPlanoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaOrcamentosSip: TQRListaOrcamentosSip;
  DIntervalo1, DIntervalo2  : TDateTime;
  TotalServico, TotalSip, TotalPlano : Integer;
  ValorServico, ValorSip, ValorPlano : Currency;

  VCoopServ   , VrCoopSip, VCoopPlano : Currency;


implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaOrcamentosSip.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QRLabelEmpresa.Caption := Senha.Empresa;
{     with QueryOrcamentos do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         Open;
       end;}
end;

procedure TQRListaOrcamentosSip.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  ValorServico := ValorServico + QueryOrcamentosValor_Dentista.AsCurrency;
  VCoopServ    := VCoopServ    + QueryOrcamentosvrCoop.AsCurrency;

  TotalServico := TotalServico + QueryOrcamentosQuantidade.AsInteger;
  ValorSip     := ValorSip     + QueryOrcamentosValor_Dentista.AsCurrency;

  VrCoopSip    := VrCoopSip    + QueryOrcamentosvrCoop.AsCurrency;

  TotalSip     := TotalSip     + QueryOrcamentosQuantidade.AsInteger;
  ValorPlano   := ValorPlano   + QueryOrcamentosValor_Dentista.AsCurrency;

  VCoopPlano   := VCoopPlano   + QueryOrcamentosvrCoop.AsCurrency;

  TotalPlano   := TotalPlano + QueryOrcamentosQuantidade.AsInteger;
end;


procedure TQRListaOrcamentosSip.QRBandServicoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    QRLabelTServico.Caption := IntToStr(TotalServico);
    QRLabelVServico.Caption := FormatFloat('###,##0.00', ValorServico);
    QRLabelVrCoopServ.Caption := FormatFloat('###,##0.00', VCoopServ);
end;

procedure TQRListaOrcamentosSip.QRGroupServicoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  TotalServico := 0;
  ValorServico := 0;
  VCoopServ    := 0;
end;

procedure TQRListaOrcamentosSip.QRBandSipBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    QRLabelTSip.Caption := IntToStr(TotalSip);
    QRLabelVSip.Caption := FormatFloat('###,##0.00', ValorSip);
    QRLabelVlTotCoop.Caption := FormatFloat('###,##0.00', VrCoopSip);
end;

procedure TQRListaOrcamentosSip.QRGroupSipBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  TotalSip := 0;
  ValorSip := 0;
  VrCoopSip := 0;
end;

procedure TQRListaOrcamentosSip.QRGroupPlanoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelPlano.Caption := QueryOrcamentosFamiliar.AsString;
   {
  if QueryOrcamentosFamiliar.AsBoolean then
    QRLabelPlano.Caption := 'Familiar'
  else
    QRLabelPlano.Caption := 'Empresarial';
    }
  TotalPlano := 0;
  ValorPlano := 0;
  VCoopPlano := 0;
end;

procedure TQRListaOrcamentosSip.QRBandPlanoBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
    QRLabelTPlano.Caption := IntToStr(TotalPlano);
    QRLabelVPlano.Caption := FormatFloat('###,##0.00', ValorPlano);
    QRLabelVCoopPlano.Caption := FormatFloat('###,##0.00', VCoopPlano);
//    incluir coluna de taxa complementar
//    colocar no servi;o classificacao se eh taxa compl. ou coo-particip
//    somar na coluna valor dentista o valor protetico tambem.
     
end;

end.
