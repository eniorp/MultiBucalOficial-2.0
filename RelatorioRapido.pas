unit RelatorioRapido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, ADODB, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls,
  ComCtrls, Mask;

type
  TFmRelatorioRapido = class(TForm)
    MainMenu1: TMainMenu;
    Sair1: TMenuItem;
    Query_Relatorios: TADOQuery;
    DS_Relatorios: TDataSource;
    Query_RelatoriosId: TAutoIncField;
    Query_RelatoriosNome: TStringField;
    Query_RelatoriosObs: TStringField;
    Query_RelatoriosComando: TMemoField;
    Panel_Relatorios: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    DBMemo1: TDBMemo;
    Query_Comando: TADOQuery;
    DS_Comando: TDataSource;
    PageControl1: TPageControl;
    TabSheet_Relatorio: TTabSheet;
    TabSheet_Cadastro: TTabSheet;
    DBGrid2: TDBGrid;
    Panel_botoes: TPanel;
    Button_Excel: TButton;
    Button_Atualizar: TButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBMemo2: TDBMemo;
    DBNavigator1: TDBNavigator;
    DBMemo3: TDBMemo;
    Query_Operadores: TADOQuery;
    DS_Operadores: TDataSource;
    Query_Operadorescodigo: TAutoIncField;
    Query_Operadoresapelido: TStringField;
    Query_Operadoresid_operador: TIntegerField;
    DBGrid3: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    Button_Selecionar: TButton;
    Panel1: TPanel;
    procedure Edit1Change(Sender: TObject);
    procedure Button_SelecionarClick(Sender: TObject);
    function VerificaPermissaoRelatorio():boolean;
    procedure RelatrioDinamico1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button_ExcelClick(Sender: TObject);
    procedure Button_AtualizarClick(Sender: TObject);
    procedure Query_ComandoBeforeOpen(DataSet: TDataSet);
    procedure TabSheet_CadastroShow(Sender: TObject);
    procedure TabSheet_RelatorioShow(Sender: TObject);
    procedure Query_RelatoriosAfterScroll(DataSet: TDataSet);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Query_ComandoAfterOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure ArrumarPainelBusca(Visivel:Boolean);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRelatorioRapido: TFmRelatorioRapido;

implementation

uses udm,tacio,senha,fundo;
{$R *.dfm}


