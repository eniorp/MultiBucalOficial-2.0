unit ANS_qtdePagaServico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PadraoExcel, Mask, StdCtrls, OleServer, Excel97, Db, DBTables, ExtCtrls,
  Buttons, ComCtrls, Grids, DBGrids, ExcelXP, ADODB;

type
  TFmAnsListaQtPaga = class(TFmPadraoExcel)
    Label1: TLabel;
    EditServicos: TEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    Label2: TLabel;
    ComboBox2: TComboBox;
    BitBtn1: TBitBtn;
    DBGrid3: TDBGrid;
    QueryQt: TQuery;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    ComboBoxIdade: TComboBox;
    EditIdade: TEdit;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmAnsListaQtPaga: TFmAnsListaQtPaga;

implementation

{$R *.DFM}

procedure TFmAnsListaQtPaga.BitBtn1Click(Sender: TObject);
begin
  inherited;

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
  Query1.sql[19] := EditServicos.text;
  Query1.sql[22] := '''' + MaskEditDtIni.text + ''' and ''' + MaskEditDtFim.text + '''';

  if (EditIdade.Text <> '') and (ComboBoxIdade.itemIndex > 0) then
  begin
     if ComboBoxIdade.itemIndex = 1 then
        Query1.sql[22] := Query1.sql[22] +  ' and data_nascimento < dateadd(year,-' + EditIdade.text + ',convert (datetime,''01/'' + MesAno,103)) '
     else
        Query1.sql[22] := Query1.sql[22] + ' and data_nascimento >= dateadd(year,-' + EditIdade.text + ',convert (datetime,''01/'' + MesAno,103)) ';
  end;

  QueryQt.sql[14] := Query1.sql[19];
  QueryQt.sql[17] := Query1.sql[22];


  case ComboBox2.ItemIndex of
     0 : Query1.sql[26] := 'order by  u.nome, u.codigo_completo,MesAno';
     1 : Query1.sql[26] := 'order by  MesAno,u.nome, u.codigo_completo';
  end;
  memo1.lines.Add(Query1.Text);
  Query1.open;
  QueryQt.Open;
  Label7.caption := 'Qtde Paga : ' +  QueryQt.fieldByName('qtde').AsString;
end;

procedure TFmAnsListaQtPaga.ComboBox2Change(Sender: TObject);
begin
  inherited;
   if Query1.active then
      BitBtn1Click(Sender);
end;

procedure TFmAnsListaQtPaga.FormShow(Sender: TObject);
begin
  inherited;
   ComboBox2.ItemIndex := 1;
end;

end.
