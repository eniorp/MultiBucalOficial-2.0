unit manutencaoDMED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask;

type
  TFmManutencaoDMED = class(TFmPadrao)
    ADOQuery1: TADOQuery;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    BitBtnOk: TBitBtn;
    procedure BitBtnOkClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmManutencaoDMED: TFmManutencaoDMED;

implementation

uses udm;

{$R *.dfm}

procedure TFmManutencaoDMED.BitBtnOkClick(Sender: TObject);
begin
  inherited;
   AdoQuery1.Close;
   AdoQuery1.sql[30] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + ' 23:59''';
   AdoQuery1.open;   
end;

procedure TFmManutencaoDMED.DBGrid1DblClick(Sender: TObject);
var nrTitulo : integer;
begin
  inherited;

  if AdoQuery1.FieldByName('lg_ir').AsBoolean = false then
      dm.execmd('update orcamento set lg_ir = 1 where numero = ' + AdoQuery1.FieldByName('orcamento').AsString)
  else
     dm.execmd('update orcamento set lg_ir = 0 where numero = ' + AdoQuery1.FieldByName('orcamento').AsString);
  nrTitulo := AdoQuery1.FieldByName('orcamento').AsInteger;
  AdoQuery1.Close;
  AdoQuery1.Open;
  AdoQuery1.locate('orcamento',nrTitulo,[]);
end;

procedure TFmManutencaoDMED.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;

If not  AdoQuery1.FieldByName('lg_ir').AsBoolean then
   Dbgrid1.Canvas.Font.Color:= clGreen; // coloque aqui a cor desejada
   
Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);

end;




end.
