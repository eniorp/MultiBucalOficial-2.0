unit RelManutencao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, ExtCtrls;

type
  TFormRelManutencao = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    MaskEditUltimo: TMaskEdit;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label3: TLabel;
    Label5: TLabel;
    EditCodigo: TEdit;
    EditNomeDentista: TEdit;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    RadioGroupTipo: TRadioGroup;
    Label12: TLabel;
    EditClinica: TEdit;
    BitBtnPesquisaClinica: TBitBtn;
    BitBtnRecibo: TBitBtn;
    BitBtnClinica: TBitBtn;
    EditNmClinica: TEdit;
    QueryClinica: TQuery;
    BitBtnPesquisar: TBitBtn;
    Memo1: TMemo;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditCodigoExit(Sender: TObject);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditClinicaExit(Sender: TObject);
    procedure EditClinicaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPesquisaClinicaClick(Sender: TObject);
    procedure BitBtnReciboClick(Sender: TObject);
    procedure BitBtnClinicaClick(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);

  private
    { Private declarations }


  public
    { Public declarations }
  end;

var
  FormRelManutencao: TFormRelManutencao;
  Codigo : Integer;
  PrimeiraData, UltimaData: TDateTime;

implementation

uses QRManutencao, QRManutencaoNovo, QRManutencaoCadastro, PesquisaClinica,
  QRPagamentoManutRecibo, RelManutencaoClinica, Senha,
  RelManutencaoClinicaAu, PesquisaDentista, udm;

{$R *.DFM}

procedure TFormRelManutencao.BitBtnImprimirClick(Sender: TObject);
begin
     PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
     UltimaData := StrToDate(MaskEditUltimo.Text);

     if UltimaData < PrimeiraData then
       begin
         ShowMessage('A última Data não pode ser Menor que a primeira !!!');
         MaskEditUltimo.SetFocus;
         Exit;
       end;
     case FormRelManutencao.Tag of
       0:
       begin
         QRManutencao.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
         QRManutencao.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         QRManutencao.Dentista := StrToInt(EditCodigo.Text); //StrToInt(Copy(ComboBoxDentista.Text , 1, 3));
         Application.CreateForm(TQRListaManutencao, QRListaManutencao);
         QRManutencao.QRListaManutencao.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRManutencao.QRListaManutencao.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         QRListaManutencao.Preview;
         QRListaManutencao.Free;
       end;
       1:
       begin
         QRManutencaoNovo.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
         QRManutencaoNovo.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         QRManutencaoNovo.VClinica    := StrToInt(EditClinica.Text);
         QRManutencaoNovo.VMesAno     := Copy(MaskEditUltimo.Text,4,7);

         if RadioGroupTipo.ItemIndex = -1 then
            QRManutencaoNovo.VTipoPessoa := ''
         else
         if RadioGroupTipo.ItemIndex = 0 then // autonomo
            QRManutencaoNovo.VTipoPessoa := 'AU'
         else
            QRManutencaoNovo.VTipoPessoa := 'PJ';

         QRManutencaoNovo.Dentista := StrToInt(EditCodigo.Text);//StrToInt(Copy(ComboBoxDentista.Text , 1, 3));
         Application.CreateForm(TQRListaManutencaoNovo, QRListaManutencaoNovo);
         QRManutencaoNovo.QRListaManutencaoNovo.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRManutencaoNovo.QRListaManutencaoNovo.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         if dm.GetParam('HPDC') = 'N' then // mantem o original
         begin
            QRListaManutencaoNovo.QueryManutencao.sql[9] := ' and Receber.Data_Pagamento between :Data1 and :Data2';
            QRListaManutencaoNovo.QueryManutencao.sql[13] := ' order by o.Dentista, o.Usuario,Receber.Data_vencimento';

         end
         else
         begin
            QRListaManutencaoNovo.QueryManutencao.sql[9] := ' and Receber.dt_pagDentista between :Data1 and :Data2';
            QRListaManutencaoNovo.QueryManutencao.sql[13] := ' order by o.Dentista, o.Usuario,Receber.dt_pagDentista';
         end;


         QRListaManutencaoNovo.Preview;
         QRListaManutencaoNovo.Free;
       end;
       2:
       begin
         QRManutencaoCadastro.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
         QRManutencaoCadastro.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         QRManutencaoCadastro.Dentista := StrToInt(EditCodigo.Text); //StrToInt(Copy(ComboBoxDentista.Text , 1, 3));
         Application.CreateForm(TQRListaManutencaoCadastro, QRListaManutencaoCadastro);
         QRManutencaoCadastro.QRListaManutencaoCadastro.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRManutencaoCadastro.QRListaManutencaoCadastro.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         QRListaManutencaoCadastro.Preview;
         QRListaManutencaoCadastro.Free;
       end;
     end;
