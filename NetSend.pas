unit NetSend;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

type
  TFmNetSend = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmNetSend: TFmNetSend;

implementation

{$R *.DFM}

procedure TFmNetSend.Button1Click(Sender: TObject);
begin
   Close;
end;

end.
