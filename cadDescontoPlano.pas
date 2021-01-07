unit cadDescontoPlano;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, StdCtrls, Mask, DBCtrls, DB, ADODB, DBTables, Grids,
  DBGrids, ExtCtrls, Buttons;

type
  TFmCadDescPlano = class(TFmPadrao)
    ADOQuery1: TADOQuery;
    ADOQuery1Descricao: TStringField;
    ADOQuery1id_promocao: TIntegerField;
    ADOQuery1cd_plano: TIntegerField;
    ADOQuery1dt_ini_vigencia: TDateTimeField;
    ADOQuery1dt_fim_vigencia: TDateTimeField;
    ADOQuery1qt_meses: TIntegerField;
    ADOQuery1percent_desconto: TBCDField;
    DataSource2: TDataSource;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    EditNmPlano: TEdit;
    BitBtnPesquisaClinica: TBitBtn;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Bevel2: TBevel;
    procedure BitBtnPesquisaClinicaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadDescPlano: TFmCadDescPlano;

implementation

uses udm, PesquisaPlanos;

{$R *.dfm}

procedure TFmCadDescPlano.BitBtnPesquisaClinicaClick(Sender: TObject);
begin
  inherited;
   FormPesquisaPlanos := TFormPesquisaPlanos.create(self);
   FormPesquisaPlanos.ShowModal;
   if(ADOQuery1.State = dsInsert) then
   begin
      ADOQuery1cd_plano.AsString := FormPesquisaPlanos.QueryPlanosCodigo.AsString;
      EditNmPlano.Text := FormPesquisaPlanos.QueryPlanosDescricao.AsString;
   end;
   
   FormPesquisaPlanos.free;
end;

procedure TFmCadDescPlano.FormShow(Sender: TObject);
begin
  inherited;
   ADOQuery1.Open;
end;

procedure TFmCadDescPlano.DBEdit3Exit(Sender: TObject);
begin
  inherited;
   if( not ADOQuery1cd_plano.IsNull) then
   begin
      EditNmPlano.Text := DM.execmd('select descricao from plano where codigo = ' + ADOQuery1cd_plano.AsString,'descricao');
   end;
end;

procedure TFmCadDescPlano.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
  inherited;
   if( not ADOQuery1cd_plano.IsNull) then
   begin
      EditNmPlano.Text := DM.execmd('select descricao from plano where codigo = ' + ADOQuery1cd_plano.AsString,'descricao');
   end;

end;

procedure TFmCadDescPlano.ADOQuery1BeforePost(DataSet: TDataSet);
begin
  inherited;
  if ADOQuery1.State = dsInsert then
     ADOQuery1id_promocao.AsString := dm.execmd('select isnull(max(id_promocao),0) + 1 m from promocaoPlano','m');
end;

end.
