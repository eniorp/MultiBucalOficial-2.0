{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Manutenção dos Títulos em Aberto                          }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit ConsultaTitulos;   

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Db, StdCtrls, Mask, DBTables, Grids, DBGrids, ExtCtrls, Buttons, DBIProcs;//, Biblio;

type
  TFormConsultaReceber = class(TForm)
    Panel1: TPanel;
    DataSourceContratante: TDataSource;
    DataSourceTitulo: TDataSource;
    DataSourceTipoDocumento: TDataSource;
    DataSourceTipoCobranca: TDataSource;
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
    QueryTituloTipo_Auxiliar: TStringField;
    QueryTituloCobranca_Auxiliar: TStringField;
    QueryTituloNumero_Banco: TStringField;
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
    Panel3: TPanel;
    Panel4: TPanel;
    DBGridTituloReceber: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEditOrcamentoPago: TDBEdit;
    DBEditOrcamentoDevedor: TDBEdit;
    DBEditOrcamentoReceber: TDBEdit;
    DBEditMensalidadePago: TDBEdit;
    DBEditMensalidadeDevedor: TDBEdit;
    DBEditMensalidadeReceber: TDBEdit;
    DBEditTotalPago: TDBEdit;
    DBEditTotalDevedor: TDBEdit;
    DBEditTotalReceber: TDBEdit;
    Bevel1: TBevel;
    Bevel2: TBevel;
    QueryTitulos2: TQuery;
    DataSourceTitulos2: TDataSource;
    QueryTitulos2Orcamento_Pago: TCurrencyField;
    QueryTitulos2Orcamento_Devedor: TCurrencyField;
    QueryTitulos2Orcamento_Receber: TCurrencyField;
    QueryTitulos2Mensalidade_Pago: TCurrencyField;
    QueryTitulos2Mensalidade_Devedor: TCurrencyField;
    QueryTitulos2Mensalidade_Receber: TCurrencyField;
    QueryTitulos2Total_Pago: TCurrencyField;
    QueryTitulos2Total_Devedor: TCurrencyField;
    QueryTitulos2Total_Receber: TCurrencyField;
    QueryTitulos2Numero_Titulo: TIntegerField;
    QueryTitulos2Desdobramento: TStringField;
    QueryTitulos2Tipo_Documento: TIntegerField;
    QueryTitulos2Codigo_Contratante: TIntegerField;
    QueryTitulos2Data_Emissao: TDateTimeField;
    QueryTitulos2Data_Vencimento: TDateTimeField;
    QueryTitulos2Valor: TFloatField;
    QueryTitulos2Saldo: TFloatField;
    QueryTitulos2Tipo_Cobranca: TIntegerField;
    QueryTitulos2Numero_Banco: TStringField;
    QueryTitulos2Data_Pagamento: TDateTimeField;
    QueryTitulos2Valor_Pago: TFloatField;
    QueryTitulos2Desconto: TFloatField;
    QueryTitulos2Juros: TFloatField;
    QueryTitulos2Operador: TSmallintField;
    QueryTitulos2Orcamento: TIntegerField;
    Panel2: TPanel;
    Panel5: TPanel;
    LabelProcura: TLabel;
    LabelNumero: TLabel;
    EditProcura: TEdit;
    BitBtnPesquisar: TBitBtn;
    DBEditNome: TDBEdit;
    Panel6: TPanel;
    Panel7: TPanel;
    DBNavigatorContratante: TDBNavigator;
    BitBtnSair: TBitBtn;
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
    procedure FormCreate(Sender: TObject);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSourceContratanteDataChange(Sender: TObject;
      Field: TField);
    procedure EditProcuraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProcuraExit(Sender: TObject);
    procedure QueryTitulos2CalcFields(DataSet: TDataSet);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure DBGridTituloReceberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure MontaOrcamentos;

  public
    { Public declarations }
  end;

var
  FormConsultaReceber: TFormConsultaReceber;
  Data_Base : TDateTime;
  Orcamento_Pago, Orcamento_Devedor, Orcamento_Receber, Mensalidade_Pago,
  Mensalidade_Devedor, Mensalidade_Receber, Total_Pago, Total_Devedor, Total_Receber : Currency;

implementation

uses PesquisaContratante, DadosCadastrais, udm;

{$R *.DFM}

procedure TFormConsultaReceber.FormCreate(Sender: TObject);
begin
     QueryTipoDocumento.Open;
     QueryTipoCobranca.Open;

     Top := 65;
     Left := 10;
     EditProcura.Text := '';
     LabelNumero.Caption := '';
end;

