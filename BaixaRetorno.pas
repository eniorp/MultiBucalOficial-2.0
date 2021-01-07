{ Sistema .........: Contas                                                    }
{ Programa ........: Baixa Automática de Títulos e Boletos do Banespa          }

unit BaixaRetorno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  TFormBaixaRetorno = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridBaixa: TDBGrid;
    QueryBaixa: TQuery;
    DataSourceBaixa: TDataSource;
    BitBtnSair: TBitBtn;
    OpenDialog1: TOpenDialog;
    BitBtnBaixar: TBitBtn;
    QueryTitulo: TQuery;
    EditDesconto: TEdit;
    Label1: TLabel;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloDesdobramento: TStringField;
    QueryTituloTipo_Documento: TSmallintField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloCodigo_Usuario: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloSaldo: TFloatField;
    QueryTituloTipo_Cobranca: TSmallintField;
    QueryTituloNumero_Banco: TStringField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloValor_Pago: TFloatField;
    QueryTituloDesconto: TFloatField;
    QueryTituloJuros: TFloatField;
    QueryTituloOperador: TSmallintField;
    QueryTituloOrcamento: TIntegerField;
    QueryTituloParcela: TSmallintField;
    QueryTituloStatus_Cheque: TStringField;
    QueryTituloObservacoes: TStringField;
    QueryTituloStatus_Orcamento: TSmallintField;
    BitBtnImprimir: TBitBtn;
    QueryBaixaIdentificacao_Empresa: TStringField;
    QueryBaixaCodigo_Retorno: TStringField;
    QueryBaixaAgencia: TStringField;
    QueryBaixaConta: TStringField;
    QueryBaixaData_Vencimento: TDateTimeField;
    QueryBaixaValor_Debito: TFloatField;
    QueryBaixaCodigo_Contratante: TIntegerField;
    QueryBaixaFlag: TStringField;
    QueryTituloStatus_Ocorrencia: TSmallintField;
    QueryOcorrencia: TQuery;
    QueryOcorrenciaCodigo: TStringField;
    QueryOcorrenciaBanco: TStringField;
    QueryOcorrenciaDescricao: TStringField;
    QueryOcorrenciaid_ocorrencia: TIntegerField;
    QueryTituloTipo_Pagamento: TIntegerField;
    procedure BitBtnGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnBaixarClick(Sender: TObject);
    procedure EditDescontoKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    function RetiraPontoDecimal(ValorStr: String):String;

  public
     CdOcorrenciaBaixa : string[2];// O codigo de débito aceito pode mudar de banco para banco
  end;

var
  FormBaixaRetorno: TFormBaixaRetorno;
  Arquivo : System.TextFile;
  Conteudo, NomeArquivo, Valor_Aux : String;
  Posicao : Integer;
  Numerico : String[13];
  PontoDecimal, Traco: Boolean;

implementation

uses Senha, QRRetorno, GeraReceber, udm;

{$R *.DFM}

procedure TFormBaixaRetorno.BitBtnGerarClick(Sender: TObject);
Begin
end;

// Funcao para retirar o ponto decimal de um valor string
// Recebe uma string e retorna outra string sem o ponto decimal
function TFormBaixaRetorno.RetiraPontoDecimal(ValorStr: String):String;
begin
     PontoDecimal := False;
     Posicao:=pos(' ',ValorStr);
     while Posicao <> 0 do
           begin
                Posicao:=pos(' ',ValorStr);
                delete(ValorStr,Posicao,1);          // elimina espacos
           end;
     Posicao:=pos(ThousandSeparator,ValorStr);
     while Posicao <> 0 do
           begin
                Posicao:=pos(ThousandSeparator,ValorStr);
                delete(ValorStr,Posicao,1);          // elimina separador das centenas
           end;

     Posicao:=pos(DecimalSeparator,ValorStr);
     if Posicao <> 0 then
        begin
             delete(ValorStr,Posicao,1);
             PontoDecimal := True;
        end;
     RetiraPontoDecimal := ValorStr;
end;

