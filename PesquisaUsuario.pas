{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Contratante                           }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

unit PesquisaUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids,enio;

type
  TFormPesquisaUsuarios = class(TForm)
    DBGridPesquisaUsuarios: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorUsuarios: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    QueryUsuarios: TQuery;
    DataSourceUsuarios: TDataSource;
    BitBtnSair: TBitBtn;
    QueryUsuariosNome: TStringField;
    QueryUsuariosCodigo_Completo: TIntegerField;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    Label2: TLabel;
    EditUsuario: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    QueryUsuariosfone1: TStringField;
    QueryUsuariosfone2: TStringField;
    QueryUsuariosfax: TStringField;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure DBGridPesquisaUsuariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditUsuarioExit(Sender: TObject);
    procedure EditUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    VtxPesq : String;
  public
    { Public declarations }
  end;

var
  FormPesquisaUsuarios: TFormPesquisaUsuarios;

implementation

uses udm;

{$R *.DFM}

procedure TFormPesquisaUsuarios.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaUsuarios.DBGridPesquisaUsuariosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaUsuarios.EditUsuarioExit(Sender: TObject);
begin
  if EditUsuario.Text = '' then
     exit;
   VtxPesq := EditUsuario.Text;
   QueryUsuarios.Close;

   if e_numerico(EditUsuario.Text) then
      QueryUsuarios.SQL[1] := 'where u.codigo_completo = ' + EditUsuario.Text
   else
      QueryUsuarios.SQL[1] := 'where u.Nome like ''' +     EditUsuario.Text  + '%'' collate Latin1_General_CI_AI ';
   if CheckBox1.checked then
      QueryUsuarios.SQL[1] := QueryUsuarios.SQL[1] +  ' and u.data_exclusao is null ';


   QueryUsuarios.SQL[3] := 'order by u.Nome';
   QueryUsuarios.Open;
   if(QueryUsuarios.Bof and QueryUsuarios.Eof) and e_numerico(EditUsuario.Text) then
   begin
      QueryUsuarios.SQL[1] := 'where u.cpf = ''' + EditUsuario.Text + '''';
      if CheckBox1.checked then
         QueryUsuarios.SQL[1] := QueryUsuarios.SQL[1] +  ' and u.data_exclusao is null ';
      QueryUsuarios.Open;
   end;

   DBGridPesquisaUsuarios.SetFocus;

end;

procedure TFormPesquisaUsuarios.EditUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;

end;

procedure TFormPesquisaUsuarios.FormShow(Sender: TObject);
begin
   VtxPesq := 'S@#!';
end;

procedure TFormPesquisaUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key = VK_RETURN) and (VtxPesq = EditUsuario.Text) then
      close;
end;

end.

