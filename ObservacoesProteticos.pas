unit ObservacoesProteticos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, DBTables;

type
  TFormObservacoesProteticos = class(TForm)
    QueryObservacoes: TQuery;
    DataSourceObservacoes: TDataSource;
    DBMemoObservacoes: TDBMemo;
    QueryObservacoesOrcamento: TIntegerField;
    QueryObservacoesProtetico: TIntegerField;
    QueryObservacoesObservacao: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryObservacoesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObservacoesProteticos: TFormObservacoesProteticos;

implementation

{$R *.DFM}

uses PagProtetico;

procedure TFormObservacoesProteticos.FormCreate(Sender: TObject);
begin
     with QueryObservacoes do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := PagProtetico.FormPagProtetico.QueryPagProteticoOrcamento.asInteger;
         ParamByName('Protetico').asInteger := PagProtetico.FormPagProtetico.QueryPagProteticoProtetico.asInteger;
         Open;
         if RecordCount = 0 then
            Insert;
       end;
end;

procedure TFormObservacoesProteticos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if QueryObservacoes.State in [dsbrowse] then exit;

     try
       QueryObservacoes.Post;
     except
       begin
         ShowMessage('Erro na Gravação da Tabela de Observações Pagamento de Protéticos !!!');
         QueryObservacoes.Cancel;
       end;
     end;
     QueryObservacoes.Close;
end;

procedure TFormObservacoesProteticos.QueryObservacoesAfterInsert(DataSet: TDataSet);
begin
     QueryObservacoesOrcamento.asInteger := PagProtetico.FormPagProtetico.QueryPagProteticoOrcamento.asInteger;
     QueryObservacoesProtetico.asInteger := PagProtetico.FormPagProtetico.QueryPagProteticoProtetico.asInteger;
end;

end.
