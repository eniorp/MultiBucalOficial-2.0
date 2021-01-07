unit TabPagtoXDentista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, Mask, ADODB;

type
  TFmTabPagtoDentista = class(TFmPadrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    ADOQuery1: TADOQuery;
    ADOQuery1cd_dentista: TIntegerField;
    ADOQuery1cd_tabela: TSmallintField;
    ADOQuery1dtIni: TDateTimeField;
    ADOQuery1dtFim: TDateTimeField;
    Label3: TLabel;
    Edit1: TEdit;
    ADOQuery1indice: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery1registroPlano: TIntegerField;
    SpeedButton1: TSpeedButton;
    ADOQuery1ds_registro: TStringField;
    procedure ADOQuery1NewRecord(DataSet: TDataSet);
    procedure ADOQuery1AfterPost(DataSet: TDataSet);

    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    CdDentista : Integer;
  end;

var
  FmTabPagtoDentista: TFmTabPagtoDentista;

implementation

uses udm;

{$R *.dfm}

procedure TFmTabPagtoDentista.ADOQuery1NewRecord(DataSet: TDataSet);
begin
  inherited;
   ADOQuery1cd_dentista.AsInteger := cdDentista;
   ADOQuery1dtFim.AsString := '01/01/2079';

end;

procedure TFmTabPagtoDentista.ADOQuery1AfterPost(DataSet: TDataSet);
begin
  inherited;
   Adoquery1.Close;
   Adoquery1.Open;
end;


procedure TFmTabPagtoDentista.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
   begin
      Edit1.Text := dm.execmd('select ds_tabela d from TabelaPagto where cd_tabela = ''' + ADOQuery1cd_tabela.AsString + '''','d');
      if Edit1.Text = '' then
      begin
         ShowMessage('código de tabela inválido !');
         DbEdit1.setfocus;
         exit;
      end;
   end
end;

procedure TFmTabPagtoDentista.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  inherited;
  Edit1.Text := dm.execmd('select ds_tabela d from TabelaPagto where cd_tabela = ''' + ADOQuery1cd_tabela.AsString + '''','d');

end;

procedure TFmTabPagtoDentista.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
  if dm.execmd('select count(*) d from TabelaPagto where cd_tabela = ''' + ADOQuery1cd_tabela.AsString + '''','d')  = '0' then
  begin
     ShowMessage('Código de tabela inválido !');
     DBEdit1.SetFocus;
     Abort;
  end;
   if ADOQuery1indice.IsNull then
      ADOQuery1indice.AsString := dm.execmd('select isnull(max(indice),0) +  1 m from TabPagXdentista','m');
end;

procedure TFmTabPagtoDentista.FormShow(Sender: TObject);
begin
  inherited;
   AdoQuery2.Open;
end;

end.
