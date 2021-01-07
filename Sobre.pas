unit Sobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, jpeg,enio;

type
  TFormSobre = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    Bevel1: TBevel;
    LabelLicenciado: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    BitBtnOk: TBitBtn;
    Panel2: TPanel;
    Image2: TImage;
    Label6: TLabel;
    LabelVersao: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSobre: TFormSobre;

implementation

{$R *.DFM}

procedure TFormSobre.FormShow(Sender: TObject);
begin
     LabelVersao.Caption := 'Versão : ' + GetBuildInfo;
end;

end.
