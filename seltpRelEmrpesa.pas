unit seltpRelEmrpesa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Mask, biblio, DB, ADODB,enio;

type
  TfmSelRelEmpresa = class(TForm)
    RadioGroup1: TRadioGroup;
    GroupBoxDtBase: TGroupBox;
    MaskEditDataRel: TMaskEdit;
    CheckBoxTxAde: TCheckBox;
    GroupBoxPeriodoFaturado: TGroupBox;
    MaskEdit1: TMaskEdit;
    CheckBoxOpAvancadas: TCheckBox;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    CheckBox3: TCheckBox;
    EditcdEmpIni: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditcdEmpFim: TEdit;
    ADOQuery1: TADOQuery;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormDblClick(Sender: TObject);
    procedure CheckBoxOpAvancadasClick(Sender: TObject);
  private
    flagAux : Boolean;
  public
    { Public declarations }
  end;

var
  fmSelRelEmpresa: TfmSelRelEmpresa;

implementation

uses udm, QRUsuariosContratante, RelFrParcOrcDesFolha, Contratante,senha,
  RelFrUsuariosContratante, UdmAt;

{$R *.dfm}

procedure TfmSelRelEmpresa.FormShow(Sender: TObject);
begin
   MaskEditDataRel.Text := DateToStr(dm.Date());
   flagAux := false;
   EditcdEmpIni.Text := FormContratante.QueryContratanteCodigo.AsString;
   EditcdEmpFim.Text := FormContratante.QueryContratanteCodigo.AsString;
   fmSelRelEmpresa.Height := 281;
   GroupBox2.Visible := false;
   GroupBox1.Visible := false;

end;

procedure TfmSelRelEmpresa.BitBtn1Click(Sender: TObject);
var cdFolhaPagto :  string;
    arqTexto : textFile;
    dirSalvaPDF,linha,nomeAux, MatriculaAux : string;

    cdcontratIni,cdContratFim,cdFuncionario : integer;
    vrDebito : real;



