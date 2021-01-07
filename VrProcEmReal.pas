unit VrProcEmReal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons,enio;

type
  TFmVrEmReal = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditVr: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    procedure EditVrKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmVrEmReal: TFmVrEmReal;

implementation

{$R *.DFM}

procedure TFmVrEmReal.EditVrKeyPress(Sender: TObject; var Key: Char);
begin
   if not ((DecimalSeparator = ',') and (key = ',')) then
      key := so_numero(key);
end;

end.
