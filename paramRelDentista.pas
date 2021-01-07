unit paramRelDentista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons;

type
  TFmParamRelDentista = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditIniInc: TMaskEdit;
    MaskEditDtFimInc: TMaskEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MaskEditIniExcl: TMaskEdit;
    MaskEditFimExcl: TMaskEdit;
    Button1: TButton;
    BitBtnSair: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamRelDentista: TFmParamRelDentista;

implementation

uses frRelDentista, Senha;

{$R *.dfm}

procedure TFmParamRelDentista.Button1Click(Sender: TObject);
begin

   FmFrRelDentista := TFmFrRelDentista.create('Multibucal','RELATÓRIO DE DENTISTAS',SELF);
   FmFrRelDentista.ADOQuery1.SQL[1] := '';
   if (MaskEditIniInc.Text <> '  /  /    ') and (MaskEditDtFimInc.Text <> '  /  /    ') then
      FmFrRelDentista.ADOQuery1.SQL[1] := ' and d.dt_inclusao between ''' +  MaskEditIniInc.Text + ''' and ''' + MaskEditDtFimInc.Text + '''';
   if (MaskEditIniExcl.Text <> '  /  /    ') and (MaskEditFimExcl.Text <> '  /  /    ') then
      FmFrRelDentista.ADOQuery1.SQL[1] := FmFrRelDentista.ADOQuery1.SQL[1] + ' and d.DATA_eXCLUSAO between ''' +  MaskEditIniExcl.Text + ''' and ''' + MaskEditFimExcl.Text + '''';
   FmFrRelDentista.ADOQuery1.open;
   FmFrRelDentista.RLReportH.PreviewModal();
   FmFrRelDentista.free;

end;

procedure TFmParamRelDentista.SpeedButton2Click(Sender: TObject);
begin
  MaskEditFimExcl.Clear;
  MaskEditIniExcl.Clear;
end;

procedure TFmParamRelDentista.SpeedButton1Click(Sender: TObject);
begin
   MaskEditDtFimInc.Clear;
   MaskEditIniInc.Clear;
end;

end.

