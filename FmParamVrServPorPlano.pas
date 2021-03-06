unit FmParamVrServPorPlano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, Buttons,senha;

type
  TFmParamServicoPorPLano = class(TForm)
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtnSair: TBitBtn;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    GroupBox3: TGroupBox;
    EditCdContratante: TEdit;
    EditnmContratante: TEdit;
    BitBtnPesquisaDentista: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnPesquisaDentistaClick(Sender: TObject);
    procedure EditCdContratanteKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
   procedure getPlano(cdcontratante: string);
  public
    { Public declarations }
  end;

var
  FmParamServicoPorPLano: TFmParamServicoPorPLano;

implementation

uses udm, RelFrServicoPorPlano, PesquisaContratante;

{$R *.dfm}

procedure TFmParamServicoPorPLano.BitBtn1Click(Sender: TObject);
begin
  if DBLookupComboBox1.Text = '' then
  begin
     ShowMessage('Informe o Plano');
     exit;
  end;
   FrRelServicoPorPlano := tFrRelServicoPorPlano.create(Senha.Empresa, 'PRE�O DE SERVI�O POR PLANO',self);
   FrRelServicoPorPlano.SP_VR_SERVICO_POR_PLANO.Close;
   FrRelServicoPorPlano.SP_VR_SERVICO_POR_PLANO.Parameters[1].Value := ADOQuery1.fieldByName('codigo').AsInteger;
   FrRelServicoPorPlano.SP_VR_SERVICO_POR_PLANO.Open;
   FrRelServicoPorPlano.RLLabel6.Caption := ADOQuery1.fieldByName('codigo').AsString + ' - ' + ADOQuery1.fieldByName('descricao').AsString;

   FrRelServicoPorPlano.RLReportH.PreviewModal;
   FrRelServicoPorPlano.Free;
end;

procedure TFmParamServicoPorPLano.FormShow(Sender: TObject);
begin
   ADOQuery1.Open;
   EditCdContratante.setFocus;
end;

procedure TFmParamServicoPorPLano.BitBtnPesquisaDentistaClick(
  Sender: TObject);

begin
   FormPesquisaContratante := TFormPesquisaContratante.create(self);
   FormPesquisaContratante.ShowModal;
   EditCdContratante.Text := FormPesquisaContratante.QueryContratanteCodigo.AsString;
   EditnmContratante.Text := FormPesquisaContratante.QueryContratanteNome.AsString;
   getPlano(EditCdContratante.Text);

   FormPesquisaContratante.Free;
end;

procedure TFmParamServicoPorPlano.getPlano(cdcontratante: string);
  var cdPlano : string;
begin
   cdPlano := dm.execmd('select plano from contratante where codigo = ' + cdcontratante,'plano');



   ADOQuery2.Close;
   Adoquery2.Open;
   Adoquery2.Insert;
   Adoquery2.FieldByName('registro_unico').AsString := cdPlano;
   if DBLookupComboBox1.Text = '' then
   begin
     ADOQuery1.Close;
     ADOQuery1.sql[1] := '(ativo = 1 or codigo = ' +  cdPlano  + ' ) ';
     ADOQuery1.open;
   end;

end;
procedure TFmParamServicoPorPLano.EditCdContratanteKeyPress(
  Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     if EditCdContratante.Text = '' then
        BitBtnPesquisaDentistaClick(sender);
     begin
        EditnmContratante.Text := dm.execmd('select nome from contratante where codigo = ' + editcdContratante.Text,'nome');
        getPlano(EditCdContratante.Text);
     end;
  end;

end;

procedure TFmParamServicoPorPLano.DBLookupComboBox1Click(Sender: TObject);
begin
   EditCdContratante.clear;
   EditnmContratante.clear;
end;

end.

