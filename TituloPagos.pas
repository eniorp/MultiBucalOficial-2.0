{ Programa ........: Manutenção dos Títulos em Aberto (Pagar)                  }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }


unit TituloPagos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Variants,
  DBCtrls, Db, StdCtrls, Mask, DBTables, Grids, DBGrids, ExtCtrls, Buttons, DBIProcs;//, Biblio;

type
  TFormTituloPagos = class(TForm)
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
    BitBtnCancela: TBitBtn;
    Label15: TLabel;
    BitBtnSair: TBitBtn;
    PanelBaixa: TPanel;
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
    QueryTituloPagarCentro_Custo: TIntegerField;
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
    BitBtManutencao: TBitBtn;
    BitBtnExtorno: TBitBtn;
    Label9: TLabel;
    DBEditDataPagamento: TDBEdit;
    SpeedButtonLimpaData: TSpeedButton;
    QueryCentroCustoGrupo_Conta: TIntegerField;
    Label8: TLabel;
    DBLookupComboBoxPgto: TDBLookupComboBox;
    QueryTiposPgto: TQuery;
    QueryTiposPgtoId_TipoPgto: TIntegerField;
    QueryTiposPgtoDescricao_TipoPgto: TStringField;
    DataSourceTiposPgto: TDataSource;
    QueryTituloPagartipo_pagamento: TIntegerField;
    QueryTituloPagarNumero_Titulo: TStringField;
    QueryTituloPagarTipo_Cobranca: TSmallintField;
    QueryTituloPagarID_Pagto: TIntegerField;
    DBEditIDPg: TDBEdit;
    Label18: TLabel;
    BitBtnPesqNrPg: TBitBtn;
    EditProcurarPago: TEdit;
    BitBtnPesqCodPg: TBitBtn;
    EditProcurarCodPg: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure EditProcuraEnter(Sender: TObject);
    procedure ComboBoxProcuraChange(Sender: TObject);
    procedure DBEditVencimentoExit(Sender: TObject);
    procedure DBLookupComboBoxTipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
    procedure BitBtnExtornoClick(Sender: TObject);
    procedure BitBtManutencaoClick(Sender: TObject);
    procedure SpeedButtonLimpaDataClick(Sender: TObject);
    procedure BitBtnPesqNrPgClick(Sender: TObject);
    procedure EditProcurarPagoExit(Sender: TObject);
    procedure BitBtnPesqCodPgClick(Sender: TObject);
    procedure EditProcurarCodPgExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTituloPagos: TFormTituloPagos;
  DataBaixa : TDateTime;

implementation

uses PesquisaCentroCusto, senha, udm;

{$R *.DFM}

procedure TFormTituloPagos.EditProcuraEnter(Sender: TObject);
begin
     EditProcura.Text := '';
end;

procedure TFormTituloPagos.FormCreate(Sender: TObject);
begin
     QueryFornecedor.Open;
     QueryTituloPagar.Open;
     QueryCanceladoPagar.Open;
     QueryTiposPgto.Open;
     ComboBoxProcura.ItemIndex := 0;
     Top := 70;
     Left := 45;
end;

procedure TFormTituloPagos.ComboBoxProcuraChange(Sender: TObject);
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

procedure TFormTituloPagos.DBEditVencimentoExit(Sender: TObject);
begin
     if QueryTituloPagarData_Vencimento.asDateTime < QueryTituloPagarData_Emissao.asDateTime then
        begin
          ShowMessage('O Vencimento não pode ser menor que a Emissão !!!');
          DBEditVencimento.SetFocus;
        end;
end;


procedure TFormTituloPagos.DBLookupComboBoxTipoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormTituloPagos.BitBtnCancelarClick(Sender: TObject);
begin
     QueryTituloPagar.Cancel;
     PanelBaixa.Visible := False;
end;

