unit TabPagtoVrServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls;

type
  TFmTabPagtoVrServico = class(TFmPadrao)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    ADOQueryTabPagto: TADOQuery;
    ADOQueryTabPagtods_servico: TStringField;
    ADOQueryTabPagtocd_tabela: TSmallintField;
    ADOQueryTabPagtocd_servico: TIntegerField;
    ADOQueryTabPagtovr_Dentista: TBCDField;
    Edit2: TEdit;
    DBNavigator1: TDBNavigator;
    procedure Button1Click(Sender: TObject);
    procedure ADOQueryTabPagtoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmTabPagtoVrServico: TFmTabPagtoVrServico;

implementation

uses udm, CadTabPagto;

{$R *.dfm}

procedure TFmTabPagtoVrServico.Button1Click(Sender: TObject);
begin
  inherited;
   ADOQueryTabPagto.Close;
   Edit2.text := dm.execmd('select ds_tabela from TabelaPagto where tipo = ''' +    FmCadTabPagto.TipoTabela + ''' and cd_tabela = ' + Edit1.text, 'ds_tabela');
   if Edit2.text = '' then
   begin
      ShowMessage('Tabela não existe ou não eh do profissional selecionado(Dentista/Protetico)');
      exit;
   end;

   ADOQueryTabPagto.sql[1] := Edit1.Text;
   ADOQueryTabPagto.Open;

end;

procedure TFmTabPagtoVrServico.ADOQueryTabPagtoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
   ADOQueryTabPagtocd_tabela.AsString := Edit1.text;
end;

end.
