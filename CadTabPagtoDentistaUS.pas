unit CadTabPagtoDentistaUS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask, DBCtrls, ADODB;

type
  TFmCadTabPagtoDentistaUS = class(TFmPadrao)
    ADOQuery1: TADOQuery;
    ADOQuery1indice: TIntegerField;
    ADOQuery1cd_dentista: TIntegerField;
    ADOQuery1cd_categoria: TIntegerField;
    ADOQuery1vrUS: TBCDField;
    ADOQuery1dtIni: TDateTimeField;
    ADOQuery1dtFim: TDateTimeField;
    ADOQuery1Descricao_Categoria: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    DBNavigator1: TDBNavigator;
    procedure ADOQuery1NewRecord(DataSet: TDataSet);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure ADOQuery1BeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    cdDentistaAux : integer;
  end;

var
  FmCadTabPagtoDentistaUS: TFmCadTabPagtoDentistaUS;

implementation

uses udm;

{$R *.dfm}

procedure TFmCadTabPagtoDentistaUS.ADOQuery1NewRecord(DataSet: TDataSet);
begin
  inherited;
   ADOQuery1dtIni.AsDateTime := dm.Date;
   ADOQuery1cd_dentista.AsInteger := cdDentistaAux;  
end;

procedure TFmCadTabPagtoDentistaUS.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
   if ADOQuery1.State = dsInsert then
        ADOQuery1indice.AsString := dm.execmd('select isnull(max(indice),0) + 1 indice from tabpagDentistaXcategoria','indice');

    if ADOQuery1cd_categoria.IsNull then
    begin
       ShowMessage('Informe a categoria');
       abort;
    end;
    if ADOQuery1vrUS.IsNull then
    begin
       ShowMessage('Informe o valor');
       abort;
    end;


end;

procedure TFmCadTabPagtoDentistaUS.FormShow(Sender: TObject);
begin
  inherited;
   ADOQuery2.Open;
end;

procedure TFmCadTabPagtoDentistaUS.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
      ADOQuery1.Post;
end;

procedure TFmCadTabPagtoDentistaUS.ADOQuery1BeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
   ADOQuery1.Edit;
   ADOQuery1dtFim.AsDateTime := dm.Date;
   ADOQuery1.post;
   abort;

end;

end.
