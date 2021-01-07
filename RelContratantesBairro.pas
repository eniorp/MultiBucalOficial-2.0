unit RelContratantesBairro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, ExtCtrls;

type
  TFormRelContratantesBairro = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    EditBairro: TEdit;
    Label1: TLabel;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure EditBairroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelContratantesBairro: TFormRelContratantesBairro;
  Filtro_Nome : String;

implementation

uses QRContratoBairro;

{$R *.DFM}

procedure TFormRelContratantesBairro.BitBtnImprimirClick(Sender: TObject);
begin
   if EditBairro.Text = '' then
      EditBairro.Text := 'Todos';
   QRContratoBairro.Bairro := EditBairro.Text;
   Application.CreateForm(TQRListaContratosBairro, QRListaContratosBairro);
   QRListaContratosBairro.QRLabelFiltro.Caption := EditBairro.Text;
   QRListaContratosBairro.Preview;
   QRListaContratosBairro.Free;
end;

procedure TFormRelContratantesBairro.EditBairroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

end.
