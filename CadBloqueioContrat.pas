unit CadBloqueioContrat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls, Mask;

type
  TFmCadBloqueioContrat = class(TFmPadrao)
    ADOQueryBloqueio: TADOQuery;
    DBNavigator1: TDBNavigator;
    ADOQueryBloqueionm_contratante: TStringField;
    ADOQueryBloqueiocd_contratante: TIntegerField;
    ADOQueryBloqueiodt_ini_bloqueio: TDateTimeField;
    ADOQueryBloqueiodt_fim_bloqueio: TDateTimeField;
    ADOQueryBloqueiocd_usuario_inclusao: TIntegerField;
    ADOQueryBloqueiocd_usuario_desbloqueio: TIntegerField;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditNmContratante: TEdit;
    EditNmInclusao: TEdit;
    EditNmDesbloqueio: TEdit;
    Label1: TLabel;
    procedure ADOQueryBloqueioBeforePost(DataSet: TDataSet);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ADOQueryBloqueioNewRecord(DataSet: TDataSet);
    procedure ADOQueryBloqueioAfterScroll(DataSet: TDataSet);
    procedure ADOQueryBloqueioAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    cdContratante :Integer;
    { Public declarations }
  end;

var
  FmCadBloqueioContrat: TFmCadBloqueioContrat;

implementation

uses udm,senha;

{$R *.dfm}

procedure TFmCadBloqueioContrat.ADOQueryBloqueioBeforePost(DataSet: TDataSet);
begin
  inherited;

   if ADOQueryBloqueio.State = dsInsert then
   begin
      if(dm.execmd('set dateformat dmy select count(*) q from bloqueio_contratante where cd_contratante = ' + ADOQueryBloqueiocd_contratante.AsString + ' and ''' + ADOQueryBloqueiodt_ini_bloqueio.AsString + ''' between dt_ini_bloqueio and  isnull(dt_fim_bloqueio,''01/01/2079'')','q') <> '0') then
      begin
          ShowMessage('Já existe cadastro de bloqueio para este contratante !');
          Abort;
      end;
      ADOQueryBloqueiocd_usuario_inclusao.AsInteger := Senha.Codigo_Operador;
   end
   else
      if (ADOQueryBloqueio.State = dsEdit) and ADOQueryBloqueiocd_usuario_desbloqueio.IsNull and (not ADOQueryBloqueiodt_fim_bloqueio.IsNull) then

          ADOQueryBloqueiocd_usuario_desbloqueio.AsInteger := Senha.Codigo_Operador;

   if EditNmContratante.Text = '' then
   begin
      ShowMessage('Código de contratante inválido !');
      Abort;
   end
end;

procedure TFmCadBloqueioContrat.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
     EditNmContratante.Text := dm.execmd('select nome from contratante where codigo = ' + ADOQueryBloqueiocd_contratante.AsString, 'nome');
     if EditNmContratante.Text = '' then
     begin
        ShowMessage('Código contratante inválido');
        DBEdit2.SetFocus;
     end;

  end;
end;

procedure TFmCadBloqueioContrat.ADOQueryBloqueioNewRecord(
  DataSet: TDataSet);
begin
  inherited;
   EditNmContratante.Clear;
   EditNmInclusao.Clear;
   EditNmDesbloqueio.Clear;
   if cdContratante <> 0 then
   begin
      ADOQueryBloqueiocd_contratante.AsInteger := cdContratante;
      EditNmContratante.Text := dm.execmd('select nome from contratante where codigo = ' + ADOQueryBloqueiocd_contratante.AsString, 'nome');
      DBEdit3.SetFocus;
   end;

   DBEdit2.SetFocus;
   DBEdit3.Enabled := true;
   DBEdit4.Enabled := true;

end;

procedure TFmCadBloqueioContrat.ADOQueryBloqueioAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if AdoQueryBloqueio.State = DsInsert then
  begin
     EditNmInclusao.Clear;
     EditNmDesbloqueio.Clear;
  end
  else
  begin
     EditNmContratante.Text := dm.execmd('select nome from contratante where codigo = ''' + ADOQueryBloqueiocd_contratante.AsString + '''', 'nome');
     EditNmInclusao.Text := dm.execmd('select apelido from operador where codigo = ''' + ADOQueryBloqueiocd_usuario_inclusao.AsString + '''', 'apelido');
     EditNmDesbloqueio.Text := dm.execmd('select apelido from operador where codigo = ''' + ADOQueryBloqueiocd_usuario_desbloqueio.AsString + '''', 'apelido');
  end;

end;

procedure TFmCadBloqueioContrat.ADOQueryBloqueioAfterPost(
  DataSet: TDataSet);
begin
  inherited;
    AdoQueryBloqueio.Close;
    AdoQueryBloqueio.Open;
end;

end.
