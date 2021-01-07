unit MensagemAtraso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TFormMensagemAtraso = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BitBtnOk: TBitBtn;
    BitBtnTitulos: TBitBtn;
    LabelEmpresa: TLabel;
    procedure BitBtnTitulosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMensagemAtraso: TFormMensagemAtraso;

implementation

uses VisualizaTitulos;

{$R *.DFM}

procedure TFormMensagemAtraso.BitBtnTitulosClick(Sender: TObject);
begin
     Application.CreateForm(TFormVisualizaTitulos, FormVisualizaTitulos);
     FormVisualizaTitulos.ShowModal;
     FormVisualizaTitulos.Free;
     BitBtnOk.SetFocus;
end;

end.
