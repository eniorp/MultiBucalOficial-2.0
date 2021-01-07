{ Sistema .........: Contas                                                    }
{ Programa ........: Baixa Automática de Títulos e Boletos do Banespa          }

unit BaixaAutomatica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons;

type
  TFormBaixaBanespa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridBaixa: TDBGrid;
    QueryBaixaAuxiliar: TQuery;
    QueryBaixaAuxiliarData_Pagamento: TDateTimeField;
    QueryBaixaAuxiliarValor_Titulo: TFloatField;
    QueryBaixaAuxiliarJuros: TFloatField;
    DataSourceBaixaAuxiliar: TDataSource;
    BitBtnSair: TBitBtn;
    BitBtnGerar: TBitBtn;
    StoredProcDeletaBaixaAuxiliar: TStoredProc;
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
    QueryBaixaAuxiliarNumero_Banco: TIntegerField;
    QueryBaixaAuxiliarFlag: TStringField;
    QueryTituloStatus_Ocorrencia: TSmallintField;
    QueryOrcamentos: TQuery;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosStatus: TSmallintField;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
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
    { Public declarations }
  end;

var
  FormBaixaBanespa: TFormBaixaBanespa;
  Arquivo : System.TextFile;
  Conteudo, NomeArquivo, Valor_Aux : String;
  Posicao : Integer;
  Numerico : String[13];
  PontoDecimal, Traco: Boolean;

implementation

uses QRRetornoBanespa, Senha, udm;

{$R *.DFM}

procedure TFormBaixaBanespa.BitBtnGerarClick(Sender: TObject);
var Data_Pagamento : TDate;
    Dia_Str, Mes_Str : String[2];
    Ano_Str : String[4];
    Data_Str : String[08];
    Dia, Mes, Ano : Word;
