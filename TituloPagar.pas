{ Programa ........: Manutenção dos Títulos em Aberto (Pagar)                  }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }


unit TituloPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Variants,
  DBCtrls, Db, StdCtrls, Mask, DBTables, Grids, DBGrids, ExtCtrls, Buttons, DBIProcs;//, Biblio;

type
  TFormTituloPagar = class(TForm)
    Panel1: TPanel;
    DBGridBaixa: TDBGrid;
    DataSourceFornecedor: TDataSource;
    Panel3: TPanel;
    DBGridTituloReceber: TDBGrid;
    DBNavigatorFornecedor: TDBNavigator;
    Panel2: TPanel;
    DataSourceTituloPagar: TDataSource;
    Panel4: TPanel;
    Label1: TLabel;
    DBEditNome: TDBEdit;
    DBEditNumero: TDBEdit;
    Label3: TLabel;
    DBEditEmissao: TDBEdit;
    Label5: TLabel;
    DBEditValor: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEditVencimento: TDBEdit;
    DBNavigatorTitulo: TDBNavigator;
    LabelProcura: TLabel;
    EditProcura: TEdit;
    ComboBoxProcura: TComboBox;
    BitBtnBaixar: TBitBtn;
    BitBtnCancela: TBitBtn;
    Label15: TLabel;
    BitBtnSair: TBitBtn;
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
    DBEditSaldo: TDBEdit;
    DBEditSaldo2: TDBEdit;
    QueryFornecedor: TQuery;
    QueryTituloPagar: TQuery;
    QueryCanceladoPagar: TQuery;
    QueryFornecedorCodigo: TIntegerField;
    QueryFornecedorRazao_Social: TStringField;
    QueryFornecedorNome_Fantasia: TStringField;
    QueryTituloPagarCodigo_Fornecedor: TIntegerField;
    QueryTituloPagarData_Emissao: TDateTimeField;
    QueryTituloPagarData_Vencimento: TDateTimeField;
    QueryTituloPagarValor: TFloatField;
    QueryTituloPagarSaldo: TFloatField;
    QueryCanceladoPagarData_Cancelamento: TDateTimeField;
    QueryCanceladoPagarNumero_Titulo: TIntegerField;
    QueryCanceladoPagarCodigo_Fornecedor: TIntegerField;
    QueryCanceladoPagarData_Emissao: TDateTimeField;
    QueryCanceladoPagarData_Vencimento: TDateTimeField;
    QueryCanceladoPagarValor: TFloatField;
    QueryCanceladoPagarSaldo: TFloatField;
    QueryTituloPagarTipo_Documento: TSmallintField;
    QueryCanceladoPagarTipo_Documento: TSmallintField;
    QueryCanceladoPagarTipo_Cobranca: TSmallintField;
    QueryTituloPagarDesconto: TFloatField;
    QueryTituloPagarJuros: TFloatField;
    QueryTituloPagarBanco_Cheque: TStringField;
    QueryTituloPagarNro_Cheque: TStringField;
    Label2: TLabel;
    DBEditConta: TDBEdit;
    EditDescCentroCusto: TEdit;
    Label4: TLabel;
    DBEditObservacao: TDBEdit;
    Label16: TLabel;
    DBEditBanco: TDBEdit;
    Label17: TLabel;
    DBEditCheque: TDBEdit;
    BitBtnPesqCusto: TBitBtn;
    QueryTituloPagarData_Pagamento: TDateTimeField;
    QueryTituloPagarValor_Pago: TFloatField;
    QueryTituloPagarParcela: TIntegerField;
    QueryTituloPagarObservacao: TStringField;
    QueryTituloPagarOperador: TIntegerField;
    QueryCentroCusto: TQuery;
    QueryTituloPagarNome_CentroCusto: TStringField;
    QueryCentroCustoId_Conta: TIntegerField;
    QueryCentroCustoConta: TStringField;
    QueryCentroCustoDescricao: TStringField;
    QueryCentroCustoReduzida: TStringField;
    QueryEspeciais: TQuery;
    QueryEspeciaisCodigo_Operador: TIntegerField;
    QueryEspeciaisCodigo_Operacao: TSmallintField;
    QueryTituloPagarCentro_Custo: TIntegerField;
    QueryCentroCustoGrupo_Conta: TIntegerField;
    Label8: TLabel;
    QueryTituloPagartipo_pagamento: TIntegerField;
    QueryTiposPgto: TQuery;
    QueryTiposPgtoId_TipoPgto: TIntegerField;
    QueryTiposPgtoDescricao_TipoPgto: TStringField;
    DBLookupComboBoxPgto: TDBLookupComboBox;
    DataSourceTiposPgto: TDataSource;
    BitBtnPesqNr: TBitBtn;
    EditProcurar: TEdit;
    QueryTituloPagarNumero_Titulo: TStringField;
    QueryTituloPagarTipo_Cobranca: TSmallintField;
    QueryTituloPagarID_Pagto: TIntegerField;
    DBEditID: TDBEdit;
    Label18: TLabel;
    EditProcurarCod: TEdit;
    BitBtnPeqCod: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure EditProcuraEnter(Sender: TObject);
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
    procedure DataSourceFornecedorDataChange(Sender: TObject;
      Field: TField);
    procedure QueryTituloPagarAfterPost(DataSet: TDataSet);
    procedure QueryTituloPagarAfterInsert(DataSet: TDataSet);
    procedure EditProcuraChange(Sender: TObject);
    procedure BitBtnPesqCustoClick(Sender: TObject);
    procedure DBEditObservacaoExit(Sender: TObject);
    procedure DBEditContaExit(Sender: TObject);
    procedure BitBtnPesqNrClick(Sender: TObject);
    procedure EditProcurarExit(Sender: TObject);
    procedure BitBtnPeqCodClick(Sender: TObject);
    procedure EditProcurarCodExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Monta_Permissoes;
  end;

