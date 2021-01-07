unit pesquisaLEADS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask, Menus, DBCtrls;

type
  TFmPesqGerenciamentoLEADS = class(TFmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    GroupBox2: TGroupBox;
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    SalvarPesquisa1: TMenuItem;
    GroupBox3: TGroupBox;
    DataSourceRepresentante: TDataSource;
    ADOQueryRepresentante: TADOQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQueryStatus: TADOQuery;
    DataSourceStatus: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure Button1Click(Sender: TObject);
    procedure SalvarPesquisa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqGerenciamentoLEADS: TFmPesqGerenciamentoLEADS;

implementation

uses udm;

{$R *.dfm}

procedure TFmPesqGerenciamentoLEADS.Button1Click(Sender: TObject);
begin
  inherited;
  ADOQueryH.SQL[1] := ' ';
  if (MaskEditDtIni.Text <> '  /  /    ') and (MaskEditDtFim.Text <> '  /  /    ') then
     ADOQueryH.SQL[1] := ADOQueryH.SQL[1] + ' and l.dtInclusao between ''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + ' 23:59''';
  if ADOQueryStatus.FieldByName('cdStatus').AsString <> '' then
    ADOQueryH.SQL[1] := ADOQueryH.SQL[1] + ' and l.cdStatus = ''' + ADOQueryStatus.FieldByName('cdStatus').AsString + '''';
  if ADOQueryRepresentante.FieldByName('codigo').AsInteger <> 0 then
     ADOQueryH.SQL[1] := ADOQueryH.SQL[1] + ' and l.cdRepresentante = ' + ADOQueryRepresentante.FieldByName('codigo').AsString ;
  //memo1.Lines.Add(ADOQueryH.sql.text);
  
  ADOQueryH.open;

end;

procedure TFmPesqGerenciamentoLEADS.SalvarPesquisa1Click(Sender: TObject);
begin
  inherited;
   if ADOQueryH.Eof and ADOQueryH.Bof then
   begin
      FmPesqGerenciamentoLEADS.Tag := 1;
      ShowMessage('Nenhum registro encontrato');
      exit;
   end;
   FmPesqGerenciamentoLEADS.Tag := 1;
   Close;
end;

procedure TFmPesqGerenciamentoLEADS.FormShow(Sender: TObject);
begin
  inherited;
   ADOQueryStatus.open;
   ADOQueryRepresentante.Open;

   MaskEditDtIni.Text := '01/01/2018'; //DateToStr(dm.Date - 30);
   MaskEditDtFim.Text := DateToStr(dm.Date);
   Button1Click(sender);
end;

end.
