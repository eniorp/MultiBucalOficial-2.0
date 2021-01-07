unit PericiaInicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFmPericiaInicial = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPericiaInicial: TFmPericiaInicial;

implementation

{$R *.dfm}

procedure TFmPericiaInicial.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if RadioGroup1.ItemIndex = -1 then
   begin
      ShowMessage('Informe se o orçamento possui pericia Inicial');
      CanClose := false;
   end
end;

procedure TFmPericiaInicial.Button1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex = -1 then
      ShowMessage('Informe se o orçamento possui pericia Inicial')
   else
   begin
      FmPericiaInicial.tag := 1;
      close;
   end;

end;

end.
