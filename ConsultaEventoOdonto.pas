unit ConsultaEventoOdonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,enio,
  Buttons, DBCtrls;

type
  TFmConsEventoOdonto = class(TFmPadrao)
    EditProcura: TEdit;
    LabelNumero: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelUsu: TLabel;
    LabelDent: TLabel;
    LabelDt: TLabel;
    Button1: TButton;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Bevel2: TBevel;
    Bevel3: TBevel;
    procedure Button1Click(Sender: TObject);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmConsEventoOdonto: TFmConsEventoOdonto;

implementation

uses udm;

{$R *.dfm}

procedure TFmConsEventoOdonto.Button1Click(Sender: TObject);
begin
  inherited;
  if EditProcura.Text = '' then
    exit;
   Query1.Close;
   Query1.sql[34] := EditProcura.text;
   Query1.Open;
   dm.execmd('select o.data, u.codigo_completo codigo, u.nome usuario, d.nome as dentista from orcamento o, usuario u, dentista d where u.codigo_completo = o.usuario and d.codigo = o.dentista and o.numero = ' + EditProcura.text,'data');
   LabelUsu.Caption := dm.QueryGlobal.FieldByName('codigo').AsString + ' - ' + dm.QueryGlobal.FieldByName('usuario').AsString;
   LabelUsu.Caption := dm.QueryGlobal.FieldByName('usuario').AsString;
   LabelDent.Caption := dm.QueryGlobal.FieldByName('dentista').AsString;
   LabelDt.Caption := FormatDateTime('dd/mm/yy',dm.QueryGlobal.FieldByName('data').AsDateTime);
end;

procedure TFmConsEventoOdonto.EditProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
     Button1Click(sender);
  key := enio.So_inteiro(key);

end;

end.
