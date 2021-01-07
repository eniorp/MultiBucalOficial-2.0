unit FrRelComprovatenEntregaCart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadraoGroup, DB, RLParser, RLReport, ADODB;

type
  TfMFrRelComprovatenEntregaCart = class(TFmFortesPadraoGroup)
    ADOQuery1: TADOQuery;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMFrRelComprovatenEntregaCart: TfMFrRelComprovatenEntregaCart;

implementation

{$R *.dfm}

procedure TfMFrRelComprovatenEntregaCart.RLBand3BeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
   RLLabel10.Caption := Adoquery1.FieldByName('nm_recepcao').asString;
   RLLabel11.Caption := Adoquery1.FieldByName('cd_operador').asString;
end;

end.
