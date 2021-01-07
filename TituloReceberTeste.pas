{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Manutenção dos Títulos em Aberto                          }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit TituloReceber;   

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Variants,
  DBCtrls, Db, StdCtrls, Mask, DBTables, Grids, DBGrids, ExtCtrls, Buttons, DBIProcs;//, Biblio;

type
  TFormTituloReceber = class(TForm)
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
    DBNavigatorTitulo: TDBNavigator;
    LabelProcura: TLabel;
    EditProcura: TEdit;
    ComboBoxProcura: TComboBox;
    BitBtnBaixar: TBitBtn;
    BitBtnCancela: TBitBtn;
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
    QueryCancelado: TQuery;
    QueryCanceladoData_Cancelamento: TDateTimeField;
    QueryCanceladoNumero_Titulo: TIntegerField;
    QueryCanceladoDesdobramento: TStringField;
    QueryCanceladoCodigo_Contratante: TIntegerField;
    QueryCanceladoData_Emissao: TDateTimeField;
    QueryCanceladoData_Vencimento: TDateTimeField;
    QueryCanceladoValor: TFloatField;
    QueryCanceladoSaldo: TFloatField;
    QueryPreferencia: TQuery;
    QueryPreferenciaRegistro_Unico: TSmallintField;
    QueryPreferenciaUltimo_Lancamento: TIntegerField;
    QueryTituloTipo_Auxiliar: TStringField;
    QueryTituloCobranca_Auxiliar: TStringField;
    QueryTituloNumero_Banco: TStringField;
    QueryCanceladoNumero_Banco: TStringField;
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
    QueryCanceladoTipo_Documento: TStringField;
    QueryCanceladoTipo_Cobranca: TStringField;
    PanelBaixa: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BitBtnCancelar: TBitBtn;
    BitBtnConfirma: TBitBtn;
    MaskEditDataBaixa: TMaskEdit;
    DBEditValorPagamento: TDBEdit;
    DBEditJuros: TDBEdit;
    DBEditDesconto: TDBEdit;
    EditSaldoRestante: TEdit;
    DBEditSaldo2: TDBEdit;
    QueryPreferenciaTipo_Cobranca: TSmallintField;
    Label18: TLabel;
    DBEditObservacoes: TDBEdit;
    QueryTituloParcela: TSmallintField;
    QueryCanceladoOperador: TIntegerField;
    QueryTituloCodigo_Usuario: TIntegerField;
    QueryTituloStatus_Orcamento: TSmallintField;
    QueryTituloStatus_Ocorrencia: TSmallintField;
    QueryTituloNro_cheque: TStringField;
    QueryTituloBanco_Cheque: TStringField;
    QueryTituloNro_ContaCheque: TStringField;
    GroupBoxCheque: TGroupBox;
    Label19: TLabel;
    DBEditBco_Cheque: TDBEdit;
    Label20: TLabel;
    DBEditNro_Cheque: TDBEdit;
    Label21: TLabel;
    DBEditConta_Cheque: TDBEdit;
    DBEditAg: TDBEdit;
    Label22: TLabel;
    QueryTituloAgencia_Cheque: TStringField;
    QueryTituloDeposito: TBooleanField;
    DBCheckBoxDeposito: TDBCheckBox;
    QueryTituloTipo_Pagamento: TIntegerField;
    Label17: TLabel;
    DBLookupComboBoxPgto: TDBLookupComboBox;
    QueryTiposPgto: TQuery;
    QueryTiposPgtoId_TipoPgto: TIntegerField;
    QueryTiposPgtoDescricao_TipoPgto: TStringField;
    DataSourceTiposPgto: TDataSource;
    QueryOrcamentos: TQuery;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosStatus: TSmallintField;
    QueryCanceladoMotivo_Cancelamento: TStringField;
    PanelCancel: TPanel;
    EditMotivo: TEdit;
    ButtonOk: TButton;
    ButtonCancel: TButton;
    PanelCancelTitle: TPanel;
    PanelMenssagemParCan: TPanel;
    PainelTitParCan: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    LabelMenssagem: TLabel;
    ButtonFecharP: TButton;
    BitBtnCadastro: TBitBtn;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    sp_calcJuros: TStoredProc;
    Panel5: TPanel;
    BitBtn2: TBitBtn;
    Label25: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QueryTituloObservacoes: TStringField;
    Label26: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    PanelIr: TPanel;
    CheckBoxEmissIR: TCheckBox;
    EditVrRecebido: TEdit;
    EditVrDevido: TEdit;
    EditTroco: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Button1: TButton;
    QueryTiposPgtopermite_data_futura: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure EditProcuraEnter(Sender: TObject);
    procedure TableTituloAfterInsert(DataSet: TDataSet);
    procedure TableTituloAfterPost(DataSet: TDataSet);
    procedure ComboBoxProcuraChange(Sender: TObject);
    procedure DBEditVencimentoExit(Sender: TObject);
    procedure DBLookupComboBoxTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnBaixarClick(Sender: TObject);
    procedure BitBtnConfirmaClick(Sender: TObject);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnCancelaClick(Sender: TObject);
    procedure DBEditValorExit(Sender: TObject);
    procedure DBEditValorPagamentoEnter(Sender: TObject);
    procedure DBEditValorPagamentoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TableTituloBeforeCancel(DataSet: TDataSet);
    procedure DataSourceContratanteDataChange(Sender: TObject;
      Field: TField);
    procedure QueryTituloAfterPost(DataSet: TDataSet);
    procedure QueryTituloAfterInsert(DataSet: TDataSet);
    procedure QueryTituloCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditProcuraBancoExit(Sender: TObject);
    procedure MaskEditDataBaixaExit(Sender: TObject);
    procedure EditProcuraExit(Sender: TObject);
    procedure DBEditObservacoesExit(Sender: TObject);
    procedure ButtonOkClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure ButtonFecharPClick(Sender: TObject);
    procedure BitBtnCadastroClick(Sender: TObject);
    procedure QueryTituloBeforeDelete(DataSet: TDataSet);
    procedure DBGridContratanteDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure QueryTituloBeforePost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure QueryTituloAfterScroll(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure QueryContratanteAfterScroll(DataSet: TDataSet);
    procedure EditVrRecebidoKeyPress(Sender: TObject; var Key: Char);
  private

       procedure CalculaTroco();

  public
    { Public declarations }
  end;

var
  FormTituloReceber: TFormTituloReceber;
  DataBaixa : TDateTime;
  Numero_Titulo : Integer;
  Desdobramento : String[1];

implementation

{$R *.DFM}

uses Senha, Seletor, Contratante, udm, Fundo, PesqTitBaixadoSemRecibo,
  ReimpressaoRecibo , PesquisaContratante, SimulacaoPgtit;

procedure TFormTituloReceber.EditProcuraEnter(Sender: TObject);
begin
     EditProcura.Text := '';
end;

procedure TFormTituloReceber.FormCreate(Sender: TObject);
begin
     BitBtnCancela.Enabled := dm.VerifPermissao('BitBtnCancela');
     QueryContratante.Open;
     QueryTitulo.Open;
     QueryTipoDocumento.Open;
     QueryTipoCobranca.Open;
     QueryPreferencia.Open;
     QueryCancelado.Open;
     QueryTiposPgto.Open;
     ComboBoxProcura.ItemIndex := 0;

     Top := 90;
     Left := 49;
     DataBaixa := dm.Now;
end;

procedure TFormTituloReceber.TableTituloAfterInsert(DataSet: TDataSet);
begin
     QueryTitulo['Codigo_Contratante'] := QueryContratante['Codigo'];
     QueryTitulo['Emissao'] := dm.Date;
     QueryTitulo['Numero_Titulo'] := QueryPreferenciaUltimo_Lancamento.asInteger + 1;
     QueryTituloTipo_Documento.FocusControl;
end;

procedure TFormTituloReceber.TableTituloAfterPost(DataSet: TDataSet);
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

procedure TFormTituloReceber.ComboBoxProcuraChange(Sender: TObject);
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

procedure TFormTituloReceber.DBEditVencimentoExit(Sender: TObject);
begin
     if QueryTituloData_Vencimento.asDateTime < QueryTituloData_Emissao.asDateTime then
        begin
          ShowMessage('O Vencimento não pode ser menor que a Emissão !!!');
          DBEditVencimento.SetFocus;
        end;
end;


procedure TFormTituloReceber.DBLookupComboBoxTipoKeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);
  begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormTituloReceber.BitBtnBaixarClick(Sender: TObject);
