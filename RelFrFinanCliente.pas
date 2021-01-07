unit RelFrFinanCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadraoGroup, DB, ADODB, RLParser, RLReport;

type
  TFmRelFrFinanCliente = class(TFmFortesPadraoGroup)
    SP_REL_FINANC_CLIENTE: TADOStoredProc;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLPanel1: TRLPanel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel5: TRLLabel;
    RLLabelData: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel7: TRLLabel;
    RLPanel2: TRLPanel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabelTit: TRLLabel;
    RLLabelCpf: TRLLabel;
    RLLabelCod: TRLLabel;
    RLLabelEnd: TRLLabel;
    RLLabelCep: TRLLabel;
    RLLabelFone: TRLLabel;
    RLLabelBairro: TRLLabel;
    RLLabelCidade: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLLabelInclusao: TRLLabel;
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRelFrFinanCliente: TFmRelFrFinanCliente;

implementation

uses udm;

{$R *.dfm}

procedure TFmRelFrFinanCliente.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
   if SP_REL_FINANC_CLIENTE.fieldByName('quebra').AsString = 'ORÇAMENTOS APROVADOS' then
   begin
      RLLabel4.caption := 'VR BRUTO';
      RLLabel3.caption := 'VR CLIENTE';
      RLLabel2.caption := 'DIFERENÇA';
      RLLabelData.caption := 'DT ORÇ.';
   end
   else
   begin
      RLLabel4.caption := 'VALOR';
      RLLabel3.caption := 'JUROS';
      RLLabel2.caption := 'VALOR C/ JUROS';
      RLLabelData.caption := 'VENCTO';
   end;
   if SP_REL_FINANC_CLIENTE.fieldByName('quebra').AsString = 'TÍTULOS EM ABERTO' then
      RLLabel5.caption := 'TIPO'
   else
      RLLabel5.caption := 'NOME';

end;

end.
