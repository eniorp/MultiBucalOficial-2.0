unit DadosAdicionaisOrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls;

type
  TFmSexHemOrcamento = class(TForm)
    DBRGSexante: TDBRadioGroup;
    DBRHemiArco: TDBRadioGroup;
    DBRGArcada: TDBRadioGroup;
    GroupBoxSexanteN: TGroupBox;
    CheckBoxS1: TCheckBox;
    CheckBoxS2: TCheckBox;
    CheckBoxS3: TCheckBox;
    CheckBoxS4: TCheckBox;
    CheckBoxS5: TCheckBox;
    CheckBoxS6: TCheckBox;
    CheckBoxTodasSex: TCheckBox;
    procedure DBRHemiArcoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBoxTodasSexClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSexHemOrcamento: TFmSexHemOrcamento;

implementation

uses Orcamentos;

{$R *.DFM}

procedure TFmSexHemOrcamento.DBRHemiArcoClick(Sender: TObject);
begin
   close;
end;

procedure TFmSexHemOrcamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
     close
  else
  if key = VK_RETURN then
     Perform(WM_NEXTDLGCTL, 0, 0)
end;

procedure TFmSexHemOrcamento.CheckBoxTodasSexClick(Sender: TObject);
begin
   CheckBoxS1.checked := CheckBoxTodasSex.Checked;
   CheckBoxS2.checked := CheckBoxTodasSex.Checked;
   CheckBoxS3.checked := CheckBoxTodasSex.Checked;
   CheckBoxS4.checked := CheckBoxTodasSex.Checked;
   CheckBoxS5.checked := CheckBoxTodasSex.Checked;
   CheckBoxS6.checked := CheckBoxTodasSex.Checked;
end;

end.
