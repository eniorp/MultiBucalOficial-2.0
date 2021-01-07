unit Filtro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons;

type
  TFormFiltro = class(TForm)
    Label1: TLabel;
    MaskEditData: TMaskEdit;
    BitBtn1: TBitBtn;
    procedure MaskEditDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEditDataExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFiltro: TFormFiltro;

implementation

{$R *.DFM}

procedure TFormFiltro.MaskEditDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormFiltro.MaskEditDataExit(Sender: TObject);
begin
     Close;
end;

end.
