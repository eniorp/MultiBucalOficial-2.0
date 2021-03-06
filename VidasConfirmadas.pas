unit VidasConfirmadas;

interface

uses
  Windows, Messages, SysUtils, Variants,  Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, Mask,
  ADODB, Grids, DBGrids, Menus, ComCtrls;

  {uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Mask,
  Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids, Vcl.Menus, Vcl.ComCtrls;}

type
  TFmVidasConfirmadas = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    ADOQuery_Vendas: TADOQuery;
    QY_AUX: TADOQuery;
    ADOQuery_Vendasvendedor: TStringField;
    ADOQuery_Vendasqtde: TIntegerField;
    DataSource_vendas: TDataSource;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query_aux: TADOQuery;
    ADOQuery_Vendascod_representante: TSmallintField;
    ADOQuery_VendasVNC: TIntegerField;
    Label3: TLabel;
    Memo1: TMemo;
    MaskEdit3: TMaskEdit;
    ADOQuery_VendasField2_parcela: TStringField;
    ADOQuery_VendasField4_parcela: TStringField;
    ADOQuery_VendasField5_parcela: TStringField;
    ADOQuery_VendasField6_parcela: TStringField;
    ADOQuery_VendasField7_parcela: TStringField;
    ADOQuery_VendasField8_parcela: TStringField;
    ADOQuery_VendasField9_parcela: TStringField;
    ADOQuery_VendasField10_parcela: TStringField;
    ADOQuery_VendasField11_parcela: TStringField;
    ADOQuery_VendasField12_parcela: TStringField;
    ADOQuery_VendasField3_parcela: TStringField;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ADOQuery_VendasCalcFields(DataSet: TDataSet);
    procedure FormDblClick(Sender: TObject);
    procedure MaskEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function PercorrerListaContratantes(representante, parcela: string)
      : integer;
    { Private declarations }
  public
    dataInicial,dataFinal:String;
  end;

var
  FmVidasConfirmadas: TFmVidasConfirmadas;

implementation

uses udm,tacio;
{$R *.dfm}

function TFmVidasConfirmadas.PercorrerListaContratantes(representante,
  parcela: string): integer;
var
  comando: string;
begin
  Result := 0;
  if parcela = '0' then
  begin
    comando :=
      'select r.codigo, count(*)qtd from usuario u, vendedor v, representante r, contratante c '
      + ' where c.codigo = u.contratante_titular and v.codigo = u.vendedor ' +
      ' and r.codigo = v.representante and u.dt_venda between ''' +
      dataInicial + ''' and ''' + dataFinal +
      ''' and (u.Data_Exclusao is null or substring(convert(char(10),u.Data_Exclusao,103),4,7) '
      + ' <> substring(convert(char(10),u.Data_Inclusao,103),4,7)) ' +
      ' and r.codigo = ' + representante + '  and c.inclusao between ''' +
      dataInicial + ''' and ''' + dataFinal + ''' group by r.codigo ';
    Result := ExecCMD_Integer(Query_aux, comando, 'qtd', nil);
    Memo1.Lines.Add(comando);
    Memo1.Lines.Add('resultado = ' + IntToStr(Result));
    Memo1.Lines.Add('');
  end
  else
  begin
    comando := 'select r.codigo, count(*)qtd ' +
      ' from usuario u, vendedor v, representante r, contratante c, ' +
      ' receber rc where rc.codigo_contratante = c.codigo and ' +
      ' c.codigo = u.contratante_titular and v.codigo = u.vendedor ' +
      ' and r.codigo = v.representante and u.dt_venda between ' + '''' +
      dataInicial + ''' and ''' + dataFinal + '''' +
      ' and (u.Data_Exclusao is null or substring(convert(char(10),u.Data_Exclusao,103),4,7) <> substring(convert(char(10),u.Data_Inclusao,103),4,7)) '
      + ' and r.codigo = ' + representante + ' and c.inclusao between ' + '''' +
      dataInicial + ''' and ''' + dataFinal + '''' +
      ' and rc.tipo_documento = 1 and rc.data_pagamento >=''01/01/1900'' and DATEDIFF (mm, c.inclusao,rc.data_vencimento)+1 '
      + parcela + ' group by r.codigo';
    Result := ExecCMD_Integer(Query_aux, comando, 'qtd', nil);
    Memo1.Lines.Add(comando);
    Memo1.Lines.Add('resultado = ' + IntToStr(Result));
    Memo1.Lines.Add('');
  end;
end;

procedure TFmVidasConfirmadas.ADOQuery_VendasCalcFields(DataSet: TDataSet);
begin
  Memo1.Lines.Add
    ('=================================================================================');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Representante: ' + ADOQuery_Vendascod_representante.AsString
    + ' - ' + ADOQuery_Vendasvendedor.AsString);

  ADOQuery_VendasVNC.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '0');

  ADOQuery_VendasField2_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=2');
  if ADOQuery_VendasVNC.AsInteger >0 then
    ADOQuery_VendasField2_parcela.AsString:= ADOQuery_VendasField2_parcela.AsString+' = '+FloatToStrF((ADOQuery_VendasField2_parcela.AsInteger / ADOQuery_VendasVNC.AsInteger)*100,ffNumber,10,1 )+'%'
  else
    ADOQuery_VendasField2_parcela.AsString:= ADOQuery_VendasField2_parcela.AsString+' = 0%';


  ADOQuery_VendasField3_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=3');

  ADOQuery_VendasField4_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=4');

  ADOQuery_VendasField5_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=5');

  ADOQuery_VendasField6_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=6');

  ADOQuery_VendasField7_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=7');

  ADOQuery_VendasField8_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=8');

  ADOQuery_VendasField9_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=9');

  ADOQuery_VendasField10_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=10');

  ADOQuery_VendasField11_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=11');

  ADOQuery_VendasField12_parcela.AsInteger := PercorrerListaContratantes
    (ADOQuery_Vendascod_representante.AsString, '=12');

end;

procedure TFmVidasConfirmadas.Button1Click(Sender: TObject);
begin
  dataInicial:='01/'+MaskEdit3.Text;
  dataFinal:=UltimoDiaDoMes(StrToDate(dataInicial));

  Memo1.Lines.Clear;
  Memo1.Lines.Add('Comandos:');
  Memo1.Lines.Add('');

  ADOQuery_Vendas.Close;

  ADOQuery_Vendas.SQL[6] := '''' + dataInicial + ''' and ''' +
    dataFinal + '''';
  ADOQuery_Vendas.Open;

end;

procedure TFmVidasConfirmadas.FormDblClick(Sender: TObject);
begin
  if Memo1.Visible then
    Memo1.Visible := False
  else
    Memo1.Visible := True;
end;

procedure TFmVidasConfirmadas.MaskEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFmVidasConfirmadas.Button2Click(Sender: TObject);
begin
  ToExcel(ADOQuery_Vendas, 'Vendas');
end;

procedure TFmVidasConfirmadas.FormShow(Sender: TObject);
begin
FmVidasConfirmadas.Top:=50;
FmVidasConfirmadas.Left:=50;
end;

end.
