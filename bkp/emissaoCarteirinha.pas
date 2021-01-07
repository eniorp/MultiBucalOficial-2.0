unit emissaoCarteirinha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls, Mask;

type
  TFmEmissaoCarteirinha = class(TFmPadrao)
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    GroupBox2: TGroupBox;
    BitBtnPesquisaContratante: TBitBtn;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    ADOQueryUsuLote: TADOQuery;
    ADOQueryUsuLotecd_emissao: TIntegerField;
    ADOQueryUsuLotecd_usuario: TIntegerField;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DataSource3: TDataSource;
    Edit1: TEdit;
    Label8: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    Label10: TLabel;
    Edit2: TEdit;
    ADOQuery1cd_emissao: TIntegerField;
    ADOQuery1cd_operador: TStringField;
    ADOQuery1dt_inclusao: TDateTimeField;
    ADOQuery1dt_geracao: TDateTimeField;
    ADOQuery1nm_recepcao: TStringField;
    ADOQuery1cd_contratante: TIntegerField;
    ADOQueryUsuLotenome: TStringField;
    BitBtn2: TBitBtn;
    Button1: TButton;
    BitBtn3: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPesquisaContratanteClick(Sender: TObject);
    procedure ADOQueryUsuLoteNewRecord(DataSet: TDataSet);

    procedure ADOQueryUsuLoteBeforePost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ADOQuery1cd_contratanteValidate(Sender: TField);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure ADOQuery1AfterPost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ADOQueryUsuLoteAfterScroll(DataSet: TDataSet);
    procedure DBEdit8Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure ADOQueryUsuLotecd_usuarioValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEmissaoCarteirinha: TFmEmissaoCarteirinha;

implementation


uses PesquisaUsuario, udm, Senha, PesquisaContratante, RelCarteirinha,
  FrRelComprovatenEntregaCart;

{$R *.dfm}

