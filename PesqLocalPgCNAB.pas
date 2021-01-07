unit PesqLocalPgCNAB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PadraoExcel, ExtCtrls, Mask, StdCtrls, OleServer, Excel97, Db, DBTables,
  Buttons, ComCtrls, Grids, DBGrids, ExcelXP;

type
  TFmPesqLocalPgCNAB = class(TFmPadraoExcel)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    QueryResumido: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure MaskEditDtIniChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqLocalPgCNAB: TFmPesqLocalPgCNAB;

implementation

{$R *.DFM}

procedure TFmPesqLocalPgCNAB.Button1Click(Sender: TObject);
begin
  inherited;
   RadioGroup1Click(sender);
end;

procedure TFmPesqLocalPgCNAB.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  if RadioGroup1.ItemIndex = 0 then
  begin
     Query1.Close;
     Query1.sql[21] := '  and c.data_pagamento between ''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.text + ' 23:59:59''';
     Query1.Open;
     DataSource1.DataSet := Query1;
     DBGrid4.BringToFront;
  end
  else
  begin
     QueryResumido.Close;
     QueryResumido.sql[15] := '  and c.data_pagamento between ''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.text + ' 23:59:59''';
     QueryResumido.Open;
     DataSource1.DataSet := QueryResumido;
     DBGrid3.BringToFront;
  end;

end;

procedure TFmPesqLocalPgCNAB.MaskEditDtIniChange(Sender: TObject);
begin
  inherited;
   Query1.close;
   QueryResumido.close;
end;

end.
