unit ParamRelExcluidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DB, ADODB, DBCtrls;

type
  TFmParamRelExcluidos = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    RadioGroupTpRel: TRadioGroup;
    GroupBox2: TGroupBox;
    cboOrdenacao: TComboBox;
    Button1: TButton;
    Button2: TButton;
    GroupBox3: TGroupBox;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    cboCidade: TDBLookupComboBox;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBComboBox1Enter(Sender: TObject);
    procedure GroupBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamRelExcluidos: TFmParamRelExcluidos;

implementation

uses FrRelContratosExcluidos, Senha;

{$R *.dfm}

procedure TFmParamRelExcluidos.Button2Click(Sender: TObject);
begin
   Close;
end;

procedure TFmParamRelExcluidos.Button1Click(Sender: TObject);
begin

   FmfrRelContratosExcluidos := tFmfrRelContratosExcluidos.CREATE(senha.Empresa,'CONTRATOS CANCELADOS',SELF);
   if RadioGroupTpRel.ItemIndex = 0 then
      FmfrRelContratosExcluidos.sp_relBenefExcluidos.Parameters[1].Value := 'F'
   else
      if RadioGroupTpRel.ItemIndex = 1 then
        FmfrRelContratosExcluidos.sp_relBenefExcluidos.Parameters[1].Value := 'J'
      else
        FmfrRelContratosExcluidos.sp_relBenefExcluidos.Parameters[1].Value := 'A';

   FmfrRelContratosExcluidos.sp_relBenefExcluidos.Parameters[2].Value := MaskEditDtIni.Text;
   FmfrRelContratosExcluidos.sp_relBenefExcluidos.Parameters[3].Value := MaskEditDtFim.Text;
   FmfrRelContratosExcluidos.sp_relBenefExcluidos.Parameters[4].Value := cboOrdenacao.ItemIndex + 1;
   FmfrRelContratosExcluidos.sp_relBenefExcluidos.Parameters[5].Value := ADOQuery1.fieldByName('cd_cidade_res').AsInteger;
   FmfrRelContratosExcluidos.sp_relBenefExcluidos.Open;
   FmfrRelContratosExcluidos.RLLabelParam.Caption := 'DATA: ' + MaskEditDtIni.Text + ' A ' + MaskEditDtFim.Text;
   FmfrRelContratosExcluidos.RLLabelParam.Caption := FmfrRelContratosExcluidos.RLLabelParam.Caption + '           TP : ' + FmfrRelContratosExcluidos.sp_relBenefExcluidos.Parameters[1].Value;
   FmfrRelContratosExcluidos.RLLabelParam.Caption := FmfrRelContratosExcluidos.RLLabelParam.Caption + '           CIDADE : ' + cboCidade.Text;  


   FmfrRelContratosExcluidos.RLReportH.PreviewModal;
   FmfrRelContratosExcluidos.Free;
end;

procedure TFmParamRelExcluidos.DBComboBox1Enter(Sender: TObject);
begin
   if (MaskEditDtIni.Text <> '  /  /    ') and (MaskEditDtIni.Text <> '  /  /    ') then
   begin
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.SQL.add('set dateformat dmy select 0 cd_cidade_res,''Todas'' ds_cidade union  select distinct cd_cidade_res, c.ds_cidade  from contratante co, cidade c where  c.cd_cidade = co.cd_cidade_res and Exclusao between ''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + '''');
      ADOQuery1.Open;
      ADOQuery2.Edit;
      ADOQuery2.FieldByName('cd_cidade_res').AsInteger := 0;

   end
   else
   begin
        MaskEditDtIni.setfocus;
        ShowMessage('informe a data inicio e data fim de exclusão');

   end;

end;

procedure TFmParamRelExcluidos.GroupBox1Exit(Sender: TObject);
begin
    DBComboBox1Enter(Sender);
end;

procedure TFmParamRelExcluidos.FormShow(Sender: TObject);
begin
   ADOQuery2.Open;
end;

end.
