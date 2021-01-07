unit UsuarioSemMens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  ComCtrls;

type
  TFMUsuarioSemMens = class(TFmPadrao)
    Label1: TLabel;
    DTPBase: TDateTimePicker;
    BitBtn1: TBitBtn;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure DTPBaseChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMUsuarioSemMens: TFMUsuarioSemMens;

implementation

uses udm;

{$R *.DFM}

procedure TFMUsuarioSemMens.BitBtn1Click(Sender: TObject);
begin
  inherited;
   Query1.Close;
   Query1.ParamByName('data').AsString := DateToStr(DTPBase.date);
   Query1.Open;
end;

procedure TFMUsuarioSemMens.DTPBaseChange(Sender: TObject);
begin
  inherited;
   Query1.close;
end;

procedure TFMUsuarioSemMens.FormShow(Sender: TObject);
begin
  inherited;
   DTPBase.Date := StrToDate(dm.GetDataSrv);
   BitBtn1Click(sender);
end;

end.