begin
   cdFolhaPagto := dm.GetParam('CPDEF');
   if RadioGroup1.ItemIndex = 3 then
   begin

      Assignfile(arqTexto,inputbox('Informe o nome do Arquivo','Nome do Arquivo','c:\temp\' + FormContratante.QueryContratanteCodigo.AsString + '_' + copy(MaskEditDataRel.Text,1,2) + copy(MaskEditDataRel.Text,4,2) + copy(MaskEditDataRel.Text,7,4) + '.txt'));
      ReWrite(arqTexto);
      dm.sp_relMensalidadeContrat.Close;
      dm.sp_relMensalidadeContrat.ParamByName('@Contratante').asInteger := FormContratante.QueryContratanteCodigo.asInteger;
      dm.sp_relMensalidadeContrat.ParambyName('@DataPesq').asString   := MaskEditDataRel.Text;
      dm.sp_relMensalidadeContrat.Open;

      cdFuncionario := dm.sp_relMensalidadeContrat.FieldByName('codigo').AsInteger;
      nomeAux := dm.sp_relMensalidadeContrat.FieldByName('Nome_1').AsString;
      MatriculaAux := dm.sp_relMensalidadeContrat.FieldByName('cd_matricula').AsString;

      vrDebito := 0;

      while not dm.sp_relMensalidadeContrat.eof do
      begin
         if cdFuncionario = dm.sp_relMensalidadeContrat.FieldByName('codigo').AsInteger then
         begin
            vrDebito := vrDebito + dm.sp_relMensalidadeContrat.FieldByName('valor').AsCurrency;
         end
         else
         begin
            linha := '0001'; // Fixo, Codigo empresa
            linha := linha + '1'; // Tipo do Colaborador1 - Empregado2 - Terceiro3 - Parceiro
            linha := linha +  Lpad(MatriculaAux,9,'0');
            linha := linha +  Rpad(copy(nomeAux,1,40) ,40,' ');
            linha := linha +  Lpad(FloatToStrF(vrDebito,ffNumber,12,2),12,'0');
            linha := linha +  FormatDatetime('ddmmyyyy',dm.Date); //Data da Geracao do arquivo
            Writeln(arqTexto,linha);
            vrDebito := dm.sp_relMensalidadeContrat.FieldByName('valor').AsCurrency;
            cdFuncionario := dm.sp_relMensalidadeContrat.FieldByName('codigo').AsInteger;
            nomeAux := dm.sp_relMensalidadeContrat.FieldByName('Nome_1').AsString;
            MatriculaAux := dm.sp_relMensalidadeContrat.FieldByName('cd_matricula').AsString;

         end;
         dm.sp_relMensalidadeContrat.Next;
      end;

      linha := '0001'; // Fixo, Codigo empresa
      linha := linha + '1'; // Tipo do Colaborador1 - Empregado2 - Terceiro3 - Parceiro
      linha := linha +  Lpad(MatriculaAux,9,'0');
      linha := linha +  Rpad(copy(nomeAux,1,40) ,40,' ');
      linha := linha +  Lpad(FloatToStrF(vrDebito,ffNumber,12,2),12,'0');
      linha := linha +  FormatDatetime('ddmmyyyy',dm.Date); //Data da Geracao do arquivo
      Writeln(arqTexto,linha);

      vrDebito := dm.sp_relMensalidadeContrat.FieldByName('valor').AsCurrency;
      cdFuncionario := dm.sp_relMensalidadeContrat.FieldByName('codigo').AsInteger;
      nomeAux := dm.sp_relMensalidadeContrat.FieldByName('Nome_1').AsString;
      MatriculaAux := dm.sp_relMensalidadeContrat.FieldByName('cd_matricula').AsString;

       dm.sp_relMensalidadeContrat.Close;
       closeFile(ArqTexto);
       ShowMessage('Arquivo gerado com sucesso !');
   end
   else
   if RadioGroup1.ItemIndex = 0 then
   begin
        if not flagAux  then// indica se rel novo ou velho..
        begin
           if CheckBoxOpAvancadas.Checked then
           begin
             if (EditcdEmpFim.Text = '') or (EditcdEmpIni.Text = '') then
             begin
                ShowMessage('Informar codigo de contratante inicial e final');
                EditcdEmpIni.SetFocus;
                exit;
             end;
             dirSalvaPDF := dm.GetParam('DSRE');
             if CheckBox3.Checked then
                ShowMessage('os arquivos pdf''s dos relatórios serão salvos em ' + dirSalvaPDF + '(conforme parametro DSRE)');

             cdcontratIni := StrToInt(EditcdEmpIni.text);
             cdContratFim := StrToInt(EditcdEmpFim.text);

           end
           else
           begin
              cdcontratIni := FormContratante.QueryContratanteCodigo.asInteger;
              cdContratFim := FormContratante.QueryContratanteCodigo.asInteger;
           end;
           ADOQuery1.Close;
           ADOQuery1.Parameters[0].Value := cdcontratIni;
           ADOQuery1.Parameters[1].Value := cdcontratFim;
           ADOQuery1.Open;
           BitBtn1.enabled := false;
           label3.visible := true;

           while not ADOQuery1.eof do
           begin
              FrListaUsuarioContratante := TFrListaUsuarioContratante.Create(self);
              FrListaUsuarioContratante.RLLabelEmpresaH.Caption := senha.Empresa;
              FrListaUsuarioContratante.sp_relMensalidadeContrat.Close;
              FrListaUsuarioContratante.sp_relMensalidadeContrat.Parameters[1].Value := ADOQuery1.fieldByName('codigo').AsInteger;
              FrListaUsuarioContratante.sp_relMensalidadeContrat.Parameters[2].Value := MaskEditDataRel.Text;

              FrListaUsuarioContratante.VrMinimoMens := StrToCurr(dm.execmd('select vr_minimo_plano vr from plano p, contratante c where c.plano = p.codigo and c.codigo = ' + ADOQuery1.fieldByName('codigo').AsString,'vr'));
              FrListaUsuarioContratante.sp_relMensalidadeContrat.Open;

              FrListaUsuarioContratante.RLLabel11.Caption := 'EMPRESA : ' + ADOQuery1.fieldByName('codigo').AsString + '-' + ADOQuery1.fieldByName('nome').AsString  + '                             DATA BASE : ' + MaskEditDataRel.Text;
              FrListaUsuarioContratante.RLLabel12.Caption := 'CPF/CNPJ: ' + ADOQuery1.fieldByName('CGC_CPF').AsString;
              if CheckBox3.Checked then
              begin
                 if FrListaUsuarioContratante.sp_relMensalidadeContrat.RecordCount > 0 then
                    FrListaUsuarioContratante.RLReportH.SaveToFile(dirSalvaPDF +  replace(enio.replace(copy(ADOQuery1.fieldByName('nome').AsString,1,20),'\',''),'/','') + '_' + biblio.Lpad(ADOQuery1.fieldByName('codigo').AsString,10,'0') + '_' + copy(MaskEditDataRel.Text,1,2) + copy(MaskEditDataRel.Text,4,2) + copy(MaskEditDataRel.Text,7,4)  + '.pdf');
              end
              else
                 FrListaUsuarioContratante.RLReportH.PreviewModal;
              FrListaUsuarioContratante.free;
              ADOQuery1.next;

           end;
           BitBtn1.enabled := true;
           label3.visible := false;
           showMessage('Processamento realizado com sucesso');
           exit;
        end;
        ShowMessage('relatório antigo sendo impresso');
        QRUsuariosContratante.DataPesq := StrtoDate(MaskEditDataRel.Text);
        QRUsuariosContratante.Codigo_Contratante := FormContratante.QueryContratanteCodigo.asInteger;
        Application.CreateForm(TQRListaUsuarioContratante, QRListaUsuarioContratante);
        QRListaUsuarioContratante.QRLabelTxAde.enabled := CheckBoxTxAde.Checked;
        QRListaUsuarioContratante.QRLabelVrTot_.enabled := CheckBoxTxAde.Checked;
        QRUsuariosContratante.QRListaUsuarioContratante.QRLabelContratante.Caption := Copy(FormContratante.QueryContratanteNome.asString, 1, 30);
        QRListaUsuarioContratante.Preview;
        QRListaUsuarioContratante.Free;
   end
   else
   begin

      FmFrParcOrcDesFolha := TFmFrParcOrcDesFolha.create(senha.Empresa,'Relatório de Orçamentos para Débido me folha',self);
      FmFrParcOrcDesFolha.RLLabel7.Caption := 'EMPRESA : ' +  FormContratante.QueryContratanteNome.AsString;
      FmFrParcOrcDesFolha.ADOQuery1.Close;
      if RadioGroup1.ItemIndex = 1 then
      begin
         FmFrParcOrcDesFolha.ADOQuery1.sql[18] := ' and p.vencimento <= ''' + MaskEditDataRel.Text + ''' and p.per_ref_des_folha is null' +
         ' and u.contratante_titular = ' + FormContratante.QueryContratanteCodigo.AsString +
         ' and o.autorizado = 1 and p.Tipo_Pagamento = ' + cdFolhaPagto ;
         FmFrParcOrcDesFolha.RLLabel7.Caption := FmFrParcOrcDesFolha.RLLabel7.caption + '   DATA BASE : ' +  MaskEditDataRel.Text;

      end
      else
      if RadioGroup1.ItemIndex = 2 then
      begin
          FmFrParcOrcDesFolha.ADOQuery1.sql[18] := ' and p.per_ref_des_folha = ''' + MaskEdit1.text + '''' +
          ' and u.contratante_titular = ' + FormContratante.QueryContratanteCodigo.AsString + ' and p.Tipo_Pagamento = ' + cdFolhaPagto ;
          FmFrParcOrcDesFolha.RLLabel7.Caption := FmFrParcOrcDesFolha.RLLabel7.caption + '   PERÍODO FATURADO : ' +   MaskEdit1.text;
      end;


      FmFrParcOrcDesFolha.ADOQuery1.open;
      if (FmFrParcOrcDesFolha.ADOQuery1.bof and FmFrParcOrcDesFolha.ADOQuery1.eof) then
        showMessage('Não há registro a serem impressos')
      else
      begin
         FmFrParcOrcDesFolha.RLReportH.PreviewModal;
         FmFrParcOrcDesFolha.free;
      end;
   end;
end;

procedure TfmSelRelEmpresa.RadioGroup1Click(Sender: TObject);
begin
   CheckBoxTxAde.Visible := RadioGroup1.ItemIndex = 0;
   CheckBoxTxAde.Checked := false;
   if RadioGroup1.ItemIndex in[0, 1] then
   begin
      GroupBoxPeriodoFaturado.Visible := false;
      GroupBoxDtBase.Visible := true;
   end
   else
   if RadioGroup1.ItemIndex = 2 then
   begin
      GroupBoxPeriodoFaturado.Visible := true;
      GroupBoxDtBase.Visible := false;
   end;

end;

procedure TfmSelRelEmpresa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
         VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
         END;

end;

procedure TfmSelRelEmpresa.FormDblClick(Sender: TObject);
begin
   flagAux := true;
end;

procedure TfmSelRelEmpresa.CheckBoxOpAvancadasClick(Sender: TObject);
begin
  if CheckBoxOpAvancadas.Checked then
  begin
     fmSelRelEmpresa.Height := 457;
     GroupBox2.Visible := true;
     GroupBox1.Visible := true;
  end
  else
  begin
     fmSelRelEmpresa.Height := 281;
     GroupBox2.Visible := false;
     GroupBox1.Visible := false;
     EditcdEmpIni.text := FormContratante.QueryContratanteCodigo.AsString;
     EditcdEmpFim.text := FormContratante.QueryContratanteCodigo.AsString;
  end;

end;

end.