procedure TFormBaixaRetorno.FormCreate(Sender: TObject);
begin
   CdOcorrenciaBaixa := '00';
   QueryBaixa.Open;
   QueryTitulo.Open;

end;

procedure TFormBaixaRetorno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryBaixa.Close;
     QueryTitulo.Close;
     QueryOcorrencia.Close;
end;

procedure TFormBaixaRetorno.BitBtnBaixarClick(Sender: TObject);
   var Erro : Boolean;
       aux : string;
begin
   if MessageDlg('Confirma o Processamento das Baixas no Arquivo ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;

   QueryBaixa.Close;
   QueryBaixa.Open;
   while not QueryBaixa.eof do
   begin
      QueryTitulo.Close;
      QueryTitulo.ParamByName('Identificacao_Empresa').asInteger := QueryBaixaIdentificacao_Empresa.asInteger;
      QueryTitulo.Open;
      QueryOcorrencia.Close;
      QueryOcorrencia.ParamByName('Banco').asString := GeraReceber.Cod_Banco;
      QueryOcorrencia.ParamByName('Ocorrencia').asString := QueryBaixaCodigo_Retorno.AsString;
      QueryOcorrencia.Open;
      Erro := False;
      if QueryTitulo.RecordCount = 0 then
      begin
         ShowMessage('Título Não Encontrado, [ ' + QueryBaixaIdentificacao_Empresa.asString + ' ] !!!');
         QueryBaixa.Next;
         Erro := True;
      end;

      if QueryTituloData_Pagamento.asString <> '' then
      begin
         ShowMessage('Este Título Já Foi Baixado Anteriormente, [ ' + QueryBaixaIdentificacao_Empresa.asString + ' ] !!!');
         QueryBaixa.Next;
         Erro := True;
      end;

      if not Erro then
      begin
         if QueryBaixaCodigo_Retorno.AsString = CdOcorrenciaBaixa then
         begin
            QueryTitulo.Edit;
            QueryTituloData_Pagamento.AsDateTime   := dm.Date;
            QueryTituloJuros.asCurrency := QueryBaixaValor_Debito.asCurrency - QueryTituloValor.AsCurrency;
            if EditDesconto.Text <> '' then
               QueryTituloDesconto.asCurrency := StrToFloat(EditDesconto.Text)
            else
               QueryTituloDesconto.asString := '';
            QueryTituloValor_Pago.asCurrency := QueryBaixaValor_Debito.asCurrency - QueryTituloDesconto.asCurrency;


            aux := dm.GetParam('TPDEB'); // tipo de pagamento para dégito automáticos
            if aux <> '' then
               QueryTituloTipo_Pagamento.AsString := aux;

            //tacio 02-01-2021  modificado para alterar o tipo de cobrança para o código do banco
            //atualmente alterava apenas o tipo de pagamento
            QueryTituloTipo_Cobranca.AsString  := GeraReceber.Cod_Banco;


            QueryTituloSaldo.asCurrency := 0;
            QueryTituloOperador.asInteger := Senha.Codigo_Operador;
            QueryTituloStatus_Ocorrencia.AsInteger := QueryOcorrenciaId_Ocorrencia.AsInteger;
            QueryBaixa.Edit;
            QueryBaixaFlag.asString := '*';
            QueryBaixa.Post;
            try
               QueryTitulo.Post;
            except on E: exception do
               begin
                  ShowMessage('Erro Gravação da Tabela de Títulos !!! Mensagem de erro: ' + E.Message);
                  QueryTitulo.Cancel;
                  QueryBaixa.Cancel;
               end;
            end;
         end
         else // se o codigo de ocorrencia nao for o codigo de movimento aceito grava apenas um status
         begin
            QueryTitulo.Edit;
            QueryTituloStatus_Ocorrencia.AsInteger := QueryOcorrenciaId_Ocorrencia.AsInteger;
            QueryTituloOperador.asInteger := Senha.Codigo_Operador;
            try
               QueryTitulo.Post;
            except on E: exception do
               begin
                  ShowMessage('Erro Gravação da Tabela de Títulos !!! Mensagem de erro: ' + E.Message);
                  QueryTitulo.Cancel;
                  QueryBaixa.Cancel;
               end
            end;
         end;
         QueryBaixa.Next;
      end;//if not Erro then
   end; //while not eof do
end;

{
procedure TFormBaixaRetorno.BitBtnBaixarClick(Sender: TObject);
var Erro : Boolean;
begin
     if MessageDlg('Confirma o Processamento das Baixas no Arquivo ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          with QueryBaixa do
            begin
              Close;
              Open;
              First;
              while not eof do
                begin
                  QueryTitulo.Close;
                  QueryTitulo.ParamByName('Identificacao_Empresa').asInteger := QueryBaixaIdentificacao_Empresa.asInteger;
                  QueryTitulo.Open;
                  QueryOcorrencia.Close;
                  QueryOcorrencia.ParamByName('Banco').asString := GeraReceber.Cod_Banco;
                  QueryOcorrencia.ParamByName('Ocorrencia').asString := QueryBaixaCodigo_Retorno.AsString;
                  QueryOcorrencia.Open;
                  Erro := False;
                  if QueryTitulo.RecordCount = 0 then
                     begin
                       ShowMessage('Título Não Encontrado, [ ' + QueryBaixaIdentificacao_Empresa.asString + ' ] !!!');
                       QueryBaixa.Next;
                       Erro := True;
                     end;

                  if QueryTituloData_Pagamento.asString <> '' then
                     begin
                       ShowMessage('Este Título Já Foi Baixado Anteriormente, [ ' + QueryBaixaIdentificacao_Empresa.asString + ' ] !!!');
                       QueryBaixa.Next;
                       Erro := True;
                     end;

                  if not Erro then
                    begin
                      if QueryBaixaCodigo_Retorno.AsString = '00' then
                        begin
                          QueryTitulo.Edit;
                          QueryTituloData_Pagamento.AsDateTime   := dm.Date;
                          QueryTituloJuros.asCurrency := QueryBaixaValor_Debito.asCurrency - QueryTituloValor.AsCurrency;
                          if EditDesconto.Text <> '' then
                             QueryTituloDesconto.asCurrency := StrToFloat(EditDesconto.Text)
                          else
                             QueryTituloDesconto.asString := '';
                          QueryTituloValor_Pago.asCurrency := QueryBaixaValor_Debito.asCurrency - QueryTituloDesconto.asCurrency;

                          QueryTituloSaldo.asCurrency := 0;
                          QueryTituloOperador.asInteger := Senha.Codigo_Operador;
                          QueryTituloStatus_Ocorrencia.AsInteger := QueryOcorrenciaId_Ocorrencia.AsInteger;
                          Edit;
                          QueryBaixaFlag.asString := '*';
                          Post;
                          try
                            QueryTitulo.Post;
                          except
                             begin
                               ShowMessage('Erro Gravação da Tabela de Títulos !!!');
                               QueryTitulo.Cancel;
                               Cancel;
                             end;
                          end;
                        end
                      else
                        begin
                          QueryTitulo.Edit;
                          QueryTituloStatus_Ocorrencia.AsInteger := QueryOcorrenciaId_Ocorrencia.AsInteger;
                          QueryTituloOperador.asInteger := Senha.Codigo_Operador;
                          try
                            QueryTitulo.Post;
                          except
                             begin
                               ShowMessage('Erro Gravação da Tabela de Títulos !!!');
                               QueryTitulo.Cancel;
                               Cancel;
                             end;
                          end;
                        end;
                      QueryBaixa.Next;
                    end;
                end;
            end;
        end;
end;

}
procedure TFormBaixaRetorno.EditDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', DecimalSeparator, #13, #8]) then
        key := #0;
end;

procedure TFormBaixaRetorno.BitBtnImprimirClick(Sender: TObject);
begin
     QRRetorno.Cod_Banco := GeraReceber.Cod_Banco;
     Application.CreateForm(TQRListaRetorno, QRListaRetorno);
     QRRetorno.QRListaRetorno.QRLabelBanco.Caption := GeraReceber.Banco;
     QRListaRetorno.Preview;
     QRListaRetorno.Free;
end;

end.
