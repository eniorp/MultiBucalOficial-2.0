unit cadDescontoProgressivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask, DBCtrls;

type
  TFmCadDescontoProgressivo = class(TFmPadrao)
    ADOQueryHdsPlano: TStringField;
    ADOQueryHindice: TIntegerField;
    ADOQueryHcd_plano: TIntegerField;
    ADOQueryHidade_min: TIntegerField;
    ADOQueryHidade_max: TIntegerField;
    ADOQueryHdt_inicio: TWideStringField;
    ADOQueryHvalor_desconto: TBCDField;
    ADOQueryHdt_fim: TWideStringField;
    GroupBox1: TGroupBox;
    txtPesquisa: TEdit;
    btnPesquisa: TButton;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBNavigator1: TDBNavigator;
    ADOQueryHdt_cadastro: TDateTimeField;
    ADOQueryHnmLogin: TStringField;
    procedure btnPesquisaClick(Sender: TObject);
    procedure ADOQueryHBeforeDelete(DataSet: TDataSet);
    procedure ADOQueryHBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ADOQueryHAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadDescontoProgressivo: TFmCadDescontoProgressivo;

implementation

uses udm,senha;

{$R *.dfm}

procedure TFmCadDescontoProgressivo.btnPesquisaClick(Sender: TObject);
begin
  inherited;
   if txtPesquisa.Text <> '' then
   begin
      ADOQueryH.Close;
      ADOQueryH.SQL[1] := ' and cd_plano = ''' + txtPesquisa.Text + '''';
      try
         ADOQueryH.Open;
         except on E: Exception do
         begin
           ADOQueryH.Close;
           ADOQueryH.SQL[1] := ' and descricao like ''%' + txtPesquisa.Text + '%''';
           ADOQueryH.Open;
         end;
      end;

      if ADOQueryH.RecordCount = 0 then
      begin
         ADOQueryH.Close;
         ADOQueryH.SQL[1] := ' and descricao like ''%' + txtPesquisa.Text + '%''';
         ADOQueryH.Open;
      end;
   end
   else
   begin
         ADOQueryH.Close;
         ADOQueryH.SQL[1] := ' ';
         ADOQueryH.Open;

   end;

end;

procedure TFmCadDescontoProgressivo.ADOQueryHBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if MessageDlg('Confirma exclus�o do registro?  ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     dm.execmd('update descontoXIdade set dt_fim = getdate() where indice = ' + ADOQueryHindice.AsString);
     ADOQueryH.close();
     ADOQueryH.Open;
  end;
  sysUtils.Abort;
end;

procedure TFmCadDescontoProgressivo.ADOQueryHBeforePost(DataSet: TDataSet);
begin
  inherited;
    if dm.execmd('select count(*) q from plano where ativo  = 1 and codigo = ''' +  ADOQueryHcd_plano.AsString + '''','q') = '0' then
    begin
       ShowMessage('Aten��o plano inv�lido ou inativo, opera��o cancelada' );
       sysUtils.Abort;
    end;
    if dm.execmd('select count(*) q from plano where consideraCrianca = 1 and codigo = ''' +  ADOQueryHcd_plano.AsString + '''','q') <> '0' then
    begin
       ShowMessage('Aten��o esse plano est� parametrizado para considerar crian�a na contagem de quantidade de usuarios para dar desconto pelo n�mero de usu�rios, n�o � permitido cadastrar desconto progressivo' );
       sysUtils.Abort;
    end;
    if ADOQueryH.State = dsInsert then
    begin
       ADOQueryHindice.AsString := dm.execmd('select isnull(max(indice),0) + 1 id from descontoXIdade','id');
       ADOQueryHdt_inicio.AsDateTime := dm.now;
       ADOQueryHdt_cadastro.AsDateTime := dm.now;
       ADOQueryHnmLogin.AsString := senha.apelido;

    end;
end;

procedure TFmCadDescontoProgressivo.FormShow(Sender: TObject);
begin
  inherited;
   ADOQueryH.Close;
   ADOQueryH.Open;
end;

procedure TFmCadDescontoProgressivo.ADOQueryHAfterPost(DataSet: TDataSet);
begin
  inherited;
    ADOQueryH.Close;
    ADOQueryH.Open;

end;

end.
