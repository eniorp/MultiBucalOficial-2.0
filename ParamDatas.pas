unit ParamDatas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, Mask;

type
  TFmParamData = class(TForm)
    BitBtnOk: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    ComboBox1: TComboBox;
    Label3_: TLabel;
    CheckBox_Excel: TCheckBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MaskEditDtIniChange(Sender: TObject);
  private
    { Private declarations }
  public
     constructor Create(Owner: TComponent; DtIni,
  DtFim: String);
    { Public declarations }
  end;

var
  FmParamData: TFmParamData;

implementation

{$R *.DFM}

{ TFmParamData }

constructor TFmParamData.Create(Owner: TComponent; DtIni,
  DtFim: String);
begin
  inherited Create(Owner);

  MaskEditDtIni.Text := DtIni;
  MaskEditDtFim.Text := DtFim;

end;

procedure TFmParamData.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFmParamData.MaskEditDtIniChange(Sender: TObject);
begin
  BitBtnOk.enabled := (MaskEditDtIni.text <> '  /  /    ') and (MaskEditDtFim.Text <> '  /  /    ');
  if not MaskEditDtFim.Visible then
  BitBtnOk.enabled := MaskEditDtIni.text <> '  /  /    ';
end;

end.