end;

procedure TFormRelManutencao.FormActivate(Sender: TObject);
begin
     MaskEditPrimeiro.SetFocus;
     if FormRelManutencao.Tag = 2 then
       Label1.Caption := 'Cadastro:';
end;

procedure TFormRelManutencao.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelManutencao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryDentista.Close;
end;

procedure TFormRelManutencao.EditCodigoExit(Sender: TObject);
begin
  if (EditCodigo.Text = '') or (EditCodigo.Text = '0') then
    begin
      EditCodigo.Text := '0';
      EditNomeDentista.Text := 'Todos';
      exit;
    end;

//  RadioGroupTipo.Visible := (EditCodigo.Text = '') or (EditCodigo.Text = '0');

  with QueryDentista do
    begin
      close;
      ParamByName('Dentista').asInteger := StrToInt(EditCodigo.Text);
      Open;
      EditNomeDentista.Text := QueryDentistaNome.Text;
    end;
end;

procedure TFormRelManutencao.EditCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelManutencao.EditClinicaExit(Sender: TObject);
begin
  QueryClinica.Close;
  if (EditClinica.Text = '') then
     EditClinica.Text := '0';

  if (EditClinica.Text <> '0') then
  begin
     QueryClinica.ParamByname('codigo').AsString := EditClinica.Text;
     QueryClinica.Open;
     EditNmClinica.text := QueryClinica.FieldByName('descricao').AsString;
     if (QueryClinica.Bof and QueryClinica.Eof) then
     begin
       ShowMessage('Código de Clínica não encontrado!');
       EditClinica.SetFocus;
       exit;
     end;
  end;
  RadioGroupTipo.Visible := (EditClinica.Text = '0');
  if not RadioGroupTipo.Visible then
     RadioGroupTipo.ItemIndex := -1
  else
    RadioGroupTipo.ItemIndex := 1;

  if (EditClinica.Text = '0') then
  begin
     EditNmClinica.Text := 'TODOS';
     QueryClinica.ParamByname('codigo').AsString := '0';
     QueryClinica.Open;
  end;

end;

procedure TFormRelManutencao.EditClinicaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;

end;

procedure TFormRelManutencao.BitBtnPesquisaClinicaClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaClinica, FormPesquisaClinica);
     FormPesquisaClinica.ShowModal;
     EditClinica.text:= IntToStr(PesquisaClinica.FormPesquisaClinica.QueryClinicasCodigo.asInteger);
     RadioGroupTipo.Visible := (EditClinica.Text = '0');
     FormPesquisaClinica.Query50.Close;
     FormPesquisaClinica.QueryClinicas.Close;
     FormPesquisaClinica.Free;

end;

procedure TFormRelManutencao.BitBtnReciboClick(Sender: TObject);
begin

  Application.CreateForm(TQrPagManutencaoRecibo, QrPagManutencaoRecibo);
  //esta usando heranca do qrPagamentoDentistaRecibo
  QrPagManutencaoRecibo.MesAno   := Copy(MaskEditUltimo.Text,4,7);
  QrPagManutencaoRecibo.Dentista := StrToInt(EditCodigo.text);
  QrPagManutencaoRecibo.Clinica  := StrToInt(EditClinica.text);
  QrPagManutencaoRecibo.DtIni    := StrToDate(MaskEditPrimeiro.text);
  QrPagManutencaoRecibo.DtFim    := StrToDate(MaskEditUltimo.text);
  QrPagManutencaoRecibo.Preview;
  QrPagManutencaoRecibo.Free;

end;