procedure TFormTituloPagos.EditProcuraKeyPress(Sender: TObject; var Key: Char);
begin
     if ComboBoxProcura.ItemIndex = 0 then
        if not (key in ['0'..'9', #13, #8]) then
           key := #0;
end;

procedure TFormTituloPagos.BitBtnCancelaClick(Sender: TObject);
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

procedure TFormTituloPagos.DBEditValorExit(Sender: TObject);
begin
     if QueryTituloPagarSaldo.asString = '' then
        QueryTituloPagarSaldo.asCurrency := QueryTituloPagarValor.asCurrency;
end;

procedure TFormTituloPagos.DBEditValorPagamentoEnter(Sender: TObject);
begin
     QueryTituloPagarValor_Pago.asCurrency := QueryTituloPagarSaldo.asCurrency - QueryTituloPagarDesconto.asCurrency
            + QueryTituloPagarJuros.asCurrency;
end;

procedure TFormTituloPagos.DBEditValorPagamentoExit(Sender: TObject);

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
     BitBtnCancelarClick(Sender);
end;

procedure TFormTituloPagos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QueryFornecedor.Close;
     QueryTituloPagar.Close;
     QueryCanceladoPagar.Close;
     QueryTiposPgto.Close;
     Action := cafree;
end;

procedure TFormTituloPagos.DataSourceFornecedorDataChange(
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

procedure TFormTituloPagos.QueryTituloPagarAfterPost(DataSet: TDataSet);
begin
     with QueryTituloPagar do
       begin
          Close;
          Open;
          Last;
       end;
end;

procedure TFormTituloPagos.QueryTituloPagarAfterInsert(DataSet: TDataSet);
begin
   QueryTituloPagarCodigo_Fornecedor.asInteger := QueryFornecedorCodigo.asInteger;
   QueryTituloPagarData_Emissao.asDateTime := dm.Date;
   DBEditNumero.SetFocus;
end;

procedure TFormTituloPagos.EditProcuraChange(Sender: TObject);
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

procedure TFormTituloPagos.BitBtnPesqCustoClick(Sender: TObject);
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

procedure TFormTituloPagos.DBEditObservacaoExit(Sender: TObject);
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

procedure TFormTituloPagos.DBEditContaExit(Sender: TObject);
begin
   with QueryCentroCusto do
      begin
         close;
         Parambyname('Conta').asInteger := QueryTituloPagarCentro_Custo.AsInteger;
         open;
         if recordcount = 0 then begin
            showmessage('Centro de Custo não válido !');
            DBEditConta.SetFocus;
         end
         else begin
            EditDescCentroCusto.Text := QueryCentroCustoDescricao.asString;
            DBEditEmissao.SetFocus;
         end;
      end;

end;

procedure TFormTituloPagos.BitBtnExtornoClick(Sender: TObject);
begin
     if QueryTituloPagarNumero_Titulo.asString = '' then
        exit;

     if MessageDlg('Deseja Realmente Extornar a Baixo do Título ? ', mtConfirmation,
        [mbYes, mbNo], 0) = mrNo then
           exit;
     QueryTituloPagar.Edit;
     QueryTituloPagarSaldo.asCurrency        := QueryTituloPagarValor.asCurrency;
     QueryTituloPagarData_Pagamento.asString := '';
     QueryTituloPagarOperador.asString       := '';
     QueryTituloPagarValor_Pago.AsString     := '';
     QueryTituloPagarJuros.AsString          := '';
     QueryTituloPagarDesconto.AsString       := '';
     try
       QueryTituloPagar.Post
     except
       begin
         ShowMessage('Erro Gravação da Tabela de Títulos Abertos');
         QueryTituloPagar.Cancel;
       end;
     end;

end;

procedure TFormTituloPagos.BitBtManutencaoClick(Sender: TObject);
begin
     if QueryTituloPagarNumero_Titulo.asString = '' then
        exit;

     QueryTituloPagar.Edit;

     PanelBaixa.Visible := True;
     EditSaldoRestante.Text := '';

     DBEditDataPagamento.SetFocus;

end;

procedure TFormTituloPagos.SpeedButtonLimpaDataClick(Sender: TObject);
begin
     if QueryTituloPagar.state in [dsbrowse] then
        begin
          QueryTituloPagar.Edit;
          QueryTituloPagarData_Pagamento.asString := '';
        end;

end;

procedure TFormTituloPagos.BitBtnPesqNrPgClick(Sender: TObject);
begin
EditProcurarPago.Visible := true;
EditProcurarPago.Text := '';
EditProcurarPago.SetFocus;
end;

procedure TFormTituloPagos.EditProcurarPagoExit(Sender: TObject);
begin
   with QueryTituloPagar do
     Begin
       close;
       Sql[1] := 'Where Numero_Titulo = ''' + EditProcurarPago.Text + '''';
       Open;
       If RecordCount = 0 Then
         Begin
           ShowMessage('Titulo não encontrado !!! [ENTER]');
           EditProcurarPago.Visible := false;
           BitBtnPesqNrPg.SetFocus;
           Exit;
         End;
       DBEditNumero.Text := EditProcurarPago.Text;
       EditProcurarPago.Visible := false;
       DBEditNumero.SetFocus;
     End;

   with QueryFornecedor do
    begin
      Close;
      SQL[1] := ('where Codigo >= ''' + QueryTituloPagarCodigo_Fornecedor.AsString + '''');
      SQL[2] := 'order by codigo';
      Open;
    end;
end;


procedure TFormTituloPagos.BitBtnPesqCodPgClick(Sender: TObject);
begin
EditProcurarCodPg.Visible := true;
EditProcurarCodPg.Text := '';
EditProcurarCodPg.SetFocus;
end;

procedure TFormTituloPagos.EditProcurarCodPgExit(Sender: TObject);
begin
   With QueryTituloPagar do
     Begin
       Close;
       Sql[1] := 'Where ID_Pagto = ''' + EditProcurarCodPg.Text + '''';
       Open;
       If RecordCount = 0 Then
         Begin
           ShowMessage('Título não encontrado !!! [ENTER]');
           EditProcurarcodpg.Visible := false;
           BitBtnPesqCodPg.SetFocus;
           Exit;
         End;

      DBeditIDpg.Text := EditProcurarCodpg.Text;
      EditProcurarCodpg.Visible := false;
      DBEditIdpg.SetFocus;
    End;

    with QueryFornecedor do
      begin
        Close;
        SQL[1] := ('where Codigo >= ''' + QueryTituloPagarCodigo_Fornecedor.AsString + '''');
        SQL[2] := 'order by codigo';
        Open;
      end;

End;
End.
