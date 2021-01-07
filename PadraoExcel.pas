unit PadraoExcel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,Variants,
  OleServer, Excel97, ComCtrls,enio, ExcelXP, ADODB;

type
  TFmPadraoExcel = class(TFmPadrao)
    Button2: TButton;
    Button3: TButton;
    ExcelApplication1: TExcelApplication;
    PageControl1: TPageControl;
    TbsGrid: TTabSheet;
    DBGrid2: TDBGrid;
    Texto: TTabSheet;
    RichEdit1: TRichEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    PsD: TPrinterSetupDialog;
    procedure Button2Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private


  public

    VTtRelatorio : string;
    procedure PGeraExcel(Query: TDataset);    
    { Public declarations }
  end;

var
  FmPadraoExcel: TFmPadraoExcel;

implementation

{$R *.DFM}

procedure TFmPadraoExcel.PGeraExcel(Query: TDataset);
var
   Planilha    : olevariant;
   Lin, Col     : integer;
begin
    inherited;
    // Cria aplicativo Excel, inicializa parametros vazios, aplicação visível e
    // utiliza pagina 1 e aba 1
//    ExcelApplication1 := TExcelApplication.Create(nil);
    ExcelApplication1.Workbooks.Add(EmptyParam,0);
    ExcelApplication1.Visible[0] := True;
    Planilha := ExcelApplication1.Workbooks[1].Worksheets[1];
    // Abre tabela
    Query.Open;
    Query.First;
    // Repetição de cabeçalho o Delphi vai colocar o nome do campo em
    // cada coluna, se for ADOQuery pode dar um apelido para cada campo
    for Col := 1 to Query.FieldCount do
    begin
         Planilha.Cells[1,Col].Select;
         Planilha.Cells[1,Col].Font.Bold := True;
         Planilha.Cells[1,Col].Value := Query.Fields[Col-1].DisplayLabel;
    end;
    // Inicializa na segunda linha
    Lin := 2;

    // Repetição onde vai inserir os dados da tabela até que seja final de arquivo
    while not ( Query.Eof ) do
    begin
        for Col := 1 to Query.FieldCount do
        begin
            Planilha.Cells[Lin,Col].Select;
            Planilha.Cells[Lin,Col].Value := Query.Fields[Col-1].AsString;
        end;
        // Adiciona 1 a variável Lin e vai para o próximo registro da tabela
        inc(Lin);
        Query.Next;
    end;
     // Fecha a ADOTable e libera a aplicação Excel aberta da memória
//    Adoquery1.Close;
//    ExcelApplication1.Free;

end;

procedure TFmPadraoExcel.Button2Click(Sender: TObject);
var VTam : Smallint;
begin
  inherited;
   PageControl1.ActivePageIndex := 1;
   PageControl1Change(Sender);
   if not PsD.Execute then
     exit;
   case StrToInt(ComboBox1.Text) of

      6 : VTam := 134;
      8 : VTam := 120;
     10 : VTam := 108;
     12 : VTam := 097;
     14 : VTam := 087;
   end;
   if length(RichEdit1.Lines.Strings[0]) > VTam then
     if Application.MessageBox(Pchar('Atenção, as linhas possuem mais de ' + IntToStr(VTam) + ' colunas, utilize impressão no modo paisagem para melhor visualização ou diminua a fonte'),'Aviso',MB_YesNo + MB_DEFBUTTON2) = IdNo then
        Exit;

   RichEdit1.Print(VTtRelatorio);

end;

procedure TFmPadraoExcel.PageControl1Change(Sender: TObject);
begin
  inherited;
   if PageControl1.ActivePageIndex = 1 then
   begin
      RichEdit1.Clear;
      RichEdit1.lines := GeraTextoQuery(DataSource1.DataSet,VTtRelatorio);
      RichEdit1.Lines.Add('');
      RichEdit1.Lines.Add('{ ' + IntToStr(DataSource1.DataSet.recordcount) + ' Registro(s) }');
   end;
  ComboBox1.Visible := (PageControl1.ActivePageIndex = 1);
  Label6.Visible := ComboBox1.Visible;

end;

procedure TFmPadraoExcel.Button3Click(Sender: TObject);
begin
  inherited;
   try
      PGeraExcel(DataSource1.DataSet);
   except
   on E: Exception do
     ShowMessage('Ocorreu um erro ao tentar enviar a planilha para o excel, se o excel estiver aberto, feche-o e tente novamente' + #13 +
     E.Message);
   end;
end;

procedure TFmPadraoExcel.FormShow(Sender: TObject);
begin
  inherited;
   ComboBox1.ItemIndex := 1;

end;

procedure TFmPadraoExcel.ComboBox1Change(Sender: TObject);
begin
  inherited;
    RichEdit1.Font.Size := StrToInt(ComboBox1.Text);
end;

end.
