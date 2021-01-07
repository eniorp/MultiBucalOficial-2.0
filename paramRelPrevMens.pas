unit paramRelPrevMens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons;

type
  TfmParamPrevMens = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    GroupBox2: TGroupBox;
    MaskEditDtBase: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmParamPrevMens: TfmParamPrevMens;

implementation

uses QRUsuariosContratante, Contratante;

{$R *.dfm}

procedure TfmParamPrevMens.BitBtn1Click(Sender: TObject);
begin
   QRUsuariosContratante.DataPesq := StrtoDate(MaskEditDtBase.Text);
   QRUsuariosContratante.Codigo_Contratante := Formcontratante.QueryContratanteCodigo.asInteger;
   Application.CreateForm(TQRListaUsuarioContratante, QRListaUsuarioContratante);
   QRListaUsuarioContratante.QRLabelTxAde.enabled := Formcontratante.CheckBoxTxAde.Checked;
   QRListaUsuarioContratante.QRLabelVrTot_.enabled := Formcontratante.CheckBoxTxAde.Checked;
   QRUsuariosContratante.QRListaUsuarioContratante.QRLabelContratante.Caption := Copy(Formcontratante.QueryContratanteNome.asString, 1, 30);

   QRListaUsuarioContratante.Preview;
   QRListaUsuarioContratante.Free;


end;

end.
