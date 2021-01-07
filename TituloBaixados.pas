{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Manutenção dos Títulos Baixados                           }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit TituloBaixados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Variants,
  DBCtrls, Db, StdCtrls, Mask, DBTables, Grids, DBGrids, ExtCtrls, Buttons, DBIProcs;//, Biblio;

type
  TFormTituloBaixados = class(TForm)
    Panel1: TPanel;
    DBGridContratante: TDBGrid;
    DataSourceContratante: TDataSource;
    Panel3: TPanel;
    DBGridTituloReceber: TDBGrid;
    DBNavigatorContratante: TDBNavigator;
    Panel2: TPanel;
    DataSourceTitulo: TDataSource;
    Panel4: TPanel;
    Label1: TLabel;
    DBEditNome: TDBEdit;
    DBLookupComboBoxTipo: TDBLookupComboBox;
    DataSourceTipoDocumento: TDataSource;
    Label2: TLabel;
    DataSourceTipoCobranca: TDataSource;
    DBEditNumero: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBComboBoxDesdobramento: TDBComboBox;
    DBEditEmissao: TDBEdit;
    Label5: TLabel;
    DBEditValor: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEditVencimento: TDBEdit;
    DBLookupComboBoxCobranca: TDBLookupComboBox;
    Label8: TLabel;
    LabelProcura: TLabel;
    EditProcura: TEdit;
    ComboBoxProcura: TComboBox;
    BitBtnBaixar: TBitBtn;
    Label15: TLabel;
    BitBtnSair: TBitBtn;
    Label16: TLabel;
    DBEditNumeroBanco: TDBEdit;
    DBEditSaldo: TDBEdit;
    QueryContratante: TQuery;
    QueryTitulo: TQuery;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloDesdobramento: TStringField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloSaldo: TFloatField;
    QueryTipoDocumento: TQuery;
    QueryTipoCobranca: TQuery;
    QueryPreferencia: TQuery;
    QueryPreferenciaRegistro_Unico: TSmallintField;
    QueryPreferenciaUltimo_Lancamento: TIntegerField;
    QueryTituloTipo_Auxiliar: TStringField;
    QueryTituloCobranca_Auxiliar: TStringField;
    QueryTituloNumero_Banco: TStringField;
    SpeedButton1: TSpeedButton;
    EditProcuraBanco: TEdit;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloValor_Pago: TFloatField;
    QueryTituloDesconto: TFloatField;
    QueryTituloJuros: TFloatField;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryTituloOperador: TSmallintField;
    QueryTituloTipo_Documento: TIntegerField;
    QueryTituloTipo_Cobranca: TIntegerField;
    QueryTituloOrcamento: TIntegerField;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    PanelBaixa: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BitBtnCancelar: TBitBtn;
    DBEditValorPagamento: TDBEdit;
    DBEditJuros: TDBEdit;
    DBEditDesconto: TDBEdit;
    EditSaldoRestante: TEdit;
    DBEditSaldo2: TDBEdit;
    QueryPreferenciaTipo_Cobranca: TSmallintField;
    Label17: TLabel;
    EditOperador: TEdit;
    QueryOperador: TQuery;
    QueryOperadorCodigo: TIntegerField;
    QueryOperadorApelido: TStringField;
    DBEditDataPagamento: TDBEdit;
    SpeedButtonLimpaData: TSpeedButton;
    BitBtnExtorno: TBitBtn;
    QueryTituloCodigo_Usuario: TIntegerField;
    QueryTituloParcela: TSmallintField;
    QueryTituloObservacoes: TStringField;
    QueryTituloStatus_Orcamento: TSmallintField;
    QueryTituloStatus_Ocorrencia: TSmallintField;
    QueryTituloNro_cheque: TStringField;
    QueryTituloBanco_Cheque: TStringField;
    QueryTituloNro_ContaCheque: TStringField;
    GroupBoxCheque: TGroupBox;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEditBco: TDBEdit;
    DBEditNumeroConta: TDBEdit;
    DBEditConta: TDBEdit;
    DBEditAg: TDBEdit;
    QueryTituloAgencia_Cheque: TStringField;
    DBCheckBoxDeposito: TDBCheckBox;
    QueryTituloDeposito: TBooleanField;
    QueryOrcamentos: TQuery;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosStatus: TSmallintField;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    QueryTituloTipo_Pagamento: TIntegerField;
    BitBtn1: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label19: TLabel;
    Label25: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    QueryTiposPgto: TQuery;
    DataSourceTiposPgto: TDataSource;
    BitBtnCanRec: TBitBtn;
    PanelIr: TPanel;
    CheckBoxEmissIR: TCheckBox;
    QueryTitulodt_pagDentista: TDateTimeField;
    Label30: TLabel;
    LabelOpUltAlt: TLabel;
    QueryTitulocd_usu_alteracao: TIntegerField;
    Panel6: TPanel;
    BitBtnLogAlt: TBitBtn;
    DBNavigatorTitulo: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure EditProcuraEnter(Sender: TObject);
    procedure TableTituloAfterInsert(DataSet: TDataSet);
    procedure TableTituloAfterPost(DataSet: TDataSet);
    procedure ComboBoxProcuraChange(Sender: TObject);
    procedure EditProcuraChange(Sender: TObject);
    procedure DBEditVencimentoExit(Sender: TObject);
    procedure DBLookupComboBoxTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnBaixarClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditValorExit(Sender: TObject);
    procedure DBEditValorPagamentoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TableTituloBeforeCancel(DataSet: TDataSet);
    procedure DataSourceContratanteDataChange(Sender: TObject;
      Field: TField);
    procedure QueryTituloAfterPost(DataSet: TDataSet);
    procedure QueryTituloAfterInsert(DataSet: TDataSet);
    procedure QueryTituloCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditProcuraBancoExit(Sender: TObject);
    procedure EditProcuraExit(Sender: TObject);
    procedure DataSourceTituloDataChange(Sender: TObject; Field: TField);
    procedure SpeedButtonLimpaDataClick(Sender: TObject);
    procedure BitBtnExtornoClick(Sender: TObject);
    procedure DBCheckBoxDepositoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure QueryTituloBeforeEdit(DataSet: TDataSet);
    procedure QueryTituloBeforePost(DataSet: TDataSet);
    procedure BitBtnCanRecClick(Sender: TObject);
    procedure QueryTituloAfterScroll(DataSet: TDataSet);
    procedure QueryTituloAfterOpen(DataSet: TDataSet);
    procedure BitBtnLogAltClick(Sender: TObject);
  private
     VDtBaixa : Tdate;
  public
    { Public declarations }
  end;

