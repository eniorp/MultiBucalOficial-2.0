unit DadosBancarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, DBCtrls, Mask;

type
  TFmDadosBancario = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    ADOQueryTpPagto: TADOQuery;
    DsTpPagto: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    Edit4: TEdit;
    EditVrVista: TEdit;
    Label6: TLabel;
    MaskEditIniVencto: TMaskEdit;
    Label7: TLabel;
    EditParcela: TEdit;
    Label8: TLabel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    Label9: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmDadosBancario: TFmDadosBancario;

implementation

uses udm;

{$R *.dfm}

procedure TFmDadosBancario.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFmDadosBancario.Edit1Change(Sender: TObject);
begin
   if UpperCase(DBLookupComboBox1.Text) = 'CHEQUE' then
   begin
       Button1.enabled := (edit1.text <> '') and (Edit2.text <> '') and (Edit3.text <> '') and (DBLookupComboBox1.Text <> '') and(DBLookupComboBox2.Text <> '') and(Edit4.Text <> '');
   end
   else
      Button1.enabled := true;

end;

procedure TFmDadosBancario.FormShow(Sender: TObject);
begin
   ADOQueryTpPagto.Open;
   ADOQuery1.Open;
end;

procedure TFmDadosBancario.Button1Click(Sender: TObject);
begin
   FmDadosBancario.tag := 10;
   close;
end;

end.
