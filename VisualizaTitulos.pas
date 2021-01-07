unit VisualizaTitulos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids;

type
  TFormVisualizaTitulos = class(TForm)
    DBGridTituloReceber: TDBGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVisualizaTitulos: TFormVisualizaTitulos;

implementation

{$R *.DFM}

uses Orcamentos;

procedure TFormVisualizaTitulos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case key of
        vk_escape : Close;
        VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
        VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

end.
