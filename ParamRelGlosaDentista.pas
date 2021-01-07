unit ParamRelGlosaDentista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask;

type
  TFmParamRelGlosaDentista = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditCodigo: TEdit;
    EditNomeDentista: TEdit;
    BitBtnPesquisar: TBitBtn;
    BitBtnSair: TBitBtn;
    BitBtnRecibo: TBitBtn;
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    Label4: TLabel;
    ComboBox1: TComboBox;
    procedure EditCodigoExit(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure BitBtnReciboClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamRelGlosaDentista: TFmParamRelGlosaDentista;

implementation

uses udm, PesquisaDentista, frRelPagDentistaPorPeriodoDentista,senha,tacio;

{$R *.dfm}

procedure TFmParamRelGlosaDentista.EditCodigoExit(Sender: TObject);
begin
  if (EditCodigo.Text = '') or (EditCodigo.Text = '0') then
    begin
      EditCodigo.Text := '0';
      EditNomeDentista.Text := 'Todos';
      exit;
    end;
  with dm.QueryDentista do
    begin
      close;
      ParamByName('Dentista').asInteger := StrToInt(EditCodigo.Text);
      Open;
      EditNomeDentista.Text := dm.QueryDentistaNome.Text;
    end;

end;

procedure TFmParamRelGlosaDentista.BitBtnPesquisarClick(Sender: TObject);
begin
   FormPesquisaDentistas := TFormPesquisaDentistas.create(self);
   FormPesquisaDentistas.ShowModal;
   EditCodigo.text := PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.AsString;
   EditCodigo.SetFocus();
   FormPesquisaDentistas.free;

end;

procedure TFmParamRelGlosaDentista.BitBtnReciboClick(Sender: TObject);
var
  MesAno:string;
begin
  if(MaskEdit1.Text = '  /    ') or (MaskEdit2.Text = '  /    ') or(EditCodigo.Text = '') then
  begin
     ShowMessage('informe o período e o dentista');
     exit;
  end;
  //procedimento para listar todos os meses do periodo selecionado
  MesAno:=MontaMesAnoVarios(StrToDate('01/'+MaskEdit1.Text),StrToDate('01/'+MaskEdit2.Text));

   FmfrRelPagDentistaPorPeriodoDentista := TFmfrRelPagDentistaPorPeriodoDentista.create(senha.Empresa,'RELATORIO DE GLOSA POR DENTISTA/PERÍODO',self);
   FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.Close;
   if ComboBox1.Text='TODOS' then
      FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.sql[27] := ''
   else
      FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.sql[27] := 'and d.nivel_glosa='''+ComboBox1.Text+'''';
   FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.sql[23] := '(' + MesAno + ')';
   if EditCodigo.Text='0' then
     begin
       FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.sql[24] := '';
       FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.sql[25] := '';
     end
   else
     begin
       FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.sql[24] := '  and d.codigo = ';
       FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.sql[25] := EditCodigo.Text;
     end;
   FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.Open;
   if(FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.bof and FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa.eof) then
      ShowMessage('Nenhum registro encontrado')
   else
   begin
      FmfrRelPagDentistaPorPeriodoDentista.RLLabel6.Caption := 'DENTISTA : ' + EditCodigo.Text + '-' + EditNomeDentista.Text + '  PERÍODO : ' + MaskEdit1.Text + ' a ' + MaskEdit2.Text;
      if CheckBox1.Checked then
        ToExcel(FmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosa,'GlosaDentista')
      else
        FmfrRelPagDentistaPorPeriodoDentista.RLReportH.Preview();
   end;
   FmfrRelPagDentistaPorPeriodoDentista.free;
end;

procedure TFmParamRelGlosaDentista.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN : Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFmParamRelGlosaDentista.MaskEdit1Exit(Sender: TObject);
begin
  if (MaskEdit2.Text = '  /    ') then
    MaskEdit2.Text:=MaskEdit1.Text;
end;

procedure TFmParamRelGlosaDentista.MaskEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN : MaskEdit2.SetFocus;
     end;
end;

end.
