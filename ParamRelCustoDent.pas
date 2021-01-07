unit ParamRelCustoDent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParamDatas, StdCtrls, Mask, Buttons, ExtCtrls;

type
  TFmParamRelCustoDent = class(TFmParamData)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    EditCdDentista: TEdit;
    EditNmDent: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditServico: TEdit;
    EditNmServico: TEdit;
    Label6: TLabel;
    BitBtnPesquisaDentista: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    RadioGroupAgrup: TRadioGroup;
    GroupBox4: TGroupBox;
    ComboBoxOrdem: TComboBox;
    Label7: TLabel;
    GroupBox5: TGroupBox;
    Label8: TLabel;
    ComboBoxTpOrc: TComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditCdDentistaExit(Sender: TObject);
    procedure BitBtnPesquisaDentistaClick(Sender: TObject);
    procedure EditServicoExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroupAgrupClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamRelCustoDent: TFmParamRelCustoDent;

implementation

uses udm, PesqDentista, PesquisaServicos, RelFrCustoDentista, Senha,
  RelFrCustoDentistaDetail, RelFrCustoDentistaDetailServ;

{$R *.dfm}

procedure TFmParamRelCustoDent.BitBtn1Click(Sender: TObject);
begin
  inherited;
     Application.CreateForm(TFmPesqDentista, FmPesqDentista);
     FmPesqDentista.ShowModal;

     if (FmPesqDentista.tag = 1) then
     begin
        EditCdDentista.Text :=  FmPesqDentista.query1.FieldByName('codigo').AsString;
        EditCdDentistaExit(sender);
     end;
     FmPesqDentista.Free;

end;

