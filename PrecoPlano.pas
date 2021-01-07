unit PrecoPlano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Buttons, ExtCtrls,
  ComCtrls;

type
  TFormPrecoPlano = class(TForm)
    Panel1: TPanel;
    Panel13: TPanel;
    DBNavigatorCadastro: TDBNavigator;
    DataSourcePrecoPlano: TDataSource;
    QueryPrecoPlano: TQuery;
    QueryPrecoPlanoCodigo_Plano: TSmallintField;
    QueryPrecoPlanoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoPlanoData: TDateTimeField;
    QueryPrecoPlanoValor: TFloatField;
    QueryPlanos: TQuery;
    QueryGrauParentesco: TQuery;
    DataSourcePlanos: TDataSource;
    DataSourceGrauParentesco: TDataSource;
    QueryPlanosCodigo: TIntegerField;
    QueryPlanosDescricao: TStringField;
    QueryPlanosCodigo_Susep: TIntegerField;
    QueryPlanosTitular_Contratante: TStringField;
    QueryPlanosFis_Jur: TStringField;
    QueryPlanosFlag_Envio_Ans: TStringField;
    QueryGrauParentescoCodigo: TSmallintField;
    QueryGrauParentescoDescricao: TStringField;
    QueryGrauParentescoIdade_Inicial: TSmallintField;
    QueryGrauParentescoIdade_Final: TSmallintField;
    QueryPrecoPlanoDescricao_Plano: TStringField;
    QueryPrecoPlanoDescricao_Grau: TStringField;
    QueryGrauAuxiliar: TQuery;
    QueryGrauAuxiliarCodigo: TSmallintField;
    QueryGrauAuxiliarDescricao: TStringField;
    QueryGrauAuxiliarIdade_Inicial: TSmallintField;
    QueryGrauAuxiliarIdade_Final: TSmallintField;
    StoredProcDeletaPrecoPlano: TStoredProc;
    Panel15: TPanel;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Panel2: TPanel;
    Panel21: TPanel;
    DBLookupComboBoxPlano: TDBLookupComboBox;
    Label1: TLabel;
    BitBtnFiltrar: TBitBtn;
    BitBtnGerar: TBitBtn;
    EditValor: TEdit;
    Label2: TLabel;
    PageControl1: TPageControl;
    TabSheetPreco: TTabSheet;
    DBGridDocumento: TDBGrid;
    TabSheetHistorico: TTabSheet;
    DBGrid1: TDBGrid;
    QueryHistorico: TQuery;
    DsHistorico: TDataSource;
    QueryHistoricoCodigo_Plano: TSmallintField;
    QueryHistoricoCodigo_Grau_Parentesco: TSmallintField;
    QueryHistoricoData: TDateTimeField;
    QueryHistoricoValor: TFloatField;
    QueryHistoricoDtAtualizacao: TDateTimeField;
    QueryHistoricodesc_grau: TStringField;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryPrecoPlanoAfterPost(DataSet: TDataSet);
    procedure QueryPrecoPlanoAfterInsert(DataSet: TDataSet);
    procedure DBGridDocumentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure BitBtnFiltrarClick(Sender: TObject);
    procedure BitBtnGerarClick(Sender: TObject);
    procedure EditValorKeyPress(Sender: TObject; var Key: Char);
    procedure EditValorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    procedure ProcessaArquivo;

  public
    { Public declarations }
  end;

  TIECustomGrid = class(TCustomGrid)
  public
    property InplaceEditor;
  end;

  TIEInplaceEdit = class(TInplaceEdit)
  public
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  end;


var
  FormPrecoPlano: TFormPrecoPlano;
  Plano : Integer;

implementation

uses QRPrecoPlano, udm;

{$R *.DFM}

procedure TFormPrecoPlano.FormCreate(Sender: TObject);
begin
     Left := 70;
     Top := 90;
     QueryPlanos.Open;
     QueryGrauParentesco.Open;
     QueryPrecoPlano.Open;
     PageControl1.ActivePageIndex := 0;
end;

procedure TFormPrecoPlano.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryGrauParentesco.Close;
     QueryPrecoPlano.Close;
     QueryPlanos.Close;
     QueryGrauAuxiliar.Close;
     StoredProcDeletaPrecoPlano.Close;
end;

