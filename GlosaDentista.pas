unit GlosaDentista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Mask, ExtCtrls, DB, ADODB, Grids, DBGrids;

type
  TFmGlosaDentista = class(TForm)
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    Bevel1: TBevel;
    Button1: TButton;
    btnCancelar: TButton;
    btnGravar: TButton;
    ADOQueryGlosa: TADOQuery;
    DsGlosa: TDataSource;
    ADOQueryGlosaDentista: TADOQuery;
    dsGlosaDentista: TDataSource;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    ADOQueryGlosaDentistacd_orcamento: TIntegerField;
    ADOQueryGlosaDentistaincremento: TIntegerField;
    ADOQueryGlosaDentistacd_glosa: TSmallintField;
    ADOQueryGlosaDentistadata: TWideStringField;
    ADOQueryGlosaDentistanmOperador: TStringField;
    ADOQueryGlosaDentistaMesAno: TStringField;
    DBGrid1: TDBGrid;
    ADOQueryGlosaDentistads_glosa: TStringField;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    ADOQueryGlosaDentistaobs: TStringField;

    procedure Button1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure ADOQueryGlosaDentistaBeforePost(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmGlosaDentista: TFmGlosaDentista;

implementation

uses udm, PagDentista;

{$R *.dfm}

procedure TFmGlosaDentista.Button1Click(Sender: TObject);
begin
   Close;
end;

procedure TFmGlosaDentista.btnGravarClick(Sender: TObject);
begin

   if ADOQueryGlosaDentista.State in [dsEdit,dsInsert] then
   begin
     if FmGlosaDentista.tag <> 20 then // 20 significa que esta glosa todos os serviços, então não grava a glosa unica aqui e na volta ta glsando todos.
       if FormPagDentista.QueryItensPagDentistaid_pagto.IsNull then
          ADOQueryGlosaDentista.Post
       else
       begin
          ShowMessage('Não é possível realizar alterações neste registro, já foi efetivado o pagamento deste procedimento!');
          exit;
       end;

      FmGlosaDentista.tag := 10;
   end;
   Close;

end;

procedure TFmGlosaDentista.btnCancelarClick(Sender: TObject);
begin
   ADOQueryGlosaDentista.Cancel;
   if ADOQueryGlosaDentista.RecordCount > 0 then
      if Application.MessageBox('Confirma exclusão da glosa?','Confirmação', MB_YESNO + MB_DEFBUTTON2) = IdYes then
      begin
         dm.execmd('delete glosaDentista where cd_orcamento = ' + ADOQueryGlosaDentistacd_orcamento.AsString + ' and incremento = ' + ADOQueryGlosaDentistaincremento.AsString + ' and cd_glosa = ' + ADOQueryGlosaDentistacd_glosa.AsString + ' and MesAno = ''' + ADOQueryGlosaDentistaMesAno.AsString + '''');
         FmGlosaDentista.tag := 20; 
         //ADOQueryGlosaDentista.delete;
         close;
      end;

end;

procedure TFmGlosaDentista.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     btnGravarClick(sender);

end;

procedure TFmGlosaDentista.ADOQueryGlosaDentistaBeforePost(
  DataSet: TDataSet);
begin
    if (ADOQueryGlosaDentistacd_glosa.AsString <> '') and (dm.execmd('select count(*) q from glosa where cd_glosa = ' + ADOQueryGlosaDentistacd_glosa.AsString,'q') = '0') then
    begin
         ShowMessage('Código de glosa inválido');
         abort;
    end;
    if ADOQueryGlosaDentistaMesAno.AsString = '' then
    begin
       Showmessage('Informe o Mes/Ano de pagamento');
       abort;
    end;
      if dm.execmd('select count(*) q from glosaDentista where cd_orcamento = ' + ADOQueryGlosaDentistacd_orcamento.AsString + ' and incremento = ' + ADOQueryGlosaDentistaincremento.AsString + ' and cd_glosa = ' + ADOQueryGlosaDentistacd_glosa.AsString + ' and MesAno = ''' + ADOQueryGlosaDentistaMesAno.AsString + '''','q') <> '0' then
      begin
         ShowMessage('Glosa já cadastrada para esse serviço');
         abort;
      end;

end;

procedure TFmGlosaDentista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
         VK_RETURN : Perform(WM_NEXTDLGCTL, 0, 0);
         end;

end;

end.
