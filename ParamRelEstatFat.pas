unit ParamRelEstatFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, Buttons;

type
  TFmParamRelEstatFat = class(TForm)
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    RadioGroupTpRel: TRadioGroup;
    RadioGroupTp: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure MaskEditDtIniChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamRelEstatFat: TFmParamRelEstatFat;

implementation

uses RelEstatiFatRes, RelEstatiFatDet;

{$R *.DFM}

procedure TFmParamRelEstatFat.BitBtn1Click(Sender: TObject);
begin
   if RadioGroupTpRel.ItemIndex = 0 then
   begin
      QrEstatFatRes := TQrEstatFatRes.create(self);
      QrEstatFatRes.Query.close;
      QrEstatFatRes.QRLabel2.caption := 'Vencimento De ' + MaskEditDtIni.Text + ' Até ' + MaskEditDtFim.Text;
      QrEstatFatRes.Query.sql[21] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + ' 23:59:59''';

      if RadioGroupTp.ItemIndex = 0 then
      begin
         QrEstatFatRes.Query.sql[14] := ' faturamento f ';
         QrEstatFatRes.Query.sql[08] := ' ';
         QrEstatFatRes.QRLabel9.enabled := false;
      end
      else
      begin
         QrEstatFatRes.Query.sql[14] := ' receber f ';
         QrEstatFatRes.Query.sql[08] := ' , sum(f.valor - saldo) as Vrpago ';
         QrEstatFatRes.QRLabel9.enabled := true;
      end;
      QrEstatFatRes.Query.Open;
      QrEstatFatRes.preview;

      QrEstatFatRes.free;
   end
   else
   begin
      QrEstatFatDet := TQrEstatFatDet.create(self);
      QrEstatFatDet.Query.sql[30] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + ' 23:59:59''';
      QrEstatFatDet.QRLabel2.caption := 'Vencimento De ' + MaskEditDtIni.Text + ' Até ' + MaskEditDtFim.Text;

      if RadioGroupTp.ItemIndex = 0 then
      begin
         QrEstatFatDet.Query.sql[16] := ' faturamento f ';
         QrEstatFatDet.Query.sql[11] := ' ';
         QrEstatFatDet.QRLabel9.enabled := false;
      end
      else
      begin
         QrEstatFatDet.Query.sql[16] := ' receber f ';
         QrEstatFatDet.Query.sql[11] := ' , sum(f.valor - saldo) as Vrpago ';
         QrEstatFatDet.QRLabel9.enabled := true;
      end;
      QrEstatFatDet.Query.Open;
      QrEstatFatDet.Preview;
      QrEstatFatDet.Free;
   end;
end;

procedure TFmParamRelEstatFat.MaskEditDtIniChange(Sender: TObject);
begin
   BitBtn1.Enabled := (MaskEditDtIni.text <> '  /  /    ') and (MaskEditDtFim.text <> '  /  /    ') and (RadioGroupTp.ItemIndex > -1);
end;

procedure TFmParamRelEstatFat.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
