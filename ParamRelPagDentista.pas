unit ParamRelPagDentista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask;

type
  TFmParamRelPagDentista = class(TForm)
    Label2: TLabel;
    EditCodigo: TEdit;
    BitBtnPesquisar: TBitBtn;
    EditNomeDentista: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtnSair: TBitBtn;
    BitBtnClinica: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    procedure EditCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure BitBtnClinicaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamRelPagDentista: TFmParamRelPagDentista;

implementation

uses PesquisaDentista, udm, frRelPagDentistaPorPeriodo, senha;

{$R *.dfm}

procedure TFmParamRelPagDentista.EditCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) and (EditCodigo.Text <> '') then
   begin
    dm.QueryDentista.close;
    dm.QueryDentista.ParamByName('Dentista').asInteger := StrToInt(EditCodigo.Text);
    dm.QueryDentista.Open;
    EditNomeDentista.Text := dm.QueryDentistaNome.Text;
   end;
end;

procedure TFmParamRelPagDentista.BitBtnPesquisarClick(Sender: TObject);
begin
   FormPesquisaDentistas := TFormPesquisaDentistas.create(self);
   FormPesquisaDentistas.ShowModal;
   EditCodigo.text := PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.AsString;
   EditCodigo.SetFocus();
   FormPesquisaDentistas.free;

end;

procedure TFmParamRelPagDentista.BitBtnClinicaClick(Sender: TObject);
begin
   try
   if(MaskEdit1.Text <> '  /    ') and (MaskEdit2.Text <> '  /    ') and (EditCodigo.Text <> '') then
   begin
      FmFrRelPagDentistaPorPeriodo := TFmFrRelPagDentistaPorPeriodo.create(senha.Empresa,'Pagamento de dentista por período', self);
      FmFrRelPagDentistaPorPeriodo.ADOQuery1.Close;
      FmFrRelPagDentistaPorPeriodo.ADOQuery1.sql[7] := '''' + copy(MaskEdit1.Text,4,4) + copy(MaskEdit1.Text,1,2) + '''';
      FmFrRelPagDentistaPorPeriodo.ADOQuery1.sql[9] := '''' + copy(MaskEdit2.Text,4,4) + copy(MaskEdit2.Text,1,2) + '''';
      FmFrRelPagDentistaPorPeriodo.ADOQuery1.sql[14] := EditCodigo.text;
      FmFrRelPagDentistaPorPeriodo.ADOQuery1.Open;
      if(FmFrRelPagDentistaPorPeriodo.ADOQuery1.RecordCount = 0 ) then
        ShowMessage('Verifique os parametros passados, nenhum registro encontrado com os parametros informados')
      else
      begin
        FmFrRelPagDentistaPorPeriodo.RLLabel1.Caption := 'DENTISTA : ' + EditCodigo.Text + ' - ' + EditNomeDentista.Text;
        FmFrRelPagDentistaPorPeriodo.RLReportH.PreviewModal();
      end;
      FmFrRelPagDentistaPorPeriodo.Free;

   end
      else
      ShowMessage('informe os parametros');

   except
     on E: Exception do
      begin
        FmFrRelPagDentistaPorPeriodo.Free;
        ShowMessage('Ocorreu um erro ao tentar imprmir o relatório, verifique os parametros informados');
     end;
   end;

end;

end.
