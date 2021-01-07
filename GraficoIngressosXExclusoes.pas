unit GraficoIngressosXExclusoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TeEngine, Series, Grids, DBGrids, DB, ADODB, ExtCtrls, TeeProcs,
  Chart, DbChart, StdCtrls, Mask;

type
  TFmGraficIncXExc = class(TForm)
    sp_inclusoesExclusoes: TADOStoredProc;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    Button1: TButton;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmGraficIncXExc: TFmGraficIncXExc;

implementation

uses udm;

{$R *.dfm}

procedure TFmGraficIncXExc.Button1Click(Sender: TObject);
begin
  sp_inclusoesExclusoes.close;
  sp_inclusoesExclusoes.Parameters[1].Value :=  '01/' + MaskEditDtIni.Text;
  sp_inclusoesExclusoes.Parameters[2].Value :=  dm.GetLasDayMonth(StrToDate('01/' + MaskEditDtFim.Text));
  sp_inclusoesExclusoes.Open;
end;

end.
