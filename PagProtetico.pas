{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Pagamento de Proteticos                                   }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PagProtetico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, Db, DBTables,
  Biblio;

type
  TFormPagProtetico = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditNumero: TDBEdit;
    DBEditData: TDBEdit;
    DBEditUsuario: TDBEdit;
    DBEditProtetico: TDBEdit;
    Label5: TLabel;
    DBEditPrestacoes: TDBEdit;
    Label6: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnPesquisar: TBitBtn;
    QueryOrcamentos: TQuery;
    QueryItensPagProtetico: TQuery;
    DataSourceOrcamento: TDataSource;
    DataSourceItensPagProtetico: TDataSource;
    QueryUsuarios: TQuery;
    QueryServicos: TQuery;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosUsuario: TIntegerField;
    QueryOrcamentosData: TDateTimeField;
    QueryOrcamentosDentista: TIntegerField;
    QueryOrcamentosTotal: TFloatField;
    QueryOrcamentosNumero_Parcelas: TSmallintField;
    QueryOrcamentosData_Conferencia: TDateTimeField;
    QueryOrcamentosTotal_Dentista: TFloatField;
    QueryOrcamentosTotal_Protetico: TFloatField;
    QueryOrcamentosTotal_Contas: TFloatField;
    QueryOrcamentosAutorizado: TBooleanField;
    QueryOrcamentosOperador_Cadastro: TSmallintField;
    QueryOrcamentosOperador_Aprovacao: TSmallintField;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryProtetico: TQuery;
    EditNomeUsuario: TEdit;
    EditNomeProtetico: TEdit;
    QueryOrcamentosAuxiliar: TQuery;
    QueryOrcamentosAuxiliarNumero: TIntegerField;
    QueryServicosAuxiliar: TQuery;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    QueryValorProcedimento: TQuery;
    QueryValorProcedimentoCodigo_Tabela: TIntegerField;
    QueryValorProcedimentoCodigo_Servico: TIntegerField;
    QueryValorProcedimentoValor_Cobranca: TFloatField;
    QueryValorProcedimentoValor_Dentista: TFloatField;
    QueryValorProcedimentoValor_Protetico: TFloatField;
    QueryServicosAuxiliarCodigo: TIntegerField;
    QueryReceber: TQuery;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberTipo_Documento: TIntegerField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberData_Emissao: TDateTimeField;
    QueryReceberData_Vencimento: TDateTimeField;
    QueryReceberValor: TFloatField;
    QueryReceberSaldo: TFloatField;
    QueryReceberTipo_Cobranca: TIntegerField;
    QueryReceberNumero_Banco: TStringField;
    QueryReceberData_Pagamento: TDateTimeField;
    QueryReceberValor_Pago: TFloatField;
    QueryReceberDesconto: TFloatField;
    QueryReceberJuros: TFloatField;
    QueryReceberOperador: TSmallintField;
    QueryReceberOrcamento: TIntegerField;
    QueryPreferencias: TQuery;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratantePlano: TIntegerField;
    QueryContratanteGrupo_Contratante: TIntegerField;
    QueryPrecoContratante: TQuery;
    QueryPrecoGrupo: TQuery;
    QueryPrecoPlano: TQuery;
    QueryPrecoPlanoTabelaPreco: TIntegerField;
    QueryPrecoPlanoPlano: TIntegerField;
    QueryPrecoPlanoAtiva: TBooleanField;
    QueryPrecoContratanteTabelaPreco: TIntegerField;
    QueryPrecoContratanteContratante: TIntegerField;
    QueryPrecoContratanteAtiva: TBooleanField;
    QueryOrcamentosTipo: TSmallintField;
    Label8: TLabel;
    DBEditTipo: TDBEdit;
    BitBtnPesquisaTipo: TBitBtn;
    EditTipo: TEdit;
    QueryTipoOrcamento: TQuery;
    QueryTipoOrcamentoTipo: TSmallintField;
    QueryTipoOrcamentoTipo_Documento: TSmallintField;
    QueryTipoOrcamentoTipo_Cobranca: TSmallintField;
    QueryTipoOrcamentoDescricao: TStringField;
    GroupBoxProcura: TGroupBox;
    Label7: TLabel;
    EditProcura: TEdit;
    QueryCoberturaContratante: TQuery;
    QueryCoberturaGrupo: TQuery;
    QueryCoberturaPlano: TQuery;
    QueryCoberturaProcedimento: TQuery;
    QueryCoberturaContratanteTabela_Cobertura: TIntegerField;
    QueryCoberturaContratanteContratante: TIntegerField;
    QueryCoberturaContratanteAtiva: TBooleanField;
    QueryCoberturaGrupoTabela_Cobertura: TIntegerField;
    QueryCoberturaGrupoGrupo_Contratante: TIntegerField;
    QueryCoberturaGrupoAtiva: TBooleanField;
    QueryCoberturaPlanoTabela_Cobertura: TIntegerField;
    QueryCoberturaPlanoPlano: TIntegerField;
    QueryCoberturaPlanoAtiva: TBooleanField;
    QueryCoberturaProcedimentoCodigo_Tabela: TIntegerField;
    QueryCoberturaProcedimentoCodigo_procedimento: TIntegerField;
    QueryCoberturaProcedimentoDias: TIntegerField;
    QueryCoberturaProcedimentoPercentual: TFloatField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryPrecoGrupoGrupo_Contratante: TIntegerField;
    QueryPrecoGrupoTabelaPreco: TIntegerField;
    QueryPrecoGrupoAtiva: TBooleanField;
    QueryPreferenciasRegistro_Unico: TSmallintField;
    QueryPreferenciasNome_Empresa: TStringField;
    QueryContratanteNome: TStringField;
    PrintDialogOrdem: TPrintDialog;
    QueryOrcamentosTotal_Bruto: TFloatField;
    QueryPreferenciasValor_US: TFloatField;
    QueryReceber2: TQuery;
    QueryReceber2Numero_Titulo: TIntegerField;
    QueryReceber2Desdobramento: TStringField;
    QueryReceber2Tipo_Documento: TIntegerField;
    QueryReceber2Codigo_Contratante: TIntegerField;
    QueryReceber2Data_Emissao: TDateTimeField;
    QueryReceber2Data_Vencimento: TDateTimeField;
    QueryReceber2Valor: TFloatField;
    QueryReceber2Saldo: TFloatField;
    QueryReceber2Tipo_Cobranca: TIntegerField;
    QueryReceber2Numero_Banco: TStringField;
    QueryReceber2Data_Pagamento: TDateTimeField;
    QueryReceber2Valor_Pago: TFloatField;
    QueryReceber2Desconto: TFloatField;
    QueryReceber2Juros: TFloatField;
    QueryReceber2Operador: TSmallintField;
    QueryReceber2Orcamento: TIntegerField;
    QueryOrcamentosData_Hora: TDateTimeField;
    QueryOrcamentosDesconto: TFloatField;
    DBEditDesconto: TDBEdit;
    Label11: TLabel;
    Label10: TLabel;
    Panel8: TPanel;
    DBGridItens: TDBGrid;
    QueryOrcamentosTotal_Desconto: TFloatField;
    QueryParcelas: TQuery;
    QueryParcelasValor_Inicial: TFloatField;
    QueryParcelasValor_Final: TFloatField;
    QueryParcelasNumero_Parcelas: TSmallintField;
    QueryPreferenciasStatus_Grava: TSmallintField;
    QueryPreferenciasStatus_Autorizado: TSmallintField;
    QueryPreferenciasStatus_Parcial: TSmallintField;
    QueryPreferenciasStatus_Total: TSmallintField;
    QueryOrcamentosStatus: TSmallintField;
    QueryStatus_Pagto: TQuery;
    DataSourceStatus_Pagto: TDataSource;
    QueryOperador: TQuery;
    QueryOperadorCodigo: TIntegerField;
    QueryOperadorNome: TStringField;
    QueryOperadorApelido: TStringField;
    QueryOperadorEndereco: TStringField;
    QueryOperadorBairro: TStringField;
    QueryOperadorCidade: TStringField;
    QueryOperadorUF: TStringField;
    QueryOperadorCep: TStringField;
    QueryOperadorFone: TStringField;
    QueryOperadorSenha: TStringField;
    QueryPrestacoes: TQuery;
    QueryPrestacoesOrcamento: TIntegerField;
    QueryPrestacoesParcela: TSmallintField;
    QueryPrestacoesVencimento: TDateTimeField;
    QueryPrestacoesValor: TFloatField;
    QueryUsuariosContratante_Titular: TIntegerField;
    DataSourceReceber2: TDataSource;
    QueryTipoDocumento: TQuery;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobranca: TQuery;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    DataSourceTipoCobranca: TDataSource;
    DataSourceTipoDocumento: TDataSource;
    QueryReceber2Descricao_Documento: TStringField;
    QueryReceber2Descricao_Cobranca: TStringField;
    DataSourceUsuarios: TDataSource;
    DataSourceContratante: TDataSource;
    QueryOrcamentosContratante: TIntegerField;
    QueryReceberParcela: TSmallintField;
    QueryReceberStatus_Cheque: TStringField;
    QueryReceberObservacoes: TStringField;
    QueryOrcamentosContratante_Titular: TIntegerField;
    QueryReceberStatus_Orcamento: TSmallintField;
    QueryItensOrcamento: TQuery;
    QueryItensOrcamentoOrcamento: TIntegerField;
    QueryItensOrcamentoIncremento: TIntegerField;
    QueryItensOrcamentoServico: TIntegerField;
    QueryItensOrcamentoQuantidade: TSmallintField;
    QueryItensOrcamentoValor: TFloatField;
    QueryItensOrcamentoValor_Bruto: TFloatField;
    QueryItensOrcamentoValor_Dentista: TFloatField;
    QueryItensOrcamentoValor_Protetico: TFloatField;
    EditTotal: TEdit;
    BitBtnTitulos: TBitBtn;
    QueryItensPagProteticoOrcamento: TIntegerField;
    QueryItensPagProteticoIncremento: TIntegerField;
    QueryItensPagProteticoMesAno: TStringField;
    QueryItensPagProteticoServico: TIntegerField;
    QueryItensPagProteticoQuantidade: TIntegerField;
    QueryItensPagProteticoQuantidade_Paga: TIntegerField;
    QueryItensPagProteticoValor: TFloatField;
    QueryItensPagProteticoObservacao: TStringField;
    QueryItensPagProteticoDescricao_Servico: TStringField;
    QueryProteticoCodigo: TIntegerField;
    QueryProteticoNome: TStringField;
    QueryProteticoData_Exclusao: TDateTimeField;
    QueryPagProtetico: TQuery;
    QueryPagProteticoOrcamento: TIntegerField;
    QueryPagProteticoProtetico: TIntegerField;
    DataSourcePagProtetico: TDataSource;
    Panel7: TPanel;
    QueryPagProteticoAuxiliar: TQuery;
    IntegerField1: TIntegerField;
    IntegerField3: TIntegerField;
    QueryItensPagProteticoProtetico: TIntegerField;
    QueryPagProteticoUsuario: TIntegerField;
    QueryPagProteticoData: TDateTimeField;
    BitBtnPesquisaProtetico: TBitBtn;
    QueryPermissoes: TQuery;
    QueryPermissoesCodigo_Operador: TSmallintField;
    QueryPermissoesCodigo_Grupo: TSmallintField;
    QueryPermissoesCodigo_Procedimento: TSmallintField;
    QueryPermissoesCodigo_SubProcedimento: TSmallintField;
    QueryPermissoesSomente_Leitura: TBooleanField;
    QueryOrcamentosnro_urgencia: TIntegerField;
    QueryOrcamentosData_Status: TDateTimeField;
    QueryOrcamentosOperador_Status: TIntegerField;
    QueryObservacoes: TQuery;
    QueryObservacoesOrcamento: TIntegerField;
    QueryObservacoesTexto: TMemoField;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    QueryOrcamentosPericiaFinal: TBooleanField;
    QueryStatus_PagtoCodigo: TIntegerField;
    QueryStatus_PagtoDescricao: TStringField;
    BitBtnPgTotal: TBitBtn;
    DBNavigatorPagProtetico: TDBNavigator;
    QueryProteticoAux: TQuery;
    QueryProteticoAuxCodigo: TIntegerField;
    QueryProteticoAuxNome: TStringField;
    DataSourceProteticoAux: TDataSource;
    QueryItensPagProteticoNomeProte: TStringField;
    DBLookupComboBoxStatus: TDBLookupComboBox;
    Label12: TLabel;
    BitBtnPgParcial: TBitBtn;
    QueryVerifica: TQuery;
    QueryItensPagProteticoid_pagto: TIntegerField;
    QueryItensPagProteticocd_tabela: TSmallintField;
    QueryItensPagProteticostatus: TStringField;
    Label9: TLabel;
    QueryItensOrcamentostatus: TStringField;
    QueryItensPagProteticoindiceTabPagProtetico: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridItensExit(Sender: TObject);
    procedure QueryItensPagProteticoAfterPost(DataSet: TDataSet);
    procedure DataSourceOrcamentoDataChange(Sender: TObject;
      Field: TField);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure EditProcuraExit(Sender: TObject);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure QueryItensPagProteticoAfterInsert(DataSet: TDataSet);
    procedure QueryItensPagProteticoQuantidade_PagaValidate(Sender: TField);
    procedure QueryItensPagProteticoBeforePost(DataSet: TDataSet);
    procedure BitBtnTitulosClick(Sender: TObject);
    procedure DBEditProteticoExit(Sender: TObject);
    procedure DataSourcePagProteticoDataChange(Sender: TObject;
      Field: TField);
    procedure QueryPagProteticoAfterPost(DataSet: TDataSet);
    procedure QueryPagProteticoBeforeDelete(DataSet: TDataSet);
    procedure QueryPagProteticoAfterInsert(DataSet: TDataSet);
    procedure DBEditProteticoEnter(Sender: TObject);
    procedure QueryPagProteticoAfterDelete(DataSet: TDataSet);
    procedure BitBtnPesquisaProteticoClick(Sender: TObject);
    procedure BitBtnPgTotalClick(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
    procedure BitBtnStatusTotalClick(Sender: TObject);
    procedure QueryPagProteticoProteticoValidate(Sender: TField);
    procedure BitBtnPgParcialClick(Sender: TObject);
    procedure QueryItensPagProteticoNewRecord(DataSet: TDataSet);
    procedure QueryItensPagProteticoBeforeDelete(DataSet: TDataSet);

  private
    { Private declarations }
    utilizaFormulaNovaPagtoProtetico : boolean;
    cargaInicial : boolean;

    function GetVrProtetico(cdProtetico : string; cdServico : string; cdTabela : string): Currency;
    function VerificaQuantidade : Boolean;
    function GetTabPagtoProteticoaNova(cdProtetico: string ;cdServico :string): string;


    procedure MontaTotal;
    procedure Monta_Itens;




  public
    { Public declarations }
  end;

  TIECustomGrid = class(TCustomGrid)
  public
    property InplaceEditor;
  end;

  TIEInplaceEdit = class(TInplaceEdit)
  public
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  end;

var
  FormPagProtetico: TFormPagProtetico;
  Numero_Orcamento, VUsuario, Digito : Integer;
  Valor_Bruto, Valor_Protetico, Valor_Total, Valor_TotalBruto, Valor_Servico, Valor_TotalProtetico : Real;
  Data_Base, Data_Atual : TDate;
  Linha, Pagina, Numero_ViasProtetico, I, Incremento, Status : Integer;
  Ano, Mes, Dia : Word;
  Pg_total : boolean;

implementation

uses Senha, Observacoes, ObservacoesProteticos, PesquisaProtetico, udm,
  PesqProtetico;

{$R *.DFM}

procedure TFormPagProtetico.FormCreate(Sender: TObject);
begin
     utilizaFormulaNovaPagtoProtetico :=(dm.GetParam('UFNVPP') = 'S'); // indica que usa formula nova para valorização de protetico
     cargaInicial := false;
     Pg_total := False;
     Left := 0;
     Top := 0;
     Height := 572;
     Width := 800;
     QueryServicos.Open;
     QueryStatus_Pagto.Open;
//     QueryOrcamentos.Open;
     QueryPreferencias.Open;
//     QueryItensOrcamento.Open;
     QueryTipoDocumento.Open;
     QueryTipoCobranca.Open;
     with QueryPermissoes do
       begin
         Close;
         ParamByName('Operador').asInteger        := Senha.Codigo_Operador;
         ParamByName('Grupo').asInteger           := 1;
         ParamByName('Procedimento').asInteger    := 12;
         ParamByName('Subprocedimento').asInteger := 121;
         Open;
       end;
     if QueryPermissoesSomente_Leitura.asBoolean then
        DBNavigatorPagProtetico.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
end;

procedure TFormPagProtetico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryPreferencias.Close;
     QueryStatus_Pagto.Close;
     QueryOrcamentos.Close;
     QueryItensPagProtetico.Close;
     QueryUsuarios.Close;
     QueryServicos.Close;
     QueryProtetico.Close;
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryPermissoes.Close;
end;

procedure TFormPagProtetico.DBEditDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
            VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
          vk_f1:
            begin
              BitBtnPesquisarClick(Sender);
              EditProcura.SetFocus;
            end;
     end;
end;

procedure TFormPagProtetico.DBGridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
       vk_return :
          begin
            key := vk_tab;
            if Assigned(TIECustomGrid(Sender).InplaceEditor) then
               TIEInplaceEdit(TIECustomGrid(Sender).InplaceEditor).KeyDown(key,shift);
          end;
        vk_escape :
          begin
            if QueryItensPagProteticoServico.asString = '' then
               QueryItensPagProtetico.Cancel;
            BitBtnPesquisar.SetFocus;
          end;
        vk_f1:
          begin
            BitBtnPesquisarClick(Sender);
            EditProcura.SetFocus;
          end;
     end;
end;

{ TIEInplaceEdit }

procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TFormPagProtetico.DBGridItensExit(Sender: TObject);
begin
  MontaTotal;
end;

procedure TFormPagProtetico.MontaTotal;
begin
     Valor_Total := 0;
     Valor_TotalBruto := 0;
     Valor_TotalProtetico := 0;

     with QueryItensPagProtetico do
       begin
         First;
         while not eof do
           begin
             Valor_Total := Valor_Total + QueryItensPagProteticoValor.asCurrency;
             if QueryItensPagProteticoQuantidade_Paga.asInteger <> 0 then
                Valor_TotalProtetico := Valor_TotalProtetico + QueryItensPagProteticoValor.asCurrency;
             Next;
           end;
         First;
       end;

     EditTotal.Text := FormatFloat( 'R$' + '###,##0.00', Valor_TotalProtetico);
//     BitBtnPesquisar.SetFocus;
end;

procedure TFormPagProtetico.QueryItensPagProteticoAfterPost(DataSet: TDataSet);
var Ponteiro : Integer;
begin
     Ponteiro := QueryItensPagProteticoIncremento.asInteger;
     with QueryItensPagProtetico do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         Open;
         Locate('Incremento', Ponteiro, [loCaseInsensitive]);
       end;
end;

procedure TFormPagProtetico.DataSourceOrcamentoDataChange(Sender: TObject;
  Field: TField);
begin
     if QueryOrcamentos.RecordCount = 0 then exit;

     if DBEditUsuario.Text <> '' then
        begin
          VUsuario := StrToInt(Copy(DBEditUsuario.Text,1, (Length(DBEditUsuario.Text)) - 1));
          Digito := StrToInt(Copy(DBEditUsuario.Text, Length(DBEditUsuario.Text), 1));

          with QueryUsuarios do
            begin
              Close;
              ParamByName('Usuario').asInteger := VUsuario;
              ParamByName('Digito_Usuario').asInteger := Digito;
              Open;

              EditNomeUsuario.Text := QueryUsuariosNome.asString;

              with QueryContratante do
                begin
                  Close;
                  ParamByName('Codigo_Contrantante').asInteger := VUsuario;
                  Open;
                end;
            end;
        end;

     with QueryTipoOrcamento do
       begin
         Close;
         ParamByName('Tipo_Orcamento').asInteger := QueryOrcamentosTipo.asInteger;
         Open;
         EditTipo.Text := QueryTipoOrcamentoDescricao.AsString;
       end;
end;

function TFormPagProtetico.VerificaQuantidade: Boolean;
begin
   QueryVerifica.close;
   QueryVerifica.sql[01] := QueryOrcamentosNumero.AsString;
   QueryVerifica.sql[03] := QueryOrcamentosNumero.AsString;
   QueryVerifica.Open;
   result := QueryVerifica.FieldByName('qtde').AsInteger <> 0;
   // Significa que tá diferente as quantidade de itesn no orcamento e no itens pagto dentista
end;

procedure TFormPagProtetico.Monta_Itens;
begin
     Incremento := 0;
     cargaInicial := true;
     with QueryItensOrcamento do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         sql[2] := ' and valor_protetico <> 0 ';
         SQL[3] := 'order by Orcamento, Incremento, Servico';
         SQL[4] := '';
         Open;

         while not eof do
           begin
             for i := 1 to QueryItensOrcamentoQuantidade.asInteger do
               begin
                 QueryItensPagProtetico.Insert;
                 Incremento := Incremento + 1;
                 QueryItensPagProteticoOrcamento.asInteger := QueryOrcamentosNumero.asInteger;
                 QueryItensPagProteticoProtetico.asInteger := QueryPagProteticoProtetico.asInteger;
                 //QueryItensPagProteticoIncremento.asInteger :=   Incremento;
                 QueryItensPagProteticoIncremento.asInteger :=   QueryItensOrcamentoIncremento.AsInteger;
                 QueryItensPagProteticoServico.asInteger := QueryItensOrcamentoServico.asInteger;
                 QueryItensPagProteticoQuantidade.asInteger := 1;
                 QueryItensPagProteticoQuantidade_Paga.asInteger := 0;
                 QueryItensPagProteticoMesAno.asString := '';
                 if QueryItensOrcamentostatus.AsString = 'C' then
                    QueryItensPagProteticostatus.AsString := 'C';


                 try
                   QueryItensPagProtetico.Post;
                 except
                   on E: Exception do
                   begin
                     QueryItensPagProtetico.Cancel;
                     ShowMessage('Erro de Gravação da Tabela Pagamento Protético  no item ' + QueryItensOrcamentoServico.AsString + ' !!!' +  e.Message);
                     //exit;
                   end;
                 end;
               end;
            Next;
           end;
         First;
       end;
       cargaInicial := false;
end;

procedure TFormPagProtetico.BitBtnPesquisarClick(Sender: TObject);
begin
     GroupBoxProcura.Visible := True;
     GroupBoxProcura.Left := 541;
     GroupBoxProcura.Top := 3;
     EditProcura.Text := '';
     EditProcura.SetFocus;
     pg_total := False;
end;

procedure TFormPagProtetico.EditProcuraExit(Sender: TObject);
begin
     with QueryOrcamentos do
       begin
         Close;
         SQL[1] := ('where Numero = :Numero_Orcamento');
         SQL[2] := 'order by Numero';
         SQL[3] := '';
         Params[0].DataType := ftInteger;
         Params[0].ParamType := ptInput;
         ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
         Open;
         if RecordCount = 0 then
            begin
              ShowMessage('Orçamento Não Encontrado !!!!');
              GroupBoxProcura.Visible := False;
              exit;
            end;
         Status := QueryOrcamentosStatus.AsInteger;

         BitBtnPgParcial.Enabled := QueryOrcamentosStatus.AsInteger = 7;
         BitBtnPgTotal.Enabled := BitBtnPgParcial.Enabled;

         if Status = 4 then
            begin
              messagedlg('Este orçamento está Paralisado desde ' +
                QueryOrcamentosData_Status.asString + '.', mtWarning,[mbOk], 0);
            end;
       end;
     with QueryPagProtetico do
       begin
         Close;
         ParambyName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         SQL[2] := ('order by Protetico');
         SQL[3] := '';
         Open;

         if recordcount = 0 then
         begin
           Insert;
           QueryItensPagProtetico.Close;
           QueryPagProteticoOrcamento.asInteger := QueryOrcamentosNumero.asInteger;
           QueryPagProteticoUsuario.asInteger   := QueryOrcamentosUsuario.asInteger;
           QueryPagProteticoData.asDateTime     := QueryOrcamentosData.asDateTime;
         end;
       end;

     GroupBoxProcura.Visible := False;
     with QueryObservacoes do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         Open;
         if RecordCount <> 0 then
            Showmessage('Orçamento com Observação !');
       end;

end;

procedure TFormPagProtetico.EditProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFormPagProtetico.QueryItensPagProteticoAfterInsert(
  DataSet: TDataSet);
begin
     QueryItensPagProteticoOrcamento.asInteger := QueryPagProteticoOrcamento.asInteger;
     QueryItensPagProteticoProtetico.asInteger := QueryPagProteticoProtetico.asInteger;
     QueryItensPagProteticoIncremento.asInteger := QueryItensPagProtetico.RecordCount + 1;
end;

procedure TFormPagProtetico.QueryItensPagProteticoQuantidade_PagaValidate(
  Sender: TField);
begin
     Data_Base := dm.Date;
     DecodeDate(Data_Base, Ano, Mes, Dia);
     if QueryItensPagProteticoQuantidade_Paga.asInteger = 0 then
        begin
          QueryItensPagProteticoMesAno.asString := '';
          QueryItensPagProteticoValor.asString := '';
        end
     else
       begin
         if Mes < 10 then
            QueryItensPagProteticoMesAno.asString := '0' + IntToStr(Mes) + '/' + IntToStr(Ano)
         else
            QueryItensPagProteticoMesAno.asString := IntToStr(Mes) + '/' + IntToStr(Ano);
         with QueryItensOrcamento do
           begin
             Close;
             SQL[1] := ('where Orcamento = :Numero_Orcamento');
             SQL[3] := ('and Servico = :Codigo_Servico');
             SQL[4] := 'order by Orcamento, Incremento, Servico';
             Params[0].DataType := ftInteger;
             Params[0].ParamType := ptInput;
             Params[1].DataType := ftInteger;
             Params[1].ParamType := ptInput;
             ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
             ParamByName('Codigo_Servico').asInteger := QueryItensPagProteticoServico.asInteger;
             Open;
           end;
         if QueryItensOrcamentoQuantidade.asInteger > 0 then
            //QueryItensPagProteticoValor.asCurrency := QueryItensOrcamentoValor_Protetico.asCurrency / QueryItensOrcamentoQuantidade.asInteger;
            QueryItensPagProteticoValor.asCurrency := GetVrProtetico(QueryItensPagProteticoProtetico.AsString,QueryItensPagProteticoServico.AsString,QueryItensPagProteticocd_tabela.AsString);

       end;
end;

procedure TFormPagProtetico.QueryItensPagProteticoBeforePost(
  DataSet: TDataSet);
begin
     if QueryItensPagProteticoOrcamento.asString = '' then
        QueryItensPagProtetico.Cancel;

    if not QueryItensPagProteticoid_pagto.IsNull then
    begin
       ShowMessage('Não é possível realizar alterações neste registro, já foi efetivado o pagamento deste procedimento!');
       Abort;
    end;
    if dm.ExecutaComando('select count(*) qt from EfetivaPagto where tp_pagto = ''P'' and periodo = ''' +  QueryItensPagProteticoMesAno.AsString + '''','qt') <> '0' then
    begin
       ShowMessage('Operação Cancela, o período informado já foi efetivado o pagamento, não pode ser lançado registro para Este Mes/Ano');
       Abort;
    end;
    QueryItensPagProteticocd_tabela.AsString := dm.GetTabPagtoProtetico(QueryPagProteticoOrcamento.AsString,QueryItensPagProteticoProtetico.AsString);
    if QueryItensPagProteticoQuantidade_Paga.AsInteger > 0 then
       QueryItensPagProteticoValor.asCurrency := GetVrProtetico(QueryItensPagProteticoProtetico.AsString,QueryItensPagProteticoServico.AsString,QueryItensPagProteticocd_tabela.AsString);
    if QueryItensPagProteticocd_tabela.AsString = '' then
    begin
       Showmessage('O sistema não conseguiu localizar a tabela para pagamento, verifique !');
       abort;
    end;


end;

procedure TFormPagProtetico.BitBtnTitulosClick(Sender: TObject);
begin
     Application.CreateForm(TFormObservacoesProteticos, FormObservacoesProteticos);
     FormObservacoesProteticos.ShowModal;
     FormObservacoesProteticos.Free;
end;

procedure TFormPagProtetico.DBEditProteticoExit(Sender: TObject);
begin
     if QueryPagProteticoProtetico.asString = '' then exit;

     with QueryProtetico do
       begin
         Close;
         ParamByName('Protetico').asInteger := QueryPagProteticoProtetico.asInteger;
         Open;
         if RecordCount = 0 then
            begin
              ShowMessage('Protético Não Cadastrado !!! [ENTER]');
              DBEditProtetico.SetFocus;
            end;
         EditNomeProtetico.Text := QueryProteticoNome.asString;
       end;

     try
       QueryPagProtetico.Post;
     except
       on E: Exception do
       begin
         ShowMessage('Erro na Gravação da Tabela de Pagamento de Protéticos !!!' + e.Message);
         QueryPagProtetico.Cancel;
         //QueryOrcamentos.Close;
         //EditNomeUsuario.clear;
         //EditTipo.clear;
         //EditNomeProtetico.clear;
         //BitBtnPesquisarClick(sender);
         //exit;
       end;
     end;
     QueryProtetico.Close;
     QueryProtetico.Open;
     QueryItensPagProtetico.First;
     DBGridItens.SetFocus;
end;

procedure TFormPagProtetico.DataSourcePagProteticoDataChange(
  Sender: TObject; Field: TField);
begin
     if QueryPagProteticoProtetico.asString = '' then
        exit;

     with QueryItensPagProtetico do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryPagProteticoOrcamento.asInteger;
//         ParamByName('Protetico').asInteger := QueryPagProteticoProtetico.asInteger;
         Open;
         MontaTotal;
       end;
end;

procedure TFormPagProtetico.QueryPagProteticoAfterPost(DataSet: TDataSet);
var Orcamento, Protetico : Integer;
begin

     with QueryPagProtetico do
       begin
         Orcamento := QueryPagProteticoOrcamento.asInteger;
         Protetico := QueryPagProteticoProtetico.asInteger;
         Close;
         SQL[2] := ('and Protetico = :Protetico');
         Params[1].DataType := ftInteger;
         Params[1].ParamType := ptInput;
         ParambyName('Numero_Orcamento').asInteger := Orcamento;
         ParamByName('Protetico').asInteger := Protetico;
         Open;
       end;

     Monta_Itens;
     if VerificaQuantidade then
        ShowMessage('Quantidade de serviços diferente a pagar diferente da quantidade de itens no orçamento, verifique')

end;

procedure TFormPagProtetico.QueryPagProteticoBeforeDelete(
  DataSet: TDataSet);
begin
     with QueryItensPagProtetico do
       begin
         First;
         if RecordCount <> 0 then
            while not eof do
               Delete;
       end;
end;

procedure TFormPagProtetico.QueryPagProteticoAfterInsert(
  DataSet: TDataSet);
begin
     DBEditProtetico.SetFocus;
end;

procedure TFormPagProtetico.DBEditProteticoEnter(Sender: TObject);
begin
     EditNomeProtetico.Text := '';
end;

procedure TFormPagProtetico.QueryPagProteticoAfterDelete(
  DataSet: TDataSet);
begin
     if QueryPagProtetico.RecordCount = 0 then
        begin
          EditNomeUsuario.Text := '';
          EditNomeProtetico.Text := '';
          DBEditNumero.Text := '';
          DBEditData.Text := '';
          DBEditTipo.Text := '';
          EditTipo.Text := '';
          DBEditUsuario.Text := '';
        end;
end;

procedure TFormPagProtetico.BitBtnPesquisaProteticoClick(Sender: TObject);
begin
   FmPesqProtetico := TFmPesqProtetico.create(self);
   FmPesqProtetico.showModal;

   if FmPesqProtetico.tag = 1  then
   begin
     QueryProtetico.Close;
     QueryProtetico.ParamByName('Protetico').asInteger := FmPesqProtetico.ADOQuery1.FieldByName('codigo').AsInteger;
     QueryProtetico.Open;
     if QueryPagProtetico.state in [dsinsert,dsedit] then
        QueryPagProteticoProtetico.asInteger := QueryProteticoCodigo.asInteger;
     DBEditProtetico.SetFocus;
   end;
   FmPesqProtetico.free;

end;

procedure TFormPagProtetico.BitBtnPgTotalClick(Sender: TObject);
begin
   if MessageDlg('Deseja efetuar o Pagamento Total ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;
   pg_total  := True;
   Data_Base := dm.Date;
   DecodeDate(Data_Base, Ano, Mes, Dia);
   with QueryItensPagProtetico do
      begin
         first;
         while not eof do begin
            // se tiver preenchido é pq já foi pago.
            if (copy(QueryItensPagProteticoMesAno.asString,3,1) = '/')  or (QueryItensPagProteticoStatus.AsString = 'C') then
            begin
               next;
               continue;
            end;

            edit;
            QueryItensPagProteticoQuantidade_Paga.AsInteger := QueryItensPagProteticoQuantidade.AsInteger;

            if Mes < 10 then
               QueryItensPagProteticoMesAno.asString := '0' + IntToStr(Mes) + '/' + IntToStr(Ano)
            else
               QueryItensPagProteticoMesAno.asString := IntToStr(Mes) + '/' + IntToStr(Ano);
            QueryItensPagProteticoProtetico.AsInteger:= QueryPagProteticoProtetico.AsInteger;

            with QueryItensOrcamento do
              begin
                Close;
                SQL[1] := ('where Orcamento = :Numero_Orcamento');
                SQL[2] := ('and Servico = :Codigo_Servico');
                SQL[3] := '';
                Params[0].DataType := ftInteger;
                Params[0].ParamType := ptInput;
                Params[1].DataType := ftInteger;
                Params[1].ParamType := ptInput;
                ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
                ParamByName('Codigo_Servico').asInteger := QueryItensPagProteticoServico.asInteger;
                Open;
              end;
            //QueryItensPagProteticoValor.asCurrency := QueryItensOrcamentoValor_Protetico.asCurrency / QueryItensOrcamentoQuantidade.asInteger;
            QueryItensPagProteticoValor.asCurrency := GetVrProtetico(QueryItensPagProteticoProtetico.AsString,QueryItensPagProteticoServico.AsString,QueryItensPagProteticocd_tabela.AsString);
            post;
            next;
         end;
      end;
   with QueryOrcamentos do begin
      Close;
      SQL[1] := ('where Numero = :Numero_Orcamento');
      SQL[2] := '';
      SQL[3] := '';
      Params[0].DataType := ftInteger;
      Params[0].ParamType := ptInput;
      ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
      Open;
//      edit;
//      QueryOrcamentosStatus_Pagamento.Value := 1;
//      post;
   end;
   MontaTotal;
end;

procedure TFormPagProtetico.BitBtnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPagProtetico.BitBtnStatusTotalClick(Sender: TObject);
begin
   if MessageDlg('Deseja modificar o Status para  Pago Total ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     with QueryOrcamentos do
     begin
       Close;
       SQL[1] := ('where Numero = :Numero_Orcamento');
       SQL[2] := '';
       SQL[3] := '';
       Params[0].DataType := ftInteger;
       Params[0].ParamType := ptInput;
       ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
       Open;
       edit;
       QueryOrcamentosStatus_Pagamento.Value := 1;
       post;
     end;
   end;
end;

procedure TFormPagProtetico.QueryPagProteticoProteticoValidate(
  Sender: TField);
begin
     if QueryPagProteticoProtetico.asString = '' then
        exit;

     with QueryProtetico do
       begin
         Close;
         ParamByName('Protetico').asInteger := QueryPagProteticoProtetico.asInteger;
         Open;
         EditNomeProtetico.Text := QueryProteticoNome.asString;
       end;

end;

procedure TFormPagProtetico.BitBtnPgParcialClick(Sender: TObject);
begin
  MontaTotal;
   if MessageDlg('Efetuado Pagamento Parcial ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
     with QueryOrcamentos do begin
       Close;
       SQL[1] := ('where Numero = :Numero_Orcamento');
       SQL[2] := '';
       SQL[3] := '';
       Params[0].DataType := ftInteger;
       Params[0].ParamType := ptInput;
       ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
       Open;
//       edit;
//       QueryOrcamentosStatus_Pagamento.Value := 2;
//       post;
     end;
   end;
end;

function TFormPagProtetico.GetVrProtetico(cdProtetico : string; cdServico : string; cdTabela : string): Currency;
var vrAux : string;
var cdTabelaQtUS: string;
var indiceTabPagProteticoAux : string;
begin
    if (trim(cdProtetico) = '') or (trim(cdServico) = '') then
    begin
       result := 0;
       exit;
    end
    else
    if utilizaFormulaNovaPagtoProtetico then
    begin
      indiceTabPagProteticoAux := GetTabPagtoProteticoaNova(cdProtetico,cdServico);

      cdTabelaQtUS := dm.execmd('select cd_tabelaQTUS from protetico where codigo = ' + cdProtetico,'cd_tabelaQTUS');
      vrAux := dm.execmd('select vrUs * qtUs vr from TabPagProteticoXProcedimento t, protetico d, servicoXqtUs s where d.codigo = t.cd_protetico and d.cd_tabelaQTUS = s.cd_tabela and s.cd_servico = ' + cdServico + ' and t.indice = ' +  indiceTabPagProteticoAux + ' and s.cd_tabela = ' + cdTabelaQtUS,'vr');

      if(vrAux <> '') then
        Valor_Protetico := strToFloat(vrAux)
      else
      begin
        result := 0;
        ShowMessage('Não foi possível calcular o preço do serviço ' + QueryItensOrcamentoServico.AsString + ', tabela Pag protetico : ' + indiceTabPagProteticoAux + ' tabela qtde US : ' + cdTabelaQtUS);
        exit;
      end;
      result := StrToCurr(vrAux);
    end
    else
    begin
       vrAux := dm.execmd('select vr_dentista as vr_protetico from tabPagto_vrServico where cd_tabela = ' + cdTabela + ' and cd_servico = ' + cdServico,'vr_protetico');
       if vrAux <> '' then
          result := StrToCurr(vrAux)
       else
       begin
          ShowMessage('Valor não encontrado para este serviço, verifique se o serviço existe para essa tabela de pagamento de protético');
          result := 0;
       end;
    end;
end;

procedure TFormPagProtetico.QueryItensPagProteticoNewRecord(
  DataSet: TDataSet);
begin
  if not cargaInicial then
     Abort;
end;

procedure TFormPagProtetico.QueryItensPagProteticoBeforeDelete(
  DataSet: TDataSet);
begin
       ShowMessage('Não é possível excluir esse registro, já foi efetivado o pagamento deste procedimento!');
       Abort;
end;

function TFormPagProtetico.GetTabPagtoProteticoaNova(cdProtetico: string ;cdServico :string): string;


//parei aqui ver onde incluir essa procedure
//verificar no script de banco se faz referencia aos campos e tabelas
//verificar nos fontes as referencias dentista
//testar nova estrutura

var indiceAux : string;

begin
      if cdProtetico = '' then
         exit;
      indiceAux := dm.execmd('select indice from TabPagProteticoXProcedimento t where t.cd_protetico = ' + cdProtetico  + ' and t.cd_procedimento = ' + cdServico + ' and dtFim is null','indice' );
      if indiceAux = '' then
      begin
         ShowMessage('nao foi possivel localizar a tabela da TabPagProteticoXProcedimento  para este protetico, operacao cancelada');
         abort;
      end;
      if QueryItensPagProtetico.State = dsBrowse then
      begin
        QueryItensPagProtetico.Edit;
        QueryItensPagProteticoindiceTabPagProtetico.AsString := indiceAux;

        QueryItensOrcamento.post;

      end
      else
         QueryItensPagProteticoindiceTabPagProtetico.AsString := indiceAux;
      result := indiceAux;   
end;


end.