begin
     OpenDialog1.Execute;
     NomeArquivo := OpenDialog1.FileName;
     if NomeArquivo = '' then
        exit;
     AssignFile(Arquivo, NomeArquivo);
     Reset(Arquivo);

     if MessageDlg('Deseja Limpar o Arquivo de Baixas Auxiliar ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        try
          StoredProcDeletaBaixaAuxiliar.ExecProc;
        except
          begin
            ShowMessage('Erro ao Limpar o Arquivo de Baixas Auxiliar !!! [ENTER]');
            exit;
          end;
        end;

     while not eof(Arquivo) do
        begin
          ReadLn(Arquivo, Conteudo);

        if Copy(Conteudo, 1, 1) <> '0' then
          if Copy(Conteudo, 1, 1) <> '9' then
             begin
               QueryBaixaAuxiliar.Insert;
               QueryBaixaAuxiliarNumero_Banco.asInteger    := StrToInt(Copy(Conteudo, 16, 07));
               Data_Pagamento := dm.Date;
               DecodeDate(Data_Pagamento, Ano, Mes, Dia);
               Ano_Str                                     := IntToStr(Ano);
               Dia_Str                                     := Copy(Conteudo, 32, 2);
               Mes_Str                                     := Copy(Conteudo, 34, 2);
               Data_Str                                    := Copy(Conteudo, 26, 2) + '/' + Copy(Conteudo, 28, 2) + '/' + Copy(Conteudo, 30, 2);
               QueryBaixaAuxiliarData_Pagamento.asDateTime := StrToDate(Data_Str);
               Valor_Aux                                   := Copy(Conteudo, 76, 13);
               Numerico                                    := RetiraPontoDecimal(Valor_Aux);
               QueryBaixaAuxiliarValor_Titulo.asCurrency   := StrToFloat(Numerico); // Valor do Título
               QueryBaixaAuxiliarValor_Titulo.asCurrency   := QueryBaixaAuxiliarValor_Titulo.asCurrency / 100;

               Valor_Aux                                   := Copy(Conteudo, 89, 13);
               Numerico                                    := RetiraPontoDecimal(Valor_Aux);
               QueryBaixaAuxiliarJuros.asCurrency          := StrToFloat(Numerico); // Valor do Título
               QueryBaixaAuxiliarJuros.asCurrency          := QueryBaixaAuxiliarJuros.asCurrency / 100;
               QueryBaixaAuxiliarFlag.asString             := Copy(Conteudo, 102, 03);

               try
                 QueryBaixaAuxiliar.Post
               except
                 begin
                   ShowMessage('Registro: ' + QueryBaixaAuxiliarNumero_Banco.asString + ' já existente');
                   QueryBaixaAuxiliar.Cancel;
                 end
               end;
             end;
        end;
     QueryBaixaAuxiliar.Close;
     QueryBaixaAuxiliar.Open;
end;

// Funcao para retirar o ponto decimal de um valor string
// Recebe uma string e retorna outra string sem o ponto decimal
function TFormBaixaBanespa.RetiraPontoDecimal(ValorStr: String):String;
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

procedure TFormBaixaBanespa.FormCreate(Sender: TObject);
begin
     QueryBaixaAuxiliar.Open;
end;

procedure TFormBaixaBanespa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryBaixaAuxiliar.Close;
     QueryTitulo.Close;
     StoredProcDeletaBaixaAuxiliar.Close;
end;

procedure TFormBaixaBanespa.BitBtnBaixarClick(Sender: TObject);
var Erro : Boolean;
begin
     if MessageDlg('Confirma o Processamento das Baixas no Arquivo ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          with QueryBaixaAuxiliar do
            begin
              Close;
              SQL[1] := 'where Flag = ''' + 'C' + ''''; // Parametro de Titulos Creditados
              Open;
              First;
              while not eof do
                begin
                  QueryTitulo.Close;
                  QueryTitulo.ParamByName('Banco').asInteger  := QueryBaixaAuxiliarNumero_Banco.asInteger;
                  QueryTitulo.Open;
                  Erro := False;
                  if QueryTitulo.RecordCount = 0 then
                     begin
                       ShowMessage('Título Não Encontrado com este Número de Banco, [ ' + QueryBaixaAuxiliarNumero_Banco.asString + ' ] !!!');
                       QueryBaixaAuxiliar.Next;
                       Erro := True;
                     end;

                  if QueryTituloData_Pagamento.asString <> '' then
                     begin
                       ShowMessage('Este Título Já Foi Baixado Anteriormente, [ ' + QueryBaixaAuxiliarNumero_Banco.asString + ' ] !!!');
                       QueryBaixaAuxiliar.Next;
                       Erro := True;
                     end;

                  if not Erro then
                    begin
                      QueryTitulo.Edit;
                      QueryTituloData_Pagamento.AsDateTime   := dm.Date;
                      QueryTituloJuros.asCurrency := QueryBaixaAuxiliarJuros.asCurrency;
                      if EditDesconto.Text <> '' then
                         QueryTituloDesconto.asCurrency := StrToFloat(EditDesconto.Text)
                      else
                         QueryTituloDesconto.asString := '';
                      QueryTituloValor_Pago.asCurrency := QueryBaixaAuxiliarValor_Titulo.asCurrency - QueryTituloDesconto.asCurrency;
                      QueryTituloSaldo.asCurrency := 0;
                      QueryTituloOperador.asInteger := Senha.Codigo_Operador;

                      try
                        QueryTitulo.Post;
                        if ((QueryTituloDesdobramento.AsString = 'T') and (QueryTituloOrcamento.AsString <> '')) then
                           begin
                             with QueryOrcamentos do
                               begin
                                 close;
                                 parambyname('Orcamento').asInteger := QueryTituloOrcamento.AsInteger;
                                 open;
                                 if recordcount <> 0 then begin
                                   edit;
//                                   QueryOrcamentosStatus.AsInteger := 3;
                                   QueryOrcamentosStatus_Pagamento.Value := 1;
                                   post;
                                 end;
                               end;
                           end;
                      except
                         begin
                           ShowMessage('Erro Gravação da Tabela de Títulos !!!');
                           QueryTitulo.Cancel;
                         end;
                      end;

                      try
                        Delete;
                      except
                        begin
                          ShowMessage('Erro Deleção da Tabela de Baixa !!!');
                          Next;
                        end;
                      end;
                    end;
                end;
            end;
        end;
end;

procedure TFormBaixaBanespa.EditDescontoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', DecimalSeparator, #13, #8]) then
        key := #0;
end;

procedure TFormBaixaBanespa.BitBtnImprimirClick(Sender: TObject);
begin
     Application.CreateForm(TQRListaRetornoBanespa, QRListaRetornoBanespa);
     QRListaRetornoBanespa.Preview;
     QRListaRetornoBanespa.Free;
end;

end.