var
  FormTituloBaixados: TFormTituloBaixados;
  DataBaixa : TDateTime;
  Numero_Titulo : Integer;
  Desdobramento : String[1];

implementation

{$R *.DFM}

uses Senha, Seletor, udm, PesquisaContratante, ReimpressaoRecibo,
  fmLogReceber;

procedure TFormTituloBaixados.EditProcuraEnter(Sender: TObject);
begin
     EditProcura.Text := '';
end;

procedure TFormTituloBaixados.FormCreate(Sender: TObject);
begin
     QueryContratante.Open;
     QueryTitulo.Open;
     QueryTipoDocumento.Open;
     QueryTipoCobranca.Open;
     QueryTiposPgto.open;
     QueryPreferencia.Open;
     ComboBoxProcura.ItemIndex := 0;

     Top := 90;
     Left := 49;
end;

procedure TFormTituloBaixados.TableTituloAfterInsert(DataSet: TDataSet);
begin
     QueryTitulo['Codigo_Contratante'] := QueryContratante['Codigo'];
     QueryTitulo['Emissao'] := dm.Date;
     QueryTitulo['Numero_Titulo'] := QueryPreferenciaUltimo_Lancamento.asInteger + 1;
     QueryTituloTipo_Documento.FocusControl;
end;

procedure TFormTituloBaixados.TableTituloAfterPost(DataSet: TDataSet);
begin
     QueryPreferencia.Edit;
     QueryPreferenciaUltimo_Lancamento.asInteger := QueryPreferenciaUltimo_Lancamento.asInteger + 1;
     try
       QueryPreferencia.Post
     except
       begin
         ShowMessage('Erro na Gravação da Tabela de Preferências');
         QueryPreferencia.Cancel;
       end;
     end;
     DBNavigatorTitulo.Setfocus;
