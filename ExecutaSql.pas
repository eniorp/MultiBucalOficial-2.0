unit ExecutaSql;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, StdCtrls, DBCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls,Variants,
  Buttons, ComCtrls,enio, OleServer, Excel97, Excel2000, ExcelXP, ADODB;

type
  TFmExecutaSql = class(TFmPadrao)
    QueryTabelas: TQuery;
    Label1: TLabel;
    Memo1: TMemo;
    Label2: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    PageControl1: TPageControl;
    TbsGrid: TTabSheet;
    Texto: TTabSheet;
    DBGrid2: TDBGrid;
    RichEdit1: TRichEdit;
    Button2: TButton;
    Button3: TButton;
    ExcelApplication1: TExcelApplication;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
      function VerificaParametros(Sql :string): String;
  public
    { Public declarations }
  end;

var
  FmExecutaSql: TFmExecutaSql;

implementation

uses Scripts;

{$R *.DFM}

procedure TFmExecutaSql.Button1Click(Sender: TObject);
begin
  inherited;
   Query1.close;
   Query1.sql.Clear;
   if memo1.SelText <> '' then
      Query1.sql.Add(VerificaParametros(memo1.SelText))
   else
      Query1.sql.Add(VerificaParametros(memo1.Text));
   Try
   Query1.Open;
   except
   on E: Exception do
      ShowMessage('Ocorreu um erro ao tentar executar o comando "' + Query1.Text + '"' + #13 +
      'Mensagem de erro: ' +E.Message);
   end;
   PageControl1Change(Sender);
end;

function TFmExecutaSql.VerificaParametros(Sql :string): String;
Var Tam, I,J : Word;
    VConteudo, Param,Sql1 : String;
    VTipo : String[3];
begin
   Sql1 := Sql;
   Tam := length(sql);
   For I := 1 to Tam do
    if sql[I] = '@' then
    begin
       VTipo := Copy(sql,I,3);
       J := I + 1;
       Param := '';
       while sql[J] <> '|' do
       begin
          Param := Param + Sql[J];
          Inc(J);
       end;
       if (VTipo = '@II') or (VTipo = '@DD') or (VTipo = '@AA') then
          VConTeudo := InputBox(Copy(Param,3,length(Param) -2),Copy(Param,3,length(Param) -2),'')
       else
       VConTeudo := InputBox(Param,Param,'');
       if VTipo = '@II' then // significa inteiro
          sql1 := Replace(Sql1,'@' + Param + '|', VConTeudo)
       else
          sql1 := Replace(Sql1,'@' + Param + '|','''' + VConTeudo + '''');
    end;
    Result := Sql1;
end;
procedure TFmExecutaSql.FormShow(Sender: TObject);
begin
  inherited;
   QueryTabelas.Close;
   QueryTabelas.Open;
   While not QueryTabelas.Eof do
   begin
      ComboBox1.Items.Add(QueryTabelas.FieldByName('tabela').AsString);
      QueryTabelas.Next;
   end;
   QueryTabelas.Close;
end;

procedure TFmExecutaSql.ComboBox1Change(Sender: TObject);
begin
  inherited;
   Memo1.Lines.Add('select * from ' + ComboBox1.text);
end;

procedure TFmExecutaSql.Button2Click(Sender: TObject);
begin
  inherited;
   if Application.MessageBox('Confirma a impress�o?','Confirma��o',MB_YesNo) = IdNo then
      exit;

   PageControl1.ActivePageIndex := 1;
   PageControl1Change(Sender);
   if length(RichEdit1.Lines.Strings[0]) > 120 then
     if Application.MessageBox('Aten��o, as linhas possuem mais de 120 colunas, confirma impress�o?','Aviso',MB_YesNo + MB_DEFBUTTON2) = IdNo then
        Exit;

//   RichEdit1.Print('Relat�rio din�mico');
end;

procedure TFmExecutaSql.PageControl1Change(Sender: TObject);
begin
  inherited;
   if PageControl1.ActivePageIndex = 1 then
   begin
      RichEdit1.Clear;
      RichEdit1.lines := GeraTextoQuery(Query1,'Relat�rio din�mico');
      RichEdit1.Lines.Add('');
      RichEdit1.Lines.Add('{ ' + IntToStr(Query1.recordcount) + ' Registro(s) }');
   end;

end;

procedure TFmExecutaSql.Button3Click(Sender: TObject);
var
   Planilha    : olevariant;
   Lin, Col     : integer;
begin
    inherited;
    // Cria aplicativo Excel, inicializa parametros vazios, aplica��o vis�vel e
    // utiliza pagina 1 e aba 1
//    ExcelApplication1 := TExcelApplication.Create(nil);
    ExcelApplication1.Workbooks.Add(EmptyParam,0);
    ExcelApplication1.Visible[0] := True;
    Planilha := ExcelApplication1.Workbooks[1].Worksheets[1];
    // Abre tabela
    Query1.Open;
    Query1.First;
    // Repeti��o de cabe�alho o Delphi vai colocar o nome do campo em
    // cada coluna, se for ADOQuery pode dar um apelido para cada campo
    for Col := 1 to Query1.FieldCount do
    begin
         Planilha.Cells[1,Col].Select;
         Planilha.Cells[1,Col].Font.Bold := True;
         Planilha.Cells[1,Col].Value := Query1.Fields[Col-1].DisplayLabel;
    end;
    // Inicializa na segunda linha
    Lin := 2;

    // Repeti��o onde vai inserir os dados da tabela at� que seja final de arquivo
    while not ( Query1.Eof ) do
    begin
        for Col := 1 to Query1.FieldCount do
        begin
            Planilha.Cells[Lin,Col].Select;
            Planilha.Cells[Lin,Col].Value := Query1.Fields[Col-1].AsString;
        end;
        // Adiciona 1 a vari�vel Lin e vai para o pr�ximo registro da tabela
        inc(Lin);
        Query1.Next;
    end;
     // Fecha a ADOTable e libera a aplica��o Excel aberta da mem�ria
//    Query1.Close;
//    ExcelApplication1.Free;

end;


procedure TFmExecutaSql.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f5 then
     Button1Click(sender);
end;

procedure TFmExecutaSql.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // para desabilitar a heran�a..
  key := key;

end;

procedure TFmExecutaSql.Button4Click(Sender: TObject);
begin
  inherited;
  FmScripts := TFmScripts.create(self);
  FmScripts.tag := 1;
  FmScripts.showModal;
  FmScripts.Free;
end;

procedure TFmExecutaSql.Button5Click(Sender: TObject);
begin
  inherited;
  FmScripts := TFmScripts.create(self);
  FmScripts.tag := 2;
  FmScripts.showModal;
  FmScripts.Free;
end;

end.
