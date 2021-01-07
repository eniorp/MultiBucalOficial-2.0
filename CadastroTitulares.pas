unit CadastroTitulares;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, DBCtrls, Mask, ExtCtrls, Db, DBTables;

type
  TFormCadastroTitulares = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    Label2: TLabel;
    GroupBoxResidencial: TGroupBox;
    Label10: TLabel;
    Label23: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    DBEditFax: TDBEdit;
    DBEditFone: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditEstado: TDBEdit;
    DBEditCep: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditEndereco: TDBEdit;
    DBEditCelular: TDBEdit;
    GroupBoxEnderecoCobranca: TGroupBox;
    Label12: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label35: TLabel;
    DBEditEndComercial: TDBEdit;
    DBEditBairroCobranca: TDBEdit;
    DBEditCidadeComercial: TDBEdit;
    DBEditEstadoComercial: TDBEdit;
    DBEditCepComercial: TDBEdit;
    DBEditEmail: TDBEdit;
    GroupBoxAdicionais: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label71: TLabel;
    Label19: TLabel;
    DBEditCNPJCPF: TDBEdit;
    DBEditRG: TDBEdit;
    DBLookupComboBoxGrupoContratante: TDBLookupComboBox;
    DBEditInscricao: TDBEdit;
    GroupBoxComplemento: TGroupBox;
    Label26: TLabel;
    Label51: TLabel;
    Label57: TLabel;
    Label4: TLabel;
    Label34: TLabel;
    Label5: TLabel;
    Label65: TLabel;
    DBLookupComboBoxPlano: TDBLookupComboBox;
    DBEditInclusao: TDBEdit;
    DBEditConsultor1: TDBEdit;
    EditNomeVendedor1: TEdit;
    DBEditExclusao: TDBEdit;
    DBEditContratoAnterior: TDBEdit;
    GroupBoxFormaCobranca: TGroupBox;
    Label40: TLabel;
    Label33: TLabel;
    Label45: TLabel;
    GroupBoxDebito: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label64: TLabel;
    SpeedButtonChecar: TSpeedButton;
    Label41: TLabel;
    Label14: TLabel;
    DBEditBanco: TDBEdit;
    DBEditAgencia: TDBEdit;
    DBEditConta: TDBEdit;
    DBEditTitularDeb: TDBEdit;
    DBEditDigito: TDBEdit;
    DBEditNumeroCartao: TDBEdit;
    DBEditCodigoSeguranca: TDBEdit;
    DBLookupComboBoxCobranca: TDBLookupComboBox;
    DBEditVenc1: TDBEdit;
    DBEditUltimoFaturamento: TDBEdit;
    Panel1: TPanel;
    Panel4: TPanel;
    DBNavigatorContratante: TDBNavigator;
    BitBtnSair: TBitBtn;
    QueryContratante: TQuery;
    DataSourceContratante: TDataSource;
    QueryGrupoContratante: TQuery;
    DataSourceGrupoContratante: TDataSource;
    QueryVendedores: TQuery;
    DataSourceVendedores: TDataSource;
    QueryPlanos: TQuery;
    DataSourcePlanos: TDataSource;
    QueryTipoCobranca: TQuery;
    DataSourceTipoCobranca: TDataSource;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryContratanteRG: TStringField;
    QueryContratanteCGC_CPF: TStringField;
    QueryContratanteIE: TStringField;
    QueryContratanteVencimento: TSmallintField;
    QueryContratanteInclusao: TDateTimeField;
    QueryContratanteExclusao: TDateTimeField;
    QueryContratanteEndereco_Comercial: TStringField;
    QueryContratanteBairro_Comercial: TStringField;
    QueryContratanteCidade_Comercial: TStringField;
    QueryContratanteEstado_Comercial: TStringField;
    QueryContratanteCep_Comercial: TStringField;
    QueryContratanteFone1: TStringField;
    QueryContratanteFone2: TStringField;
    QueryContratanteFax: TStringField;
    QueryContratanteemail: TStringField;
    QueryContratanteEndereco_Residencial: TStringField;
    QueryContratanteBairro_Residencial: TStringField;
    QueryContratanteCidade_Residencial: TStringField;
    QueryContratanteEstado_Residencial: TStringField;
    QueryContratanteCEP_Residencial: TStringField;
    QueryContratantePlano: TSmallintField;
    QueryContratanteVendedor: TIntegerField;
    QueryContratanteGrupo_Contratante: TSmallintField;
    QueryContratanteMotivo_Cancelamento: TSmallintField;
    QueryContratanteBanco: TSmallintField;
    QueryContratanteAgencia: TStringField;
    QueryContratanteConta: TStringField;
    QueryContratanteDigito: TStringField;
    QueryContratanteTitular_Conta: TStringField;
    QueryContratanteNumero_Cartao: TStringField;
    QueryContratanteCodigo_Seguranca: TStringField;
    QueryContratanteContrato_Anterior: TStringField;
    QueryContratanteUltimo_Faturamento: TDateTimeField;
    QueryContratanteSituacao: TStringField;
    QueryVendedoresCodigo: TIntegerField;
    QueryVendedoresNome: TStringField;
    DBLookupComboBoxCancelamento: TDBLookupComboBox;
    QueryCancelamento: TQuery;
    DataSourceCancelamento: TDataSource;
    QueryCancelamentoCodigo: TSmallintField;
    QueryCancelamentoDescricao: TStringField;
    QueryContratanteTipo_Correspondencia: TStringField;
    DBComboBoxTipoCorrespondencia: TDBComboBox;
    QueryContratanteAuxiliar: TQuery;
    QueryContratanteAuxiliarCodigo: TIntegerField;
    QueryContratanteForma_Cobranca: TIntegerField;
    QueryGrupoContratanteCodigo: TIntegerField;
    QueryGrupoContratanteDescricao: TStringField;
    QueryGrupoContratanteFlag_Envio_Ans: TStringField;
    QueryPlanosCodigo: TIntegerField;
    QueryPlanosDescricao: TStringField;
    QueryPlanosCodigo_Susep: TIntegerField;
    QueryPlanosTitular_Contratante: TStringField;
    QueryPlanosFis_Jur: TStringField;
    QueryPlanosFlag_Envio_Ans: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditEndComercialEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEditConsultor1Exit(Sender: TObject);
    procedure QueryContratanteAfterInsert(DataSet: TDataSet);
    procedure QueryContratanteAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadastroTitulares: TFormCadastroTitulares;

