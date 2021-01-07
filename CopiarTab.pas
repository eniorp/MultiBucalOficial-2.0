unit CopiarTab;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFmCopiarTab = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditAcresDent: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCopiarTab: TFmCopiarTab;

implementation

{$R *.dfm}

procedure TFmCopiarTab.Button1Click(Sender: TObject);
begin
   FmCopiarTab.tag := 1;
   Close;
end;

end.
