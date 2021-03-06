unit GraficoRecebMensXOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, TeEngine, Series, TeeProcs, Chart, DbChart, StdCtrls,
  Mask, ExtCtrls;

type
  TfmGrafMensXOrcamento = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    MaskEditDtVIni: TMaskEdit;
    MaskEditDtVFim: TMaskEdit;
    Button1: TButton;
    DBChart1: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    sp_recebimento_mes: TADOStoredProc;
    GroupBox2: TGroupBox;
    MaskEditDtPIni: TMaskEdit;
    MaskEditDtPFim: TMaskEdit;
    Series3: TBarSeries;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmGrafMensXOrcamento: TfmGrafMensXOrcamento;

implementation

{$R *.dfm}

procedure TfmGrafMensXOrcamento.Button1Click(Sender: TObject);
begin
  sp_recebimento_mes.close;
  sp_recebimento_mes.Parameters[1].Value :=  MaskEditDtVIni.Text;
  sp_recebimento_mes.Parameters[2].Value :=  MaskEditDtVFim.Text;
  sp_recebimento_mes.Parameters[3].Value :=  MaskEditDtPIni.Text;
  sp_recebimento_mes.Parameters[4].Value :=  MaskEditDtPFim.Text;
  sp_recebimento_mes.Open;
//  DBChart1.PreviousPage;

end;

end.
