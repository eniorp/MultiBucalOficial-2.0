unit ParamRelContVidasEmp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TFmParamRelContVidasEmp = class(TForm)
    GroupBox1: TGroupBox;
    MaskEditDt_Ini: TMaskEdit;
    GroupBox2: TGroupBox;
    EditVendedor: TEdit;
    BitBtnPesquisaDentista: TBitBtn;
    Edit1: TEdit;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    Label1: TLabel;
    MaskEditFim: TMaskEdit;
    Label2: TLabel;
    Label4: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnPesquisaDentistaClick(Sender: TObject);
    procedure EditVendedorExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
  private
    
  public
    { Public declarations }
  end;

var
  FmParamRelContVidasEmp: TFmParamRelContVidasEmp;

implementation

uses RelContrVendasEmp, Senha, PesquisaVendedor, udm;

{$R *.dfm}

procedure TFmParamRelContVidasEmp.BitBtn1Click(Sender: TObject);
begin
   FmFrContrVendasEmp := TFmFrContrVendasEmp.create(senha.Empresa,'CONTROLE DE VIDAS EMPRESARIAIS',self);
   FmFrContrVendasEmp.sp_controleVendasEmpresariais.Close;
   FmFrContrVendasEmp.sp_controleVendasEmpresariais.Parameters[1].Value := '01/' + MaskEditDt_Ini.Text;
   FmFrContrVendasEmp.sp_controleVendasEmpresariais.Parameters[2].Value :=  dm.GetLasDayMonth(StrToDate('01/' + MaskEditFim.Text));
   if EditVendedor.text = '' then
   begin
      FmFrContrVendasEmp.sp_controleVendasEmpresariais.Parameters[3].Value := 0;
      FmFrContrVendasEmp.sp_controleVendasEmpresariais.Parameters[4].Value := 99999999;
   end
   else
   begin
      FmFrContrVendasEmp.sp_controleVendasEmpresariais.Parameters[3].Value := EditVendedor.text;
      FmFrContrVendasEmp.sp_controleVendasEmpresariais.Parameters[4].Value := EditVendedor.text;
   end;
//   FmFrContrVendasEmp.RLLabel13.Caption := EditVendedor.text + ' - ' + Edit1.text;
   FmFrContrVendasEmp.RLLabel15.Caption := MaskEditDt_Ini.text + ' A ' + MaskEditFim.Text;
   FmFrContrVendasEmp.sp_controleVendasEmpresariais.open;
   FmFrContrVendasEmp.RLReportH.PreviewModal;
   FmFrContrVendasEmp.Free;

end;

procedure TFmParamRelContVidasEmp.BitBtnPesquisaDentistaClick(
  Sender: TObject);
begin
   FormPesquisaVendedor := TFormPesquisaVendedor.create(self);
   if FormPesquisaVendedor.ShowModal <> mrOK then
      Exit;
  EditVendedor.Text := PesquisaVendedor.FormPesquisaVendedor.QueryVendedoresCodigo.asString;
  EditVendedorExit(sender);
  BitBtn1.SetFocus;
end;

procedure TFmParamRelContVidasEmp.EditVendedorExit(Sender: TObject);
begin
   Edit1.Text := dm.execmd('select nome from vendedor where codigo = ''' +  EditVendedor.text + '''','nome');
end;

procedure TFmParamRelContVidasEmp.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
     Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TFmParamRelContVidasEmp.Button1Click(Sender: TObject);
begin
//   ShowMessage(GetLasDayMonth(StrToDate(inputbox('data','data',''))));
end;

end.