procedure TFmRelatorioRapido.Edit1Change(Sender: TObject);
begin
  Query_Relatorios.Close;
  Query_Relatorios.SQL[3]:='and (nome like ''%'+Edit1.Text+'%'' or obs like ''%'+Edit1.Text+'%'' or id like '''+Edit1.Text+''')';
  Query_Relatorios.Open;
end;

procedure TFmRelatorioRapido.Button_SelecionarClick(Sender: TObject);
begin
  if VerificaPermissaoRelatorio=False then
  begin
    ShowMessage('Você não tem permissão para esse relatório');
    Abort;
  end;
  ArrumarPainelBusca(True);
  Query_Comando.Close;
  Query_Comando.SQL.Clear;
  Query_Comando.SQL.Text:=Query_RelatoriosComando.AsString;
  Query_Comando.Open;
end;

procedure TFmRelatorioRapido.RelatrioDinamico1Click(Sender: TObject);
begin
  ArrumarPainelBusca(true);
end;

procedure TFmRelatorioRapido.FormShow(Sender: TObject);
begin
  ArrumarPainelBusca(true);
  PageControl1.ActivePage:=TabSheet_Relatorio;
end;

procedure TFmRelatorioRapido.DBGrid1DblClick(Sender: TObject);
begin
  Button_SelecionarClick(Sender);
end;

procedure TFmRelatorioRapido.Button_ExcelClick(Sender: TObject);
begin
  ToExcel(Query_Comando,Query_RelatoriosNome.AsString);
end;

procedure TFmRelatorioRapido.Button_AtualizarClick(Sender: TObject);
begin
  Button_SelecionarClick(Sender);
end;


function CountPos(const subtext: string; Text: string): Integer;
begin
  if (Length(subtext) = 0) or (Length(Text) = 0) or (Pos(subtext, Text) = 0)
  then
    Result := 0
  else
    Result := (Length(Text) - Length(StringReplace(Text, subtext, '',
      [rfReplaceAll]))) div Length(subtext);
end;


procedure TFmRelatorioRapido.Query_ComandoBeforeOpen(DataSet: TDataSet);
var
  qtdeParam: Integer;
  parametro,parametroExibicao, aux: string;
  I: Integer;
begin
  qtdeParam := CountPos(':', Query_Comando.SQL.Text);
  if qtdeParam > 0 then
  begin
    aux := Query_Comando.SQL.Text;
    for I := 0 to qtdeParam - 1 do
    begin
      aux := Copy(aux, Pos(':', aux), Length(aux));
      parametro := Copy(aux, 0, Pos('|', aux));
      parametroExibicao:=Copy(parametro,2,length(parametro)-2);
      if Copy(parametro, 2, 1) <> '' then
        if not EhNumero(Copy(parametro, 2, 1)) then
          Query_Comando.SQL.Text := StringReplace(Query_Comando.SQL.Text, parametro,
            InputBox('Digite o que deseja no parametro:',
            parametroExibicao, ''), [rfIgnoreCase, rfReplaceAll]);
      aux := Copy(aux, 2, Length(aux));
    end;
  end;
end;

procedure TFmRelatorioRapido.TabSheet_CadastroShow(Sender: TObject);
begin
  if (senha.Codigo_Operador=70) or (senha.Codigo_Operador=64) or (senha.Codigo_Operador=14) then
    begin
      ArrumarPainelBusca(True);
    end
  else
    PageControl1.ActivePage:=TabSheet_Relatorio
end;

procedure TFmRelatorioRapido.TabSheet_RelatorioShow(Sender: TObject);
begin
  ArrumarPainelBusca(false);
end;

function TFmRelatorioRapido.VerificaPermissaoRelatorio: boolean;
begin
  if DM.execmd('select count(*) a from RelatorioDinamicoPermissao where id_relatorio = '
  +Query_RelatoriosId.AsString+' and id_operador='+inttostr(senha.codigo_operador),'a')='0' then
    Result:=False
  else
    Result:=True;
end;

procedure TFmRelatorioRapido.Query_RelatoriosAfterScroll(
  DataSet: TDataSet);
begin
  Query_Operadores.Close;
  Query_Operadores.Parameters.ParamByName('id_relatorio').Value:=Query_RelatoriosId.AsString;
  Query_Operadores.Open;
end;

procedure TFmRelatorioRapido.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if Query_Operadoresid_operador.IsNull then
     DBGrid3.Canvas.Font.Color:=clRed
   else
     DBGrid3.Canvas.Font.Color:=clBlue;

  DBGrid3.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFmRelatorioRapido.Query_ComandoAfterOpen(DataSet: TDataSet);
begin
  Label8.Caption:='Qtde. de Registros: '+IntToStr(Query_Comando.RecordCount);
end;

procedure TFmRelatorioRapido.FormCreate(Sender: TObject);
begin
  ArrumarPainelBusca(true);
  PageControl1.ActivePage:=TabSheet_Relatorio;
       Left := 0;
     Top := 0;
end;

procedure TFmRelatorioRapido.DBGrid3DblClick(Sender: TObject);
begin
  if Query_Operadoresid_operador.IsNull then
    DM.execmd('insert into RelatorioDinamicoPermissao( Id_operador , Id_relatorio ) values('+Query_Operadorescodigo.AsString+','+Query_RelatoriosId.AsString+')')
  else
    DM.execmd('delete RelatorioDinamicoPermissao where id_operador = '+Query_Operadorescodigo.AsString+' and id_relatorio = '+Query_RelatoriosId.AsString);
  Query_Operadores.Close;
  Query_Operadores.Open;  

end;

procedure TFmRelatorioRapido.ArrumarPainelBusca(Visivel: Boolean);
begin
  Panel_Relatorios.Top:=24;
  Panel_Relatorios.Left:=5;
  Panel_Relatorios.Height:=185;
  Panel_Relatorios.Width:=875;
  Panel_Relatorios.Visible:=true;
end;

procedure TFmRelatorioRapido.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
         VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFmRelatorioRapido.Sair1Click(Sender: TObject);
begin
  FmRelatorioRapido.Close;
end;

end.
