unit paramNiverIncDent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFmParamNiverIncDent = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    BitBtn2: TBitBtn;
    BitBtnSair: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamNiverIncDent: TFmParamNiverIncDent;

implementation

uses RelAniverInclusaoDentista, RelAniverInclusaoProtetico,senha;

{$R *.dfm}

procedure TFmParamNiverIncDent.BitBtn2Click(Sender: TObject);
begin
  if FmParamNiverIncDent.tag = 0 then // dentista
  begin
    fmfrNiverInclusaoDentista := TfmfrNiverInclusaoDentista.create(senha.Empresa,'DENTISTAS POR TEMPO DE EMPRESA',self);
    fmfrNiverInclusaoDentista.ADOQuery1.Close;
    if ComboBox1.Text <> 'Todos' then
       fmfrNiverInclusaoDentista.ADOQuery1.SQL[17] := ' and month(dt_inclusao) = ' + IntToStr(ComboBox1.ItemIndex + 1)
    else
      fmfrNiverInclusaoDentista.ADOQuery1.SQL[17] := ' ';
    fmfrNiverInclusaoDentista.ADOQuery1.Open;
    fmfrNiverInclusaoDentista.RLReportH.PreviewModal;
    fmfrNiverInclusaoDentista.Free;
  end
  else
  begin
    fmfrNiverInclusaoProtetico := TfmfrNiverInclusaoProtetico.create(senha.Empresa,'PROTÉTICOS POR TEMPO DE EMPRESA',self);
    fmfrNiverInclusaoProtetico.ADOQuery1.Close;
    if ComboBox1.Text <> 'Todos' then
       fmfrNiverInclusaoProtetico.ADOQuery1.SQL[17] := ' and month(dt_inclusao) = ' + IntToStr(ComboBox1.ItemIndex + 1)
    else
      fmfrNiverInclusaoProtetico.ADOQuery1.SQL[17] := ' ';
    fmfrNiverInclusaoProtetico.ADOQuery1.Open;
    fmfrNiverInclusaoProtetico.RLReportH.PreviewModal;
    fmfrNiverInclusaoProtetico.Free;

  end
 end;

procedure TFmParamNiverIncDent.ComboBox1Change(Sender: TObject);
begin
   BitBtn2.Enabled := true;
end;

end.
