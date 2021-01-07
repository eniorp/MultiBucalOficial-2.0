unit CadBloqueioGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls, Mask;

type
  TFmCadBloqueioGrupo = class(TFmPadrao)
    ADOQueryBloqueioGrupo: TADOQuery;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    EditNmGrupo: TEdit;
    EditNmInc: TEdit;
    EditNmDesblo: TEdit;
    Label1: TLabel;
    ADOQueryBloqueioGrupocd_grupo_contrat: TIntegerField;
    ADOQueryBloqueioGrupodt_ini_bloqueio: TDateTimeField;
    ADOQueryBloqueioGrupodt_fim_gloqueio: TDateTimeField;
    ADOQueryBloqueioGrupocd_usuario_inclusao: TIntegerField;
    ADOQueryBloqueioGrupocd_usuario_desbloqueio: TIntegerField;
    ADOQueryBloqueioGruponm_grupo: TStringField;
    procedure ADOQueryBloqueioGrupoBeforePost(DataSet: TDataSet);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure ADOQueryBloqueioGrupoNewRecord(DataSet: TDataSet);
    procedure ADOQueryBloqueioGrupoAfterScroll(DataSet: TDataSet);
    procedure ADOQueryBloqueioGrupoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    cdGrupocontrat :Integer;
    { Public declarations }
  end;

var
  FmCadBloqueioGrupo: TFmCadBloqueioGrupo;

implementation

uses udm,senha;

{$R *.dfm}

procedure TFmCadBloqueioGrupo.ADOQueryBloqueioGrupoBeforePost(DataSet: TDataSet);
begin
  inherited;

   if ADOQueryBloqueioGrupo.State = dsInsert then
   begin
      if(dm.execmd('set dateformat dmy select count(*) q from bloqueio_grupoContrat where cd_grupo_contrat = ' + ADOQueryBloqueioGrupocd_grupo_contrat.AsString + ' and ''' + ADOQueryBloqueioGrupodt_ini_bloqueio.AsString + ''' between dt_ini_bloqueio and  isnull(dt_fim_gloqueio,''01/01/2079'')','q') <> '0') then
      begin
          ShowMessage('J� existe cadastro de bloqueio para este grupo de contratante !');
          Abort;
      end;
      ADOQueryBloqueioGrupocd_usuario_inclusao.AsInteger := Senha.Codigo_Operador;
   end
   else
      if (ADOQueryBloqueioGrupo.State = dsEdit) and ADOQueryBloqueioGrupocd_usuario_desbloqueio.IsNull and (not ADOQueryBloqueioGrupodt_fim_gloqueio.IsNull) then

          ADOQueryBloqueioGrupocd_usuario_desbloqueio.AsInteger := Senha.Codigo_Operador;

   if EditNmGrupo.Text = '' then
   begin
      ShowMessage('C�digo de grupo de contratante inv�lido !');
      Abort;
   end
end;

procedure TFmCadBloqueioGrupo.DBEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
     EditNmGrupo.Text := dm.execmd('select descricao nome from Grupo_Contratante where ativo = 1 and codigo = ' + ADOQueryBloqueioGrupocd_grupo_contrat.AsString, 'nome');
     if EditNmGrupo.Text = '' then
     begin
        ShowMessage('C�digo grupo de contratante inv�lido ou inativo');
        DBEdit2.SetFocus;
     end;

  end;
end;

procedure TFmCadBloqueioGrupo.ADOQueryBloqueioGrupoNewRecord(
  DataSet: TDataSet);
begin
  inherited;
   EditNmGrupo.Clear;
   EditNmInc.Clear;
   EditNmDesblo.Clear;
   if cdGrupocontrat <> 0 then
   begin
      ADOQueryBloqueioGrupocd_grupo_contrat.AsInteger := cdGrupocontrat;
      EditNmGrupo.Text := dm.execmd('select descricao nome from Grupo_Contratante where codigo = ' + ADOQueryBloqueioGrupocd_grupo_contrat.AsString, 'nome');
      DBEdit3.SetFocus;
   end;

   DBEdit2.SetFocus;
   DBEdit3.Enabled := true;
   DBEdit4.Enabled := true;

end;

procedure TFmCadBloqueioGrupo.ADOQueryBloqueioGrupoAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if ADOQueryBloqueioGrupo.State = DsInsert then
  begin
     EditNmInc.Clear;
     EditNmDesblo.Clear;
  end
  else
  begin
     EditNmGrupo.Text := dm.execmd('select descricao nome from Grupo_Contratante where codigo = ''' + ADOQueryBloqueioGrupocd_grupo_contrat.AsString + '''', 'nome');
     EditNmInc.Text := dm.execmd('select apelido from operador where codigo = ''' + ADOQueryBloqueioGrupocd_usuario_inclusao.AsString + '''', 'apelido');
     EditNmDesblo.Text := dm.execmd('select apelido from operador where codigo = ''' + ADOQueryBloqueioGrupocd_usuario_desbloqueio.AsString + '''', 'apelido');
  end;

end;

procedure TFmCadBloqueioGrupo.ADOQueryBloqueioGrupoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
    ADOQueryBloqueioGrupo.Close;
    ADOQueryBloqueioGrupo.Open;
end;

end.
