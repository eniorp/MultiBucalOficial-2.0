unit PesquisaContasBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, DBCtrls, ExtCtrls, Db, DBTables, Grids, DBGrids;

type
  TFormPesquisaContas_Bancos = class(TForm)
    DBGridContas: TDBGrid;
    QueryContas: TQuery;
    QueryContasBanco: TStringField;
    QueryContasNumero_Conta: TStringField;
    QueryContasAgencia: TStringField;
    QueryContasTitular: TStringField;
    QueryContasCGC: TStringField;
    DataSourceContas: TDataSource;
    PanelBottons: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtnSair: TBitBtn;
    QueryContasConvenio: TStringField;
    QueryContasNome_Banco: TStringField;
    QueryContasBoleto: TBooleanField;
    QueryContasMensagem_Header: TStringField;
    QueryContasEspaco_Header: TIntegerField;
    QueryContasId_Banco: TIntegerField;
    QueryContasDebito_Tipo: TSmallintField;
    QueryContasDebito_Sequencial: TIntegerField;
    QueryContasBoleto_Sequencial: TIntegerField;
    QueryContaslayout: TStringField;
    QueryContasJurosDiario: TFloatField;
    QueryContasmsg1: TStringField;
    QueryContasmsg2: TStringField;
    QueryContasPasta: TStringField;
    procedure BitBtnSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridContasDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaContas_Bancos: TFormPesquisaContas_Bancos;

implementation

uses GeraReceber;

{$R *.DFM}

procedure TFormPesquisaContas_Bancos.BitBtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFormPesquisaContas_Bancos.FormActivate(Sender: TObject);
begin
  DBGridContas.SetFocus;
end;

procedure TFormPesquisaContas_Bancos.FormCreate(Sender: TObject);
begin
  With QueryContas do
    begin
      close;
      if GeraReceber.boleto then begin
         SQL[1] := 'where boleto = 1';
         SQL[2] := '';
         Caption := 'Contas do Banco - Emissão Boleto';
      end
      else begin
         parambyname('cod_banco').asString := GeraReceber.Cod_Banco;
         SQL[2] := '';
         Caption := 'Contas do Banco : ' + GeraReceber.Cod_Banco;
      end;
      Open;
    end;
end;

procedure TFormPesquisaContas_Bancos.DBGridContasDblClick(Sender: TObject);
begin
  close;
end;

end.
