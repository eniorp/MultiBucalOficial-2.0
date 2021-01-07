unit DadosPromissoria;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,enio, Buttons, Mask;

type
  TFmDadosNP = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditAss: TEdit;
    EditEmit: TEdit;
    EditEnder: TEdit;
    EditCPF: TEdit;
    BitBtnImprimir: TBitBtn;
    Label5: TLabel;
    EditFone: TEdit;
    BitBtnPesquisaUsuario: TBitBtn;
    Label6: TLabel;
    EditRg: TEdit;
    Label7: TLabel;
    MaskEditDtNasc: TMaskEdit;
    Label8: TLabel;
    EditNC: TEdit;
    procedure EditCPFKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPesquisaUsuarioClick(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmDadosNP: TFmDadosNP;

implementation

uses PesquisaUsuario, udm;

{$R *.DFM}

procedure TFmDadosNP.EditCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  key := so_numero(key);
end;

procedure TFmDadosNP.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFmDadosNP.BitBtnPesquisaUsuarioClick(Sender: TObject);
begin
   Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
   FormPesquisaUsuarios.ShowModal;
   if dm.GetParam('ULTSCR') = 'S' then
   begin
      FmDadosNP.EditAss.text := FormPesquisaUsuarios.QueryUsuariosNome.AsSTring;
      FmDadosNP.EditEmit.text := dm.execmd('select * from contratante where codigo = ' + FormPesquisaUsuarios.QueryUsuariosCodigo.AsSTring,'nome');
      FmDadosNP.EditEnder.text := dm.QueryGlobal.FieldByname('Endereco_Residencial').asString;
      FmDadosNP.EditCPF.text  := dm.QueryGlobal.FieldByname('CGC_CPF').asString;
      FmDadosNP.EditFone.text  := dm.QueryGlobal.FieldByname('Fone1').asString;
      BitBtnImprimir.SetFocus;
   end;
   FormPesquisaUsuarios.Free;
end;

procedure TFmDadosNP.BitBtnImprimirClick(Sender: TObject);
begin
if (EditAss.text = '') or (EditEmit.text = '') or (EditEnder.text = '') or (EditCPF.text = '') or (EditRg.Text = '') or (EditNC.Text = '') or (MaskEditDtNasc.Text = '') then
   ShowMessage('favor preenhcher todos os campos obrigatórios')
else
   close;
end;

procedure TFmDadosNP.FormShow(Sender: TObject);
begin
  if EditAss.text = '' then
    EditAss.Setfocus;
end;

end.
