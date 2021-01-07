unit PesqProtetico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, StdCtrls, DB, DBTables, Grids, DBGrids, ExtCtrls,
  Buttons, DBClient, SimpleDS, ADODB;

type
  TFmPesqProtetico = class(TFmPadrao)
    EditNmProt: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditNmProtKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqProtetico: TFmPesqProtetico;

implementation

uses udm;

{$R *.dfm}

procedure TFmPesqProtetico.BitBtn1Click(Sender: TObject);
begin
  inherited;
{   SimpleDataSet1.Close;
   SimpleDataSet1.DataSet.CommandText := 'select * from protetico where data_exclusao is null and nome like ''%' + EditNmProt.text + '%''';
   SimpleDataSet1.Active := true;}
   AdoQuery1.close;
   AdoQuery1.sql.Text := 'select * from protetico where data_exclusao is null and nome like ''%' + EditNmProt.text + '%''';
   AdoQuery1.open;
   EditNmProt.SelectAll;
end;

procedure TFmPesqProtetico.EditNmProtKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if key = #13 then
     BitBtn1Click(Sender); 
end;

procedure TFmPesqProtetico.BitBtn2Click(Sender: TObject);
begin
  inherited;
   FmPesqProtetico.Tag := 1;
   Close;
end;

end.
