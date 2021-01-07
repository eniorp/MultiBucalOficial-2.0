unit RelFrVendasPeridTitular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, RLReport, RLParser, DB, ADODB;

type
  TFrVendPeridTitular = class(TFmFortesRepPadrao)
    RLGroupRep: TRLGroup;
    sp_rel_vendas_contrat_titular: TADOStoredProc;
    RLGroupVend: TRLGroup;
    RLBand1: TRLBand;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText1: TRLDBText;
    RLLabel1: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLBand4: TRLBand;
    RLLabel18: TRLLabel;
    RLLabelTtVend: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand2: TRLBand;
    RLDraw1: TRLDraw;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLPanel3: TRLPanel;
    RLPanel4: TRLPanel;
    RLPanel6: TRLPanel;
    RlQtIncPJ: TRLLabel;
    RlQtIncPF: TRLLabel;
    RlQtExcPJ: TRLLabel;
    RlQtPJAtiv: TRLLabel;
    RlQtPJPg1: TRLLabel;
    RlQtPJPercent: TRLLabel;
    RlQtExcPF: TRLLabel;
    RlQtPFAtiv: TRLLabel;
    RlQtPFPg1: TRLLabel;
    RlQtPFPercent: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel26: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroupRepBeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
      QtIncV, // Qtde inclusão Vendedor
      QtExcV, // qtde exclusão vendedor
      QtIncPjR, // Qtde Inclusão pessoa jurídica Representante
      QtExcPjR, // Qtde exclusão pessoa jurídica Representante
      QtIncPfR, // Qtde Inclusão pessoa Fisica Representante
      QtExcPfR, // Qtde exclusão pessoa fisica Representante
      QtPgPJ, // Qtde Pessoa Jurídica que pagou 1ª parcela mensalidade
      QtNPgPJ, // Qtde Pessoa Jurídica que NÃO pagou 1ª parcela mensalidade
      QtpgPF,// Qtde Pessoa Fisica que pagou 1ª parcela mensalidade
      QtNpgPF// Qtde Pessoa Fisica que NÃO pagou 1ª parcela mensalidade
          : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrVendPeridTitular: TFrVendPeridTitular;

implementation

uses udm;

{$R *.dfm}

procedure TFrVendPeridTitular.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;

   QtIncV := QtIncV + sp_rel_vendas_contrat_titular.fieldByName('qtVendida').AsInteger;
   QtExcV := QtExcV + sp_rel_vendas_contrat_titular.fieldByName('qtCancelada').AsInteger;

   if sp_rel_vendas_contrat_titular.fieldByName('empresa').AsBoolean then
   begin
      QtIncPjR := QtIncPjR + sp_rel_vendas_contrat_titular.fieldByName('qtVendida').AsInteger;
      QtexcPjR := QtexcPjR + sp_rel_vendas_contrat_titular.fieldByName('qtCancelada').AsInteger;
      if sp_rel_vendas_contrat_titular.fieldByName('lg_pg_primeira').AsString = 'S' then
         inc(QtPgPJ)
      else
         inc(QtNPgPJ)
   end
   else
   begin
      QtINcPfR := QtINcPfR + sp_rel_vendas_contrat_titular.fieldByName('qtVendida').AsInteger;
      QtexcPfR := QtexcPfR + sp_rel_vendas_contrat_titular.fieldByName('qtCancelada').AsInteger;
      if sp_rel_vendas_contrat_titular.fieldByName('lg_pg_primeira').AsString = 'S' then
         inc(QtPgPF)
      else
         inc(QtNPgPF)
   end;
end;

procedure TFrVendPeridTitular.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
   RLLabelTtVend.Caption := '->  Qtde Vidas : ' + IntToStr(QtIncV) + ' ->   Qtde Exclusões : ' + IntToStr(QtExcV) + ' ->   Vidas Ativas : ' + IntToStr(QtIncV - QtExcV);
   QtIncV := 0;
   QtExcV := 0;

end;

procedure TFrVendPeridTitular.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
   RLLabel26.Caption     := 'QT TOTAL VIDAS: ' + FormatFloat('#',QtIncPjR + QtIncPfR);
   RlQtIncPJ.Caption     := FormatFloat('00#',QtIncPjR);
   RlQtExcPJ.Caption     := FormatFloat('00#',QtExcPjR);

   RlQtIncPF.Caption     := FormatFloat('00#',QtIncPfR);
   RlQtExcPF.Caption     := FormatFloat('00#',QtExcPfR);

   RlQtPJAtiv.Caption    := FormatFloat('00#',QtIncPjR - QtExcPjR);
   RlQtPFAtiv.Caption    := FormatFloat('00#',QtIncPfR - QtExcPfR);

   RlQtPJPg1.Caption     := FormatFloat('00#',QtPgPJ) + '/' + FormatFloat('00#',QtPgPJ + QtNPgPJ);
   RlQtPFPg1.Caption     := FormatFloat('00#',QtpgPF) + '/' + FormatFloat('00#',QtPgPF + QtNPgPF);

   if (QtPgPJ + QtNPgPJ) > 0 then
      RlQtPJPercent.Caption := FormatFloat('#0.00%',(QtPgPJ * 100) / (QtPgPJ + QtNPgPJ))
   else
      RlQtPJPercent.Caption := '0.00%';
   if (QtPgPF + QtNPgPF) > 0 then
      RlQtPFPercent.Caption := FormatFloat('#0.00%',(QtPgPF * 100) / (QtPgPF + QtNPgPF))
   else
      RlQtPFPercent.Caption := '0.00%';

end;

procedure TFrVendPeridTitular.RLGroupRepBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
      QtIncV := 0;
      QtExcV := 0;
      QtIncPjR := 0;
      QtExcPjR := 0;
      QtIncPfR := 0;
      QtExcPfR := 0;
      QtPgPJ  := 0;
      QtNPgPJ := 0;
      QtpgPF  := 0;
      QtNpgPF  := 0;

end;

end.
