unit RelOrcamentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, DBCtrls, ADODB;

type
  TFormRelOrcamentos = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    MaskEditUltimo: TMaskEdit;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    ComboBoxTipo: TComboBox;
    Label5: TLabel;
    EditContratante: TEdit;
    EditNome: TEdit;
    BitBtnPesquisar: TBitBtn;
    Label6: TLabel;
    ComboBoxTipoOrcamento: TComboBox;
    QueryTipoOrcamento: TQuery;
    QueryTipoOrcamentoTipo: TSmallintField;
    QueryTipoOrcamentoDescricao: TStringField;
    QueryTipoOrcamentoTipo_Documento: TSmallintField;
    QueryTipoOrcamentoTipo_Cobranca: TSmallintField;
    Label7: TLabel;
    MaskEditIniD: TMaskEdit;
    Label8: TLabel;
    MaskEditFimD: TMaskEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label3: TLabel;
    EditCodigo: TEdit;
    BitBtn3: TBitBtn;
    EditNomeDentista: TEdit;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    DsRegiao: TDataSource;
    ADOQueryRegiao: TADOQuery;
    DBLookupComboBoxRegiao: TDBLookupComboBox;
    Label9: TLabel;
    Memo1: TMemo;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditContratanteKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure EditContratanteExit(Sender: TObject);
    procedure EditContratanteChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelOrcamentos: TFormRelOrcamentos;
  PrimeiraData, UltimaData: TDateTime;
  Codigo : integer;

implementation

uses QROrcamentos, PesquisaContratante, udm, PesquisaDentista;

//uses QRVendasPeriodo;

{$R *.DFM}

procedure TFormRelOrcamentos.BitBtnImprimirClick(Sender: TObject);
begin
     if MaskEditPrimeiro.Text <> '  /  /    ' then
     begin
        PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
        UltimaData := StrToDate(MaskEditUltimo.Text);

        if UltimaData < PrimeiraData then
        begin
            ShowMessage('A última Data não pode ser Menor que a primeira !!!');
            MaskEditUltimo.SetFocus;
            Exit;
        end;
     end;

//     QRMapaVenda.QRLabelEmpresa.Caption := Empresa;
//     Tipo := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
     if EditCodigo.text = '' then
        EditCodigo.text := '0';

     case FormRelOrcamentos.Tag of
       1 :
       begin
         if MaskEditPrimeiro.Text <> '  /  /    ' then
         begin
            QROrcamentos.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
            QROrcamentos.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         end
         else
         begin
            QROrcamentos.DIntervalo1 := StrToDate('01/01/1900');
            QROrcamentos.DIntervalo2 := StrToDate('01/01/1900');
         end;
         QROrcamentos.DtiniDig := MaskEditIniD.Text;
         QROrcamentos.DtFimDig := MaskEditFimD.Text;

         if ComboBoxTipo.Text = 'Aprovados' then
            QROrcamentos.Tipo := 1
         else
         if ComboBoxTipo.Text = 'Não Aprovados' then
            QROrcamentos.Tipo := 0
         else
            QROrcamentos.Tipo := 2;
         QROrcamentos.Contratante := StrToInt(EditContratante.Text);
         QROrcamentos.TipoOrcamento := StrToInt(Copy(ComboBoxTipoOrcamento.Text , 1, 3));
         Application.CreateForm(TQRListaOrcamentos, QRListaOrcamentos);

         QRListaOrcamentos.cddentista := EditCodigo.text;
         if EditCodigo.text <> '0' then
            QRListaOrcamentos.QRLabel1Dentista.Caption := 'Dentista : ' + EditCodigo.Text + '-' + EditNomeDentista.text;
         QROrcamentos.QRListaOrcamentos.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QROrcamentos.QRListaOrcamentos.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
          if ADOQueryRegiao.FieldByName('cd_regiao').AsInteger <> 0 then
             QRListaOrcamentos.QueryOrcamentos.SQL[6] := ' and c.cd_regiao = ' + ADOQueryRegiao.FieldByName('cd_regiao').AsString;
          QRListaOrcamentos.QRLabelRegiao.Caption := 'Região : ' +  DBLookupComboBoxRegiao.Text;
         memo1.Clear;
         memo1.Text := QRListaOrcamentos.QueryOrcamentos.text;
         QRListaOrcamentos.Preview;
         QRListaOrcamentos.Free;
       end;
      end;
