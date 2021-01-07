unit RelPagamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, DBCtrls, ExtCtrls;

type
  TFormRelPagamentos = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    BitBtnAnalitico: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    EditReferencia: TEdit;
    BitBtnSintetico: TBitBtn;
    EditCodigo: TEdit;
    EditNomeDentista: TEdit;
    BitBtnClinica: TBitBtn;
    Label12: TLabel;
    BitBtnPesquisaClinica: TBitBtn;
    EditClinica: TEdit;
    BitBtnRecibo: TBitBtn;
    RadioGroupTipo: TRadioGroup;
    BitBtnPesquisar: TBitBtn;
    Memo1: TMemo;
    RadioGroupProcedimentos: TRadioGroup;
    procedure BitBtnAnaliticoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnSinteticoClick(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure BitBtnPesquisaClinicaClick(Sender: TObject);
    procedure BitBtnClinicaClick(Sender: TObject);
    procedure EditClinicaExit(Sender: TObject);
    procedure BitBtnReciboClick(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRelPagamentos: TFormRelPagamentos;
  Codigo : Integer;
  Referencia: String[7];

implementation

uses QRPagamentoDentista, QRPagamentoDentistaSintetico, PesquisaClinica,
  QRPagamentoDentistaClinica, QRPagamentoDentistaRecibo, PesquisaDentista,
  udm, frRelPagDentistaSintetico, ADODB;

{$R *.DFM}

procedure TFormRelPagamentos.BitBtnAnaliticoClick(Sender: TObject);
begin
     QRPagamentoDentista.MesAno := EditReferencia.Text;
     QRPagamentoDentista.Dentista := StrToInt(EditCodigo.Text);
     QRPagamentoDentista.Clinica  := StrToInt(EditClinica.Text);
     if RadioGroupTipo.ItemIndex = 0 then
        QRPagamentoDentista.VTipoPessoa := 'AU'
     else
        QRPagamentoDentista.VTipoPessoa := 'PJ';

     if RadioGroupProcedimentos.ItemIndex = 0 then
        QRPagamentoDentista.Rol := 'TD'
     else if RadioGroupProcedimentos.ItemIndex = 1 then
        QRPagamentoDentista.Rol := 'RS'
     else
        QRPagamentoDentista.Rol := 'RN';

     Application.CreateForm(TQRListaPagDentista, QRListaPagDentista);
     QRPagamentoDentista.QRListaPagDentista.QRLabelReferencia.Caption := EditReferencia.Text;
     QRListaPagDentista.Preview;
     QRListaPagDentista.Free;
end;

procedure TFormRelPagamentos.FormActivate(Sender: TObject);
begin
     EditReferencia.SetFocus;
end;

procedure TFormRelPagamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dm.QueryDentista.Close;
end;

procedure TFormRelPagamentos.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelPagamentos.BitBtnSinteticoClick(Sender: TObject);
begin
     FmfrRelPagDentistaSintetico := TFmfrRelPagDentistaSintetico.create('','',self);
     FmfrRelPagDentistaSintetico.ADOQuery1.Close;
     FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] := '''' + EditReferencia.Text + '''';
     if RadioGroupTipo.ItemIndex = 0 then
        FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] := FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] + ' and clinicas.TipoPessoa = ''AU'''
     else
        FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] := FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] + ' and clinicas.TipoPessoa = ''PJ''';

     if(EditClinica.Text <> '') and (EditClinica.Text <> '0') then
        FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] := FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] + ' and Dentista.Codigo_Clinica = ' + EditClinica.Text;
     if (EditCodigo.Text <> '') and (EditCodigo.Text <> '0') then
        FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] := FmfrRelPagDentistaSintetico.ADOQuery1.sql[28] + ' and Dentista.codigo = ' + EditCodigo.Text;

     Memo1.Lines.Clear;
     Memo1.Lines := FmfrRelPagDentistaSintetico.ADOQuery1.SQL;
     FmfrRelPagDentistaSintetico.ADOQuery1.Open;
     FmfrRelPagDentistaSintetico.MesAno := EditReferencia.Text;
     FmfrRelPagDentistaSintetico.RLLabelPeriodo.Caption := 'Referência : ' + EditReferencia.Text;
     FmfrRelPagDentistaSintetico.RLReportH.PreviewModal;
     FmfrRelPagDentistaSintetico.free;

     {QRPagamentoDentistaSintetico.MesAno := EditReferencia.Text;
     QRPagamentoDentistaSintetico.Dentista := StrToInt(EditCodigo.Text);
     Application.CreateForm(TQRListaPagDentistaSintetico, QRListaPagDentistaSintetico);
     QRPagamentoDentistaSintetico.QRListaPagDentistaSintetico.QRLabelReferencia.Caption := EditReferencia.Text;
     QRListaPagDentistaSintetico.Preview;
     QRListaPagDentistaSintetico.Free;
     }
