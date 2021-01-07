unit RelContratanteInclusao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables;

type
  TFormRelContratanteInclusao = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    MaskEditUltimo: TMaskEdit;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelContratanteInclusao: TFormRelContratanteInclusao;
  PrimeiraData, UltimaData: TDateTime;

implementation

uses QRContratoIncluidos, QRUsuariosComissao, QRContratoEndIncluidos;

{$R *.DFM}

procedure TFormRelContratanteInclusao.BitBtnImprimirClick(Sender: TObject);
begin
     PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
     UltimaData := StrToDate(MaskEditUltimo.Text);

     if UltimaData < PrimeiraData then
       begin
         ShowMessage('A última Data não pode ser Menor que a primeira !!!');
         MaskEditUltimo.SetFocus;
         Exit;
       end;
     case FormRelContratanteInclusao.Tag of
       0:
         begin
           QRContratoIncluidos.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
           QRContratoIncluidos.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
           Application.CreateForm(TQRListaContratosIncluidos, QRListaContratosIncluidos);
           QRContratoIncluidos.QRListaContratosIncluidos.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
           QRContratoIncluidos.QRListaContratosIncluidos.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
           QRListaContratosIncluidos.Preview;
           QRListaContratosIncluidos.Free;
         end;
       1:
         begin
           QRUsuariosComissao.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
           QRUsuariosComissao.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
           Application.CreateForm(TQRListaUsuarioComissao, QRListaUsuarioComissao);
           QRUsuariosComissao.QRListaUsuarioComissao.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
           QRUsuariosComissao.QRListaUsuarioComissao.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
           QRListaUsuarioComissao.Preview;
           QRListaUsuarioComissao.Free;
         end;
       2:
         begin
           QRContratoEndIncluidos.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
           QRContratoEndIncluidos.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
           Application.CreateForm(TQRListaContratosEndIncluidos, QRListaContratosEndIncluidos);
           QRContratoEndIncluidos.QRListaContratosEndIncluidos.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
           QRContratoEndIncluidos.QRListaContratosEndIncluidos.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
           QRListaContratosEndIncluidos.Preview;
           QRListaContratosEndIncluidos.Free;
         end;
     end;
end;

procedure TFormRelContratanteInclusao.FormActivate(Sender: TObject);
begin
   MaskEditPrimeiro.SetFocus;
end;

procedure TFormRelContratanteInclusao.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

end.