end;

procedure TFormRelOrcamentos.FormActivate(Sender: TObject);
begin
     MaskEditPrimeiro.SetFocus;
end;

procedure TFormRelOrcamentos.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of

          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelOrcamentos.EditContratanteKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #8]) then key := #0;
end;

procedure TFormRelOrcamentos.FormCreate(Sender: TObject);
begin
     ComboBoxTipoOrcamento.Items.Add('000' + ' - ' + 'Todos');
     with QueryTipoOrcamento do
       begin
         Open;
         First;
         while not Eof do
            begin
               Codigo := StrToInt(QueryTipoOrcamentoTipo.asString);

               if Codigo < 10 then
                  ComboBoxTipoOrcamento.Items.Add('00' + QueryTipoOrcamentoTipo.asString + ' - '+ QueryTipoOrcamentoDescricao.asString)
               else
               if (Codigo >= 10) and (Codigo < 100) then
                  ComboBoxTipoOrcamento.Items.Add('0' + QueryTipoOrcamentoTipo.asString + ' - '+ QueryTipoOrcamentoTipo.asString)
               else
                  ComboBoxTipoOrcamento.Items.Add(QueryTipoOrcamentoTipo.asString + ' - '+ QueryTipoOrcamentoDescricao.asString);
              Next;
            end;
      end;

end;

procedure TFormRelOrcamentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QueryTipoOrcamento.Close;
end;

procedure TFormRelOrcamentos.BitBtnPesquisarClick(Sender: TObject);
begin
  FormPesquisaContratante := TFormPesquisaContratante.create(self);
  FormPesquisaContratante.ShowModal;
  EditContratante.text := FormPesquisaContratante.QueryContratanteCodigo.AsString;
  EditContratante.SetFocus;
  BitBtnImprimir.SetFocus;
  FormPesquisaContratante.QueryContratante.Close;
  FormPesquisaContratante.Free;

end;

procedure TFormRelOrcamentos.EditContratanteExit(Sender: TObject);
begin
   if (EditContratante.text <> '') and (EditContratante.text <> '0') then
      EditNome.Text := Dm.executacomando('select nome n from contratante where codigo = ' + Editcontratante.text,'n')
   else
     EditNome.Text := 'Todos'
end;

procedure TFormRelOrcamentos.EditContratanteChange(Sender: TObject);
begin
   EditNome.clear;
end;

procedure TFormRelOrcamentos.BitBtn1Click(Sender: TObject);
begin
   MaskEditPrimeiro.Clear;
   MaskEditUltimo.Clear;
end;

procedure TFormRelOrcamentos.BitBtn2Click(Sender: TObject);
begin
   MaskEditIniD.clear;
   MaskEditFimD.clear;   
end;

procedure TFormRelOrcamentos.EditCodigoExit(Sender: TObject);
begin
  if (EditCodigo.Text = '') or (EditCodigo.Text = '0') then
    begin
      EditCodigo.Text := '0';
      EditNomeDentista.Text := 'Todos';
      exit;
    end;
  with QueryDentista do
    begin
      close;
      ParamByName('Dentista').asInteger := StrToInt(EditCodigo.Text);
      Open;
      EditNomeDentista.Text := QueryDentistaNome.Text;
    end;

end;

procedure TFormRelOrcamentos.BitBtn3Click(Sender: TObject);
begin
   FormPesquisaDentistas := TFormPesquisaDentistas.create(self);
   FormPesquisaDentistas.ShowModal;
   EditCodigo.text := PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.AsString;
   EditCodigo.SetFocus();
   FormPesquisaDentistas.free;

end;

procedure TFormRelOrcamentos.FormShow(Sender: TObject);
begin
   ADOQueryRegiao.open;
end;

end.
