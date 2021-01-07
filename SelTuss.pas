unit SelTuss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, enio;

type
  TFmSelTuss = class(TFmPadrao)
    Label1: TLabel;
    Button1: TButton;
    ADOQueryTuss: TADOQuery;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSelTuss: TFmSelTuss;

implementation

uses Math;

{$R *.dfm}

procedure TFmSelTuss.Button1Click(Sender: TObject);
begin
  inherited;
  if GroupBox1.Visible then
  begin
     if ADOQueryTuss.FieldByName('servico_id').IsNull then
     begin
        ShowMessage('não há codigo associado a esse código TUSS');
        exit;
     end;
     FmSelTuss.Tag := 2;
  end
  else
   FmSelTuss.tag := 1;
   Close;
end;

procedure TFmSelTuss.Button2Click(Sender: TObject);
begin
  inherited;
  if Edit1.Text <> '' then
  begin
    if enio.E_Numerico(Edit1.text) then
    begin
       ADOQueryTuss.SQL.Clear;
       ADOQueryTuss.SQL.Add('select * from tuss where id = ' + Edit1.Text);
       ADOQueryTuss.Open;
    end
    else
    begin
       ADOQueryTuss.SQL.Clear;
       ADOQueryTuss.SQL.Add('select * from tuss where descricao like ''%' + Edit1.Text + '%''');
       ADOQueryTuss.Open;
    end;


  end;
end;

end.
