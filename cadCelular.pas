unit cadCelular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls, Mask;

type
  TFmCadCelular = class(TFmPadrao)
    ADOQueryHCodigo: TIntegerField;
    ADOQueryHddd: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource2: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    ADOQueryHcelular: TBCDField;
    ADOQueryHobs: TStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ADOQueryHBeforePost(DataSet: TDataSet);
    procedure ADOQueryHNewRecord(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
     cdContratante : string;
    { Public declarations }
  end;

var
  FmCadCelular: TFmCadCelular;

implementation

uses udm;

{$R *.dfm}

procedure TFmCadCelular.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
     if Key =  VK_RETURN then
       Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TFmCadCelular.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (key = #13) and (ADOQueryH.State in[dsEdit,dsInsert]) then
     ADOQueryH.Post;
end;

procedure TFmCadCelular.ADOQueryHBeforePost(DataSet: TDataSet);
begin
  inherited;
     if length(ADOQueryHddd.AsString) <> 2 then
     begin
        showmessage('DDD deve ter 2 dígitos');
        abort;
     end
     else if length(ADOQueryHCelular.AsString) <> 9 then
     begin
        showmessage('número de celular deve ter 9 dígitos');
        abort;
     end;

end;

procedure TFmCadCelular.ADOQueryHNewRecord(DataSet: TDataSet);
begin
  inherited;
  AdoQueryHCodigo.asString := cdContratante;
end;

procedure TFmCadCelular.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  inherited;
  if (AdoQueryH.state in[dsEdit,dsInsert]) then
    if not AdoqueryHDDD.isnull and not AdoqueryhCelular.isnull then
       AdoquerYH.Post;
  
      if dm.execmd('select count(*) q from celulares where codigo = ''' + cdContratante + '''','q') = '0' then
    begin
       if Application.MessageBox('Não há nenhum celular cadastrado para esse contratante, deseja sair sem gravar número de telefone celular?','Confirmação', MB_YESNO + MB_DEFBUTTON2) <> IdYes then
        canClose := false;
    end;

end;

end.