begin
//Cancelado
    if QueryTituloStatus_Orcamento.AsInteger = 4 then
    Begin
      PanelMenssagemParCan.Visible := true;
      LabelMenssagem.Caption := 'Orçamento Paralizado';
    End
    Else If QueryTituloStatus_Orcamento.AsInteger  = 7 then
    Begin
      PanelMenssagemParCan.Visible := true;
      LabelMenssagem.Caption := 'Orçamento Cancelado';
    End;

//Antiga
     if QueryTituloNumero_Titulo.asString = '' then
        exit;

     QueryTitulo.Edit;
     QueryTitulotipo_pagamento.Clear;
     QueryTituloTipo_Cobranca.clear;
     MaskEditDataBaixa.Text := DateToStr(DataBaixa);
     PanelBaixa.Visible := True;
     EditSaldoRestante.Text := '';
     MaskEditDataBaixa.SetFocus;
end;

procedure TFormTituloReceber.BitBtnConfirmaClick(Sender: TObject);
var //saldo : currency;
    VNrTitulo : string;
    VDesd : string[2];
    NrRecibo : string[10];
begin
     if QueryTitulo.State <> DsEdit then
        exit;
     if QueryTitulotipo_pagamento.IsNull then
     begin
        ShowMessage('É necessario informar o tipo de pagamento');
        DBLookupComboBox1.SetFocus;
        Exit;
     end;
     DataBaixa := StrToDate(MaskEditDataBaixa.Text);
     if DataBaixa < dm.Date() then
     begin
         showmessage('Data do pagamento inferior a data atual do sistema !');
         MaskEditDataBaixa.SetFocus;
         exit;
     end
     else
     if (DataBaixa > dm.date()) and (QueryTiposPgtopermite_data_futura.AsString = 'N') then
     begin
        ShowMessage('Para o tipo de pagamento ' + QueryTiposPgtoDescricao_TipoPgto.AsString + ' não é permitido informar data de pagamento superior a data atual');
        exit;
     end;
     
     QueryTituloSaldo.asCurrency := (QueryTituloSaldo.asCurrency + QueryTituloJuros.asCurrency)
         - (QueryTituloValor_Pago.asCurrency + QueryTituloDesconto.asCurrency);
     QueryTituloData_Pagamento.AsDateTime := DataBaixa;
     QueryTituloOperador.asInteger := Senha.Codigo_Operador;
     try
      VNrTitulo := QueryTituloNumero_Titulo.AsString;
      VDesd := QueryTituloDesdobramento.AsString;
      QueryTitulo.Post
     except
       begin
         ShowMessage('Erro Gravação da Tabela de Títulos Abertos');
         QueryTitulo.Cancel;
         Exit;
       end;
     end;
