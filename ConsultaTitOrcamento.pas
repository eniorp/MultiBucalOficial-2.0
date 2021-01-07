unit ConsultaTitOrcamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, Mask, DBCtrls, StdCtrls, Buttons, ExtCtrls;

type
  TFormConsultaTitulosOrcamento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel6: TPanel;
    DBNavigatorContratante: TDBNavigator;
    Panel7: TPanel;
    BitBtnSair: TBitBtn;
    Panel5: TPanel;
    LabelProcura: TLabel;
    LabelNumero: TLabel;
    DBEditNome: TDBEdit;
    Panel4: TPanel;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryContratanteRG: TStringField;
    QueryContratanteCGC_CPF: TStringField;
    QueryContratanteIE: TStringField;
    QueryContratanteVencimento: TIntegerField;
    QueryContratanteInclusao: TDateTimeField;
    QueryContratanteExclusao: TDateTimeField;
    QueryContratanteEndereco_Comercial: TStringField;
    QueryContratanteBairro_Comercial: TStringField;
    QueryContratanteCidade_Comercial: TStringField;
    QueryContratanteEstado_Comercial: TStringField;
    QueryContratanteCep_Comercial: TStringField;
    QueryContratanteEndereco_Residencial: TStringField;
    QueryContratanteBairro_Residencial: TStringField;
    QueryContratanteCidade_Residencial: TStringField;
    QueryContratanteEstado_Residencial: TStringField;
    QueryContratanteCEP_Residencial: TStringField;
    QueryContratanteFone1: TStringField;
    QueryContratanteFone2: TStringField;
    QueryContratanteFax: TStringField;
    QueryContratanteTipo_Correspondencia: TStringField;
    QueryContratanteVendedor: TIntegerField;
    QueryContratanteBanco: TIntegerField;
    QueryContratanteAgencia: TStringField;
    QueryContratanteConta: TStringField;
    QueryContratanteDigito: TStringField;
    QueryContratanteTitular_Conta: TStringField;
    QueryContratanteContrato_Anterior: TStringField;
    QueryContratanteemail: TStringField;
    QueryContratanteNumero_Cartao: TStringField;
    QueryContratanteCodigo_Seguranca: TStringField;
    QueryContratanteMotivo_Cancelamento: TIntegerField;
    QueryContratanteSituacao: TStringField;
    QueryContratanteForma_Cobranca: TIntegerField;
    QueryContratanteUltimo_Faturamento: TDateTimeField;
    QueryContratantePlano: TIntegerField;
    QueryContratanteGrupo_Contratante: TIntegerField;
    QueryContratanteOperador_Inclusao: TIntegerField;
    QueryContratanteOperador_Alteracao: TIntegerField;
    QueryContratanteOperador_Exclusao: TIntegerField;
    QueryTitulo: TQuery;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloDesdobramento: TStringField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloSaldo: TFloatField;
    QueryTituloTipo_Auxiliar: TStringField;
    QueryTituloCobranca_Auxiliar: TStringField;
    QueryTituloNumero_Banco: TStringField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloValor_Pago: TFloatField;
    QueryTituloDesconto: TFloatField;
    QueryTituloJuros: TFloatField;
    QueryTituloOperador: TSmallintField;
    QueryTituloTipo_Documento: TIntegerField;
    QueryTituloTipo_Cobranca: TIntegerField;
    QueryTituloOrcamento: TIntegerField;
    QueryTipoDocumento: TQuery;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobranca: TQuery;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    DataSourceTitulo: TDataSource;
    DataSourceContratante: TDataSource;
    DBGridTituloReceber: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBGridTituloReceberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaTitulosOrcamento: TFormConsultaTitulosOrcamento;

implementation

{$R *.DFM}

uses Orcamentos;

procedure TFormConsultaTitulosOrcamento.FormCreate(Sender: TObject);
begin
     if Orcamentos.FormOrcamentos.QueryOrcamentosUsuario.asString = '' then exit;

     Top := 65;
     Left := 20;
     LabelNumero.Caption := '';
     QueryTipoDocumento.Open;
     QueryTipoCobranca.Open;

     with QueryTitulo do
       begin
         Close;
         SQL[1] := ('where Codigo_Contratante = ' + Orcamentos.FormOrcamentos.QueryContratanteCodigo.asString);
         Open;
         if RecordCount <> 0 then
            LabelNumero.Caption := IntToStr(RecordCount) + ' Títulos Encontrados'
         else
            LabelNumero.Caption := '';
       end;
end;

procedure TFormConsultaTitulosOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QueryContratante.Close;
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryTitulo.Close;
end;

procedure TFormConsultaTitulosOrcamento.FormActivate(Sender: TObject);
begin
     DBGridTituloReceber.SetFocus;
end;

procedure TFormConsultaTitulosOrcamento.DBGridTituloReceberKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_ESCAPE : Close;
     end;
end;

end.
