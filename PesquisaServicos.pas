{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Serviços                              }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaServicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormPesquisaServicos = class(TForm)
    DBGridPesquisaServicos: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorCliente: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarServicos: TEdit;
    BitBtnOK: TBitBtn;
    BitBtnCancelar: TBitBtn;
    QueryServicos: TQuery;
    DataSourceServicos: TDataSource;
    Query50: TQuery;
    DataSource50: TDataSource;
    Query50Descricao: TStringField;
    Query50Codigo: TIntegerField;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure EditLocalizarServicosChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaServicos: TFormPesquisaServicos;

implementation

{$R *.DFM}

procedure TFormPesquisaServicos.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaServicos.EditLocalizarServicosChange(Sender: TObject);

begin
     QueryServicos.Close;

     with Query50 do
        begin
          SQL[0] := 'select top 50 Descricao,Codigo from Servicos';
          SQL[1] := 'where Descricao >= ''' + EditLocalizarServicos.Text + '''';
          SQL[2] := 'order by Descricao';
          Open;
          Last;
          QueryServicos.SQL[1] := 'where Descricao >= ''' + EditLocalizarServicos.Text + ''' and Descricao <= ''' + Query50.Fields[0].asString + '''';
          QueryServicos.SQL[2] := 'order by Descricao';
          Close;
        end;
     QueryServicos.Open;
end;

procedure TFormPesquisaServicos.FormActivate(Sender: TObject);
begin
     EditLocalizarServicos.Text := '';
     EditLocalizarServicosChange(EditLocalizarServicos);
     EditLocalizarServicos.SetFocus;
end;

end.
