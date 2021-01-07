unit RelComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables,biblio;

type
  TFmRelComissao = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    MaskEditUltimo: TMaskEdit;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    ComboBoxRepresentante: TComboBox;
    QueryRepresentante: TQuery;
    QueryRepresentanteCodigo: TSmallintField;
    QueryRepresentanteNome: TStringField;
    Label5: TLabel;
    Label6: TLabel;
    EditParcela1: TEdit;
    EditParcela2: TEdit;
    Label7: TLabel;
    ComboBoxPlano: TComboBox;
    QueryPlano: TQuery;
    QueryPlanoCodigo: TIntegerField;
    QueryPlanoDescricao: TStringField;
    QueryPlanoCodigo_Susep: TIntegerField;
    QueryPlanoTitular_Contratante: TStringField;
    QueryPlanoFis_Jur: TStringField;
    QueryPlanoFlag_Envio_Ans: TStringField;
    ComboBoxTpPessoa: TComboBox;
    Label3: TLabel;
    Memo1: TMemo;
    Label8: TLabel;
    MaskEditDtVendaIni: TMaskEdit;
    MaskEditDtVendaFim: TMaskEdit;
    Label9: TLabel;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditParcela1KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxPlanoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBoxRepresentanteExit(Sender: TObject);
    procedure ComboBoxPlanoExit(Sender: TObject);
    procedure ComboBoxPlanoChange(Sender: TObject);

  private
    { Private declarations }

    procedure MontaRepresentante;

  public
    { Public declarations }
  end;

var
  FmRelComissao: TFmRelComissao;
  TipoRepresentante, Codigo, Representante, PrimeiraParcela,
  UltimaParcela, Plano: Integer;
  PrimeiraData, UltimaData: TDateTime;

implementation

uses QRVendasPeriodo, QRComissaoPeriodo, QRComissaoPeriodoPlano,
  QRUsuariosContratanteRepresentante, relcomissaoDtUsuario,senha;

{$R *.DFM}

procedure TFmRelComissao.BitBtnImprimirClick(Sender: TObject);
begin
     if(FmRelComissao.Tag = 5) then
     begin
        FmFrRelcomissaoDtUsuario := TFmFrRelcomissaoDtUsuario.create(senha.Empresa,'Comissão por Período - data de inclusão Usuário',self);
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[1].Value := MaskEditPrimeiro.Text;
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[2].Value := MaskEditUltimo.Text;
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[3].Value := EditParcela1.Text;
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[4].Value := EditParcela2.Text;
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[5].Value := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
      case ComboBoxTpPessoa.ItemIndex of

         0: FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[6].Value := 'F';
         1: FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[6].Value := 'J';
         2: FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[6].Value := 'A';
         else  FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[6].Value := 'A';
      end;
        FmFrRelcomissaoDtUsuario.RLLabel24.Caption := 'Parc: ' + EditParcela1.Text + ' a ' + EditParcela2.Text + '  -  Data : ' + MaskEditPrimeiro.Text + ' a ' + MaskEditUltimo.Text + ' - Rep: ' + ComboBoxRepresentante.Text + ' - Tipo Pessoa : ' + ComboBoxTpPessoa.Text ;
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[7].Value := MaskEditDtVendaIni.Text;
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Parameters[8].Value := MaskEditDtVendaFim.Text;
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Close;
        FmFrRelcomissaoDtUsuario.sp_relComissaoUsuario.Open;
        FmFrRelcomissaoDtUsuario.RLReportH.PreviewModal;
        FmFrRelcomissaoDtUsuario.Free;
        exit;
     end;

     PrimeiraParcela := StrToInt(EditParcela1.Text);
     UltimaParcela := StrToInt(EditParcela2.Text);
     PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
     UltimaData := StrToDate(MaskEditUltimo.Text);

     if UltimaParcela < PrimeiraParcela then
       begin
         ShowMessage('A última Parcela não pode ser Menor que a primeira !!!');
         EditParcela1.SetFocus;
         exit;
       end;

     if UltimaData < PrimeiraData then
       begin
         ShowMessage('A última Data não pode ser Menor que a primeira !!!');
         MaskEditUltimo.SetFocus;
         Exit;
       end;

   Application.CreateForm(TQRListaComissaoPeriodoPlano, QRListaComissaoPeriodoPlano);

   if (ComboBoxTpPessoa.enabled) and (ComboBoxTpPessoa.Text <> '') then
   begin
      case ComboBoxTpPessoa.ItemIndex of

         0: QRListaComissaoPeriodoPlano.TpPessoaPlano := 'F';
         1: QRListaComissaoPeriodoPlano.TpPessoaPlano := 'J';
         2: QRListaComissaoPeriodoPlano.TpPessoaPlano := 'T';
         else  QRListaComissaoPeriodoPlano.TpPessoaPlano := 'T';
      end;
   end;


   QRComissaoPeriodoPlano.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
   QRComissaoPeriodoPlano.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
   QRComissaoPeriodoPlano.DParcela1 := StrToInt(EditParcela1.Text);
   QRComissaoPeriodoPlano.DParcela2 := StrToInt(EditParcela2.Text);
   QRComissaoPeriodoPlano.Representante := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
   QRComissaoPeriodoPlano.PlanoSel := StrToInt(Copy(ComboBoxPlano.Text , 1, 3));

   QRComissaoPeriodoPlano.QRListaComissaoPeriodoPlano.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
   QRComissaoPeriodoPlano.QRListaComissaoPeriodoPlano.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
   QRListaComissaoPeriodoPlano.Preview;
   QRListaComissaoPeriodoPlano.Free;
