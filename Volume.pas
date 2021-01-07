unit Volume;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons;

type
  TFormVolume = class(TForm)
    Label1: TLabel;
    OKBtn: TButton;
    CancelBtn: TButton;
    ComboBoxFaturamento: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVolume: TFormVolume;

implementation

{$R *.DFM}

end.
 
