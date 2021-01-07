unit ParamContrInad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls,enio;

type
  TFmParamContInad = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamContInad: TFmParamContInad;

implementation

uses RelContratInadip;

{$R *.DFM}

procedure TFmParamContInad.BitBtn1Click(Sender: TObject);
begin
   if (Edit1.text = '') or (RadioGroup1.ItemIndex = -1) then
   begin
      ShowMessage('Preencha todos os campos antes de imprimir o relatório');
      exit;
   end;
   QrContratInadip := TQrContratInadip.create(self);
   QrContratInadip.QueryContrInad.close;
   if ComboBox1.ItemIndex = 0 then
      QrContratInadip.QueryContrInad.sql[08] := '>'
   else
      QrContratInadip.QueryContrInad.sql[08] := '<';
   QrContratInadip.QueryContrInad.sql[09] := Edit1.text;
   if RadioGroup1.itemindex = 0 then
      QrContratInadip.QueryContrInad.sql[05] := '1'
   else
      QrContratInadip.QueryContrInad.sql[05] := '0';
   QrContratInadip.QueryContrInad.open;
   QrContratInadip.preview;
   QrContratInadip.free;
end;

procedure TFmParamContInad.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   key := so_numero(key);
end;

procedure TFmParamContInad.FormShow(Sender: TObject);
begin
   ComboBox1.itemindex := 0;
end;

end.
