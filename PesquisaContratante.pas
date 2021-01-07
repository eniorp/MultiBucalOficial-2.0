{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Contratante                           }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

unit PesquisaContratante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids,enio;

type
  TFormPesquisaContratante = class(TForm)
    DBGridPesquisaContratante: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorDentista: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarContratante: TEdit;
    QueryContratante: TQuery;
    DataSourceContratante: TDataSource;
    QueryContratanteNome: TStringField;
    QueryContratanteCodigo: TIntegerField;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    QueryContratanteVencimento: TIntegerField;
    QueryContratanteInclusao: TDateTimeField;
    QueryContratanteExclusao: TDateTimeField;
    QueryContratanteEndereco_Comercial: TStringField;
    QueryContratanteBairro_Comercial: TStringField;
    QueryContratanteEndereco_Residencial: TStringField;
    QueryContratanteFone1: TStringField;
    QueryContratanteFone2: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    QueryContratantenmFantasia: TStringField;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EditLocalizarContratanteExit(Sender: TObject);
    procedure EditLocalizarContratanteKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure DBGridPesquisaContratanteExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaContratante: TFormPesquisaContratante;
  Campo: String[5];

implementation

{$R *.DFM}

procedure TFormPesquisaContratante.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaContratante.FormActivate(Sender: TObject);
begin
     EditLocalizarContratante.Text := '';
     EditLocalizarContratante.SetFocus;
end;

procedure TFormPesquisaContratante.EditLocalizarContratanteExit(
  Sender: TObject);
begin
   QueryContratante.Close;
   if e_numerico(EditLocalizarContratante.Text) then
      QueryContratante.SQL[1] := 'where codigo = ' + EditLocalizarContratante.Text
   else
      QueryContratante.SQL[1] := 'where (Nome like ''%' + EditLocalizarContratante.Text + '%'' or nmFantasia like ''%' + EditLocalizarContratante.Text + '%'')';
   if CheckBox1.checked then
      QueryContratante.SQL[1] := QueryContratante.SQL[1] +  ' and exclusao is null ';


   QueryContratante.SQL[2] := 'order by Nome';
   QueryContratante.Open;

   DBGridPesquisaContratante.SetFocus;
end;

procedure TFormPesquisaContratante.EditLocalizarContratanteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaContratante.DBGridPesquisaContratanteExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

end.
