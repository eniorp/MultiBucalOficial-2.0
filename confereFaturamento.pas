unit confereFaturamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PadraoExcel, StdCtrls, ExtCtrls, Mask, OleServer, Excel97, Db, DBTables,
  Buttons, ComCtrls, Grids, DBGrids, ExcelXP;

type
  TFmConfFaturamento = class(TFmPadraoExcel)
    Label4: TLabel;
    MaskEditDtBase: TMaskEdit;
    Label3: TLabel;
    EditAno: TEdit;
    Label1: TLabel;
    EditMes: TEdit;
    RadioGroupTp: TRadioGroup;
    Button1: TButton;
    Label2: TLabel;
    LabelQt: TLabel;
    CheckBox1: TCheckBox;
    sp_lastDayMonth: TStoredProc;
    procedure MaskEditDtBaseChange(Sender: TObject);
    procedure EditMesChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Query1AfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmConfFaturamento: TFmConfFaturamento;

implementation

uses udm;

{$R *.DFM}

procedure TFmConfFaturamento.MaskEditDtBaseChange(Sender: TObject);
begin
  inherited;
   EditMes.Text := Copy(MaskEditDtBase.text,4,2);
   EditAno.Text := Copy(MaskEditDtBase.text,7,4);
   EditMesChange(Sender);
end;

procedure TFmConfFaturamento.EditMesChange(Sender: TObject);
begin
  inherited;
  Button1.enabled := (MaskEditDtBase.text <> '  /  /    ') and (EditMes.text <> '') and (EditAno.text <> '') and (RadioGroupTp.ItemIndex > -1);
  Query1.Close;
end;

procedure TFmConfFaturamento.Button1Click(Sender: TObject);

begin
  inherited;
   PageControl1.ActivePageIndex := 0;
//   sp_lastDayMonth.Close;
//   sp_lastDayMonth.ParamByName('@MesAno').AsString := EditMes.Text + '/' + EditAno.TExt;
//   sp_lastDayMonth.Open;

   Query1.close;
   Query1.sql[13] := '''' + MaskEditDtBase.text + '''';
   Query1.sql[18] := '''' + MaskEditDtBase.text + ' 23:59:59''';
   Query1.sql[26] := '''' + MaskEditDtBase.text + '''';
   if RadioGroupTp.ItemIndex = 0 then
      Query1.sql[30] := ' faturamento f '
   else
      Query1.sql[30] := ' receber f ';

   if CheckBox1.checked then
      Query1.sql[16] := ' and t.gera_receber = 1 '
   else
      Query1.sql[16] := ' ';
//   Query1.sql[34] := '''01/' + EditMes.Text + '/' + EditAno.Text + ''' and ''' + sp_lastDayMonth.FieldByName('LastDayMonth').AsString + ' 23:59:59''';
   Query1.sql[35] := '''' + EditMes.Text + Copy(EditAno.Text,3,2) + '''';
   Query1.Open;
   LabelQt.caption := IntTostr(Query1.Recordcount);
end;

procedure TFmConfFaturamento.Query1AfterClose(DataSet: TDataSet);
begin
  inherited;
   LabelQt.Caption := '';
end;

end.
