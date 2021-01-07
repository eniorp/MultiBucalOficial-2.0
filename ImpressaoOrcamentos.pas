unit ImpressaoOrcamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFormImpressaoOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    CheckBoxCliente: TCheckBox;
    CheckBoxConvenio: TCheckBox;
    CheckBoxDentista: TCheckBox;
    CheckBoxProtetico: TCheckBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    CheckBoxPromissoria: TCheckBox;
    CheckBoxChequePre: TCheckBox;
    CheckBoxOrtodontia: TCheckBox;
    CheckBoxApres: TCheckBox;
    procedure CheckBoxClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormImpressaoOrcamento: TFormImpressaoOrcamento;

implementation

{$R *.DFM}

uses Orcamentos, udm;

procedure TFormImpressaoOrcamento.CheckBoxClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormImpressaoOrcamento.BitBtnImprimirClick(Sender: TObject);
begin
     Orcamentos.Via_Cliente := CheckBoxCliente.Checked;
     Orcamentos.Via_Convenio := CheckBoxConvenio.Checked;
     Orcamentos.Via_Dentista := CheckBoxDentista.Checked;
     Orcamentos.Via_Protetico := CheckBoxProtetico.Checked;
     Orcamentos.Via_Ortodontia := CheckBoxOrtodontia.Checked;
     Orcamentos.Promissoria := CheckBoxPromissoria.Checked;
     Orcamentos.ChequePre := CheckBoxChequePre.Checked;
     FormOrcamentos.Via_Apresentacao := CheckBoxApres.checked;

     Close;
end;

end.