//     QueryTitulo.Refresh;
     if QueryTituloDesdobramento.AsString = 'T' then
       begin
          with QueryOrcamentos do
            begin
              close;
              parambyname('Orcamento').asInteger := QueryTituloOrcamento.AsInteger;
              open;
              if recordcount <> 0 then begin
                 edit;
//                 QueryOrcamentosStatus.AsInteger := 3;
                 QueryOrcamentosStatus_Pagamento.Value := 1;
                 post;
              end;
            end;
       end;
     PanelBaixa.Visible := False;
     if (dm.GetParam('EMTREC') = 'S') and
        (application.MessageBox('Deseja imprimir o recibo agora?','Confirmação de Recibo', MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk) then
     begin
        FormFundo.DatabaseMultiOdonto.StartTransaction;
        try
           NrRecibo := Dm.EmiteRecibo(senha.apelido);
           Dm.IncluiItemRecibo(NrRecibo,VNrTitulo,VDesd);
           FormFundo.DatabaseMultiOdonto.commit;
        except
           on E: Exception do
           begin
              if FormFundo.DatabaseMultiOdonto.InTransaction then
                 FormFundo.DatabaseMultiOdonto.Rollback;
              ShowMessage('Ocorreu um erro ao tentar gerar o recibo , ERRO : ' + e.message);
              if (dm.GetParam('GRALOG') = 'S') then
                 Dm.GravaLog('FormTituloReceber','BitBtnConfirmaClick',e.message);
              exit;
           end;
        end;
        Dm.ImprimeRecibo(NrRecibo);
     end;
     CalculaTroco();
end;

procedure TFormTituloReceber.CalculaTroco();
var VrDevido,VrRecebido : real;
begin
    EditTroco.Clear;
    EditVrDevido.Clear;
    if not QueryContratanteCodigo.IsNull then
    begin
       try
          dm.execmd('set dateformat dmy select isnull(sum(valor_pago),0) vr from Receber r, registro_baixa rb where r.Codigo_Contratante = ' +
              QueryContratanteCodigo.AsString + ' and rb.dtbaixa between convert(char(10),getdate(),103) and convert(char(10),getdate(), 103) + '' 23:59''' +
          '  and rb.numero_titulo = r.numero_titulo and rb.desdobramento = r.desdobramento and r.Data_Pagamento is not null and not exists ' +
          ' (select * from i_recibo i, recibo rec where  rec.nr_recibo   = i.nr_recibo and rec.status      = ''A''  and i.numero_titulo = r.numero_titulo ' +
          ' and i.desdobramento = r.desdobramento)','vr');
          VrDevido :=  Dm.QueryGlobal.FieldByName('vr').AsCurrency;
          EditVrDevido.Text := FormatFloat('###,###,##0.00', VrDevido);
          if EditVrRecebido.Text <> '' then
          begin
             VrRecebido := StrToCurr(EditVrRecebido.Text);
             if (VrRecebido - VrDevido) < 0 then

                EditTroco.Font.Color := clRed
             else
               EditTroco.Font.Color := clBlue;

             EditTroco.Text := FormatFloat('###,###,##0.00', VrRecebido - VrDevido);
          end
          else
          begin
             EditTroco.Text := FormatFloat('###,###,##0.00', VrDevido);
             EditTroco.Font.Color := clRed;
          end;
       except
       on E: Exception do
       begin
          EditTroco.Clear;
          EditVrRecebido.Clear;
          EditVrDevido.clear;
          ShowMessage('Não foi possível calcular o valor, verifique o valor informado, mensagem de erro : ' + e.message);
       end;
       end;
    end
    else
    begin
       EditVrRecebido.Clear;
    end;



end;

procedure TFormTituloReceber.BitBtnCancelarClick(Sender: TObject);
begin
     QueryTitulo.Cancel;
     PanelBaixa.Visible := False;
end;

procedure TFormTituloReceber.EditProcuraKeyPress(Sender: TObject; var Key: Char);
begin
     if ComboBoxProcura.ItemIndex = 0 then
        if not (key in ['0'..'9', #13, #8]) then
           key := #0;
end;

procedure TFormTituloReceber.BitBtnCancelaClick(Sender: TObject);
begin
   if QueryTituloNumero_Titulo.asString = '' then
      exit;

   if MessageDlg('Deseja Realmente Excluir o Título ? ', mtConfirmation,
      [mbYes, mbNo], 0) = mrNo then
         exit;

   PanelCancel.Visible := True;
   EditMotivo.Text := '';
   EditMotivo.SetFocus;
end;

procedure TFormTituloReceber.DBEditValorExit(Sender: TObject);
begin
     if QueryTituloSaldo.asString = '' then
        QueryTituloSaldo.asCurrency := QueryTituloValor.asCurrency;
end;

procedure TFormTituloReceber.DBEditValorPagamentoEnter(Sender: TObject);
begin
     QueryTituloValor_Pago.asCurrency := QueryTituloSaldo.asCurrency - QueryTituloDesconto.asCurrency
            + QueryTituloJuros.asCurrency;
end;

procedure TFormTituloReceber.DBEditValorPagamentoExit(Sender: TObject);
var
SaldoRestante : Currency;
begin
     if QueryTituloSaldo.asCurrency > QueryTituloValor_Pago.asCurrency then
        SaldoRestante := (QueryTituloSaldo.asCurrency + QueryTituloJuros.asCurrency)
                       - (QueryTituloValor_Pago.asCurrency + QueryTituloDesconto.asCurrency)
     else
        SaldoRestante := 0;
     EditSaldoRestante.Text := FormatFloat( 'R$' + '###,###,###,##0.00', SaldoRestante);
end;

procedure TFormTituloReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryContratante.Close;
     QueryTitulo.Close;
     QueryCancelado.Close;
     QueryPreferencia.Close;

     QueryTiposPgto.Close;     
     Action := cafree;
     Seletor.FormSeletor.SetFocus;
end;

procedure TFormTituloReceber.TableTituloBeforeCancel(DataSet: TDataSet);
begin
     QueryPreferencia.Cancel;
end;

procedure TFormTituloReceber.DataSourceContratanteDataChange(
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

procedure TFormTituloReceber.QueryTituloAfterPost(DataSet: TDataSet);
begin
     with QueryTitulo do
       begin
          Numero_Titulo := QueryTituloCodigo_Contratante.asInteger;
          Close;
          SQL[1] := 'where Codigo_Contratante = ' + IntToStr(Numero_titulo);
          Open;
       end;
end;

procedure TFormTituloReceber.QueryTituloAfterInsert(DataSet: TDataSet);
begin
     QueryTituloCodigo_Contratante.asInteger := QueryContratanteCodigo.asInteger;
     QueryTituloData_Emissao.asDateTime := dm.Date;
     QueryTituloValor.asCurrency := 0;
     QueryTituloSaldo.asCurrency := 0;
end;

procedure TFormTituloReceber.QueryTituloCalcFields(DataSet: TDataSet);
begin
//        QueryTituloTipo_Auxiliar.asString := QueryTipoDocumentoDescricao.asString;
//        QueryTituloCobranca_Auxiliar.asString := QueryTipoCobrancaDescricao.asString;
end;

procedure TFormTituloReceber.SpeedButton1Click(Sender: TObject);
begin
     EditProcuraBanco.Visible := True;
     EditProcuraBanco.Text := '';
     EditProcuraBanco.SetFocus;
end;

procedure TFormTituloReceber.EditProcuraBancoExit(Sender: TObject);
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

          with QueryContratante do
             begin
               Close;
               SQL[1] := 'where Codigo >= ' + QueryTituloCodigo_Contratante.asString;
               SQL[2] := 'Order by Codigo';
               Open;
             end;
       end;
     EditProcuraBanco.Visible := False;
     BitBtnBaixar.SetFocus;
end;

procedure TFormTituloReceber.MaskEditDataBaixaExit(Sender: TObject);
begin
   DataBaixa := StrToDate(MaskEditDataBaixa.Text);
   if DataBaixa < dm.Date() then
   begin
      showmessage('Data do pagamento inferior a data atual do sistema !');
      MaskEditDataBaixa.SetFocus;
   end;
   if dm.GetParam('CALCJU') = 'S' then
   begin
      sp_calcJuros.Close;
      sp_calcJuros.ParamByName('@Desd').AsString     := QueryTitulo.FieldByName('desdobramento').AsString;
      sp_calcJuros.ParamByName('@Titulo').AsInteger  := QueryTitulo.FieldByName('numero_titulo').AsInteger;
      sp_calcJuros.ParamByName('@Dt_Pagto').AsString := MaskEditDataBaixa.Text;
      sp_calcJuros.Open;
      QueryTitulo.FieldByName('Juros').AsCurrency := sp_calcJuros.FieldByName('juros').AsCurrency;
   end;
end;

procedure TFormTituloReceber.EditProcuraExit(Sender: TObject);
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

procedure TFormTituloReceber.DBEditObservacoesExit(Sender: TObject);
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

procedure TFormTituloReceber.ButtonOkClick(Sender: TObject);
var
  DataCancelamento : TDate;
begin
   PanelCancel.Visible := False;


// Verifica se o título já foi Cancelado ou não
     DataCancelamento := dm.Date;
     if QueryCancelado.Locate('Data_Cancelamento; Numero_Titulo; Desdobramento',
        VarArrayOf([DataCancelamento, QueryTituloNumero_Titulo.asInteger, QueryTituloDesdobramento.asString]), [loCaseInsensitive]) then
          begin
            ShowMessage('Este Título já foi Cancelado !!!');
            exit;
          end;
     QueryCancelado.Insert;

     QueryCanceladoNumero_Titulo.asInteger       := QueryTituloNumero_Titulo.asInteger;
     QueryCanceladoDesdobramento.asString        := QueryTituloDesdobramento.asString;
     QueryCanceladoTipo_Documento.asString       := QueryTituloTipo_Documento.asString;
     QueryCanceladoCodigo_Contratante.asInteger  := QueryTituloCodigo_Contratante.asInteger;
     QueryCanceladoData_Emissao.asDateTime       := QueryTituloData_Emissao.asDateTime;
     QueryCanceladoData_Cancelamento.asDateTime  := DataCancelamento;
     QueryCanceladoValor.asCurrency              := QueryTituloValor.asCurrency;
     QueryCanceladoData_Vencimento.asDateTime    := QueryTituloData_Vencimento.asDateTime;
     QueryCanceladoTipo_Cobranca.asString        := QueryTituloTipo_Cobranca.asString;
     QueryCanceladoNumero_Banco.asString         := QueryTituloNumero_Banco.asString;
     QueryCanceladoOperador.asInteger            := Senha.Codigo_Operador;
     QueryCanceladoMotivo_Cancelamento.AsString  := EditMotivo.Text;

      // Grava Tabela dos Títulos Cancelados
     try
        QueryCancelado.Post
     except
       begin
         ShowMessage('Erro Gravação da Tabela de Títulos Cancelados');
         QueryCancelado.Cancel;
       end;
     end;

     // Deleta Registro da Tabela dos Titulos
     try
       QueryTitulo.Delete;
     except
         ShowMessage('Problemas ao Deletar o Título !!! [ENTER]');
     end;
end;

procedure TFormTituloReceber.ButtonCancelClick(Sender: TObject);
begin
   EditMotivo.Text := '';
   PanelCancel.Visible := False;
end;

procedure TFormTituloReceber.ButtonFecharPClick(Sender: TObject);
begin
   PanelMenssagemParCan.Visible := false;
   PanelBaixa.visible := false;
end;

procedure TFormTituloReceber.BitBtnCadastroClick(Sender: TObject);
var CodigoContrat: integer;
begin
   CodigoContrat := QueryContratanteCodigo.AsInteger;
   Application.CreateForm(TFormContratante, FormContratante);
   with FormContratante.QueryContratante do
   begin
     close;
     SQL[1] := 'where Codigo = ' + IntToStr(CodigoContrat);
     open;
   end;
   FormContratante.ShowModal;
   FormContratante.free;
end;

procedure TFormTituloReceber.QueryTituloBeforeDelete(DataSet: TDataSet);
begin
   try
      dm.QueryGenerica.SQL.Clear;
      dm.QueryGenerica.SQL.Add('delete registro_baixa where numero_titulo = ' + QueryTituloNumero_Titulo.AsString +
                               ' and desdobramento = ''' + QueryTituloDesdobramento.AsString + '''');
      dm.QueryGenerica.ExecSQL;
   except
   end;
end;

procedure TFormTituloReceber.DBGridContratanteDblClick(Sender: TObject);
begin
   FmTitBaixSemRecibo := TFmTitBaixSemRecibo.create(self);
   FmTitBaixSemRecibo.Query1.close;
   FmTitBaixSemRecibo.Edit1.text := QueryContratante.FieldByName('codigo').AsString;
   FmTitBaixSemRecibo.MaskEdit1.text := dm.GetDataSrv;
   FmTitBaixSemRecibo.Button1Click(Sender);
   FmTitBaixSemRecibo.ShowModal;
   FmTitBaixSemRecibo.Free;
end;

procedure TFormTituloReceber.BitBtn2Click(Sender: TObject);
begin
   FmReimpressaoRec := TFmReimpressaoRec.create(self);
   FmReimpressaoRec.EditContr.Text := QueryContratante.FieldByName('codigo').AsString;
   FmReimpressaoRec.MaskEditDtIni.Text := dm.GetDataSrv;
   FmReimpressaoRec.MaskEditDtFim.Text := FmReimpressaoRec.MaskEditDtIni.Text;
   FmReimpressaoRec.BitBtn1Click(Sender);
   FmReimpressaoRec.ShowModal;
   FmReimpressaoRec.free;
end;

procedure TFormTituloReceber.QueryTituloBeforePost(DataSet: TDataSet);
begin
   if PanelBaixa.Visible and QueryTitulotipo_pagamento.IsNull then
   begin
      QueryTitulo.Cancel;
      SysUtils.Abort;
   end;
end;

procedure TFormTituloReceber.BitBtn1Click(Sender: TObject);
begin
   EditProcura.SetFocus;
   FormPesquisaContratante := TFormPesquisaContratante.create(self);
   FormPesquisaContratante.ShowModal;
   EditProcura.Text := FormPesquisaContratante.QueryContratanteCodigo.AsString;
   EditProcuraExit(Sender);
   FormPesquisaContratante.free;
end;

procedure TFormTituloReceber.BitBtn3Click(Sender: TObject);
begin
   FmSimulPgTit := TFmSimulPgTit.create(self);
   FmSimulPgTit.EditProcura.text :=  QueryContratanteCodigo.AsString;
   FmSimulPgTit.MaskEditDtIni.text := dm.GetDataSrv;
   FmSimulPgTit.EditProcuraExit(Sender);
   FmSimulPgTit.showModal;
   FmSimulPgTit.free;
end;

procedure TFormTituloReceber.QueryTituloAfterScroll(DataSet: TDataSet);
begin
   if (QueryTituloTipo_Documento.AsInteger in [5,2]) then // 5 manutenção 2 orçamento
   begin
      PanelIr.visible := true;
      PanelIr.Color := clRed;
      CheckBoxEmissIR.Checked := dm.execmd('select count(*) qt from orcamento where lg_ir = 1 and numero = ''' + QueryTituloOrcamento.AsString + '''','qt') <> '0';
   end
   else
      PanelIr.visible := false;

end;

procedure TFormTituloReceber.Button1Click(Sender: TObject);
begin
CalculaTroco();
end;

procedure TFormTituloReceber.QueryContratanteAfterScroll(
  DataSet: TDataSet);
begin
    EditVrRecebido.Clear;
    CalculaTroco();
end;

procedure TFormTituloReceber.EditVrRecebidoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      CalculaTroco();

end;

end.
