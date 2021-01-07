 unit Processa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Buttons, StdCtrls;

type
  TFormProcessa = class(TForm)
    QueryReceber: TQuery;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberTipo_Documento: TSmallintField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberData_Emissao: TDateTimeField;
    QueryReceberData_Vencimento: TDateTimeField;
    QueryReceberValor: TFloatField;
    QueryReceberSaldo: TFloatField;
    QueryReceberTipo_Cobranca: TSmallintField;
    QueryReceberNumero_Banco: TStringField;
    QueryReceberData_Pagamento: TDateTimeField;
    QueryReceberValor_Pago: TFloatField;
    QueryReceberDesconto: TFloatField;
    QueryReceberJuros: TFloatField;
    QueryReceberOperador: TSmallintField;
    QueryReceberOrcamento: TIntegerField;
    QueryReceberParcela: TIntegerField;
    ButtonMensalidade: TButton;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    LabelRegistros: TLabel;
    ButtonManutencoes: TButton;
    QueryReceberCodigo_Usuario: TIntegerField;
    QueryReceberStatus_Cheque: TStringField;
    QueryReceberObservacoes: TStringField;
    QueryReceberStatus_Orcamento: TSmallintField;
    QueryReceberNro_cheque: TStringField;
    QueryReceberBanco_Cheque: TStringField;
    QueryReceberNro_ContaCheque: TStringField;
    QueryReceberAgencia_Cheque: TStringField;
    QueryReceberStatus_Ocorrencia: TSmallintField;
    QueryReceberDeposito: TBooleanField;
    procedure ButtonMensalidadeClick(Sender: TObject);
    procedure ButtonManutencoesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ProcessaParcela;
  public
    { Public declarations }
  end;

var
  FormProcessa: TFormProcessa;
  Codigo, cont, Registros : Integer;

implementation

{$R *.DFM}

procedure TFormProcessa.ButtonMensalidadeClick(Sender: TObject);
begin
     FormProcessa.Tag := 1;
     ProcessaParcela;     
end;

procedure TFormProcessa.ProcessaParcela;
begin
     Codigo := 0;
     Registros := 0;
     Cont := 0;
     with QueryReceber do
       begin
         Close;
         if FormProcessa.Tag = 1 then
            Parambyname('Desd').asString := 'M'
         else
            Parambyname('Desd').asString := 'T';

         Open;
         First;
         while not eof do
           begin
             if QueryReceberCodigo_Contratante.asInteger <> Codigo then
                Cont := 1;

             Codigo := QueryReceberCodigo_Contratante.asInteger;

             Edit;
             QueryReceberParcela.asInteger := Cont + 1;
             Cont := Cont + 1;

             try
               Post;
             except
               begin
                 ShowMessage('Erro na Regravação da Tabela Receber !!!');
                 Cancel;
                 exit;
               end;
             end;
             Registros := Registros + 1;
             LabelRegistros.Caption := IntToStr(Registros);
             FormProcessa.Update;
             Next;
           end;
       end;

       ShowMessage('Fim de Processamento !!!');
end;

procedure TFormProcessa.ButtonManutencoesClick(Sender: TObject);
begin
     FormProcessa.Tag := 2;
     ProcessaParcela;
end;

procedure TFormProcessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   QueryReceber.Close;
end;

end.