end;

procedure TFmRelComissao.FormActivate(Sender: TObject);
begin
     EditParcela1.SetFocus;
end;

procedure TFmRelComissao.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFmRelComissao.FormCreate(Sender: TObject);
begin
     MontaRepresentante;
end;

procedure TFmRelComissao.MontaRepresentante;
begin
     ComboBoxRepresentante.Items.Add('00' + ' - ' + 'Todos');
     with QueryRepresentante do
       begin
         Open;
         First;
         while not Eof do
            begin
               Codigo := StrToInt(QueryRepresentanteCodigo.asString);
               if Codigo < 10 then
                  ComboBoxRepresentante.Items.Add('0' + QueryRepresentanteCodigo.asString + ' - '+ QueryRepresentanteNome.asString)
               else
                  ComboBoxRepresentante.Items.Add(QueryRepresentanteCodigo.asString + ' - '+ QueryRepresentanteNome.asString);
              Next;
            end;
      end;
     ComboBoxPlano.Items.Add('000' + ' - ' + 'Todos');
     with QueryPlano do
       begin
         Open;
         First;
         while not Eof do
            begin
               Plano := QueryPlanoCodigo.AsInteger ;
               ComboBoxPlano.Items.Add(lpad(QueryPlanoCodigo.Asstring,3,'0') + ' - ' + QueryPlanoDescricao.asString);
               {if Plano < 10 then
                  ComboBoxPlano.Items.Add('0' + QueryPlanoCodigo.asString + ' - '+ QueryPlanoDescricao.asString)
               else
                  ComboBoxPlano.Items.Add(QueryPlanoCodigo.asString + ' - '+ QueryPlanoDescricao.asString);}
              Next;
            end;
      end;

end;

procedure TFmRelComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryRepresentante.Close;
     QueryPlano.Close;
end;

procedure TFmRelComissao.EditParcela1KeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFmRelComissao.ComboBoxPlanoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFmRelComissao.ComboBoxRepresentanteExit(Sender: TObject);
begin
{  if ComboBoxRepresentante.ItemIndex <> -1 then
     begin
       if ComboBoxPlano.ItemIndex <> -1 then
         FormRelComissao.Tag := 4
       else
         FormRelComissao.Tag := 1;
     end;}
end;

procedure TFmRelComissao.ComboBoxPlanoExit(Sender: TObject);
begin
{  if (ComboBoxRepresentante.ItemIndex = -1) then
     begin
       ShowMessage('O Representante deve ser preenchido.');
       ComboBoxRepresentante.SetFocus;
       exit;
     end;
  if (ComboBoxPlano.ItemIndex <> -1) and
     (ComboBoxRepresentante.ItemIndex <> -1) then
     FormRelComissao.Tag := 4; }
end;

procedure TFmRelComissao.ComboBoxPlanoChange(Sender: TObject);
begin
   Label3.Enabled := ComboBoxPlano.Text = ('000 - Todos');
   ComboBoxTpPessoa.Enabled := Label3.Enabled;
   if not ComboBoxTpPessoa.Enabled then
      ComboBoxTpPessoa.ItemIndex := -1;
end;

end.
