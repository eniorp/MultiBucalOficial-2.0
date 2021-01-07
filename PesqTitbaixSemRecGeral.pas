unit PesqTitbaixSemRecGeral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  PadraoExcel, Mask, StdCtrls, OleServer, Excel97, Db, DBTables, ExtCtrls,
  Buttons, ComCtrls, Grids, DBGrids, ExcelXP;

type
  TFmPesqTitbaixSemRecGeral = class(TFmPadraoExcel)
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label1: TLabel;
    EditOperador1: TEdit;
    BitBtnPesquisa1: TBitBtn;
    EditOperador2: TEdit;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    BitBtn1: TBitBtn;
    procedure BitBtnPesquisa1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure EditOperador1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqTitbaixSemRecGeral: TFmPesqTitbaixSemRecGeral;

implementation

uses PesqOperadores, udm;

{$R *.DFM}

procedure TFmPesqTitbaixSemRecGeral.BitBtnPesquisa1Click(Sender: TObject);
begin
  inherited;
   FmPesqOperadores := TFmPesqOperadores.create(self);
   FmPesqOperadores.ShowModal;
   if FmPesqOperadores.tag = 1 then
      EditOperador1.text := FmPesqOperadores.Query1.FieldByName('codigo').AsString;

end;

procedure TFmPesqTitbaixSemRecGeral.BitBtn2Click(Sender: TObject);
begin
  inherited;
   FmPesqOperadores := TFmPesqOperadores.create(self);
   FmPesqOperadores.ShowModal;
   if FmPesqOperadores.tag = 1 then
      EditOperador2.text := FmPesqOperadores.Query1.FieldByName('codigo').AsString;

end;

procedure TFmPesqTitbaixSemRecGeral.EditOperador1Exit(Sender: TObject);
begin
  inherited;
   GroupBox2.Caption := 'Atendente ' + dm.ExecutaComando('select apelido from operador where codigo = ''' + EditOperador1.text + '''','apelido');
   if EditOperador1.text <> EditOperador2.text then
      GroupBox2.Caption :=  GroupBox2.Caption + ' A ' +
      dm.ExecutaComando('select apelido from operador where codigo = ''' + EditOperador2.text + '''','apelido');

end;

procedure TFmPesqTitbaixSemRecGeral.BitBtn1Click(Sender: TObject);
begin
  inherited;
   Query1.close;

   if EditOperador1.text <> '' then
      Query1.sql[29] := EditOperador1.text + ' and ' + EditOperador2.text
   else
      Query1.sql[29] := ' 0 and 99999999 ';

   if MaskEditDtIni.Text <> '  /  /    ' then
      Query1.sql[26] := '''' +  MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + ' 23:59:59 '''
   else
     Query1.sql[26] := '''02/04/2007'' and ''31/12/9999''';
   Query1.Open;

end;

end.

