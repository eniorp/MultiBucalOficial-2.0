unit grafVendasRepresentante;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask, TeEngine, Series, TeeProcs, Chart, DbChart, ComCtrls,
  DBCtrls;

type
  TFmGrafVendasRepresentante = class(TFmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    MaskEditDtIni: TMaskEdit;
    Button1: TButton;
    MaskEditDtFim: TMaskEdit;
    Label3: TLabel;
    PageControl1: TPageControl;
    TabSheetMesaMes: TTabSheet;
    DBChart2: TDBChart;
    ADOQueryMesaMes: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    ADOQueryRepresentante: TADOQuery;
    DataSourceRepresentante: TDataSource;
    Series2: TBarSeries;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEditDtIniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmGrafVendasRepresentante: TFmGrafVendasRepresentante;

implementation

uses udm;

{$R *.dfm}

procedure TFmGrafVendasRepresentante.Button1Click(Sender: TObject);

  var qtTotal : integer;
  var sqlAux, aux : string;
begin
  inherited;
  // qtTotal := dm.execmd('select  COUNT(*) qtde from usuario u, vendedor v, representante r where v.codigo = u.vendedor and r.codigo = v.representante and u.dt_venda between ' +
    if DBLookupComboBox1.Text = '' then
    begin
      ShowMessage('selecione um representante');
      exit;
    end;
    dm.queryGlobal.Close;
    dm.queryGlobal.SQL.Clear;
    sqlAux := 'select c.empresa,  COUNT(*) qtde from usuario u, contratante c, vendedor v, representante r where v.codigo = u.vendedor and c.codigo = u.contratante_titular and r.codigo = v.representante and u.dt_venda between ' +
    '''01/' + MaskEditDtIni.Text + ''' and ''' + dm.GetLasDayMonth(StrToDate('01/' + MaskEditDtFim.Text))
    + ''' and r.codigo = ' + ADOQueryRepresentante.fieldByName('codigo').AsString + ' group by c.empresa';
    dm.queryGlobal.SQL.Add(sqlAux);
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

//   DBChart1.Title.Text.Clear;
  // DBChart1.Title.Text.Add('Gráfico de vendas.  ' + aux);
   ADOQueryMesaMes.Close();
   ADOQueryMesaMes.sql[18] := '''01/' + MaskEditDtIni.Text + ''' and ''' + dm.GetLasDayMonth(StrToDate('01/' + MaskEditDtFim.Text)) + '''';
   ADOQueryMesaMes.sql[20] := ADOQueryRepresentante.fieldByName('codigo').AsString;
   ADOQueryMesaMes.open;
   DBChart2.Title.Text.Clear;
   DBChart2.Title.Text.Add('Gráfico de vendas Mes a Mes.  ' + aux);


end;

procedure TFmGrafVendasRepresentante.ComboBox1Change(Sender: TObject);
//var cs : TChartSeries;
//var cs1 : TChartSeries;

begin
  inherited;
{
  cs := DBChart1.Series[0];
  cs1 := DBChart2.Series[0];

  case ComboBox1.ItemIndex of

   0 :begin
        ChangeSeriesType(cs, TPieSeries);
        ChangeSeriesType(cs1, TPieSeries);
      end;
   1 : begin
          ChangeSeriesType(cs, TBarSeries);
          ChangeSeriesType(cs1, TBarSeries);
       end;
   2 : begin
          ChangeSeriesType(cs, TLineSeries);
          ChangeSeriesType(cs1, TLineSeries);
       end;
   end;}

end;

procedure TFmGrafVendasRepresentante.FormShow(Sender: TObject);
begin
  inherited;
   MaskEditDtIni.Text := dm.execmd('select  REPLICATE(''0'',2 - len(MONTH(getdate()))) + CAST(MONTH(getdate()) as varchar(2)) + ''/'' + cast(year(DATEADD(month,0,getdate())) as varchar(4)) mes','mes');
   MaskEditDtFim.Text := MaskEditDtIni.Text;
   MaskEditDtIniExit(sender);
//   ComboBox1.ItemIndex := 1;
//   ComboBox1Change(Sender);
  // Button1Click(sender);
end;

procedure TFmGrafVendasRepresentante.MaskEditDtIniExit(Sender: TObject);
begin
  inherited;
   if MaskEditDtIni.Text <> '  /    ' then
   begin
      ADOQueryRepresentante.close;
      ADOQueryRepresentante.sql[1] := '''01/' + MaskEditDtIni.Text + '''';
      ADOQueryRepresentante.open;
   end;
end;

end.