procedure TFormConsultaReceber.EditProcuraKeyPress(Sender: TObject; var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFormConsultaReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryContratante.Close;
     QueryTitulo.Close;
     QueryTitulos2.Close;     
     Action := cafree;
end;

procedure TFormConsultaReceber.DataSourceContratanteDataChange(
  Sender: TObject; Field: TField);
begin
     if QueryContratante.RecordCount = 0 then
        exit;

     Orcamento_Pago := 0;
     Orcamento_Devedor := 0;
     Orcamento_Receber := 0;
     Mensalidade_Pago := 0;
     Mensalidade_Devedor := 0;
     Mensalidade_Receber := 0;
     Total_Pago := 0;
     Total_Devedor := 0;
     Total_Receber := 0;
     Data_Base := dm.Date;

     with QueryTitulo do
       begin
         Close;
         SQL[1] := ('where Codigo_Contratante = ' + QueryContratanteCodigo.asString);
         Open;
         if RecordCount <> 0 then
            LabelNumero.Caption := IntToStr(RecordCount) + ' Títulos Encontrados'
         else
            LabelNumero.Caption := '';
       end;

     MontaOrcamentos;
end;

procedure TFormConsultaReceber.MontaOrcamentos;
begin
     with QueryTitulos2 do
       begin
         Close;
         SQL[1] := ('where Codigo_Contratante = ' + QueryContratanteCodigo.asString);
         Open;

         while not eof do
            begin
              if (QueryTitulos2Desdobramento.asString = 'O') or
                 (QueryTitulos2Desdobramento.asString = '2') then begin
                  if QueryTitulos2Data_Pagamento.asString = '' then begin
                     if QueryTitulos2Data_Vencimento.asDateTime >= Data_Base then
                        Orcamento_Receber := Orcamento_Receber + QueryTitulos2Saldo.asCurrency
                     else
                        Orcamento_Devedor := Orcamento_Devedor + QueryTitulos2Saldo.asCurrency;
                  end
                  else
                     Orcamento_Pago := Orcamento_Pago + QueryTitulos2Valor_Pago.asCurrency
              end
              else
                 if (QueryTitulos2Desdobramento.asString = 'M') or
                    (QueryTitulos2Desdobramento.asString = '1') then begin
                     if QueryTitulos2Data_Pagamento.asString = '' then begin
                        if QueryTitulos2Data_Vencimento.asDateTime >= Data_Base then
                           Mensalidade_Receber := Mensalidade_Receber + QueryTitulos2Saldo.asCurrency
                        else
                           Mensalidade_Devedor := Mensalidade_Devedor + QueryTitulos2Saldo.asCurrency;
                     end
                     else
                        Mensalidade_Pago := Mensalidade_Pago + QueryTitulos2Valor_Pago.asCurrency;
                 end;

              Total_Pago := Orcamento_Pago + Mensalidade_Pago;
              Total_Devedor := Orcamento_Devedor + Mensalidade_Devedor;
              Total_Receber := Orcamento_Receber + Mensalidade_Receber;

              Next;
            end;
           Prior;
        end;
end;

procedure TFormConsultaReceber.EditProcuraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
          vk_f1:
            if EditProcura.Focused then
               BitBtnPesquisarClick(Sender);
          vk_f12:
            begin
              Application.CreateForm(TFormDadosCadastrais, FormDadosCadastrais);
              FormDadosCadastrais.ShowModal;
              FormDadosCadastrais.Free;
            end;
     end;
end;

procedure TFormConsultaReceber.EditProcuraExit(Sender: TObject);
begin
     if EditProcura.Text = '' then exit;
     
     with QueryContratante do
        begin
          Close;
          ParamByName('Codigo_Contratante').asInteger := StrToInt(EditProcura.Text);
          Open;
          if RecordCount = 0 then
             begin
               ShowMessage('Contratante Não Cadastrado !!!');
               EditProcura.Text := '';
               EditProcura.SetFocus;
               exit;
             end;
        end;
     DBGridTituloReceber.SetFocus;
end;

procedure TFormConsultaReceber.QueryTitulos2CalcFields(DataSet: TDataSet);
begin
     QueryTitulos2Orcamento_Pago.asCurrency := Orcamento_Pago;
     QueryTitulos2Orcamento_Devedor.asCurrency := Orcamento_Devedor;
     QueryTitulos2Orcamento_Receber.asCurrency := Orcamento_Receber;
     QueryTitulos2Mensalidade_Pago.asCurrency := Mensalidade_Pago;
     QueryTitulos2Mensalidade_Devedor.asCurrency := Mensalidade_Devedor;
     QueryTitulos2Mensalidade_Receber.asCurrency := Mensalidade_Receber;
     QueryTitulos2Total_Pago.asCurrency := Total_Pago;
     QueryTitulos2Total_Devedor.asCurrency := Total_Devedor;
     QueryTitulos2Total_Receber.asCurrency := Total_Receber;
end;

procedure TFormConsultaReceber.BitBtnPesquisarClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
     FormPesquisaContratante.ShowModal;
     EditProcura.Text := IntToStr(PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asInteger);
     EditProcura.SetFocus;
     FormPesquisaContratante.QueryContratante.Close;
     FormPesquisaContratante.Free;
end;

procedure TFormConsultaReceber.DBGridTituloReceberKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          vk_f1: BitBtnPesquisarClick(Sender);
          vk_f12:
            begin
              Application.CreateForm(TFormDadosCadastrais, FormDadosCadastrais);
              FormDadosCadastrais.ShowModal;
              FormDadosCadastrais.Free;
            end;
     end;
end;

end.
