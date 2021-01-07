unit MenssagemItau;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFormMenssagemItau = class(TForm)
    EditMenssagem1: TEdit;
    EditMenssagem2: TEdit;
    EditMenssagem3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ButtonOk: TButton;
    procedure ButtonOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditMenssagem1Change(Sender: TObject);
    procedure EditMenssagem2Change(Sender: TObject);
    procedure EditMenssagem3Change(Sender: TObject);
    procedure EditMenssagem1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    Menssagem1, Menssagem2, Menssagem3: string;    
    { Public declarations }
  end;

var
  FormMenssagemItau: TFormMenssagemItau;


implementation

{$R *.DFM}


procedure TFormMenssagemItau.ButtonOkClick(Sender: TObject);
begin

   Menssagem1:= EditMenssagem1.text;
   Menssagem2:= Editmenssagem2.Text;
   Menssagem3:= Editmenssagem3.text;
   FormMenssagemItau.Close;
end;

procedure TFormMenssagemItau.FormActivate(Sender: TObject);
begin
   EditMenssagem1.Text:= '';
   EditMenssagem2.Text:= '';
   EditMenssagem3.Text:= '';
end;

procedure TFormMenssagemItau.EditMenssagem1Change(Sender: TObject);
begin
   if length(EditMenssagem1.Text) = 100 then
     Begin
       Beep;
       ShowMessage('Número máximo de caracteres: 100!!! [Enter]!!!');
     End;
end;

procedure TFormMenssagemItau.EditMenssagem2Change(Sender: TObject);
begin
   if length(EditMenssagem2.Text) = 100 then
     Begin
       Beep;
       ShowMessage('Número máximo de caracteres: 100!!! [Enter]!!!');
     End;
end;

procedure TFormMenssagemItau.EditMenssagem3Change(Sender: TObject);
begin
   if length(EditMenssagem3.Text) = 100 then
     Begin
       Beep;
       ShowMessage('Número máximo de caracteres: 100!!! [Enter]!!!');
     End;
end;

procedure TFormMenssagemItau.EditMenssagem1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
   end;
end;

end.
