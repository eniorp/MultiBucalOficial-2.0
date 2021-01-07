unit CanceladosReceber;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Db, Grids, DBGrids, ExtCtrls, DBTables, StdCtrls, Buttons;

type
  TFormCanceladosReceber = class(TForm)
    DataSourceCanceladosReceber: TDataSource;
    QueryCanceladosReceber: TQuery;
    PanelGrid: TPanel;
    DBGridCanceladosReceber: TDBGrid;
    QueryCanceladosReceberData_Cancelamento: TDateTimeField;
    QueryCanceladosReceberNumero_Titulo: TIntegerField;
    QueryCanceladosReceberDesdobramento: TStringField;
    QueryCanceladosReceberTipo_Documento: TStringField;
    QueryCanceladosReceberCodigo_Contratante: TIntegerField;
    QueryCanceladosReceberData_Emissao: TDateTimeField;
    QueryCanceladosReceberData_Vencimento: TDateTimeField;
    QueryCanceladosReceberValor: TFloatField;
    QueryCanceladosReceberSaldo: TFloatField;
    QueryCanceladosReceberTipo_Cobranca: TStringField;
    QueryCanceladosReceberNumero_Banco: TStringField;
    QueryCanceladosReceberOperador: TIntegerField;
    QueryCanceladosReceberMotivo_Cancelamento: TStringField;
    DBNavigator: TDBNavigator;
    PanelButtons: TPanel;
    LabelPesPor: TLabel;
    BitBtnCodigo: TBitBtn;
    EditCodigo: TEdit;
    BitBtnNumBanco: TBitBtn;
    EditNumBanco: TEdit;
    BitBtnNumTitulo: TBitBtn;
    EditNUmTitulo: TEdit;
    LabelStatus: TLabel;
    BitBtnFechar: TBitBtn;
    BitBtnTodos: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnCodigoClick(Sender: TObject);
    procedure BitBtnNumBancoClick(Sender: TObject);
    procedure BitBtnNumTituloClick(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure EditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditNumBancoExit(Sender: TObject);
    procedure EditNUmTituloExit(Sender: TObject);
    procedure BitBtnFecharClick(Sender: TObject);
    procedure BitBtnTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCanceladosReceber: TFormCanceladosReceber;

implementation

{$R *.DFM}

procedure TFormCanceladosReceber.FormCreate(Sender: TObject);
begin
   QueryCanceladosReceber.Active := true;
   BitbtnTodos.Visible := False;
   Top := 90;
   Left := 30;
end;

procedure TFormCanceladosReceber.BitBtnCodigoClick(Sender: TObject);
begin
   EditCodigo.Visible := True;
   EditCodigo.SetFocus;
   LabelStatus.Caption := 'Título por Código do contratante.'

end;

procedure TFormCanceladosReceber.BitBtnNumBancoClick(Sender: TObject);
begin
   EditNumBanco.Visible := True;
   EditNumBanco.SetFocus;
   LabelStatus.Caption := 'Título por Número do banco.'
end;

procedure TFormCanceladosReceber.BitBtnNumTituloClick(Sender: TObject);
begin
   EditNumTitulo.Visible := True;
   EditNumTitulo.SetFocus;
   LabelStatus.Caption := 'Título por Número do título.'
end;

procedure TFormCanceladosReceber.EditCodigoExit(Sender: TObject);
begin
   With QueryCanceladosReceber do
     Begin
       Close;
       SQL[1] := 'Where Codigo_Contratante = ''' + EditCodigo.Text + '''';
       open;
       If RecordCount = 0 then
         Begin
           ShowMessage('Título não encontrado [ENTER!!!]');
           EditCodigo.Visible := false;
           EditCodigo.Text:= '';
           BitBtnCodigo.SetFocus;
           LabelStatus.Caption := 'Nenhum título encontrado.';
         End;
       EditCodigo.Visible := false;
       EditCodigo.Text:= '';
       BitBtnCodigo.SetFocus;
       BitbtnTodos.Visible := true;
     End;

end;

procedure TFormCanceladosReceber.EditCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case Key of
     VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
     VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
   end;
end;

procedure TFormCanceladosReceber.EditNumBancoExit(Sender: TObject);
begin
   With QueryCanceladosReceber do
     Begin
       Close;
       SQL[1] := 'Where Numero_Banco = ''' + EditNumBanco.Text + '''';
       open;
       If RecordCount = 0 then
         Begin
           ShowMessage('Título não encontrado [ENTER!!!]');
           EditNumBanco.Visible := false;
           EditNumBanco.Text:= '';
           BitBtnNumBanco.SetFocus;
           LabelStatus.Caption := 'Nenhum título encontrado.';
         End;
       EditNumBanco.Visible := false;
       EditNumBanco.Text:= '';
       BitBtnNumBanco.SetFocus;
       BitbtnTodos.Visible := true;
     End;
end;

procedure TFormCanceladosReceber.EditNUmTituloExit(Sender: TObject);
begin
   With QueryCanceladosReceber do
     Begin
       Close;
       SQL[1] := 'Where Numero_Titulo = ''' + EditNUmTitulo.Text + '''';
       open;
       If RecordCount = 0 then
         Begin
           ShowMessage('Título não encontrado [ENTER!!!]');
           EditNUmTitulo.Visible := false;
           EditNUmTitulo.Text:= '';
           BitBtnNumTitulo.SetFocus;
           LabelStatus.Caption := 'Nenhum título encontrado.';
         End;
       EditNUmTitulo.Visible := false;
       EditNUmTitulo.Text:= '';
       BitBtnNumTitulo.SetFocus;
       BitbtnTodos.Visible := true;
   End;
end;

procedure TFormCanceladosReceber.BitBtnFecharClick(Sender: TObject);
begin
   FormCanceladosReceber.Close;
end;

procedure TFormCanceladosReceber.BitBtnTodosClick(Sender: TObject);
begin
   With QueryCanceladosReceber do
     Begin
       Close;
       Sql[1] := 'Where Codigo_Contratante is not null';
       open;
     End;
   BitbtnTodos.Visible := False;
   LabelStatus.Caption := 'Todos os títulos.';
end;

End.
