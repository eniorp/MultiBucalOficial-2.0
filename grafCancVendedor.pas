unit grafCancVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask, TeEngine, Series, TeeProcs, Chart, DbChart, ComCtrls;

type
  TFmGrafCancVendedor = class(TFmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    MaskEditDtIni: TMaskEdit;
    Button1: TButton;
    Label2: TLabel;
    ComboBox1: TComboBox;
    MaskEditDtFim: TMaskEdit;
    Label3: TLabel;
    PageControl1: TPageControl;
    TabSheetPorVendedor: TTabSheet;
    TabSheetMesaMes: TTabSheet;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    DBChart2: TDBChart;
    PieSeries1: TPieSeries;
    ADOQueryMesaMes: TADOQuery;
    TabSheet1: TTabSheet;
    DBChart3: TDBChart;
    PieSeries2: TPieSeries;
    ADOQueryCancMotivo: TADOQuery;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmGrafCancVendedor: TFmGrafCancVendedor;

implementation

uses udm;

{$R *.dfm}

procedure TFmGrafCancVendedor.Button1Click(Sender: TObject);

  var qtTotal : integer;
  var aux : string;
begin
  inherited;
  // qtTotal := dm.execmd('select  COUNT(*) qtde from usuario u, vendedor v, representante r where v.codigo = u.vendedor and r.codigo = v.representante and u.dt_venda between ' +
    dm.queryGlobal.Close;
    dm.queryGlobal.SQL.Clear;
    dm.queryGlobal.SQL.Add('select c.empresa,  COUNT(*) qtde from usuario u, contratante c, vendedor v, representante r where v.codigo = u.vendedor and c.codigo = u.contratante_titular and r.codigo = v.representante and u.Data_Exclusao between ' +
    '''01/' + MaskEditDtIni.Text + ''' and ''' + dm.GetLasDayMonth(StrToDate('01/' + MaskEditDtFim.Text)) + ''' group by c.empresa');
    dm.queryGlobal.Open;
    aux := '';
    qtTotal := 0;
   while not dm.queryGlobal.eof do
   begin
       qtTotal := qtTotal + dm.queryGlobal.FieldByName('qtde').AsInteger;
       if dm.queryGlobal.FieldByName('empresa').AsBoolean  then
          aux := aux + ' Qtde PJ : ' + dm.queryGlobal.FieldByName('qtde').AsString
       else
       aux := aux + ' Qtde PF : ' + dm.queryGlobal.FieldByName('qtde').AsString;
       dm.QueryGlobal.Next;
   end;
   aux := aux + ' Total : ' + IntToStr(qtTotal);

   DBChart1.Title.Text.Clear;
   DBChart1.Title.Text.Add('Gráfico de Cancelamento por vendedor.  ' + aux);
   ADOQueryH.close;
   ADOQueryH.sql[1] :=  'cast(' + IntToStr(qttotal) +  ' as smallmoney)';
   ADOQueryH.sql[6] := '''01/' + MaskEditDtIni.Text + ''' and ''' + dm.GetLasDayMonth(StrToDate('01/' + MaskEditDtFim.Text)) + '''';
   ADOQueryH.Open;
   ADOQueryMesaMes.Close();
   ADOQueryMesaMes.sql[8] := '''01/' + MaskEditDtIni.Text + ''' and ''' + dm.GetLasDayMonth(StrToDate('01/' + MaskEditDtFim.Text)) + '''';
   ADOQueryMesaMes.open;

   ADOQueryCancMotivo.close();
   ADOQueryCancMotivo.sql[1] :=  'cast(' + IntToStr(qttotal) +  ' as smallmoney)';
   ADOQueryCancMotivo.sql[5] := '''01/' + MaskEditDtIni.Text + ''' and ''' + dm.GetLasDayMonth(StrToDate('01/' + MaskEditDtFim.Text)) + '''';
   ADOQueryCancMotivo.open;

   DBChart2.Title.Text.Clear;
   DBChart2.Title.Text.Add('Gráfico de Cancelamento Mes a Mes.  ' + aux);

   DBChart3.Title.Text.Clear;
   DBChart3.Title.Text.Add('Gráfico de Cancelamento por Motivo : ' + aux);

end;

procedure TFmGrafCancVendedor.ComboBox1Change(Sender: TObject);
var cs : TChartSeries;
var cs1 : TChartSeries;
var cs2 : TChartSeries;
begin
  inherited;
  cs := DBChart1.Series[0];
  cs1 := DBChart2.Series[0];
  cs2 := DBChart3.Series[0];
  case ComboBox1.ItemIndex of

   0 :begin
        ChangeSeriesType(cs, TPieSeries);
        ChangeSeriesType(cs1, TPieSeries);
        ChangeSeriesType(cs2, TPieSeries);
      end;
   1 : begin
          ChangeSeriesType(cs, TBarSeries);
          ChangeSeriesType(cs1, TBarSeries);
          ChangeSeriesType(cs2, TBarSeries);
       end;
   2 : begin
          ChangeSeriesType(cs, TLineSeries);
          ChangeSeriesType(cs1, TLineSeries);
          ChangeSeriesType(cs2, TLineSeries);
       end;
   end;

end;

procedure TFmGrafCancVendedor.FormShow(Sender: TObject);
begin
  inherited;
   MaskEditDtIni.Text := dm.execmd('select  REPLICATE(''0'',2 - len(MONTH(getdate()))) + CAST(MONTH(getdate()) as varchar(2)) + ''/'' + cast(year(DATEADD(month,0,getdate())) as varchar(4)) mes','mes');
   MaskEditDtFim.Text := MaskEditDtIni.Text;
   ComboBox1.ItemIndex := 1;
   ComboBox1Change(Sender);
   Button1Click(sender);
end;

end.
