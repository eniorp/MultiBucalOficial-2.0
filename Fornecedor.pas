{ Sistema .........: Controle de Assistência Médica                            }
{ Programa ........: Cadastros Fornecedores                                    }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Fornecedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls, ComCtrls, StdCtrls, Mask,
  Buttons, IniFiles;

type
  TFormFornecedor = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DataSourceFornecedor: TDataSource;
    Panel4: TPanel;
    BitBtnSair: TBitBtn;
    Panel6: TPanel;
    DBNavigatorFornecedor: TDBNavigator;
    Panel5: TPanel;
    DBGridFornecedor: TDBGrid;
    PageControlFornecedores: TPageControl;
    TabSheetCadastro: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label24: TLabel;
    Label8: TLabel;
    Label26: TLabel;
    DBEditNome: TDBEdit;
    DBEditNomeFantasia: TDBEdit;
    DBEditEndereco: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditCep: TDBEdit;
    DBEditFone: TDBEdit;
    DBEditFax: TDBEdit;
    DBEditCGC: TDBEdit;
    DBEditInscricao: TDBEdit;
    DBEditContato: TDBEdit;
    DBEditEmail: TDBEdit;
    DBEditEstado: TDBEdit;
    DBEditCidade: TDBEdit;
    TabSheetObservacoes: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    DBMemoObservacoes: TDBMemo;
    DBEditDataCadastro: TDBEdit;
    GroupBoxLocalizarFornecedor: TGroupBox;
    ComboBoxLocalizarFornecedor: TComboBox;
    EditLocalizarFornecedor: TEdit;
    SpeedButtonLocalizarCliente: TSpeedButton;
    QueryFornecedor: TQuery;
    DBEditCodigo: TDBEdit;
    DBComboBoxPessoa: TDBComboBox;
    QueryFornecedorCodigo: TIntegerField;
    QueryFornecedorRazao_Social: TStringField;
    QueryFornecedorNome_Fantasia: TStringField;
    QueryFornecedorEndereco: TStringField;
    QueryFornecedorBairro: TStringField;
    QueryFornecedorCidade: TStringField;
    QueryFornecedorEstado: TStringField;
    QueryFornecedorCep: TStringField;
    QueryFornecedorCNPJ: TStringField;
    QueryFornecedorInscricao: TStringField;
    QueryFornecedorEmail: TStringField;
    QueryFornecedorFone: TStringField;
    QueryFornecedorFax: TStringField;
    QueryFornecedorPessoa: TStringField;
    QueryFornecedorContato: TStringField;
    QueryFornecedorData_Cadastro: TDateTimeField;
    QueryFornecedorObservacoes: TMemoField;
    QueryGrupos: TQuery;
    DBLookupComboBoxGrupo: TDBLookupComboBox;
    Label11: TLabel;
    DataSourceGrupos: TDataSource;
    QueryFornecedorGrupo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditLocalizarFornecedorEnter(Sender: TObject);
    procedure EditLocalizarFornecedorExit(Sender: TObject);
    procedure ComboBoxLocalizarFornecedorClick(Sender: TObject);
    procedure DBEditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EditLocalizarFornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure DBEditNomeEnter(Sender: TObject);
    procedure SpeedButtonLocalizarClienteClick(Sender: TObject);
    procedure QueryFornecedorAfterInsert(DataSet: TDataSet);
    procedure QueryFornecedorAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFornecedor: TFormFornecedor;
  Ini: TIniFile;
  ProximoFornecedor: String[6];
  Proximo: Integer;
  NomeAliases, Diretorio, CaminhoOrigem : String;
  TempLista2: Tstrings;

implementation

uses udm;

{$R *.DFM}

procedure TFormFornecedor.FormCreate(Sender: TObject);
begin
     QueryFornecedor.Open;
     QueryGrupos.Open;
     PageControlFornecedores.ActivePage := TabSheetCadastro;
     Left := 121;
     Top := 65;
     Height := 454;
     Width := 572;
end;

procedure TFormFornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryFornecedor.Close;
     QueryGrupos.Close;
     Action := cafree;
end;

procedure TFormFornecedor.EditLocalizarFornecedorEnter(Sender: TObject);
begin
     ComboBoxLocalizarFornecedor.Enabled := False;
end;

procedure TFormFornecedor.EditLocalizarFornecedorExit(Sender: TObject);
begin
     If ComboBoxLocalizarFornecedor.items[0] = 'Código' Then
       Begin
         with QueryFornecedor do
           Begin
             close;
             Sql[1] := 'where codigo >= ''' + EditLocalizarfornecedor.Text  + '''';
             Sql[2] := 'order by codigo';
             Open;

             If RecordCount = 0 Then
               Begin
                 ShowMessage('Não Encontrado !!! [ENTER]');
                 GroupBoxLocalizarFornecedor.Visible  := False;
                 exit;
               End;
           End;
       End
       Else
         Exit;
     GroupBoxLocalizarFornecedor.Visible  := False;
     DBEditNome.SetFocus;
end;

procedure TFormFornecedor.ComboBoxLocalizarFornecedorClick(Sender: TObject);
begin
     EditLocalizarFornecedor.SetFocus;
end;

procedure TFormFornecedor.DBEditCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     Case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormFornecedor.SpeedButton1Click(Sender: TObject);
begin
     Close;
end;

procedure TFormFornecedor.EditLocalizarFornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
     if ComboBoxLocalizarFornecedor.ItemIndex = 0 then
        if not (key in ['0'..'9', #13, #8]) then
           key := #0;
end;

{Rotina p/ achar o próximo registro}
procedure TFormFornecedor.DBEditNomeEnter(Sender: TObject);
begin
//     EditCodigo.Text := IntToStr(Proximo);
end;

procedure TFormFornecedor.SpeedButtonLocalizarClienteClick(
  Sender: TObject);
begin
     GroupBoxLocalizarFornecedor.Visible := True;
     ComboBoxLocalizarFornecedor.Enabled := True;
     GroupBoxLocalizarFornecedor.Left    := 101;
     GroupBoxLocalizarFornecedor.Top     := 3;
     ComboBoxLocalizarFornecedor.SetFocus;
     EditLocalizarFornecedor.Text := '';
end;

procedure TFormFornecedor.QueryFornecedorAfterInsert(DataSet: TDataSet);
begin
//     QueryFornecedorCidade.asString := 'São José dos Campos';
     QueryFornecedorEstado.asString := 'SP';
     QueryFornecedorData_Cadastro.asDateTime := dm.Date;
     DBEditNome.SetFocus;
end;

procedure TFormFornecedor.QueryFornecedorAfterPost(DataSet: TDataSet);
begin
     with QueryFornecedor do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormFornecedor.FormActivate(Sender: TObject);
begin
     with QueryGrupos do
       begin
         Close;
         Open;
       end;  
end;

procedure TFormFornecedor.Edit1Exit(Sender: TObject);
begin
If ComboBoxLocalizarFornecedor.Items[1]  = 'Nome' Then
       Begin
         with QueryFornecedor do
           Begin
             close;
             Sql[1] := 'where Razao_Social = Trim(Edit1.Text)';
             Sql[2] := 'order by codigo';
             Open;
           End;
       End
       Else
         Exit;
end;

end.
