unit CelularesXTitEmAberto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, DB, ADODB, frxClass, frxDBSet, Grids,
  DBGrids;

type
  TFmRelCelXTitAbertos = class(TForm)
    MaskEdit1: TMaskEdit;
    MaskEdit2: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    BitBtnRelatorio: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    CheckBox_SemEnvio: TCheckBox;
    CheckBox_ComEnvio: TCheckBox;
    CheckBox_EmExcel: TCheckBox;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    GroupBox2: TGroupBox;
    CheckBox_SegundasParcelas: TCheckBox;
    ADOQuery1: TADOQuery;
    ADOQuery1codigo: TAutoIncField;
    ADOQuery1lg_enviarBoletoPorWhats: TBooleanField;
    ADOQuery1data_vencimento: TDateTimeField;
    ADOQuery1celular: TStringField;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1parcela: TIntegerField;
    procedure BitBtnRelatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FmRelCelXTitAbertos: TFmRelCelXTitAbertos;


implementation
uses udm,tacio;
{$R *.dfm}

procedure TFmRelCelXTitAbertos.BitBtnRelatorioClick(Sender: TObject);
var DataInicial,DataFinal:tDate;
begin
  DataInicial:=StrToDate(MaskEdit1.Text);
  DataFinal:=StrToDate(MaskEdit2.Text);
  if (CheckBox_SemEnvio.Checked=false) and (CheckBox_ComEnvio.Checked=false) then
    Abortar('Selecione pelo menos uma opção do filtros');
  if DataInicial>DataFinal then
    Abortar('Data Inicial não pode ser maior que Data Final');
  ADOQuery1.Close;
  ADOQuery1.Parameters.ParamByName('Data1').Value:=datetostr(DataInicial);
  ADOQuery1.Parameters.ParamByName('Data2').Value:=datetostr(DataFinal);
  ADOQuery1.SQL[8]:='';

  if (CheckBox_ComEnvio.Checked) and (CheckBox_SemEnvio.Checked) then
    ADOQuery1.SQL[8]:=''
  else
  begin
    if CheckBox_ComEnvio.Checked then
      ADOQuery1.SQL[8]:=ADOQuery1.SQL[8]+' and  lg_enviarBoletoPorWhats =1 ';
    if CheckBox_SemEnvio.Checked then
      ADOQuery1.SQL[8]:=ADOQuery1.SQL[8]+' and  lg_enviarBoletoPorWhats =0 ';
  end;

  if CheckBox_SegundasParcelas.Checked then
  begin
      //para segundas parcelas só puxa mensalidade e qualquer foram de cobrança
      ADOQuery1.SQL[7]:=' and r.tipo_documento in(1) ';
      //filtro que vai mostrar apenas segundas parcelas
      ADOQuery1.SQL[9]:=' and DATEDIFF (mm, c.inclusao,r.data_vencimento)+1 = 2 ';
  end
  else
  begin
      //para NÃO só segundas parcelas: puxa mensalidade e manut e forma de cobrança boleto
      ADOQuery1.SQL[7]:=' and r.tipo_documento in(1,5) and r.tipo_cobranca in(10) ';
      //Limpa filtro que iria mostrar apenas segundas parcelas
      ADOQuery1.SQL[9]:=' ';
  end;
  ADOQuery1.Open;

  if (ADOQuery1.Bof) and (ADOQuery1.Eof) then
    Abortar('Nenhum registro foi encontrado');

  if CheckBox_EmExcel.Checked then
    ToExcel(ADOQuery1,'Celulares')
  else
  begin
    frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) +
    'RelCelularesXTitulos.fr3');
    frxReport1.ShowReport();
  end;
end;

end.