procedure TFmParamRelCustoDent.EditCdDentistaExit(Sender: TObject);
begin
  inherited;
     EditNmDent.text := dm.execmd('select nome from dentista where codigo = ''' + EditCdDentista.Text + '''','nome');

end;

procedure TFmParamRelCustoDent.BitBtnPesquisaDentistaClick(
  Sender: TObject);
begin
  inherited;
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     if FormPesquisaServicos.ShowModal = mrOK then
     begin
        EditServico.text := FormPesquisaServicos.QueryServicosCodigo.AsString;
        EditServicoExit(Sender);
     end;
     FormPesquisaServicos.QueryServicos.Close;
     FormPesquisaServicos.Query50.Close;
     FormPesquisaServicos.Free;

end;

procedure TFmParamRelCustoDent.EditServicoExit(Sender: TObject);
begin
  inherited;

   EditNmServico.Text := dm.execmd('select descricao from servicos where codigo = ''' + EditServico.text + '''','descricao');
end;

procedure TFmParamRelCustoDent.BitBtn2Click(Sender: TObject);
begin
  inherited;
   if (MaskEditDtIni.text = '   /   /    ') and (MaskEditDtFim.text = '  /  /    ') then
   begin
      ShowMessage('É necessário informar o intervalo de datas de orçamentos');
      exit;
   end;
   if RadioGroup1.ItemIndex = 0 then
   begin
      FmFrCustoDentista := TFmFrCustoDentista.create(Senha.Empresa,'CUSTOS COM ORÇAMENTOS',self);
      FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[1].Value := MaskEditDtIni.Text;
      FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[2].Value := MaskEditDtFim.Text;
      //FmFrCustoDentista.ADOQuery1.SQL[20] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.text + '''';
      FmFrCustoDentista.RLLabel4.Caption := 'DATAS DO ORÇAMENTO : ' + MaskEditDtIni.Text + ' A ' + MaskEditDtfIM.Text;
      if EditCdDentista.Text <> '' then
      begin
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[3].Value := EditCdDentista.text;
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[4].Value := EditCdDentista.text;
         //FmFrCustoDentista.ADOQuery1.SQL[20] := FmFrCustoDentista.ADOQuery1.SQL[20] + ' and o.dentista = ' + EditCdDentista.text;
         FmFrCustoDentista.RLLabel4.Caption := FmFrCustoDentista.RLLabel4.Caption + ' / DENTISTA : ' + EditnMDent.text
      end
      else
      begin
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[3].Value := 0;
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[4].Value := 99999999;
      end;
      if EditServico.text <> '' then
      begin
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[5].Value := EditServico.text;
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[6].Value := EditServico.text;
         //FmFrCustoDentista.ADOQuery1.SQL[20] := FmFrCustoDentista.ADOQuery1.SQL[20] + ' and i.servico = ' + EditServico.text;
         FmFrCustoDentista.RLLabel4.Caption := FmFrCustoDentista.RLLabel4.Caption + ' / SERVIÇO : ' + EditnMServico.text
      end
      else
      begin
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[5].Value := 0;
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[6].Value := 99999999;
      end;
      FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[7].Value := ComboBoxOrdem.ItemIndex;
      if ComboBoxTpOrc.ItemIndex = 0 then
         FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[8].Value := 'A'
      else
      FmFrCustoDentista.sp_RelCustoComOrcamento.Parameters[8].Value := 'N';


{      if ComboBoxOrdem.ItemIndex = 0 then
         FmFrCustoDentista.ADOQuery1.SQL[27] := ' 8 desc '
      else
      if ComboBoxOrdem.ItemIndex = 1 then
         FmFrCustoDentista.ADOQuery1.SQL[27] := ' 8  '
      else
      if ComboBoxOrdem.ItemIndex = 2 then
         FmFrCustoDentista.ADOQuery1.SQL[27] := ' d.nome  ';
      FmFrCustoDentista.ADOQuery1.open;}
      FmFrCustoDentista.sp_RelCustoComOrcamento.Open;
      FmFrCustoDentista.RLReportH.PreviewModal;
      FmFrCustoDentista.free;
   end
   else
   begin
         if RadioGroupAgrup.itemIndex = 0 then
         begin
            FmFrRelCustoDentDetail := TFmFrRelCustoDentDetail.create(senha.empresa,'CUSTOS COM ORÇAMENTO DETALHADO',self);
            FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.close;
            FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[1].Value := MaskEditDtIni.Text;
            FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[2].Value := MaskEditDtFim.Text;
            FmFrRelCustoDentDetail.RLLabel9.Caption := 'DATAS DO ORÇAMENTO : ' + MaskEditDtIni.Text + ' A ' + MaskEditDtfIM.Text;
            if EditCdDentista.Text <> '' then
            begin
               FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[3].Value := EditCdDentista.Text;
               FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[4].Value := EditCdDentista.Text;
               FmFrRelCustoDentDetail.RLLabel9.Caption := FmFrRelCustoDentDetail.RLLabel9.Caption + ' / DENTISTA : ' + EditnMDent.text
            end
            else
            begin
               FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[3].Value := 0;
               FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[4].Value := 99999999;
            end;
            if EditServico.text <> '' then
            begin
               FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[5].Value := EditServico.Text;
               FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[6].Value := EditServico.Text;
               FmFrRelCustoDentDetail.RLLabel9.Caption := FmFrRelCustoDentDetail.RLLabel9.Caption + ' / SERVIÇO : ' + EditnMServico.text
            end
            else
            begin
               FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[5].Value := 0;
               FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[6].Value := 99999999;
            end;

            FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[7].Value :=  ComboBoxOrdem.ItemIndex + 1;
            FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Parameters[8].Value := 'DENTISTA';

            {FmFrRelCustoDentDetail.ADOQuery1.close;
            FmFrRelCustoDentDetail.ADOQuery1.sql[24] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.text + '''';
            FmFrRelCustoDentDetail.RLLabel9.Caption := 'DATAS DO ORÇAMENTO : ' + MaskEditDtIni.Text + ' A ' + MaskEditDtfIM.Text;
            if EditCdDentista.Text <> '' then
            begin
               FmFrRelCustoDentDetail.ADOQuery1.sql[24] := FmFrRelCustoDentDetail.ADOQuery1.sql[24] + ' and o.dentista = ' + EditCdDentista.text;
               FmFrRelCustoDentDetail.RLLabel9.Caption := FmFrRelCustoDentDetail.RLLabel9.Caption + ' / DENTISTA : ' + EditnMDent.text
            end;
            if EditServico.text <> '' then
            begin
               FmFrRelCustoDentDetail.ADOQuery1.SQL[24] := FmFrRelCustoDentDetail.ADOQuery1.SQL[24] + ' and i.servico = ' + EditServico.text;
               FmFrRelCustoDentDetail.RLLabel9.Caption := FmFrRelCustoDentDetail.RLLabel9.Caption + ' / SERVIÇO : ' + EditnMServico.text
            end;
            FmFrRelCustoDentDetail.ADOQuery1.open;}
            FmFrRelCustoDentDetail.sp_rel_custo_orc_detail.Open;
            FmFrRelCustoDentDetail.RLReportH.PreviewModal;
            FmFrRelCustoDentDetail.free;
         end
         else
         begin
            FmFrRelFrCustoDentistaDetailServ := TFmFrRelFrCustoDentistaDetailServ.create(senha.Empresa,'CUSTO COM ORÇAMENTO DETALHADO',self);

            FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.close;
            FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[1].Value := MaskEditDtIni.Text;
            FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[2].Value := MaskEditDtFim.Text;
            FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption := 'DATAS DO ORÇAMENTO : ' + MaskEditDtIni.Text + ' A ' + MaskEditDtfIM.Text;
            if EditCdDentista.Text <> '' then
            begin
               FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[3].Value := EditCdDentista.Text;
               FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[4].Value := EditCdDentista.Text;
               FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption := FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption + ' / DENTISTA : ' + EditnMDent.text
            end
            else
            begin
               FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[3].Value := 0;
               FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[4].Value := 99999999;
            end;

            if EditServico.text <> '' then
            begin
               FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[5].Value := EditServico.Text;
               FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[6].Value := EditServico.Text;
               FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption := FmFrRelCustoDentDetail.RLLabel9.Caption + ' / SERVIÇO : ' + EditnMServico.text
            end
            else
            begin
               FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[5].Value := 0;
               FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[6].Value := 99999999;
            end;


            FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[7].Value :=  ComboBoxOrdem.ItemIndex + 1;
            FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Parameters[8].Value := 'SERVICO';
            {FmFrRelFrCustoDentistaDetailServ.ADOQuery1.close;
            FmFrRelFrCustoDentistaDetailServ.ADOQuery1.sql[24] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.text + '''';
            FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption := 'DATAS DO ORÇAMENTO : ' + MaskEditDtIni.Text + ' A ' + MaskEditDtfIM.Text;
            if EditCdDentista.Text <> '' then
            begin
               FmFrRelFrCustoDentistaDetailServ.ADOQuery1.sql[24] := FmFrRelFrCustoDentistaDetailServ.ADOQuery1.sql[24] + ' and o.dentista = ' + EditCdDentista.text;
               FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption := FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption + ' / DENTISTA : ' + EditnMDent.text
            end;
            if EditServico.text <> '' then
            begin
               FmFrRelFrCustoDentistaDetailServ.ADOQuery1.SQL[24] := FmFrRelFrCustoDentistaDetailServ.ADOQuery1.SQL[24] + ' and i.servico = ' + EditServico.text;
               FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption := FmFrRelFrCustoDentistaDetailServ.RLLabel9.Caption + ' / SERVIÇO : ' + EditnMServico.text
            end;
            FmFrRelFrCustoDentistaDetailServ.ADOQuery1.open;}
            FmFrRelFrCustoDentistaDetailServ.sp_rel_custo_orc_detail.Open;
            FmFrRelFrCustoDentistaDetailServ.RLReportH.PreviewModal;
            FmFrRelFrCustoDentistaDetailServ.free;
         end
   end;
end;

procedure TFmParamRelCustoDent.FormShow(Sender: TObject);
begin
  inherited;
  ComboBoxOrdem.itemindex := 3;
end;

procedure TFmParamRelCustoDent.RadioGroup1Click(Sender: TObject);
begin
  inherited;
   RadioGroupAgrup.visible := RadioGroup1.ItemIndex = 1;
   if RadioGroup1.ItemIndex = 0 then
     GroupBox4.visible := true
   else
      GroupBox4.visible := RadioGroupAgrup.ItemIndex = 0;
end;

procedure TFmParamRelCustoDent.RadioGroupAgrupClick(Sender: TObject);
begin
  inherited;
   GroupBox4.visible := RadioGroupAgrup.ItemIndex = 0;
end;

end.