var
  FormTituloPagar: TFormTituloPagar;
  DataBaixa : TDateTime;

implementation

uses PesquisaCentroCusto, senha, udm;

{$R *.DFM}

procedure TFormTituloPagar.EditProcuraEnter(Sender: TObject);
begin
     EditProcura.Text := '';
end;

procedure TFormTituloPagar.FormCreate(Sender: TObject);
begin
     Monta_Permissoes;
     QueryFornecedor.Open;
     QueryTituloPagar.Open;
     QueryCanceladoPagar.Open;
     QueryTiposPgto.Open;
     ComboBoxProcura.ItemIndex := 0;
     Top := 90;
     Left := 45;
end;

procedure TFormTituloPagar.ComboBoxProcuraChange(Sender: TObject);
begin
     if ComboBoxProcura.ItemIndex = 0 then
        begin
             EditProcura.Width := 55;
             EditProcura.MaxLength := 5;
             LabelProcura.Caption := 'Código';
        end
     else
         begin
              EditProcura.Width := 170;
              EditProcura.MaxLength := 0;
              LabelProcura.Caption := 'Fantasia';
         end;
     EditProcura.Setfocus;
end;

procedure TFormTituloPagar.DBEditVencimentoExit(Sender: TObject);
begin
     if QueryTituloPagarData_Vencimento.asDateTime < QueryTituloPagarData_Emissao.asDateTime then
        begin
          ShowMessage('O Vencimento não pode ser menor que a Emissão !!!');
          DBEditVencimento.SetFocus;
        end;
end;


procedure TFormTituloPagar.DBLookupComboBoxTipoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormTituloPagar.BitBtnBaixarClick(Sender: TObject);
begin
     if QueryTituloPagarNumero_Titulo.asString = '' then
        exit;

     DataBaixa := dm.Now;
     MaskEditDataBaixa.Text := DateToStr(DataBaixa);
     PanelBaixa.Visible := True;
     EditSaldoRestante.Text := '';
     QueryTituloPagar.Edit;
     MaskEditDataBaixa.SetFocus;
end;

procedure TFormTituloPagar.BitBtnConfirmaClick(Sender: TObject);
begin
     DataBaixa := StrToDate(MaskEditDataBaixa.Text);
     QueryTituloPagarSaldo.asCurrency := (QueryTituloPagarSaldo.asCurrency + QueryTituloPagarJuros.asCurrency)
         - (QueryTituloPagarValor_Pago.asCurrency + QueryTituloPagarDesconto.asCurrency);
     QueryTituloPagarData_Pagamento.AsDateTime := DataBaixa;
     QueryTituloPagarOperador.asInteger := Senha.Codigo_Operador;
     try
       QueryTituloPagar.Post
     except
       begin
         ShowMessage('Erro Gravação da Tabela de Títulos Abertos');
         QueryTituloPagar.Cancel;
       end;
     end;

     PanelBaixa.Visible := False;
end;

procedure TFormTituloPagar.BitBtnCancelarClick(Sender: TObject);
begin
     PanelBaixa.Visible := False;
end;