implementation

{$R *.DFM}

uses Contratante, udm;

procedure TFormCadastroTitulares.FormCreate(Sender: TObject);
begin
     Left := 0;
     Top := 0;
     QueryCancelamento.Open;
     QueryContratante.Open;
     QueryGrupoContratante.Open;
     QueryVendedores.Open;
     QueryPlanos.Open;
     QueryTipoCobranca.Open;

     QueryContratante.Insert;
end;

procedure TFormCadastroTitulares.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Contratante.Nome_Usuario := QueryContratanteNome.asString;
     if QueryContratante.State in [dsInsert] then
        begin
          try
            QueryContratante.Post;
          except
            begin
              MessageDlg('Erro de Gravação na Tabela Contratante !!!!', mtError, [mbOk], 0);
              QueryContratante.Cancel;
            end;
          end;
        end;

     QueryCancelamento.Close;
     QueryContratante.Close;
     QueryGrupoContratante.Close;
     QueryVendedores.Close;
     QueryPlanos.Close;
     QueryTipoCobranca.Close;
     QueryContratanteAuxiliar.Close;
end;

procedure TFormCadastroTitulares.DBEditNomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormCadastroTitulares.DBEditEndComercialEnter(Sender: TObject);
begin
     if QueryContratante.State in [dsInsert] then
        begin
           QueryContratanteEndereco_Comercial.asString := QueryContratanteEndereco_Residencial.asString;
           QueryContratanteBairro_Comercial.asString := QueryContratanteBairro_Residencial.asString;
           QueryContratanteCidade_Comercial.asString := QueryContratanteCidade_Residencial.asString;
           QueryContratanteEstado_Comercial.asString := QueryContratanteEstado_Residencial.asString;
           QueryContratanteCep_Comercial.asString := QueryContratanteCep_Residencial.asString;
        end;
     DBEditEndComercial.SelectAll;
end;

procedure TFormCadastroTitulares.FormActivate(Sender: TObject);
begin
     DBEditNome.SetFocus;
end;

procedure TFormCadastroTitulares.DBEditConsultor1Exit(Sender: TObject);
begin
     if QueryContratanteVendedor.asString = '' then
        exit;

     with QueryVendedores do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + QueryContratanteVendedor.asString);
         Open;
       end;

     if QueryVendedores.RecordCount = 0 then
        begin
          ShowMessage('Consultor de Venda Não Cadastrado !!! [ENTER]');
          DBEditConsultor1.SetFocus;
          exit;
        end;

     EditNomeVendedor1.Text := QueryVendedoresNome.asString;
end;

procedure TFormCadastroTitulares.QueryContratanteAfterInsert(
  DataSet: TDataSet);
begin
     QueryContratanteInclusao.asDateTime := dm.Date;
     QueryContratanteTipo_Correspondencia.asString := 'Residêncial';
     QueryContratanteVencimento.asInteger := 10;
     EditNomeVendedor1.Text := '';
end;

procedure TFormCadastroTitulares.QueryContratanteAfterPost(
  DataSet: TDataSet);
begin
        with QueryContratante do
          begin
            Close;
            Open;
          end;

        with QueryContratanteAuxiliar do
           begin
             Close;
             SQL[1] := 'where Codigo <> ''''';
             Open;
             Last;
           end;
     Contratante.Codigo_Usuario := QueryContratanteAuxiliarCodigo.asInteger;
end;

end.
