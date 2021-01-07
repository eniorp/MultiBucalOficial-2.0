{ Sistema .........: Controle de Assistência Odontológica                      }
{ Programa ........: Cadastros Representantes                                  }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Representantes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, ExtCtrls, Db, DBTables;

type
  TFormRepresentantes = class(TForm)
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
    Panel12: TPanel;
    DBGridRepresentantes: TDBGrid;
    Panel1: TPanel;
    Panel4: TPanel;
    BitBtnSair: TBitBtn;
    Panel5: TPanel;
    DBNavigatorRepresentantes: TDBNavigator;
    QueryRepresentantes: TQuery;
    DataSourceRepresentantes: TDataSource;
    EditProcura: TEdit;
    BitBtnPesquisar: TBitBtn;
    Query50: TQuery;
    Query50Nome: TStringField;
    QueryRepresentantesCodigo: TSmallintField;
    QueryRepresentantesNome: TStringField;
    QueryRepresentantesCNPJ_CPF: TStringField;
    QueryRepresentantesRg: TStringField;
    QueryRepresentantese_mail: TStringField;
    QueryRepresentantesEndereco: TStringField;
    QueryRepresentantesBairro: TStringField;
    QueryRepresentantesCidade: TStringField;
    QueryRepresentantesCep: TStringField;
    QueryRepresentantesDia_Comissao: TSmallintField;
    QueryRepresentantesEstado: TStringField;
    Label10: TLabel;
    DBEditemail: TDBEdit;
    Label22: TLabel;
    DBEditDiaComissao: TDBEdit;
    QueryRepresentantesFone: TStringField;
    QueryRepresentantesFax: TStringField;
    QueryRepresentantesComissa_Vendedor_Representante: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    QueryRepresentantesData_Exclusao: TDateTimeField;
    Label1: TLabel;
    DBEditExclusao: TDBEdit;
    SpeedButtonExtorno: TSpeedButton;
    Label2: TLabel;
    DBEditInclusao: TDBEdit;
    QueryRepresentantesData_Inclusao: TDateTimeField;
    procedure QueryRepresentantesAfterPost(DataSet: TDataSet);
    procedure QueryRepresentantesAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure EditProcuraChange(Sender: TObject);
    procedure EditProcuraExit(Sender: TObject);
    procedure SpeedButtonExtornoClick(Sender: TObject);
    procedure QueryRepresentantesBeforePost(DataSet: TDataSet);
    procedure QueryRepresentantesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRepresentantes: TFormRepresentantes;

implementation

uses udm;

{$R *.DFM}

procedure TFormRepresentantes.QueryRepresentantesAfterPost(DataSet: TDataSet);
var Codigo: Integer;
begin
     with QueryRepresentantes do
       begin
         DisableControls;
         Codigo := QueryRepresentantesCodigo.asInteger;
         Close;
         Open;
         Locate('Codigo', Codigo, [loCaseInsensitive]);
         EnableControls;
       end;
end;

procedure TFormRepresentantes.QueryRepresentantesAfterInsert(DataSet: TDataSet);
begin
     QueryRepresentantesComissa_Vendedor_Representante.asBoolean := True;
     QueryRepresentantesDia_Comissao.asInteger := 10;
     QueryRepresentantesData_Inclusao.AsDateTime := dm.Date();
     //DBEditCodigo.SetFocus;
end;

procedure TFormRepresentantes.FormCreate(Sender: TObject);
begin
     Top := 65;
     Left := 112;
     QueryRepresentantes.Open;
end;

procedure TFormRepresentantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryRepresentantes.Close;
     Query50.Close;
     action := cafree;
end;

procedure TFormRepresentantes.DBEditNomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRepresentantes.BitBtnPesquisarClick(Sender: TObject);
begin
     EditProcura.Visible := True;
     EditProcura.Text := '';
     EditProcura.SetFocus;
end;

procedure TFormRepresentantes.EditProcuraChange(Sender: TObject);
begin
     QueryRepresentantes.Close;
     with Query50 do
        begin
          SQL[0] := 'select * from Representante';
          SQL[1] := 'where Nome >= ''' + EditProcura.Text + '''';
          Open;
          Last;
          QueryRepresentantes.SQL[1] := 'where Nome >= ''' + EditProcura.Text + ''' and Nome <= ''' + Query50.Fields[0].asString + '''';
          Close;
        end;
     QueryRepresentantes.Open;
end;

procedure TFormRepresentantes.EditProcuraExit(Sender: TObject);
begin
     EditProcura.Visible := False;
end;

procedure TFormRepresentantes.SpeedButtonExtornoClick(Sender: TObject);
begin
   if MessageDlg('Confirma reativação do Representante ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
       if QueryRepresentantes.State in [dsbrowse] then
          QueryRepresentantes.Edit;
       QueryRepresentantesData_Exclusao.AsString := '';
     end;
end;

procedure TFormRepresentantes.QueryRepresentantesBeforePost(
  DataSet: TDataSet);
begin
   if QueryRepresentantesCodigo.AsInteger > 99 then
   begin
      // caca do renato  Copy(ComboBoxRepresentante.Text,1,2) no Form FormRelVendas
      ShowMessage('Código de representando não pode ser maior que 99');
      Abort;
   end
end;

procedure TFormRepresentantes.QueryRepresentantesNewRecord(
  DataSet: TDataSet);
  var VCod : Smallint;
begin
  VCod := 1;
  dm.ExecutaComando('select * from representante order by codigo','codigo');
  while not dm.QueryGlobal.Eof do
  begin
     if VCod <> dm.QueryGlobal.FieldByName('codigo').AsInteger then
     begin
        QueryRepresentantesCodigo.AsInteger := VCod;
        break;
     end;
     inc(VCod);
     dm.QueryGlobal.next;
  end;
  DBEditNome.SetFocus;
  dm.QueryGlobal.close;
end;

end.
