unit CritServicoXIdade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  DBCtrls,enio, Mask, ADODB;

type
  TFmCritServicoXIdade = class(TFmPadrao)
    DBNavigator1: TDBNavigator;
    DBRadioGroup1: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    SpeedButtonPesqMedico: TSpeedButton;
    Label3: TLabel;
    EditServico: TEdit;
    QueryCritServIdade: TQuery;
    QueryCritServIdadecd_criterio: TSmallintField;
    QueryCritServIdadecd_servico: TIntegerField;
    QueryCritServIdadeidadeIni: TSmallintField;
    QueryCritServIdadeidadeFim: TSmallintField;
    QueryCritServIdadeinclu_oclu: TStringField;
    QueryCritServIdadeperm_deci: TStringField;
    QueryCritServIdadeqtde: TSmallintField;
    QueryCritServIdadenivel_restricao: TStringField;
    QueryCritServIdadedt_ini_criterio: TDateTimeField;
    QueryCritServIdadedt_fim_criterio: TDateTimeField;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    GroupBox3: TGroupBox;
    DBRGOclInc: TDBRadioGroup;
    DBRGPermDeci: TDBRadioGroup;
    GroupBox4: TGroupBox;
    DBEdit5: TDBEdit;
    CheckBox1: TCheckBox;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButtonPesqMedicoClick(Sender: TObject);
    procedure QueryCritServIdadeAfterPost(DataSet: TDataSet);
    procedure QueryCritServIdadeBeforePost(DataSet: TDataSet);
    procedure QueryCritServIdadecd_servicoValidate(Sender: TField);
    procedure QueryCritServIdadeAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCritServicoXIdade: TFmCritServicoXIdade;

implementation

uses PesquisaServicos, udm, tacio;

{$R *.DFM}

procedure TFmCritServicoXIdade.FormShow(Sender: TObject);
begin
  inherited;
   QueryCritServIdade.open;
end;

procedure TFmCritServicoXIdade.SpeedButtonPesqMedicoClick(Sender: TObject);
begin
  inherited;
   FormPesquisaServicos := TFormPesquisaServicos.create(self);
   if FormPesquisaServicos.Showmodal = MrOk then
      if QueryCritServIdade.State = DsInsert then
         QueryCritServIdadecd_servico.asInteger := FormPesquisaServicos.QueryServicosCodigo.asInteger;
   FormPesquisaServicos.Free;
end;

procedure TFmCritServicoXIdade.QueryCritServIdadeAfterPost(
  DataSet: TDataSet);
begin
  inherited;
   QueryCritServIdade.Close;
   QueryCritServIdade.Open;

end;

procedure TFmCritServicoXIdade.QueryCritServIdadeBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  ValidaCampo(QueryCritServIdade,'cd_servico','Código do serviço'                               ,true);
  ValidaCampo(QueryCritServIdade,'idadeIni'  ,'Idade Inicial'                                   ,true);
  ValidaCampo(QueryCritServIdade,'idadeFim'  ,'Idade Final'                                     ,true);
  ValidaCampo(QueryCritServIdade,'inclu_oclu','Inclusal("I") Oclusal("O")'                      ,true);
  ValidaCampo(QueryCritServIdade,'perm_deci' ,'Permanente("P") Decíduo("D")'                    ,true);
  ValidaCampo(QueryCritServIdade,'nivel_restricao'      ,'Nível de Restrição',true);
  ValidaCampo(QueryCritServIdade,'dt_ini_criterio'      ,'Data Início do Critério',true);
  ValidaCampo(QueryCritServIdade,'qtde'      ,'Quantidade permitida por usuário na faixa etária(informe zero se não tiver limite)',true);
end;

procedure TFmCritServicoXIdade.QueryCritServIdadecd_servicoValidate(
  Sender: TField);
begin
  inherited;
  EditServico.text :=
  dm.ExecutaComando('select descricao a from servicos where codigo = ''' + QueryCritServIdadecd_servico.AsString + '''','a');
  if EditServico.Text = '' then
  begin
     ShowMessage('Código de serviço não encontrado !');
     Abort;
  end;

end;

procedure TFmCritServicoXIdade.QueryCritServIdadeAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  EditServico.text :=
  dm.ExecutaComando('select descricao a from servicos where codigo = ''' + QueryCritServIdadecd_servico.AsString + '''','a');
end;

procedure TFmCritServicoXIdade.CheckBox1Click(Sender: TObject);
begin
  inherited;
  if CheckBox1.Checked then
      begin
        QueryCritServIdade.Close;
        QueryCritServIdade.SQL[1]:='and dt_fim_criterio is null';
        QueryCritServIdade.Open;
      end
    else
      begin
        QueryCritServIdade.Close;
        QueryCritServIdade.SQL[1]:='';
        QueryCritServIdade.Open;
      end;
end;

procedure TFmCritServicoXIdade.Button1Click(Sender: TObject);
begin
  inherited;
  ToExcel(QueryCritServIdade,'Criterio de Servicos por Idade');

end;

end.