procedure TFormTituloPagar.EditProcuraKeyPress(Sender: TObject; var Key: Char);
begin
     if ComboBoxProcura.ItemIndex = 0 then
        if not (key in ['0'..'9', #13, #8]) then
           key := #0;
end;

procedure TFormTituloPagar.BitBtnCancelaClick(Sender: TObject);
var
DataCancelamento : TDate;
begin
     if QueryTituloPagarNumero_Titulo.asString = '' then
        exit;

     if MessageDlg('Deseja Realmente Excluir o Título ? ', mtConfirmation,
        [mbYes, mbNo], 0) = mrNo then
           exit;

// Verifica se o título já foi Cancelado ou não
     DataCancelamento := dm.Date;
     if QueryCanceladoPagar.Locate('Data_Cancelamento; Numero_Titulo;',
        VarArrayOf([DataCancelamento, QueryTituloPagarNumero_Titulo.asInteger]), [loCaseInsensitive]) then
          begin
            ShowMessage('Este Título já foi Cancelado !!!');
            exit;
          end;
     QueryCanceladoPagar.Insert;

     QueryCanceladoPagarNumero_Titulo.asInteger       := QueryTituloPagarNumero_Titulo.asInteger;
     QueryCanceladoPagarTipo_Documento.asString       := QueryTituloPagarTipo_Documento.asString;
     QueryCanceladoPagarCodigo_Fornecedor.asInteger   := QueryTituloPagarCodigo_Fornecedor.asInteger;
     QueryCanceladoPagarData_Emissao.asDateTime       := QueryTituloPagarData_Emissao.asDateTime;
     QueryCanceladoPagarData_Cancelamento.asDateTime  := DataCancelamento;
     QueryCanceladoPagarValor.asCurrency              := QueryTituloPagarValor.asCurrency;
     QueryCanceladoPagarData_Vencimento.asDateTime    := QueryTituloPagarData_Vencimento.asDateTime;

      // Grava Tabela dos Títulos Cancelados
     try
        QueryCanceladoPagar.Post
     except
       begin
         ShowMessage('Erro Gravação da Tabela de Títulos Cancelados');
         QueryCanceladoPagar.Cancel;
       end;
     end;

     // Deleta Registro da Tabela dos Titulos
     try
       QueryTituloPagar.Delete;
     except on E: Exception do
         ShowMessage('Problemas ao Deletar o Título !!! [ENTER]' + e.message);
     end;
end;

procedure TFormTituloPagar.DBEditValorExit(Sender: TObject);
begin
    QueryTituloPagarSaldo.asCurrency := QueryTituloPagarValor.asCurrency;
end;

procedure TFormTituloPagar.DBEditValorPagamentoEnter(Sender: TObject);
begin
     QueryTituloPagarValor_Pago.asCurrency := QueryTituloPagarSaldo.asCurrency - QueryTituloPagarDesconto.asCurrency
            + QueryTituloPagarJuros.asCurrency;
end;

procedure TFormTituloPagar.DBEditValorPagamentoExit(Sender: TObject);
var
SaldoRestante : Currency;
begin
     if QueryTituloPagarSaldo.asCurrency > QueryTituloPagarValor_Pago.asCurrency then
        SaldoRestante := (QueryTituloPagarSaldo.asCurrency + QueryTituloPagarJuros.asCurrency)
                       - (QueryTituloPagarValor_Pago.asCurrency + QueryTituloPagarDesconto.asCurrency)
     else
        SaldoRestante := 0;
     EditSaldoRestante.Text := FormatFloat( 'R$' + '###,###,###,##0.00', SaldoRestante);
end;

procedure TFormTituloPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QueryFornecedor.Close;
     QueryTituloPagar.Close;
     QueryCanceladoPagar.Close;
     QueryTiposPgto.Close;
     Action := cafree;
end;

procedure TFormTituloPagar.DataSourceFornecedorDataChange(
  Sender: TObject; Field: TField);
begin
     if QueryFornecedorCodigo.asString = '' then
        exit;

     if QueryFornecedor.State in [dsInsert] then
        exit;

     with QueryTituloPagar do
        begin
          Close;
          SQL[1] := ('where Codigo_Fornecedor = ' + QueryFornecedorCodigo.asString);
          Open;
        end;
end;

procedure TFormTituloPagar.QueryTituloPagarAfterPost(DataSet: TDataSet);
begin
     with QueryTituloPagar do
       begin
          Close;
          Open;
          Last;
       end;
end;

procedure TFormTituloPagar.QueryTituloPagarAfterInsert(DataSet: TDataSet);
begin
   QueryTituloPagarCodigo_Fornecedor.asInteger := QueryFornecedorCodigo.asInteger;
   QueryTituloPagarData_Emissao.asDateTime := dm.Date;
   DBEditNumero.SetFocus;
end;

procedure TFormTituloPagar.EditProcuraChange(Sender: TObject);
begin
     if EditProcura.Text = '' then exit;

     if ComboBoxProcura.Text = 'Código' then
        begin
          with QueryFornecedor do
             begin
               Close;
               SQL[1] := 'where Codigo >= ''' + EditProcura.Text + '''';
               SQL[2] := 'Order by Codigo';
               Open;
             end;
        end;

     if ComboBoxProcura.Text = 'Nome' then
        begin
          with QueryFornecedor do
             begin
               Close;
               SQL[1] := 'where Nome_Fantasia >= ''' + EditProcura.Text + '''';
               SQL[2] := 'Order by Nome_Fantasia';
               Open;
             end;
        end;
end;

procedure TFormTituloPagar.BitBtnPesqCustoClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaCentroCusto, FormPesquisaCentroCusto);
     FormPesquisaCentroCusto.ShowModal;

     if QueryTituloPagar.state in [dsEdit, dsInsert] then
        begin
          QueryTituloPagarCentro_Custo.AsInteger := PesquisaCentroCusto.FormPesquisaCentroCusto.QueryCentroCustoId_Conta.asInteger;
          EditDescCentroCusto.Text := PesquisaCentroCusto.FormPesquisaCentroCusto.QueryCentroCustoDescricao.asString;
        end;
     FormPesquisaCentroCusto.QueryCentroCusto.Close;
     FormPesquisaCentroCusto.Free;
     DBEditEmissao.SetFocus;
end;

procedure TFormTituloPagar.DBEditObservacaoExit(Sender: TObject);
begin
     if QueryTituloPagar.State in [dsbrowse] then
        exit;

     if MessageDlg('Dados Ok ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        exit
     else
       begin
         try
          QueryTituloPagar.Post
         except
           begin
             ShowMessage('Erro Gravação da Tabela de Títulos !!!');
             QueryTituloPagar.Cancel;
           end;
         end;
       end;
end;

procedure TFormTituloPagar.DBEditContaExit(Sender: TObject);
begin
   if QueryTituloPagar.State in [dsEdit, dsInsert] then begin
     with QueryCentroCusto do
        begin
           close;
           Parambyname('Conta').asInteger := QueryTituloPagarCentro_Custo.AsInteger;
           open;
{           if recordcount = 0 then begin
              showmessage('Centro de Custo não válido !');
              DBEditConta.SetFocus;
           end
           else begin              }
              EditDescCentroCusto.Text := QueryCentroCustoDescricao.asString;
              DBEditEmissao.SetFocus;
//           end;
        end;
     end;

end;

procedure TFormTituloPagar.Monta_Permissoes;
begin
     with QueryEspeciais do
       begin
         Close;
         ParambyName('Operador').asInteger := Senha.Codigo_Operador;
         Open;

         while not eof do
           begin
             case QueryEspeciaisCodigo_Operacao.asInteger of
               1 : BitBtnCancela.Enabled := True;
             end;
             Next;
           end;
        end;
end;



procedure TFormTituloPagar.BitBtnPesqNrClick(Sender: TObject);
begin
EditProcurar.Visible := true;
EditProcurar.Text := '';
EditProcurar.SetFocus;
end;

procedure TFormTituloPagar.EditProcurarExit(Sender: TObject);
begin
   With QueryTituloPagar do
     Begin
       Close;
       SQL[1] := 'Where Numero_Titulo = ''' + EditProcurar.Text + '''';
       Open;
       If RecordCount = 0 Then
        Begin
          ShowMessage('Título Não Encontrado !!! [ENTER]');
          EditProcurar.Visible := False;
          BitBtnPesqNr.SetFocus;
          exit;
        end;
       DBEditNumero.Text := EditProcurar.Text;
       EditProcurar.Visible := false;
       DBEditNumero.SetFocus;
     end;

   with QueryFornecedor do
    begin
      Close;
      SQL[1] := ('where Codigo >= ''' + QueryTituloPagarCodigo_Fornecedor.asString + '''');
      SQL[2] := 'order by Codigo';
      Open;
   end;
end;

procedure TFormTituloPagar.BitBtnPeqCodClick(Sender: TObject);
begin
EditProcurarCod.Visible := true;
EditProcurarcod.Text := '';
EditProcurarCod.SetFocus;
end;

procedure TFormTituloPagar.EditProcurarCodExit(Sender: TObject);
begin
   With QueryTituloPagar do
     Begin
       Close;
       SQL[1] := 'Where ID_Pagto = ''' + EditProcurarCod.Text + '''';
       Open;
       If RecordCount = 0 Then
         Begin
           ShowMessage('Título não encontrado !!! [ENTER]');
           EditProcurarCod.Visible := false;
           BitBtnPeqCod.SetFocus;
           Exit;
         End;
       DBeditID.Text := EditProcurarcod.Text;
       EditProcurarcod.Visible := false;
       DBeditID.SetFocus;
     End;

   with QueryFornecedor do
     begin
       Close;
       SQL[1] := ('where Codigo >= ''' + QueryTituloPagarCodigo_Fornecedor.asString+ '''');
       SQL[2] := 'order by Codigo';
       Open;
     end;

end;

end.