procedure TFmEmissaoCarteirinha.DBEdit7KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if (key = #13) and (DBEdit7.text = '') then
      BitBtnPesquisaContratanteClick(sender);
end;

procedure TFmEmissaoCarteirinha.BitBtnPesquisaContratanteClick(
  Sender: TObject);
begin
  inherited;
     if ADOQueryUsuLote.State = dsBrowse then
        ADOQueryUsuLote.Insert;

     Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
     FormPesquisaUsuarios.ShowModal;
     ADOQueryUsuLotecd_usuario.AsString := PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.AsString;

     FormPesquisaUsuarios.QueryUsuarios.close;
     FormPesquisaUsuarios.Free;
     DBEdit7.SetFocus;
end;

procedure TFmEmissaoCarteirinha.ADOQueryUsuLoteNewRecord(
  DataSet: TDataSet);
begin
  inherited;
   ADOQueryUsuLotecd_emissao.AsInteger := ADOQuery1cd_emissao.AsInteger;
end;


procedure TFmEmissaoCarteirinha.ADOQueryUsuLoteBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if FmEmissaoCarteirinha.tag <> 0 then // so faz validação qdo tá incluindo um a um quando tag = 1 tá incluido todos os usu do contratante na tela de contratante
    exit;
   if (Edit1.Text = '')  then
   begin
      ShowMessage('Código de usuário inválido');
      abort;
   end;
   if dm.execmd('select count(*) q from usuario u, contratante c where u.contratante_titular = c.codigo and u.codigo_completo = ' + ADOQueryUsuLotecd_usuario.AsString,'q') = '0' then
   begin
     ShowMessage('usuário não pertence ao contratante informado ');
     abort;
   end;
end;

procedure TFmEmissaoCarteirinha.Button2Click(Sender: TObject);
begin
  inherited;
  ADOQueryUsuLote.Close;
  ADOQueryUsuLote.open;
  ADOQueryUsuLote.insert;
  DBEdit7.setfocus;
end;

procedure TFmEmissaoCarteirinha.Button3Click(Sender: TObject);
begin
  inherited;
  if not ADOQueryUsuLotecd_emissao.IsNull then
  begin
      dm.execmd('delete from itens_emissao_carteirinha where cd_emissao = ' + ADOQueryUsuLotecd_emissao.AsString + ' and cd_usuario = ' + ADOQueryUsuLotecd_usuario.AsString);
      ADOQueryUsuLote.Close;
      ADOQueryUsuLote.open;
   end;
end;

procedure TFmEmissaoCarteirinha.Button4Click(Sender: TObject);
begin
  inherited;
   ADOQuery1.Close;
   ADOQuery1.Open;
   ADOQuery1.Insert;
   ADOQuery1cd_emissao.AsString := dm.execmd('select isnull(max(cd_emissao),0) + 1 m from emissao_carteirinha','m');
   ADOQuery1dt_inclusao.AsDateTime := dm.now;
   ADOQuery1cd_operador.AsString := senha.Apelido;
//   ADOQuery1.Post;
   if FmEmissaoCarteirinha.tag = 0 then
      DBEdit8.SetFocus;
end;

procedure TFmEmissaoCarteirinha.BitBtn1Click(Sender: TObject);
begin
  inherited;
   if  ADOQuery1.State = DsBrowse then
        Button4Click(sender);

   FormPesquisaContratante := TFormPesquisaContratante.create(self);
   FormPesquisaContratante.ShowModal;
   ADOQuery1cd_contratante.AsString := FormPesquisaContratante.QueryContratanteCodigo.AsString;
   Edit2.text := FormPesquisaContratante.QueryContratanteNome.AsString;
   ADOQuery1.Post;

   FormPesquisaContratante.free;
end;

procedure TFmEmissaoCarteirinha.ADOQuery1cd_contratanteValidate(
  Sender: TField);
begin
  inherited;
    Edit2.Text := DM.execmd('select nome from contratante where codigo = ' + ADOQuery1cd_contratante.AsString,'nome');
end;

procedure TFmEmissaoCarteirinha.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
   if dm.execmd('select count(*) q from contratante where codigo = ''' + ADOQuery1cd_contratante.AsString + '''','q') = '0' then
   begin
      ShowMessage('Código de Contratante inválido');
      abort;
   end;

end;

procedure TFmEmissaoCarteirinha.ADOQuery1AfterPost(DataSet: TDataSet);
begin
  inherited;
   if FmEmissaoCarteirinha.tag = 0 then
      DBedit7.setfocus;
   ADOQueryUsuLote.close;
   
   ADOQueryUsuLote.sql[1] := AdoQuery1cd_emissao.AsString;
   ADOQueryUsuLote.open;
   ADOQueryUsuLote.insert;
   ADOQueryUsuLotecd_emissao.AsInteger := AdoQuery1cd_emissao.AsInteger;

end;

procedure TFmEmissaoCarteirinha.Button1Click(Sender: TObject);
begin
  inherited;
  AdoQueryUsuLote.post;
  AdoQueryUsuLote.close;
  AdoQueryUsuLote.open;
  AdoQueryUsuLote.insert;
  DbEdit7.setfocus;
end;

procedure TFmEmissaoCarteirinha.BitBtn2Click(Sender: TObject);
var nome, CaminhoArq : string;
var CartaoDigital:Boolean;
begin
  inherited;
  ADOQueryUsuLote.cancel;
  if ADOQueryUsuLote.RecordCount = 0 then
  begin
     ShowMessage('Nenhuma carteirinha a imprimir');
     exit;
  end;
  if not InputQuery('Informe o nome do responsável pelo Recebimento das Carteirinhas','Informe o nome do responsável pelo Recebimento das Carteirinhas',nome) then
     exit;
  if nome = '' then
  begin
     ShowMessage('Nome do responsável pelo recebimento das carteirinhas não informado, operação cancelada');
     exit;
  end;
  ADOQuery1.Cancel;
  ADOQuery1.Edit;
  ADOQuery1dt_geracao.AsDateTime := dm.now;
  ADOQuery1nm_recepcao.AsString := nome;
  ADOQuery1.post;
  ADOQuery1.sql[1] := ' cd_emissao = ' + ADOQuery1cd_emissao.AsString;
  ADOQuery1.close;
  ADOQuery1.open;
  ADOQueryUsuLote.close;
  ADOQueryUsuLote.open;
  ADOQueryUsuLote.First;

  if MessageDlg('Deseja salvar Carteirinhas em formato DIGITAL?',mtConfirmation,[mbYes,mbNo],0)=mrYes then
    begin
    CartaoDigital:=True;
    if SaveDialog1.Execute then
      CaminhoArq:=SaveDialog1.FileName;
    
    end
  else
   CartaoDigital:=False;
 
  while not ADOQueryUsuLote.Eof do
  begin
     fmFrRelCarteirinha := TfmFrRelCarteirinha.create(self);
     fmFrRelCarteirinha.ADOQuery1.close;
     fmFrRelCarteirinha.ADOQuery1.sql[24] := ADOQueryUsuLotecd_usuario.AsString;
     fmFrRelCarteirinha.ADOQuery1.open;
     if fmFrRelCarteirinha.ADOQuery1.FieldbyName('EMPRESA').AsBoolean or fmFrRelCarteirinha.ADOQuery1.FieldbyName('DEBAUTOMATICO').AsBoolean  then
        fmFrRelCarteirinha.RLLabel1.Caption := 'CLIENTE PREFERENCIAL'
     else
     if fmFrRelCarteirinha.ADOQuery1.FieldbyName('FORMA_COBRANCA').AsInteger = 10 then
        fmFrRelCarteirinha.RLLabel1.Caption := 'CLIENTE VIP'
     else
        fmFrRelCarteirinha.RLLabel1.Caption := '';

     if fmFrRelCarteirinha.ADOQuery1.FieldbyName('EMPRESA').AsBoolean  then
        fmFrRelCarteirinha.RLDBText4.Caption := 'PLANO : (' + fmFrRelCarteirinha.ADOQuery1.FieldbyName('CONTRATANTE').AsString + ')-' + fmFrRelCarteirinha.ADOQuery1.FieldbyName('DESCRICAO').AsString
     else
        fmFrRelCarteirinha.RLDBText4.Caption := 'PLANO : ' + fmFrRelCarteirinha.ADOQuery1.FieldbyName('DESCRICAO').AsString;


     if CartaoDigital then
     begin
      fmFrRelCarteirinha.ExportarCarteirinhaDigital(CaminhoArq);
     end
     else
       fmFrRelCarteirinha.RLReport1.print;

     fmFrRelCarteirinha.Free;
     ADOQueryUsuLote.Next;
  end;
  if CartaoDigital then
    ShowMessage('Carteirinhas Salvas em: '+ExtractFilePath(CaminhoArq));


end;

procedure TFmEmissaoCarteirinha.ADOQueryUsuLoteAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
    if FmEmissaoCarteirinha.tag = 0 then
       Edit1.Text := dm.execmd('select nome from usuario where codigo_completo = ''' + ADOQueryUsuLotecd_usuario.AsString + '''','nome');
end;

procedure TFmEmissaoCarteirinha.DBEdit8Exit(Sender: TObject);
begin
  inherited;
  if ADOQuery1.State in [dsEdit,dsInsert] then
  begin
     ADOQuery1.post;
  end;

end;

procedure TFmEmissaoCarteirinha.BitBtn3Click(Sender: TObject);
begin
  inherited;

    if not ADOQuery1.Active or ADOQuery1cd_emissao.IsNull then
       exit;
    fMFrRelComprovatenEntregaCart := TfMFrRelComprovatenEntregaCart.create(senha.Empresa,'COMPROVANTE DE ENTREGA DE CARTEIRINHAS',self);
    fMFrRelComprovatenEntregaCart.ADOQuery1.close;
    fMFrRelComprovatenEntregaCart.ADOQuery1.sql[32] := ADOQuery1cd_emissao.AsString;
//    fMFrRelComprovatenEntregaCart.ADOQuery1.sql[32] := '17';
    fMFrRelComprovatenEntregaCart.ADOQuery1.open;
    fMFrRelComprovatenEntregaCart.RLReportH.PreviewModal;
    fMFrRelComprovatenEntregaCart.free;
end;

procedure TFmEmissaoCarteirinha.ADOQueryUsuLotecd_usuarioValidate(
  Sender: TField);
begin
  inherited;
  ADOQueryUsuLoteAfterScroll(ADOQueryUsuLote);
end;

procedure TFmEmissaoCarteirinha.FormShow(Sender: TObject);
begin
  inherited;
   ADOQuery1.Open;
   ADOQuery1.last;
   
end;

procedure TFmEmissaoCarteirinha.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  inherited;
   ADOQueryUsuLote.close;
   if not AdoQuery1cd_emissao.IsNull then
   begin
      ADOQueryUsuLote.sql[1] := AdoQuery1cd_emissao.AsString;
      ADOQueryUsuLote.open;
   end;

end;

end.
