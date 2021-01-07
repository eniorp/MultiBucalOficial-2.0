unit QtdeOrcStatus;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PadraoExcel, OleServer, Excel97, Db, DBTables, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, Grids, DBGrids, DBCtrls, Mask;

type
  TFmQtdeOrcamentoStatus = class(TFmPadraoExcel)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    GroupBox2: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DsTpOrcamento: TDataSource;
    QueryTpOrcamento: TQuery;
    Button1: TButton;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmQtdeOrcamentoStatus: TFmQtdeOrcamentoStatus;

implementation

{$R *.DFM}

procedure TFmQtdeOrcamentoStatus.FormShow(Sender: TObject);
begin
  inherited;
   QueryTpOrcamento.Close;
   QueryTpOrcamento.Open;
end;

procedure TFmQtdeOrcamentoStatus.Button1Click(Sender: TObject);
var VCont : integer;
begin
  inherited;
   Query1.Close;
   Query1.sql[09] := '''' + MaskEditDtIni.text + ' 23:59'' and ''' + MaskEditDtFim.text + ' 23:59''';
   Query1.sql[11] := QueryTpOrcamento.fieldByName('tipo').AsString;
   Query1.Open;
   VCont := 0;
   while not Query1.eof do
   begin
      VCont := VCont + Query1.FieldByName('qtde').asinteger;
      Query1.next;
   end;
   Label3.caption := 'Qtde Total: ' + IntToStr(VCont);
end;

procedure TFmQtdeOrcamentoStatus.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
   Button1.enabled := (DBLookupComboBox1.Text <> '') and (MaskEditDtIni.text <> '  /  /    ') and (MaskEditDtIni.text <> '  /  /    ');
end;

end.
