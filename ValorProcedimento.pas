unit ValorProcedimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Variants,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls;

type
  TFormValorProcedimento = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGridValorProcedimento: TDBGrid;
    Panel15: TPanel;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    DataSourceValorProcedimento: TDataSource;
    QueryValorProcedimento: TQuery;
    QueryValorProcedimentoCodigo_Tabela: TIntegerField;
    QueryValorProcedimentoCodigo_Servico: TIntegerField;
    QueryValorProcedimentoValor_Cobranca: TFloatField;
    QueryValorProcedimentoValor_Dentista: TFloatField;
    QueryValorProcedimentoValor_Protetico: TFloatField;
    QueryServicos: TQuery;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    QueryValorProcedimentoDescricao_Servico: TStringField;
    Panel13: TPanel;
    DBNavigatorCadastro: TDBNavigator;
    QueryPermissoes: TQuery;
    QueryPermissoesCodigo_Operador: TSmallintField;
    QueryPermissoesCodigo_Grupo: TSmallintField;
    QueryPermissoesCodigo_Procedimento: TSmallintField;
    QueryPermissoesCodigo_SubProcedimento: TSmallintField;
    QueryPermissoesSomente_Leitura: TBooleanField;
    QueryValorProcedimentovr_cobranca: TCurrencyField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    EditTabela: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryValorProcedimentoAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure QueryValorProcedimentoCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGridValorProcedimentoDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryValorProcedimentoNewRecord(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    Valor_us : real;
  public
    { Public declarations }
  end;

var
  FormValorProcedimento: TFormValorProcedimento;

implementation

uses QRValorProcedimento, Senha, udm, VrProcEmReal;

{$R *.DFM}

procedure TFormValorProcedimento.FormCreate(Sender: TObject);
begin
     Valor_us := StrToFloat(dm.executacomando('select valor_us from preferencia','valor_us'));
     Left := 90;
     Top := 90;
     QueryServicos.Open;
     QueryValorProcedimento.Open;
     with QueryPermissoes do
       begin
         Close;
         ParamByName('Operador').asInteger        := Senha.Codigo_Operador;
         ParamByName('Grupo').asInteger           := 1;
         ParamByName('Procedimento').asInteger    := 13;
         ParamByName('Subprocedimento').asInteger := 10;
         Open;
         if QueryPermissoesSomente_Leitura.asBoolean then
           DBNavigatorCadastro.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
       end;
end;

procedure TFormValorProcedimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryServicos.Close;
     QueryValorProcedimento.Close;
     QueryPermissoes.Close;
end;

procedure TFormValorProcedimento.QueryValorProcedimentoAfterPost(
  DataSet: TDataSet);
var Tabela, Servico : Short;  
begin
     with QueryValorProcedimento do
       begin
         Tabela := QueryValorProcedimentoCodigo_Tabela.asInteger;
         Servico := QueryValorProcedimentoCodigo_Servico.asInteger;
         Close;
         Open;
         Locate('Codigo_Tabela; Codigo_Servico', VarArrayOf([Tabela, Servico]), [loCaseInsensitive]);
       end;  
end;

procedure TFormValorProcedimento.FormActivate(Sender: TObject);
begin
     DBGridValorProcedimento.Setfocus;
end;

procedure TFormValorProcedimento.BitBtnImprimirClick(Sender: TObject);
begin
     Application.CreateForm(TQRListaValorProcedimento, QRListaValorProcedimento);
     QRListaValorProcedimento.Preview;
     QRListaValorProcedimento.Free;
end;

procedure TFormValorProcedimento.QueryValorProcedimentoCalcFields(
  DataSet: TDataSet);
begin
   QueryValorProcedimentovr_cobranca.AsCurrency  := QueryValorProcedimentovalor_cobranca.AsCurrency  * Valor_us;
//   QueryValorProcedimentovr_dentista.AsCurrency  := QueryValorProcedimentovalor_dentista.AsCurrency  * Valor_us;
//   QueryValorProcedimentovr_protetico.AsCurrency := QueryValorProcedimentovalor_protetico.AsCurrency * Valor_us;
end;

procedure TFormValorProcedimento.BitBtn1Click(Sender: TObject);
var arq: textfile;
    linha, NmArq: string;
begin
   NmArq := dm.GetParam('ARQPRO');
   Assignfile(arq,NmArq);
   Rewrite(arq);
   QueryValorProcedimento.First;
   Writeln(arq,'Código,Descrição,Cobrança,Vr Cobrança,Dentista,Vr Dentista,Protético,Vr Protético');
   While not QueryValorProcedimento.Eof do
   begin
      linha := '"' + QueryValorProcedimentoCodigo_Servico.AsString + '","' +
      QueryValorProcedimentoDescricao_Servico.AsString + '","' +
      FormatFloat('###,###,###,##0.00',QueryValorProcedimentoValor_Cobranca.Asfloat)    + '","' +
      FormatFloat('###,###,###,##0.00',QueryValorProcedimentovr_cobranca.Asfloat)       + '","' +
      FormatFloat('###,###,###,##0.00',QueryValorProcedimentoValor_Dentista.Asfloat)    + '","' +
//      FormatFloat('###,###,###,##0.00',QueryValorProcedimentovr_dentista.Asfloat)       + '","' +
      FormatFloat('###,###,###,##0.00',QueryValorProcedimentoValor_Protetico.Asfloat)   + '"';
//      FormatFloat('###,###,###,##0.00',QueryValorProcedimentovr_protetico.Asfloat)      + '"';
      Writeln(arq,linha);
      QueryValorProcedimento.next;
   end;
   CloseFile(arq);
   ShowMessage('Dê um duplo clique no arquivo ' + NmArq);

end;

procedure TFormValorProcedimento.DBGridValorProcedimentoDblClick(
  Sender: TObject);
  Var Valor : Real;

begin
   FmVrEmReal := TFmVrEmReal.create(self);
   FmVrEmReal.Label2.caption := QueryValorProcedimentoDescricao_Servico.AsString;

   FmVrEmReal.EditVr.text := FloatToStr(Round(QueryValorProcedimentoVr_Cobranca.AsCurrency * 100)/100);
   if FmVrEmReal.ShowModal = Mrok then
   begin
      Valor := StrToFloat(FmVrEmReal.EditVr.text);
      QueryValorProcedimento.Edit;
      QueryValorProcedimentoValor_Cobranca.AsFloat := Valor / StrToFloat(dm.execmd('select valor_us v from preferencia','v'));
      QueryValorProcedimento.Post;
      QueryValorProcedimento.next;
   end;
end;

procedure TFormValorProcedimento.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if key  = VK_F2 then
      DBGridValorProcedimentoDblClick(sender);
end;

procedure TFormValorProcedimento.QueryValorProcedimentoNewRecord(
  DataSet: TDataSet);
begin
  QueryValorProcedimentoValor_Dentista.AsCurrency := 0;
  QueryValorProcedimentoValor_Protetico.AsCurrency := 0;
end;

procedure TFormValorProcedimento.Button1Click(Sender: TObject);
begin
   QueryValorProcedimento.close;
   QueryValorProcedimento.SQL.Text := 'select 	* from ValorxProcedimento where 1 = 1 ';
   If editTabela.Text <> '' then
      QueryValorProcedimento.SQL.Text := QueryValorProcedimento.SQL.Text + ' and codigo_tabela = ''' + EditTabela.Text + '''';

   if Edit1.Text <> '' then
      QueryValorProcedimento.SQL.Text := QueryValorProcedimento.SQL.Text + ' and codigo_servico = ''' + Edit1.Text + '''';

   QueryValorProcedimento.SQL.Text := QueryValorProcedimento.SQL.Text + ' order by Codigo_Servico, CODIGO_TABELA';
   QueryValorProcedimento.open;
end;

end.
