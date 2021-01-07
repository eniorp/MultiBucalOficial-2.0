unit ParamRelDentistaCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons;

type
  TFmParamDentistaXCidade = class(TForm)
    DataSource1: TDataSource;
    ADOQueryH: TADOQuery;
    BitBtn2: TBitBtn;
    BitBtnSair: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamDentistaXCidade: TFmParamDentistaXCidade;

implementation

uses RelFrDentistaCidade, senha, Math;

{$R *.dfm}

procedure TFmParamDentistaXCidade.FormShow(Sender: TObject);
begin
 ADOQueryH.Close();
 ADOQueryH.Open;
end;

procedure TFmParamDentistaXCidade.BitBtn2Click(Sender: TObject);
begin
    FmFrRelDentistaCidade := TFmFrRelDentistaCidade.create(senha.Empresa,'DENTISTA X CIDADE',SELF);
    FmFrRelDentistaCidade.ADOQueryH.Close();
    FmFrRelDentistaCidade.ADOQueryH.SQL[6] := ' where 1 = 1 ';
    if ComboBox1.ItemIndex = 1 then
       FmFrRelDentistaCidade.ADOQueryH.SQL[6] :=  FmFrRelDentistaCidade.ADOQueryH.SQL[6] + ' and d.data_exclusao is null'
    else
       FmFrRelDentistaCidade.ADOQueryH.SQL[6] :=  FmFrRelDentistaCidade.ADOQueryH.SQL[6] + ' and d.data_exclusao is not null ';

    if DBLookupComboBox1.Text <> ' TODAS' then
       FmFrRelDentistaCidade.ADOQueryH.SQL[6]  := FmFrRelDentistaCidade.ADOQueryH.SQL[6] + '  and c.cd_cidade = ' + ADOQueryH.FieldbyName('cd_cidade').AsString;

    FmFrRelDentistaCidade.ADOQueryH.open;
    FmFrRelDentistaCidade.RLReportH.PreviewModal;
end;

end.
