unit ControleFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmFaturamento = class(TFmPadrao)
    ADOQueryPeriodoFat: TADOQuery;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    EditAno: TEdit;
    Label5: TLabel;
    EditMes: TEdit;
    GroupBox2: TGroupBox;
    CheckBox1: TCheckBox;
    Button1: TButton;
    Panel2: TPanel;
    AdoQueryevento_fat: TADOQuery;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    BitBtnProcessar: TBitBtn;
    ButtonDesmarcarEmitidoDoc: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ADOQueryPeriodoFatAfterScroll(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnProcessarClick(Sender: TObject);
    procedure ButtonDesmarcarEmitidoDocClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFaturamento: TFmFaturamento;

implementation

uses udm, eventoFat, GeraReceber, DetalheFat;

{$R *.dfm}

procedure TFmFaturamento.Button1Click(Sender: TObject);
begin
  inherited;

   ADOQueryPeriodoFat.close;
   ADOQueryPeriodoFat.sql[1] := ' seq_periodo_fat > 0 ';

   if (EditMes.text <> '') and (Editano.text <> '') then
     ADOQueryPeriodoFat.sql[1] := ADOQueryPeriodoFat.sql[1] + ' and mes = ' + EditMes.text + ' and ano = ' + EditAno.text;
   if CheckBox1.Checked then
      ADOQueryPeriodoFat.sql[1] := ADOQueryPeriodoFat.sql[1] + ' and cd_status > 1';

   ADOQueryPeriodoFat.open;
//   fiz isso tb
end;

{procedure TFmFaturamento.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   FmEventosFat := TFmEventosFat.create(self);
   FmEventosFat.AdoQueryevento_fat.Close;
   FmEventosFat.AdoQueryevento_fat.SQL[16] := ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString;
   FmEventosFat.AdoQueryevento_fat.Open;
   FmEventosFat.ShowModal;
   FmEventosFat.free;
end;
 }
procedure TFmFaturamento.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  FmDetalheFat := TFmDetalheFat.create(self);
  FmDetalheFat.ADOQueryPeriodoFat.Close;
  FmDetalheFat.ADOQueryPeriodoFat.SQL[21] := ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString;
  case AdoQueryevento_fat.FieldByName('tp_evento').AsInteger of

      02 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 10';
      03 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 237';
      04 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 33';
      05 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 01 and day(data_vencimento) between 01 and 10';
      06 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 01 and day(data_vencimento) between 11 and 20';
      07 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 01 and day(data_vencimento) between 21 and 25';
      08 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 01 and day(data_vencimento) between 26 and 30';

      09 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 151 and day(data_vencimento) between 01 and 10';
      10 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 151 and day(data_vencimento) between 11 and 20';
      11 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 151 and day(data_vencimento) between 21 and 25';
      12 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 151 and day(data_vencimento) between 26 and 30';

      13 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 275 and day(data_vencimento) between 01 and 10';
      14 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 275 and day(data_vencimento) between 11 and 20';
      15 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 275 and day(data_vencimento) between 21 and 25';
      16 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 275 and day(data_vencimento) between 26 and 30';

      17 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 409 and day(data_vencimento) between 01 and 10';
      18 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 409 and day(data_vencimento) between 11 and 20';
      19 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 409 and day(data_vencimento) between 21 and 25';
      20 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 409 and day(data_vencimento) between 26 and 30';

      21 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 104';
      22 : FmDetalheFat.ADOQueryPeriodoFat.SQL[22] := ' and f.tipo_cobranca = 399';
      99 : exit;
    end;
//    FmDetalheFat.memo1.lines.add(FmDetalheFat.ADOQueryPeriodoFat.sql.text);
   FmDetalheFat.ADOQueryPeriodoFat.open;
   FmDetalheFat.label1.caption := 'Qtde : ' + IntToStr(FmDetalheFat.ADOQueryPeriodoFat.Recordcount);
   FmDetalheFat.ShowModal;

end;

procedure TFmFaturamento.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
     if AdoQueryevento_fat.FieldByName('cd_status').AsInteger = 1 then
        Dbgrid2.Canvas.Font.Color:= ClGreen
     else
        Dbgrid2.Canvas.Font.Color:= ClRed;

   Dbgrid2.DefaultDrawDataCell(Rect, dbgrid2.columns[datacol].field, State);
end;

procedure TFmFaturamento.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   FormGeraReceber.CarregaParam;
   close;
end;

procedure TFmFaturamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 Action := CaFree;
end;

procedure TFmFaturamento.ADOQueryPeriodoFatAfterScroll(DataSet: TDataSet);
begin
  inherited;
   BitBtnProcessar.enabled := ADOQueryPeriodoFat.FieldByName('dt_fim_proc').IsNull;
   AdoQueryevento_fat.Close;
   AdoQueryevento_fat.SQL[16] := ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString;
   AdoQueryevento_fat.Open;
   AdoQueryevento_fat.locate('cd_status',2,[]);
end;

procedure TFmFaturamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_escape then
      close;
end;

procedure TFmFaturamento.BitBtnProcessarClick(Sender: TObject);
begin
  inherited;
   FormGeraReceber.PAtualizaPeriodoFat(ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString);
   FormGeraReceber.PAtualizaEventoFat(1,0);
   ADOQueryPeriodoFat.close;
   ADOQueryPeriodoFat.open;
end;

procedure TFmFaturamento.ButtonDesmarcarEmitidoDocClick(Sender: TObject);
var QtdeTt : string;
begin
  inherited;
  QtdeTt := dm.execmd('select count(*) qt from faturamento where seq_periodo_fat = ' + ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString + ' and Emitido_Documento = 1','qt');
  if QtdeTt <> '0'then
  begin
     if application.MessageBox(Pchar('Serão alterados ' + QtdeTt + ' do registro sequencia ' + ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString + ' confirma ?'),'Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk then
     begin
        dm.execmd('update faturamento set Emitido_Documento = 0 where Emitido_Documento = 1 and seq_periodo_fat =  ' + ADOQueryPeriodoFat.FieldByName('seq_periodo_fat').AsString);
        showMessage('Processamento efetuado com sucesso !');
     end;
  end;
end;

procedure TFmFaturamento.FormShow(Sender: TObject);
begin
  inherited;
   ButtonDesmarcarEmitidoDoc.Enabled := dm.VerifPermissao('','','','146');
   Button1Click(Sender);
end;

end.
