unit Observacoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, DBTables;

type
  TFormObservacoes = class(TForm)
    QueryObservacoes: TQuery;
    DataSourceObservacoes: TDataSource;
    DBMemoObservacoes: TDBMemo;
    QueryObservacoesOrcamento: TIntegerField;
    QueryObservacoesTexto: TMemoField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryObservacoesAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormObservacoes: TFormObservacoes;

implementation

{$R *.DFM}

uses PagDentista;

procedure TFormObservacoes.FormCreate(Sender: TObject);
begin
     with QueryObservacoes do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := PagDentista.FormPagDentista.QueryOrcamentosNumero.asInteger;
         Open;
         if RecordCount = 0 then
            Insert;
       end;
end;

procedure TFormObservacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     if QueryObservacoes.State in [dsbrowse] then exit;
     
     try
       QueryObservacoes.Post;
     except
       begin
         ShowMessage('Erro na Gravação da Tabela de Observações !!!');
         QueryObservacoes.Cancel;
       end;
     end;
     QueryObservacoes.Close;
end;

procedure TFormObservacoes.QueryObservacoesAfterInsert(DataSet: TDataSet);
begin
     QueryObservacoesOrcamento.asInteger := PagDentista.FormPagDentista.QueryOrcamentosNumero.asInteger;
end;

end.
