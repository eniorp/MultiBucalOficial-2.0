unit ParamDebAut;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TFmParamDebAuto = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox10: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox30: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CheckBox5: TCheckBox;
    procedure CheckBox5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamDebAuto: TFmParamDebAuto;

implementation

{$R *.dfm}

procedure TFmParamDebAuto.CheckBox5Click(Sender: TObject);
begin
   CheckBox10.Checked := CheckBox5.Checked;
   CheckBox20.Checked := CheckBox5.Checked;
   CheckBox25.Checked := CheckBox5.Checked;
   CheckBox30.Checked := CheckBox5.Checked;
end;

end.
