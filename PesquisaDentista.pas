{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Serviços                              }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaDentista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormPesquisaDentistas = class(TForm)
    DBGridPesquisaDentistas: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorDentista: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarDentistas: TEdit;
    QueryDentistas: TQuery;
    DataSourceDentistas: TDataSource;
    Query50: TQuery;
    DataSource50: TDataSource;
    Query50Nome: TStringField;
    Query50Codigo: TIntegerField;
    QueryDentistasCodigo: TIntegerField;
    QueryDentistasNome: TStringField;
    QueryDentistasData_Exclusao: TDateTimeField;
    BitBtnSair: TBitBtn;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure EditLocalizarDentistasChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditLocalizarDentistasExit(Sender: TObject);
    procedure EditLocalizarDentistasKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPesquisaDentistasExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    VtxPesq : string;
  public
    { Public declarations }
  end;

var
  FormPesquisaDentistas: TFormPesquisaDentistas;
  Campo: String[5];

implementation

{$R *.DFM}

procedure TFormPesquisaDentistas.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaDentistas.EditLocalizarDentistasChange(Sender: TObject);
begin
{     QueryDentistas.Open;

     if EditLocalizarDentistas.Tag = 0 then
        if QueryDentistas.Locate('Nome', EditLocalizarDentistas.Text, [loCaseInsensitive, loPartialKey]) then Exit;
     EditLocalizarDentistas.Tag := 0;

     QueryDentistas.Close;

     with Query50 do
        begin
          SQL[0] := 'select top 50 Nome,Codigo from Dentista';
          SQL[1] := 'where Nome >= ''' + EditLocalizarDentistas.Text + '''';
          SQL[2] := 'order by Nome';
          Open;
          Last;
          QueryDentistas.SQL[1] := 'where Nome >= ''' + EditLocalizarDentistas.Text + ''' and Nome <= ''' + Query50.Fields[0].asString + '''';
          QueryDentistas.SQL[3] := 'order by Nome';
          Close;
        end;
     QueryDentistas.Open;}
end;

procedure TFormPesquisaDentistas.FormActivate(Sender: TObject);
begin
     EditLocalizarDentistas.Text := '';
     EditLocalizarDentistasChange(EditLocalizarDentistas);
     EditLocalizarDentistas.SetFocus;
end;

procedure TFormPesquisaDentistas.EditLocalizarDentistasExit(
  Sender: TObject);
begin
    VtxPesq := EditLocalizarDentistas.text;
     with Query50 do
        begin
          SQL[0] := 'select top 50 Nome,Codigo from Dentista';
          SQL[1] := 'where Nome >= ''' + EditLocalizarDentistas.Text + '''';
          SQL[2] := 'order by Nome';
          Open;
          Last;
          QueryDentistas.SQL[1] := 'where Nome >= ''' + EditLocalizarDentistas.Text + ''' and Nome <= ''' + Query50.Fields[0].asString + '''';
          QueryDentistas.SQL[3] := 'order by Nome';
          Close;
        end;
     QueryDentistas.Open;
     DBGridPesquisaDentistas.SetFocus;
end;

procedure TFormPesquisaDentistas.EditLocalizarDentistasKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaDentistas.DBGridPesquisaDentistasExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

procedure TFormPesquisaDentistas.FormShow(Sender: TObject);
begin
   VtxPesq := '@#$%';
end;

procedure TFormPesquisaDentistas.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key = VK_RETURN) and (VtxPesq = EditLocalizarDentistas.text) then
      close;
end;

end.