procedure TFormPrecoPlano.QueryPrecoPlanoAfterPost(DataSet: TDataSet);
var VGrau : integer;
begin
   VGrau := QueryPrecoPlanoCodigo_Grau_Parentesco.AsInteger;
   QueryPrecoPlano.Close;
   QueryPrecoPlano.Open;
   QueryPrecoPlano.locate('codigo_grau_parentesco',VGrau,[]);
end;

procedure TFormPrecoPlano.QueryPrecoPlanoAfterInsert(DataSet: TDataSet);
begin
//     DBEditCodigoPrecoPlano.SetFocus;
end;

procedure TFormPrecoPlano.DBGridDocumentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
       vk_return :
          begin
            key := vk_tab;
            if Assigned(TIECustomGrid(Sender).InplaceEditor) then
               TIEInplaceEdit(TIECustomGrid(Sender).InplaceEditor).KeyDown(key,shift);
          end;
        vk_escape :
            if QueryPrecoPlanoCodigo_Plano.asString = '' then
               QueryPrecoPlano.Cancel;
        vk_f1: ProcessaArquivo;
     end;
end;

procedure TFormPrecoPlano.ProcessaArquivo;
begin
     if MessageDlg('Deseja Processar a Rotina ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        try
          StoredProcDeletaPrecoPlano.ExecProc;
          // Executa a stored procedure para deletar os registros do Faturamento
        except
          begin
            ShowMessage('Erro ao Limpar a Tabela de Preços p/ Plano !!! [ENTER]');
            exit;
          end;
        end
     else
       exit;   

     QueryPrecoPlano.DisableControls;

     with QueryPrecoPlano do
       begin
         Close;
         Open;
       end;

     QueryGrauAuxiliar.Open;
     with QueryPlanos do
       begin
         Close;
         Open;
         while not eof do
           begin
             QueryGrauAuxiliar.First;
             while not QueryGrauAuxiliar.eof do
                begin
                  QueryPrecoPlano.Insert;
                  QueryPrecoPlanoCodigo_Plano.asInteger := QueryPlanosCodigo.asInteger;
                  QueryPrecoPlanoCodigo_Grau_Parentesco.asInteger := QueryGrauAuxiliarCodigo.asInteger;
                  QueryPrecoPlanoData.asString := '01/01/1990';
                  case QueryPlanosCodigo.asInteger of
                    1 : QueryPrecoPlanoValor.asCurrency := 11.00;
                    2 : QueryPrecoPlanoValor.asCurrency := 8.50;
                    3 : QueryPrecoPlanoValor.asCurrency := 8.50;
                    4 : QueryPrecoPlanoValor.asCurrency := 8.50;
                    5 : QueryPrecoPlanoValor.asCurrency := 3.00;
                    6 : QueryPrecoPlanoValor.asCurrency := 8.50;
                    7 : QueryPrecoPlanoValor.asCurrency := 8.50;
                    8 : QueryPrecoPlanoValor.asCurrency := 7.50;
                    9 : QueryPrecoPlanoValor.asCurrency := 9.00;
                    10 : QueryPrecoPlanoValor.asCurrency := 7.00;
                    11 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    12 : QueryPrecoPlanoValor.asCurrency := 10.00;
                    13 : QueryPrecoPlanoValor.asCurrency := 3.00;
                    14 : QueryPrecoPlanoValor.asCurrency := 3.90;
                    15 : QueryPrecoPlanoValor.asCurrency := 11.00;
                    16 : QueryPrecoPlanoValor.asCurrency := 10.00;
                    17 : QueryPrecoPlanoValor.asCurrency := 8.80;
                    18 : QueryPrecoPlanoValor.asCurrency := 8.80;
                    19 : QueryPrecoPlanoValor.asCurrency := 8.90;
                    20 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    21 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    22 : QueryPrecoPlanoValor.asCurrency := 8.50;
                    23 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    24 : QueryPrecoPlanoValor.asCurrency := 7.50;
                    25 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    26 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    27 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    28 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    29 : QueryPrecoPlanoValor.asCurrency := 8.00;
                    30 : QueryPrecoPlanoValor.asCurrency := 10.00;
                    31 : QueryPrecoPlanoValor.asCurrency := 10.00;
                    32 : QueryPrecoPlanoValor.asCurrency := 10.00;
                    33 : QueryPrecoPlanoValor.asCurrency := 10.00;
                  end;

                  try
                    QueryPrecoPlano.Post;
                  except
                    begin
                      ShowMessage('Erro de Gravação da Tabela Preço p/ Plano !!!');
                      QueryPrecoPlano.Cancel;
                      exit;
                    end;
                  end;
                  QueryGrauAuxiliar.Next;
                end;
             Next;
           end;
       end;
     QueryPrecoPlano.EnableControls;
     ShowMessage('Fim de Processamento !!!');
end;

{ TIEInplaceEdit }

procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TFormPrecoPlano.BitBtnImprimirClick(Sender: TObject);
begin
     Application.CreateForm(TQRListaPrecoPlano, QRListaPrecoPlano);
     QRListaPrecoPlano.Preview;
     QRListaPrecoPlano.Free;
end;

procedure TFormPrecoPlano.BitBtnFiltrarClick(Sender: TObject);
begin
     if QueryPlanosCodigo.asString = '' then exit;
     
     with QueryPrecoPlano do
       begin
         Close;
         SQL[1] := 'where Codigo_Plano = :Plano';
         SQL[2] := 'order by Codigo_Plano';
         Params[0].DataType := ftInteger;
         Params[0].ParamType := ptInput;
         ParamByName('Plano').asInteger := QueryPlanosCodigo.asInteger;
         Open;
       end;
end;

procedure TFormPrecoPlano.BitBtnGerarClick(Sender: TObject);
var Valor : Currency;
begin
     DBGridDocumento.ReadOnly := false;
     Valor := StrToFloat(EditValor.Text);

     if QueryPlanosCodigo.asString = '' then
        begin
          ShowMessage('Favor Escolher um Plano !!!');
          DBLookupComboBoxPlano.SetFocus;
          exit;
        end;

     Plano := QueryPlanosCodigo.asInteger;

     if Valor = 0 then
        begin
          ShowMessage('O Valor Não pode ser = 0 !!!');
          EditValor.SetFocus;
          exit;
        end;

     QueryPrecoPlano.DisableControls;        
     QueryGrauAuxiliar.Open;
     with QueryPlanos do
       begin
         Close;
         SQL[1] := 'where Codigo = :Plano and ativo = 1';
         Params[0].DataType := ftInteger;
         Params[0].ParamType := ptInput;
         ParamByName('Plano').asInteger := Plano;
         Open;
         while not eof do
           begin
             QueryGrauAuxiliar.First;
             while not QueryGrauAuxiliar.eof do
                begin
                  QueryPrecoPlano.Insert;
                  QueryPrecoPlanoCodigo_Plano.asInteger := QueryPlanosCodigo.asInteger;
                  QueryPrecoPlanoCodigo_Grau_Parentesco.asInteger := QueryGrauAuxiliarCodigo.asInteger;
                  QueryPrecoPlanoData.asDateTime := dm.Date;
                  QueryPrecoPlanoValor.asCurrency := StrToFloat(EditValor.Text);

                  try
                    QueryPrecoPlano.Post;
                  except
                    begin
                      ShowMessage('Já Existe Registros deste Plano Gerado !!!');
                      QueryPrecoPlano.Cancel;
                      exit;
                    end;
                  end;
                  QueryGrauAuxiliar.Next;
                end;
             Next;
           end;
       end;
     QueryPrecoPlano.EnableControls;
     with QueryPlanos do
       begin
         Close;
         //SQL[2] := 'order by plano';
         Open;
       end;

     ShowMessage('Fim de Processamento !!!');
end;

procedure TFormPrecoPlano.EditValorKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', DecimalSeparator, #8]) then key := #0;
end;

procedure TFormPrecoPlano.EditValorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormPrecoPlano.PageControl1Change(Sender: TObject);
begin
   QueryHistorico.close;
   if PageControl1.ActivePage = TabSheetHistorico then
   begin
      if QueryPrecoPlano.active then
      begin
         QueryHistorico.ParamByName('plano').AsInteger := QueryPrecoPlanoCodigo_Plano.value;
         QueryHistorico.ParamByName('grau').AsInteger  := QueryPrecoPlanoCodigo_Grau_Parentesco.value;
         QueryHistorico.Open;
      end;
   end;
end;

end.
