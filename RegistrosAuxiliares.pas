unit RegistrosAuxiliares;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, Buttons;

type
  TFormRegistrosAuxiliares = class(TForm)
    PanelFundo: TPanel;
    RadioGroupRelatorios: TRadioGroup;
    LabelPeriodo: TLabel;
    MaskEditInicio: TMaskEdit;
    Label2: TLabel;
    MaskEditFim: TMaskEdit;
    BitBtnVisualizar: TBitBtn;
    BitBtnSair: TBitBtn;
    procedure RadioGroupRelatoriosClick(Sender: TObject);
    procedure BitBtnVisualizarClick(Sender: TObject);
    procedure MaskEditInicioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegistrosAuxiliares: TFormRegistrosAuxiliares;
  DataIni, DataFim : TDate;


implementation

{$R *.DFM}

procedure TFormRegistrosAuxiliares.RadioGroupRelatoriosClick(
  Sender: TObject);
begin
   MaskEditInicio.SetFocus;
end;

procedure TFormRegistrosAuxiliares.BitBtnVisualizarClick(Sender: TObject);
begin
   showmessage('Relatórios em desenvolvimento');
   exit;

   if (MaskEditInicio.Text = '  /  /    ') or (MaskEditFim.Text = '  /  /    ') then
     begin
       ShowMessage('Os Intervalos de Vencimento devem estar preenchidos !!! [ENTER]');
       MaskEditInicio.SetFocus;
       Exit;
     end;
   DataIni := StrToDate(MaskEditInicio.Text);
   DataFim := StrToDate(MaskEditFim.Text);
   if DataFim < DataIni then
      begin
        ShowMessage('A última Data não pode ser Menor que a primeira !!!');
        MaskEditFim.SetFocus;
        exit;
      end;
end;

procedure TFormRegistrosAuxiliares.MaskEditInicioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

end.
