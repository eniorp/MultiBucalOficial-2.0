{ Sistema .........: Controle de Assistência Odontológica                      }
{ Programa ........: Cadastros Vendedores                                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Vendedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Db, DBTables, Grids, DBGrids, StdCtrls, Buttons, Mask, ExtCtrls;

type
  TFormVendedores = class(TForm)
    Panel2: TPanel;
    Panel8: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label10: TLabel;
    Label22: TLabel;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    DBEditEndereco: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditUF: TDBEdit;
    DBEditCep: TDBEdit;
    DBEditTelefone: TDBEdit;
    DBEditFax: TDBEdit;
    DBEditRG: TDBEdit;
    DBEditCPF: TDBEdit;
    EditProcura: TEdit;
    BitBtnPesquisar: TBitBtn;
    DBEditemail: TDBEdit;
    DBEditDiaComissao: TDBEdit;
    Panel12: TPanel;
    DBGridRepresentantes: TDBGrid;
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtnSair: TBitBtn;
    Panel5: TPanel;
    DBNavigatorRepresentantes: TDBNavigator;
    QueryVendedores: TQuery;
    DataSourceVendedores: TDataSource;
    Query50: TQuery;
    Query50Nome: TStringField;
    QueryVendedoresCodigo: TIntegerField;
    QueryVendedoresNome: TStringField;
    QueryVendedoresCNPJ_CPF: TStringField;
    QueryVendedoresRg: TStringField;
    QueryVendedoresEndereco: TStringField;
    QueryVendedoresBairro: TStringField;
    QueryVendedoresCidade: TStringField;
    QueryVendedoresCep: TStringField;
    QueryVendedoresData_Inclusao: TDateTimeField;
    QueryVendedoresData_Exclusao: TDateTimeField;
    QueryVendedoresData_Nascimento: TDateTimeField;
    QueryVendedorese_mail: TStringField;
    QueryVendedoresFone: TStringField;
    QueryVendedoresFax: TStringField;
    QueryVendedoresRepresentante: TSmallintField;
    QueryVendedoresDia_Comissao: TSmallintField;
    Label1: TLabel;
    DBEditDataNascimento: TDBEdit;
    Label2: TLabel;
    DBEditInclusao: TDBEdit;
    Label3: TLabel;
    DBEditExclusao: TDBEdit;
    DBLookupComboBoxRepresentante: TDBLookupComboBox;
    Label4: TLabel;
    QueryRepresentantes: TQuery;
    QueryRepresentantesCodigo: TSmallintField;
    QueryRepresentantesNome: TStringField;
    DataSourceRepresentante: TDataSource;
    QueryVendedoresEstado: TStringField;
    CheckBox1: TCheckBox;
    Label5: TLabel;
    Bevel1: TBevel;
    procedure DBEditCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditProcuraChange(Sender: TObject);
    procedure EditProcuraExit(Sender: TObject);
    procedure QueryVendedoresAfterInsert(DataSet: TDataSet);
    procedure QueryVendedoresAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVendedores: TFormVendedores;

implementation

{$R *.DFM}

procedure TFormVendedores.DBEditCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormVendedores.EditProcuraChange(Sender: TObject);
begin
     QueryVendedores.Close;
     with Query50 do
        begin
          SQL[0] := 'select * from Vendedor';
          SQL[1] := 'where Nome >= ''' + EditProcura.Text + '''';
          Open;
          Last;
          QueryVendedores.SQL[1] := 'where Nome >= ''' + EditProcura.Text + ''' and Nome <= ''' + Query50.Fields[0].asString + '''';
          Close;
        end;
     QueryVendedores.Open;
end;

procedure TFormVendedores.EditProcuraExit(Sender: TObject);
begin
     EditProcura.Visible := False;
end;

procedure TFormVendedores.QueryVendedoresAfterInsert(DataSet: TDataSet);
begin
     EditProcura.Visible := False;
end;

procedure TFormVendedores.QueryVendedoresAfterPost(DataSet: TDataSet);
var Codigo: Integer;
begin
     with QueryVendedores do
       begin
         DisableControls;
         Codigo := QueryVendedoresCodigo.asInteger;
         Close;
         Open;
         Locate('Codigo', Codigo, [loCaseInsensitive]);
         EnableControls;
       end;
end;

procedure TFormVendedores.FormCreate(Sender: TObject);
begin
     Top := 90;
     Left := 112;
     QueryRepresentantes.Open;
     QueryVendedores.Open;
end;

procedure TFormVendedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryRepresentantes.Close;
     QueryVendedores.Close;
     Query50.close;
     action := cafree;
end;

procedure TFormVendedores.BitBtnPesquisarClick(Sender: TObject);
begin
     EditProcura.Visible := True;
     EditProcura.Text := '';
     EditProcura.SetFocus;
end;

procedure TFormVendedores.CheckBox1Click(Sender: TObject);
begin
     QueryVendedores.Close;
     if CheckBox1.Checked then
        QueryVendedores.sql[2] := ' order by Nome '
     else
        QueryVendedores.sql[2] := ' and data_exclusao is null order by Nome ';
     QueryVendedores.Open;
end;

end.
