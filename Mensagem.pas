unit Mensagem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TFmMensagem = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Memo1: TMemo;
    CheckBoxNMostrar: TCheckBox;
    Label2: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmMensagem: TFmMensagem;

implementation

{$R *.DFM}

procedure TFmMensagem.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #27 then
      close;
end;

end.