end;

procedure TFormRelPagamentos.EditCodigoExit(Sender: TObject);
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

procedure TFormRelPagamentos.BitBtnPesquisaClinicaClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaClinica, FormPesquisaClinica);
     FormPesquisaClinica.ShowModal;
     EditClinica.text:= IntToStr(PesquisaClinica.FormPesquisaClinica.QueryClinicasCodigo.asInteger);
     RadioGroupTipo.Visible := (EditClinica.Text = '0');
     BitBtnClinica.SetFocus;
     FormPesquisaClinica.Query50.Close;
     FormPesquisaClinica.QueryClinicas.Close;
     FormPesquisaClinica.Free;
end;

procedure TFormRelPagamentos.BitBtnClinicaClick(Sender: TObject);
begin
     QRPagamentoDentistaClinica.MesAno := EditReferencia.Text;
     QRPagamentoDentistaClinica.Clinica := StrToInt(EditClinica.Text);
     Application.CreateForm(TQRListaPagDentistaClinica, QRListaPagDentistaClinica);
     QRPagamentoDentistaClinica.QRListaPagDentistaClinica.QRLabelReferencia.Caption := EditReferencia.Text;
     if RadioGroupTipo.ItemIndex = 0 then
        QRPagamentoDentistaClinica.TipoPessoa := 'AU'
     else
        QRPagamentoDentistaClinica.TipoPessoa := 'PJ';
        
     if RadioGroupProcedimentos.ItemIndex = 0 then
        QRPagamentoDentistaClinica.Rol := 'TD'
     else if RadioGroupProcedimentos.ItemIndex = 1 then
        QRPagamentoDentistaClinica.Rol := 'RS'
     else
        QRPagamentoDentistaClinica.Rol := 'RN';


     QRListaPagDentistaClinica.Preview;
     QRListaPagDentistaClinica.Free;
end;

procedure TFormRelPagamentos.EditClinicaExit(Sender: TObject);
begin
  if (EditClinica.Text = '') then
     EditClinica.Text := '0';
  RadioGroupTipo.Visible := (EditClinica.Text = '0');
end;

procedure TFormRelPagamentos.BitBtnReciboClick(Sender: TObject);
begin

  Application.CreateForm(TQRPagDentistaRecibo, QRPagDentistaRecibo);
  QRPagDentistaRecibo.Clinica  := StrToInt(EditClinica.text);
  QRPagDentistaRecibo.MesAno   := EditReferencia.Text;
  QRPagDentistaRecibo.Dentista := StrToInt(EditCodigo.text);
  QRPagDentistaRecibo.Preview;
  QRPagDentistaRecibo.Free;

end;

procedure TFormRelPagamentos.BitBtnPesquisarClick(Sender: TObject);
begin
   FormPesquisaDentistas := TFormPesquisaDentistas.create(self);
   FormPesquisaDentistas.ShowModal;
   EditCodigo.text := PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.AsString;
   EditCodigo.SetFocus();
   FormPesquisaDentistas.free;
end;

end.
