unit CadTabPagtoProteticoProcUS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, Mask;

type
  TFmCadtabPagProteticoProcUS = class(TFmPadrao)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Panel5: TPanel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    DBGrid2: TDBGrid;
    ADOQuery1: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery1indice: TIntegerField;
    ADOQuery1cd_protetico: TIntegerField;
    ADOQuery1cd_procedimento: TIntegerField;
    ADOQuery1vrUS: TBCDField;
    ADOQuery1dtIni: TDateTimeField;
    ADOQuery1dtFim: TDateTimeField;
    ADOQuery1obs: TStringField;
    ADOQuery1Descricao: TStringField;
    procedure ADOQuery1NewRecord(DataSet: TDataSet);
    procedure ADOQuery1BeforeDelete(DataSet: TDataSet);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
     cdProteticoAux : integer;
    { Public declarations }
  end;

var
  FmCadtabPagProteticoProcUS: TFmCadtabPagProteticoProcUS;

implementation

uses udm;

{$R *.dfm}

procedure TFmCadtabPagProteticoProcUS.ADOQuery1NewRecord(
  DataSet: TDataSet);
begin
  inherited;
   ADOQuery1dtIni.AsDateTime := dm.Date;
   ADOQuery1cd_protetico.AsInteger := cdProteticoAux;

end;

procedure TFmCadtabPagProteticoProcUS.ADOQuery1BeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
   ADOQuery1.Edit;
   ADOQuery1dtFim.AsDateTime := dm.Date;
   ADOQuery1.post;
   abort;

end;

procedure TFmCadtabPagProteticoProcUS.ADOQuery1BeforePost(
  DataSet: TDataSet);
begin
  inherited;
   if ADOQuery1.State = dsInsert then
        ADOQuery1indice.AsString := dm.execmd('select isnull(max(indice),0) + 1 indice from TabPagProteticoXProcedimento','indice');

    if ADOQuery1cd_procedimento.IsNull then
    begin
       ShowMessage('Informe a procedimento');
       abort;
    end;
    if ADOQuery1vrUS.IsNull then
    begin
       ShowMessage('Informe o valor');
       abort;
    end;

end;

procedure TFmCadtabPagProteticoProcUS.FormShow(Sender: TObject);
begin
  inherited;
   ADOQuery1.Open;
end;

procedure TFmCadtabPagProteticoProcUS.ADOQuery1AfterScroll(
  DataSet: TDataSet);
begin
  inherited;
    Edit1.Text := dm.execmd('select descricao from servicos where codigo = ''' + ADOQuery1cd_procedimento.AsString + '''','descricao');
end;

end.
