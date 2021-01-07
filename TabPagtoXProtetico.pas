unit TabPagtoXProtetico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, Mask, DBCtrls;

type
  TFmTabPagtoProtetico = class(TFmPadrao)
    ADOQuery1: TADOQuery;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBNavigator1: TDBNavigator;
    ADOQuery1cd_protetico: TIntegerField;
    ADOQuery1cd_tabela: TSmallintField;
    ADOQuery1dtIni: TDateTimeField;
    ADOQuery1dtFim: TDateTimeField;
    procedure ADOQuery1NewRecord(DataSet: TDataSet);
    procedure ADOQuery1AfterPost(DataSet: TDataSet);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    CdProtetico : Integer;
    { Public declarations }
  end;

var
  FmTabPagtoProtetico: TFmTabPagtoProtetico;

implementation

uses udm;

{$R *.dfm}

procedure TFmTabPagtoProtetico.ADOQuery1NewRecord(DataSet: TDataSet);
begin
  inherited;
   ADOQuery1cd_protetico.AsInteger := CdProtetico;
   ADOQuery1dtFim.AsString := '01/01/2079';
end;

procedure TFmTabPagtoProtetico.ADOQuery1AfterPost(DataSet: TDataSet);
begin
  inherited;
   Adoquery1.Close;
   Adoquery1.Open;
end;

procedure TFmTabPagtoProtetico.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
   if dm.execmd('select count(*) q from TabelaPagto where cd_tabela = ' + ADOQuery1cd_tabela.AsString,'q') = '0' then
   begin
      ShowMessage('TAbela não cadastrada !');
      abort;
   end
end;

end.
