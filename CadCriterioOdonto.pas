unit CadCriterioOdonto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, StdCtrls, Mask, DBCtrls, Db, DBTables, Grids, DBGrids, ExtCtrls,
  Buttons,enio, ADODB;

type
  TFmCadCriterioOdonto = class(TFmPadrao)
    QueryCritOdonto: TQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DsCritOdonto: TDataSource;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBNavigator1: TDBNavigator;
    SpeedButtonPesqMedico: TSpeedButton;
    QueryCritOdontocd_criterio: TSmallintField;
    QueryCritOdontocd_servico: TIntegerField;
    QueryCritOdontonivel_crit: TStringField;
    QueryCritOdontoqt_dias: TSmallintField;
    QueryCritOdontonivel_restricao: TStringField;
    QueryCritOdontodt_ini_criterio: TDateTimeField;
    QueryCritOdontodt_fim_criterio: TDateTimeField;
    EditServico: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    QueryCritOdontoqtde: TSmallintField;
    Button1: TButton;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure QueryCritOdontocd_servicoValidate(Sender: TField);
    procedure QueryCritOdontoAfterScroll(DataSet: TDataSet);
    procedure QueryCritOdontoAfterPost(DataSet: TDataSet);
    procedure QueryCritOdontoAfterInsert(DataSet: TDataSet);
    procedure QueryCritOdontoBeforeDelete(DataSet: TDataSet);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure QueryCritOdontoBeforePost(DataSet: TDataSet);
    procedure SpeedButtonPesqMedicoClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QueryCritOdontoNewRecord(DataSet: TDataSet);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadCriterioOdonto: TFmCadCriterioOdonto;

implementation

uses udm, PesquisaServicos,tacio;

{$R *.DFM}

procedure TFmCadCriterioOdonto.FormShow(Sender: TObject);
begin
  inherited;
   QueryCritOdonto.Close;
   QueryCritOdonto.Open;
   Query1.close;
   Query1.Open;

end;

procedure TFmCadCriterioOdonto.QueryCritOdontocd_servicoValidate(
  Sender: TField);
begin
  inherited;
  EditServico.text :=
  dm.ExecutaComando('select descricao a,cd_nivel_servico from servicos where codigo = ' + QueryCritOdontocd_servico.AsString,'a');
  QueryCritOdonto.FieldByName('nivel_crit').AsString := Dm.QueryGlobal.FieldByName('cd_nivel_servico').AsString;
  if EditServico.Text = '' then
  begin
     ShowMessage('Código de serviço não encontrado !');
     Abort;
  end;
end;

procedure TFmCadCriterioOdonto.QueryCritOdontoAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if QueryCritOdontocd_servico.AsString <> '' then
     EditServico.text :=
     dm.ExecutaComando('select descricao a from servicos where codigo = ' + QueryCritOdontocd_servico.AsString,'a');

end;

procedure TFmCadCriterioOdonto.QueryCritOdontoAfterPost(DataSet: TDataSet);
begin
  inherited;
   Query1.Close;
   Query1.Open;
   QueryCritOdonto.Close;
   QueryCritOdonto.Open;
end;

procedure TFmCadCriterioOdonto.QueryCritOdontoAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
   EditServico.clear;
   DBEdit2.SetFocus;
end;

procedure TFmCadCriterioOdonto.QueryCritOdontoBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
   Query1.close;
   Query1.Open;
end;

procedure TFmCadCriterioOdonto.Query1AfterScroll(DataSet: TDataSet);
begin
  inherited;
   if not (Query1.Bof and Query1.Eof) then
      QueryCritOdonto.Locate('cd_criterio',Query1.FieldByName('cd_criterio').AsString,[]);

end;

procedure TFmCadCriterioOdonto.QueryCritOdontoBeforePost(
  DataSet: TDataSet);
begin
  inherited;
   ValidaCampo(QueryCritOdonto,'cd_servico','Código do serviço',true);
   ValidaCampo(QueryCritOdonto,'nivel_restricao','Nível de restrição',true);
   ValidaCampo(QueryCritOdonto,'qt_dias','Qtde de dias de carência',true);
   ValidaCampo(QueryCritOdonto,'nivel_crit','Validar para (Cliente,Dente ou Face)',true);
   ValidaCampo(QueryCritOdonto,'dt_ini_criterio','Data Início do Critério',true);
   ValidaCampo(QueryCritOdonto,'qtde','Quantidade de vezes permitida no período',true);
end;

procedure TFmCadCriterioOdonto.SpeedButtonPesqMedicoClick(Sender: TObject);
begin
  inherited;
   FormPesquisaServicos := TFormPesquisaServicos.create(self);
   if FormPesquisaServicos.Showmodal = MrOk then
      if QueryCritOdonto.State = DsInsert then
         QueryCritOdontocd_servico.asInteger := FormPesquisaServicos.QueryServicosCodigo.asInteger;
   FormPesquisaServicos.Free;
end;

procedure TFmCadCriterioOdonto.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   key := so_numero(key);
end;

procedure TFmCadCriterioOdonto.Edit1Exit(Sender: TObject);
begin
  inherited;
   Query1.Close;
   if Edit1.text <> '' then
     Query1.sql[21] := ' and cd_servico = ' + Edit1.text
   else
   begin
      SpeedButton1.Down := false;
      Query1.sql[21] := ' ';
      Label5.Visible := False;
      Edit1.Visible := False;
   end;
   Query1.Open;
   if query1.bof and query1.eof then
   begin
      ShowMessage('Não há critério para o serviço ' + Edit1.text);
      SpeedButton1.Down := false;
      SpeedButton1Click(Sender);
   end;
end;

procedure TFmCadCriterioOdonto.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if SpeedButton1.Down then
  begin
     //Query1.close;
     SpeedButton1.hint := 'Clique aqui para retirar o filtro e mostrar todos os critérios';
     Label5.Visible := true;
     Edit1.Visible := true;
     Edit1.setFocus;
  end
  else
  begin
      SpeedButton1.hint := 'Clique aqui para efeturar um filtro pelo código do serviço';
      Query1.Close;
      Query1.sql[21] := ' ';
      Query1.Open;
      Label5.Visible := False;
      Edit1.Visible := False;
  end
end;

procedure TFmCadCriterioOdonto.QueryCritOdontoNewRecord(DataSet: TDataSet);
begin
  inherited;
   QueryCritOdontoQtde.AsInteger := 1;
end;

procedure TFmCadCriterioOdonto.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   if (key = #13) and (QueryCritOdonto.State in [DsInsert,DsEdit]) and
   (Application.MessageBox('Deseja gravar as informações do critério?','Confirmação', MB_OKCANCEL) = IDOK) then
      QueryCritOdonto.post;

end;

procedure TFmCadCriterioOdonto.Button1Click(Sender: TObject);
begin
  inherited;
  ToExcel(Query1,'Critérios de Odontograma');
end;

procedure TFmCadCriterioOdonto.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
      begin
        Query1.Close;
        Query1.SQL[21]:='and dt_fim_criterio is null';
        Query1.Open;
      end
    else
      begin
        Query1.Close;
        Query1.SQL[21]:='';
        Query1.Open;
      end;
end;

end.
