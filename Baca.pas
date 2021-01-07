unit Baca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, ComCtrls;

type
  TFmBaca = class(TForm)
    Label1: TLabel;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmBaca: TFmBaca;

implementation

{$R *.DFM}

procedure TFmBaca.Button1Click(Sender: TObject);
begin
   close;
end;

end.
