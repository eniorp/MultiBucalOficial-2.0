unit AnsUsuXServicoPorAno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PadraoExcel, OleServer, Excel97, Db, DBTables, ExtCtrls, StdCtrls,
  Buttons, ComCtrls, Grids, DBGrids, Mask,enio, ExcelXP, ADODB;

type
  TFmANSUsuXServPorAno = class(TFmPadraoExcel)
    EditServicos: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    ComboBox2: TComboBox;
    EditIdade: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    Label7: TLabel;
    ComboBox3: TComboBox;
    Label8: TLabel;
    procedure EditServicosKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmANSUsuXServPorAno: TFmANSUsuXServPorAno;

implementation

uses udm;

{$R *.DFM}

procedure TFmANSUsuXServPorAno.EditServicosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key <> ',' then
     key := so_numero(key);
end;

procedure TFmANSUsuXServPorAno.BitBtn1Click(Sender: TObject);
begin
  inherited;
  // este select lista os usuarios que realizaram pela primeira vez no ano um determinado
  // servico, as datas inicio e fim devem estar obrigatoriamente no mesmo ano.
  if copy(MaskEditDtini.text,7,4) <> copy(MaskEditDtFim.text,7,4) then
  begin
     showMessage('o Ano do intervalo de datas deve ser o mesmo para a data inicio e data fim !');
     exit;
  end;
  if EditServicos.text = '' then
  begin
     showMessage('É Necessário informar os serviços !');
     exit;
  end;
  if (MaskEditDtIni.text = '  /  /    ') or (MaskEditDtFim.text = '  /  /    ') then
  begin
     showMessage('É Necessário informar o intervalo de datas !');
     exit;
  end;

  Query1.close;

  if (EditIdade.Text <> '') and (ComboBox2.itemIndex > 0) then
  begin
     if ComboBox2.itemIndex = 1 then
        Query1.sql[21] := ' and data_nascimento < dateadd(year,-' + EditIdade.text + ',data_Conferencia) '
     else
        Query1.sql[21] := ' and data_nascimento >= dateadd(year,-' + EditIdade.text + ',data_Conferencia) ';
  end
  else
     Query1.sql[21] := ' ';

  case ComboBox3.ItemIndex of

     0 : Query1.sql[46] := 'order by  u.nome, u.codigo_completo,MesAno';
     1 : Query1.sql[46] := 'order by  MesAno,u.nome, u.codigo_completo';
  end;
  Query1.sql[17] := EditServicos.text;
  Query1.sql[31] := EditServicos.text;
  Query1.sql[19] := '''' + MaskEditDtIni.text + ''' and ''' +  MaskEditDtFim.text + '''';
  Query1.sql[35] := '''01/01/' + Copy(MaskEditDtIni.text,7,4) + '''and ';
  Query1.sql[37] := '''' + MaskEditDtIni.text + '''';
  Query1.open;
  Label7.caption := 'Qtde Registros : ' + IntToStr(Query1.RecordCount);
end;

procedure TFmANSUsuXServPorAno.ComboBox3Change(Sender: TObject);
begin
  inherited;
   if Query1.active then
      BitBtn1Click(Sender);
end;

procedure TFmANSUsuXServPorAno.FormShow(Sender: TObject);
begin
  inherited;
   ComboBox3.ItemIndex := 1;
end;

end.