end;

procedure TFormTituloBaixados.ComboBoxProcuraChange(Sender: TObject);
begin
     if ComboBoxProcura.ItemIndex = 0 then
        begin
//             TableCliente.IndexName := '';
//             TableCliente.First;
             EditProcura.Width := 55;
             EditProcura.MaxLength := 5;
             LabelProcura.Caption := 'Código';
        end
     else
         begin
//              TableCliente.IndexName := 'Chave_Nome';
//              TableCliente.First;
              EditProcura.Width := 170;
              EditProcura.MaxLength := 0;
              LabelProcura.Caption := 'Nome';
         end;
     EditProcura.Setfocus;
end;

procedure TFormTituloBaixados.EditProcuraChange(Sender: TObject);
begin
{//     TableCliente.FindNearest([EditProcura.Text]);
     if EditProcura.Text = '' then exit;

{     if (ComboBoxProcura.Text = 'Código') then
        if QueryContratante.Locate('Codigo', EditProcura.Text, [loCaseInsensitive, loPartialKey]) then Exit;}

{     if ComboBoxProcura.Text = 'Código' then
        begin
          with QueryContratante do
             begin
               Close;
               SQL[1] := 'where Codigo >= ''' + EditProcura.Text + '''';
               SQL[2] := 'Order by Codigo';
               Open;
             end;
        end;

     if ComboBoxProcura.Text = 'Nome' then
        begin
          with QueryContratante do
             begin
               Close;
               SQL[1] := 'where Nome >= ''' + EditProcura.Text + '''';
               SQL[2] := 'Order by Nome';
               Open;
             end;
        end;}
end;

procedure TFormTituloBaixados.DBEditVencimentoExit(Sender: TObject);
begin
     if QueryTituloData_Vencimento.asDateTime < QueryTituloData_Emissao.asDateTime then
        begin
          ShowMessage('O Vencimento não pode ser menor que a Emissão !!!');
          DBEditVencimento.SetFocus;
        end;
end;


procedure TFormTituloBaixados.DBLookupComboBoxTipoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormTituloBaixados.BitBtnBaixarClick(Sender: TObject);
begin
     if QueryTituloNumero_Titulo.asString = '' then
        exit;

     QueryTitulo.Edit;

     PanelBaixa.Visible := True;
     EditSaldoRestante.Text := '';

     DBEditDataPagamento.SetFocus;
end;

procedure TFormTituloBaixados.BitBtnCancelarClick(Sender: TObject);
begin
     QueryTitulo.Cancel;
     PanelBaixa.Visible := False;
end;

procedure TFormTituloBaixados.EditProcuraKeyPress(Sender: TObject; var Key: Char);
begin
     if ComboBoxProcura.ItemIndex = 0 then
        if not (key in ['0'..'9', #13, #8]) then
           key := #0;
end;

procedure TFormTituloBaixados.DBEditValorExit(Sender: TObject);
begin
     if QueryTituloSaldo.asString = '' then
        QueryTituloSaldo.asCurrency := QueryTituloValor.asCurrency;
end;

procedure TFormTituloBaixados.DBEditValorPagamentoEnter(Sender: TObject);
begin
{     QueryTituloValor_Pago.asCurrency := QueryTituloSaldo.asCurrency - QueryTituloDesconto.asCurrency
            + QueryTituloJuros.asCurrency;}
end;

procedure TFormTituloBaixados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryContratante.Close;
     QueryTitulo.Close;
     QueryPreferencia.Close;
     QueryOperador.Close;
     Action := cafree;
     Seletor.FormSeletor.SetFocus;
end;

procedure TFormTituloBaixados.TableTituloBeforeCancel(DataSet: TDataSet);
begin
     QueryPreferencia.Cancel;
end;

procedure TFormTituloBaixados.DataSourceContratanteDataChange(
  Sender: TObject; Field: TField);
begin
     if QueryContratante.State in [dsInsert] then
        exit;
     if QueryContratante.RecordCount = 0 then
        exit;

     with QueryTitulo do
       begin
         Close;
         SQL[1] := ('where Codigo_Contratante = ' + QueryContratanteCodigo.asString);
         Open;
       end;
end;

procedure TFormTituloBaixados.QueryTituloAfterPost(DataSet: TDataSet);
begin
     with QueryTitulo do
       begin
          Numero_Titulo := QueryTituloNumero_Titulo.asInteger;
          Desdobramento := QueryTituloDesdobramento.asString;
          Close;
          Open;
          Locate('Numero_Titulo; Desdobramento',
             VarArrayOf([Numero_Titulo, Desdobramento]), [loCaseInsensitive]);
       end;
end;

procedure TFormTituloBaixados.QueryTituloAfterInsert(DataSet: TDataSet);
begin
        QueryTituloCodigo_Contratante.asInteger := QueryContratanteCodigo.asInteger;
        QueryTituloData_Emissao.asDateTime := dm.Date;
end;

procedure TFormTituloBaixados.QueryTituloCalcFields(DataSet: TDataSet);
begin
//        QueryTituloTipo_Auxiliar.asString := QueryTipoDocumentoDescricao.asString;
//        QueryTituloCobranca_Auxiliar.asString := QueryTipoCobrancaDescricao.asString;
end;

procedure TFormTituloBaixados.SpeedButton1Click(Sender: TObject);
begin
     EditProcuraBanco.Visible := True;
     EditProcuraBanco.Text := '';
     EditProcuraBanco.SetFocus;
end;

procedure TFormTituloBaixados.EditProcuraBancoExit(Sender: TObject);
begin
     with QueryTitulo do
       begin
         Close;
         SQL[1] := 'where Numero_Banco = ''' + EditProcuraBanco.Text + '''';
         Open;
         if RecordCount = 0 then
            begin
              ShowMessage('Título Não Encontrado !!! [ENTER]');
              EditProcuraBanco.Visible := False;
              exit;
            end;
       end;
     EditProcuraBanco.Visible := False;
     BitBtnBaixar.SetFocus;
end;

procedure TFormTituloBaixados.EditProcuraExit(Sender: TObject);
begin
     if EditProcura.Text = '' then exit;

     if ComboBoxProcura.Text = 'Código' then
        begin
          with QueryContratante do
             begin
               Close;
               SQL[1] := 'where Codigo >= ''' + EditProcura.Text + '''';
               SQL[2] := 'Order by Codigo';
               Open;
             end;
        end;

     if ComboBoxProcura.Text = 'Nome' then
        begin
          with QueryContratante do
             begin
               Close;
               SQL[1] := 'where Nome >= ''' + EditProcura.Text + '''';
               SQL[2] := 'Order by Nome';
               Open;
             end;
        end;

     DBGridContratante.SetFocus;   
end;

procedure TFormTituloBaixados.DataSourceTituloDataChange(Sender: TObject;
  Field: TField);
begin
     if QueryTituloOperador.asString = '' then exit;

     with QueryOperador do
       begin
         Close;
         ParamByName('Operador').asInteger := QueryTituloOperador.asInteger;
         Open;
       end;

     EditOperador.Text := QueryOperadorApelido.asString;
end;

procedure TFormTituloBaixados.SpeedButtonLimpaDataClick(Sender: TObject);
begin
     if QueryTitulo.state in [dsbrowse] then
        begin
          QueryTitulo.Edit;
          QueryTituloData_Pagamento.asString := '';
        end;
end;

procedure TFormTituloBaixados.BitBtnExtornoClick(Sender: TObject);
begin
     if QueryTituloNumero_Titulo.asString = '' then
        exit;
     if dm.ExecutaComando('select r.nr_recibo r from i_recibo i , recibo r where i.nr_recibo = r.nr_recibo and r.status <> ''C'' and i.numero_titulo = ' +  QueryTituloNumero_Titulo.asString,'r') <> '' then
     begin
        ShowMessage('Existe Recibo Nº ' + dm.QueryGlobal.FieldByName('r').AsString + ' para este título, você deve cancelar o recibo antes de extornar o título');
        exit;
     end;

     if MessageDlg('Deseja Realmente Extornar a Baixo do Título ? ', mtConfirmation,
        [mbYes, mbNo], 0) = mrNo then
           exit;
     if ((QueryTituloDesdobramento.AsString = 'T') and (QueryTituloOrcamento.AsString <> '')) then
       begin
          with QueryOrcamentos do
            begin
              close;
              parambyname('Orcamento').asInteger := QueryTituloOrcamento.AsInteger;
              open;
              if recordcount <> 0 then begin
                 edit;
//                 QueryOrcamentosStatus.AsInteger := 9;
                 QueryOrcamentosStatus_Pagamento.Value := 3;
                 post;
              end;
            end;
       end;
     QueryTitulo.Edit;
     QueryTituloSaldo.asCurrency        := QueryTituloValor.asCurrency;
     QueryTituloData_Pagamento.asString := '';
     QueryTituloOperador.asInteger      := Senha.Codigo_Operador;
     QueryTituloValor_Pago.AsString     := '';
     QueryTituloJuros.AsString          := '';
     QueryTituloDesconto.AsString       := '';
     QueryTituloTipo_Pagamento.AsInteger := 1;
     QueryTituloTipo_Cobranca.AsString := dm.ExecutaComando('select Forma_Cobranca c from contratante where codigo = ' + QueryTituloCodigo_Contratante.AsString,'c');  
     try
       VDtBaixa := 0;
       QueryTitulo.Post
     except
       begin
         ShowMessage('Erro Gravação da Tabela de Títulos Abertos');
         QueryTitulo.Cancel;
       end;
     end;
end;

procedure TFormTituloBaixados.DBCheckBoxDepositoExit(Sender: TObject);
begin
     if QueryTitulo.State in [dsbrowse] then
        exit;

     if MessageDlg('Dados Ok ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        exit
     else
       begin
         try
          QueryTitulo.Post
         except
           begin
             ShowMessage('Erro Gravação da Tabela de Títulos !!!');
             QueryTitulo.Cancel;
           end;
         end;
       end;
     BitBtnCancelarClick(Sender);
end;

procedure TFormTituloBaixados.FormShow(Sender: TObject);
begin
   BitBtnCanRec.Enabled :=  Dm.VerifPermissao('0','0','0','70');
   BitBtnBaixar.enabled := Dm.VerifPermissao('3','1','16','119');
{   dm.ExecutaComando('select count(*) q from permissoes where codigo_operador = ' + IntToStr(Senha.Codigo_Operador) +
                     ' and codigo_grupo = 3 and codigo_procedimento = 1 and codigo_subprocedimento = 16','q') = '1';}
  BitBtnExtorno.Enabled := BitBtnBaixar.enabled;
  BitBtnLogAlt.Enabled := dm.VerifPermissao('0','0','0','148');
end;

procedure TFormTituloBaixados.BitBtn1Click(Sender: TObject);
begin
   EditProcura.SetFocus;
   FormPesquisaContratante := TFormPesquisaContratante.create(self);
   FormPesquisaContratante.ShowModal;
   EditProcura.Text := FormPesquisaContratante.QueryContratanteCodigo.AsString;
   EditProcuraExit(Sender);
   FormPesquisaContratante.free;
end;

procedure TFormTituloBaixados.DBLookupComboBox2Exit(Sender: TObject);
begin
     if QueryTitulo.State in [dsbrowse] then
        exit;

     if MessageDlg('Dados Ok ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        exit
     else
       begin
         try
          QueryTitulo.Post
         except
           begin
             ShowMessage('Erro Gravação da Tabela de Títulos !!!');
             QueryTitulo.Cancel;
           end;
         end;
       end;
end;

procedure TFormTituloBaixados.QueryTituloBeforeEdit(DataSet: TDataSet);
begin
   VDtBaixa := QueryTituloData_Pagamento.AsDateTime;
end;

procedure TFormTituloBaixados.QueryTituloBeforePost(DataSet: TDataSet);
begin
   if dm.execmd('select count(*) q from permissoes where codigo_grupo = 3 and codigo_procedimento = 14 and codigo_subprocedimento = 10 and codigo_operador = ' + IntToStr(Senha.Codigo_Operador),'q') = '0' then
     if VDtBaixa > QueryTituloData_Pagamento.AsDateTime then
     begin
        ShowMessage('Operação cancelada, você não tem permissão para retroagir a data da baixa do título !');
        SysUtils.abort;
     end;
   QueryTitulocd_usu_alteracao.AsInteger := senha.Codigo_Operador;     
end;

procedure TFormTituloBaixados.BitBtnCanRecClick(Sender: TObject);
begin
   FmReimpressaoRec := TFmReimpressaoRec.create(self);
   FmReimpressaoRec.Caption := 'Cancelamento de Recibo';
   FmReimpressaoRec.BitBtn4.Visible := True;
   FmReimpressaoRec.EditContr.text := QueryContratanteCodigo.AsString;
   FmReimpressaoRec.BitBtn1Click(Sender);
   FmReimpressaoRec.showModal;
   FmReimpressaoRec.Free;
end;

procedure TFormTituloBaixados.QueryTituloAfterScroll(DataSet: TDataSet);
begin
   if (QueryTituloTipo_Documento.AsInteger in [5,2]) then // 5 manutenção 2 orçamento
   begin
      PanelIr.visible := true;
      PanelIr.Color := clRed;
      CheckBoxEmissIR.Checked := dm.execmd('select count(*) qt from orcamento where lg_ir = 1 and numero = ' + QueryTituloOrcamento.AsString,'qt') <> '0';
   end
   else
      PanelIr.visible := false;
  if not QueryTituloNumero_Titulo.IsNull then
     LabelOpUltAlt.Caption := dm.execmd('select apelido from operador where codigo = ''' + QueryTitulocd_usu_alteracao.AsString + '''','apelido');    

end;

procedure TFormTituloBaixados.QueryTituloAfterOpen(DataSet: TDataSet);
begin
   LabelOpUltAlt.Caption := '';
end;

procedure TFormTituloBaixados.BitBtnLogAltClick(Sender: TObject);
begin
   FmLogAltReceber := TFmLogAltReceber.create(self);
   FmLogAltReceber.ADOQuery1.close;
   FmLogAltReceber.ADOQuery1.sql[6] := '''' + QueryTituloNumero_Titulo.AsString + '''';
   FmLogAltReceber.ADOQuery1.sql[8] := '''' + QueryTituloDesdobramento.AsString + '''';
   FmLogAltReceber.ADOQuery1.Open;
   FmLogAltReceber.ShowModal;
   FmLogAltReceber.free;

end;

end.