procedure TFormRelManutencao.BitBtnClinicaClick(Sender: TObject);
begin
   if (RadioGroupTipo.ItemIndex = 1) or (QueryClinica.FieldbyName('TipoPessoa').AsString = 'PJ') then
   begin
       QrManutencaoClinica := TQrManutencaoClinica.Create(self);
       if StrToInt(EditClinica.text) <> 0 then
          QrManutencaoClinica.SpRelClinicaManutencao.ParamByName('@CdClinica').AsString  := EditClinica.text;

       if StrToInt(EditCodigo.Text) <> 0 then
          QrManutencaoClinica.SpRelClinicaManutencao.ParamByName('@CdDentista').AsString := EditCodigo.Text;

       QrManutencaoClinica.SpRelClinicaManutencao.ParamByName('@DtIni').AsString      := MaskEditPrimeiro.text;
       QrManutencaoClinica.SpRelClinicaManutencao.ParamByName('@DtFim').AsString      := MaskEditUltimo.Text;
       QrManutencaoClinica.SpRelClinicaManutencao.Open;
       QrManutencaoClinica.QRLabelAvisoPJ.Caption :=
       '[I.R. = ' + QrManutencaoClinica.SpRelClinicaManutencao.FieldByName('PercentIR').AsString +
       ' % ' + ' para valores acima de R$ ' + QrManutencaoClinica.SpRelClinicaManutencao.FieldByName('VrBaseCobr_Ir').asString + ']' +
       '               Tributos = ' + QrManutencaoClinica.SpRelClinicaManutencao.FieldByName('Percent_Tributos').AsString +
       ' para valores acima de R$ ' + QrManutencaoClinica.SpRelClinicaManutencao.FieldByName('VrBaseCobr_Tributos').asString;

       QrManutencaoClinica.QRLabelEmpresa.Caption := Senha.Empresa;
       QrManutencaoClinica.QRLabelReferencia.Caption := MaskEditPrimeiro.Text + ' A ' + MaskEditUltimo.Text;
       QrManutencaoClinica.Preview;
       QrManutencaoClinica.Free;
   end
   else
   if (RadioGroupTipo.ItemIndex = 0) or (QueryClinica.FieldbyName('TipoPessoa').AsString = 'AU') then
   begin
      QrManutencaoClinicaAU := TQrManutencaoClinicaAU.Create(Self);
      if StrToInt(EditClinica.text) <> 0 then
         QrManutencaoClinicaAU.SpRelClinicaManutencaoAU.ParamByName('@CdClinica').AsString  := EditClinica.text;
      if StrToInt(EditCodigo.Text) <> 0 then
         QrManutencaoClinicaAU.SpRelClinicaManutencaoAU.ParamByName('@CdDentista').AsString := EditCodigo.Text;
      QrManutencaoClinicaAU.SpRelClinicaManutencaoAU.ParamByName('@DtIni').AsString         := MaskEditPrimeiro.text;
      QrManutencaoClinicaAU.SpRelClinicaManutencaoAU.ParamByName('@DtFim').AsString         := MaskEditUltimo.Text;
      QrManutencaoClinicaAU.SpRelClinicaManutencaoAU.Open;

       QrManutencaoClinicaAU.QRLabelEmpresa.Caption := Senha.Empresa;
       QrManutencaoClinicaAU.QRLabelReferencia.Caption := MaskEditPrimeiro.Text + ' A ' + MaskEditUltimo.Text;
       QrManutencaoClinicaAU.QRLabelAvisoAutonomo.caption := 'INSS = ' + QrManutencaoClinicaAU.SpRelClinicaManutencaoAU.FieldByName('PercentInss').AsString +  ' % sobre o valor com desconto para autônomos';
       QrManutencaoClinicaAU.Preview;
       QrManutencaoClinicaAU.Free;

   end;

end;

procedure TFormRelManutencao.BitBtnPesquisarClick(Sender: TObject);
begin
   FormPesquisaDentistas := TFormPesquisaDentistas.create(self);
   FormPesquisaDentistas.ShowModal;
   EditCodigo.text := PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.AsString;
   EditCodigo.SetFocus();
   FormPesquisaDentistas.free;
end;

end.
