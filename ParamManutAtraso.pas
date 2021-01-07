unit ParamManutAtraso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TFmParamManutAtraso = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditQtParc: TEdit;
    CheckBoxExcluidos: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamManutAtraso: TFmParamManutAtraso;

implementation

uses RelManutAtraso;

{$R *.DFM}

procedure TFmParamManutAtraso.BitBtn1Click(Sender: TObject);
begin
   QrManutAtraso := TQrManutAtraso.create(self);
   QrManutAtraso.sp_manutAtraso.close;
   QrManutAtraso.sp_manutAtraso.ParamByName('@QtParAtraso'   ).AsString := EditQtParc.Text;
   QrManutAtraso.QRLabel2.caption := 'QT PARCELAS MAIOR QUE ' + EditQtParc.Text;
   if CheckBoxExcluidos.Checked then
      QrManutAtraso.sp_manutAtraso.ParamByName('@MostraExcluido').AsString := 'S'
   else
      QrManutAtraso.sp_manutAtraso.ParamByName('@MostraExcluido').AsString := 'N';

   QrManutAtraso.sp_manutAtraso.Open;
   QrManutAtraso.Preview;
   QrManutAtraso.Free;
end;

end.
