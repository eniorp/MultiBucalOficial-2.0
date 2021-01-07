{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Serviços                              }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaClinica;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids;

type
  TFormPesquisaClinica = class(TForm)
    DBGridPesquisaClinicas: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorClinica: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarClinica: TEdit;
    QueryClinicas: TQuery;
    DataSourceClinicas: TDataSource;
    Query50: TQuery;
    DataSource50: TDataSource;
    BitBtnSair: TBitBtn;
    Query50Descricao: TStringField;
    Query50Codigo: TIntegerField;
    QueryClinicasCodigo: TIntegerField;
    QueryClinicasDescricao: TStringField;
    QueryClinicasCGC: TStringField;
    QueryClinicasIE: TStringField;
    QueryClinicasEndereco: TStringField;
    QueryClinicasBairro: TStringField;
    QueryClinicasCEP: TStringField;
    QueryClinicasCidade: TStringField;
    QueryClinicasEstado: TStringField;
    QueryClinicasTelefone: TStringField;
    QueryClinicasFax: TStringField;
    QueryClinicasEmail: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure EditLocalizarClinicaExit(Sender: TObject);
    procedure EditLocalizarClinicaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPesquisaClinicasExit(Sender: TObject);
    procedure BitBtnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaClinica: TFormPesquisaClinica;
  Campo: String[5];

implementation

{$R *.DFM}

procedure TFormPesquisaClinica.FormActivate(Sender: TObject);
begin
     EditLocalizarClinica.Text := '';
     EditLocalizarClinica.SetFocus;
end;

procedure TFormPesquisaClinica.EditLocalizarClinicaExit(
  Sender: TObject);
begin
     with Query50 do
        begin
          SQL[0] := 'select top 50 Descricao,Codigo from Clinicas';
          SQL[1] := 'where Descricao >= ''' + EditLocalizarClinica.Text + '''';
          SQL[2] := 'order by Descricao';
          Open;
          Last;
          QueryClinicas.SQL[1] := 'where Descricao >= ''' + EditLocalizarClinica.Text + ''' and Descricao <= ''' + Query50.Fields[0].asString + '''';
          QueryClinicas.SQL[2] := 'order by Descricao';
          Close;
        end;
     QueryClinicas.Open;
     DBGridPesquisaClinicas.SetFocus;
end;

procedure TFormPesquisaClinica.EditLocalizarClinicaKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN: Perform(WM_NEXTDLGCTL, 0, 0);
     end;
end;

procedure TFormPesquisaClinica.DBGridPesquisaClinicasExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

procedure TFormPesquisaClinica.BitBtnSairClick(Sender: TObject);
begin
   Close;
end;

end.
