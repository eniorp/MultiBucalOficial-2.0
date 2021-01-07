unit Servicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls, Mask,enio,
  ComCtrls;

type
  TFormServicos = class(TForm)
    Panel1: TPanel;
    Panel15: TPanel;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    DataSourceServicos: TDataSource;
    QueryServicos: TQuery;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    Panel13: TPanel;
    DBNavigatorCadastro: TDBNavigator;
    QueryServicosSip: TIntegerField;
    QueryServicoscd_nivel_servico: TStringField;
    QueryServicosqt_face: TSmallintField;
    QueryServicostipo_dente: TStringField;
    QueryServicosPerm_deci: TStringField;
    BitBtn1: TBitBtn;
    QueryServicosIdadeMax: TSmallintField;
    QueryServicosHemiarco: TStringField;
    QueryServicosqt_orcamento: TSmallintField;
    QueryServicosmolar_preMolar: TStringField;
    QueryServicosarcada: TStringField;
    PageControl1: TPageControl;
    TabSheetServico: TTabSheet;
    TabSheetGrupo: TTabSheet;
    PanelD: TPanel;
    GBServExecEmDente: TGroupBox;
    DBRGOclInc: TDBRadioGroup;
    DBRGPermDeci: TDBRadioGroup;
    DBRGMoPreMo: TDBRadioGroup;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    DBRHemiArco: TDBRadioGroup;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBRGArcada: TDBRadioGroup;
    DBRGServExecEm: TDBRadioGroup;
    BitBtnLimFace: TBitBtn;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    DBGridServicos: TDBGrid;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    QueryGrupoServico: TQuery;
    DsGrupoServico: TDataSource;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    QueryServicoscd_grupo: TSmallintField;
    SpeedButtonLimpaGrupo: TSpeedButton;
    DBCheckBoxExtr: TDBCheckBox;
    QueryServicosextracao: TBooleanField;
    QueryServicosdt_exclusao: TDateTimeField;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    SpeedButton1: TSpeedButton;
    Panel5: TPanel;
    CheckBox1: TCheckBox;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    QueryServicoscd_tuss: TIntegerField;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    QueryServicosmanutencaoAutomatica: TBooleanField;
    QueryServicoshabilitaViaOrtodontia: TBooleanField;
    QueryServicoslgUrgencia: TBooleanField;
    DBCheckBox4: TDBCheckBox;
    GroupBox3: TGroupBox;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    QueryServicosqtVezesTISS: TSmallintField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure QueryServicosAfterPost(DataSet: TDataSet);
    procedure QueryServicosBeforePost(DataSet: TDataSet);
    procedure DBRGServExecEmChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnLimFaceClick(Sender: TObject);
    procedure DBRGOclIncChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure QueryGrupoServicoAfterPost(DataSet: TDataSet);
    procedure QueryGrupoServicoBeforePost(DataSet: TDataSet);
    procedure QueryGrupoServicoNewRecord(DataSet: TDataSet);
    procedure SpeedButtonLimpaGrupoClick(Sender: TObject);
    procedure QueryServicosNewRecord(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormServicos: TFormServicos;

implementation

uses QRServicos, DelimitaFace, udm;


{$R *.DFM}

procedure TFormServicos.FormCreate(Sender: TObject);
begin
//     Left := 90;
//     Top := 90;
     QueryServicos.Open;
     QueryGrupoServico.Close;
     QueryGrupoServico.Open;
     PageControl1.ActivePageIndex := 0;
end;

procedure TFormServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryServicos.Close;
end;

procedure TFormServicos.FormActivate(Sender: TObject);
begin
     DBGridServicos.Setfocus;
end;

procedure TFormServicos.BitBtnImprimirClick(Sender: TObject);
begin
     Application.CreateForm(TQRListaServicos, QRListaServicos);
     QRListaServicos.Preview;
     QRListaServicos.Free;
end;

procedure TFormServicos.QueryServicosAfterPost(DataSet: TDataSet);
var Servico : Short;
begin
     with QueryServicos do
       begin
         Servico := QueryServicosCodigo.asInteger;
         Close;
         Open;
         Locate('Codigo', Servico, [loCaseInsensitive]);
       end;
end;

procedure TFormServicos.QueryServicosBeforePost(DataSet: TDataSet);
begin
   //se selecionado dente ou face, exigir oclusao ou incisal

   //colocar no orçamento se serviço executado em tipo de dente diferente do tipo do dente do seviço
   {
   if QueryServicosqtVezesTISS.AsInteger < 1 then
   begin
         ShowMessage('Quantidade de vezes para envio ANS/TISS deve ser maior que zero');
         abort;
   end;
   }
   if (QueryServicoscd_nivel_servico.AsString = 'F') and
      (QueryServicosqt_face.AsInteger = 0) then
   begin
      ShowMessage('É necessário informar a quantidade de Faces desse serviço');
      if DBEdit5.focused then
         DBEdit5.SetFocus;
      Abort;
   end;
   if (QueryServicoscd_nivel_servico.AsString <> 'F') then

      if dm.Executacomando('select count(*) qt from servicoXface where cd_servico = ''' + QueryServicosCodigo.AsString + '''','qt') <> '0' then
      begin
        if Application.MessageBox('Existem faces delimitadas para este serviço, porém o mesmo não está indicado para ser executado na face, é necessário excluir este vínculo, deseja excluir agora?'
        ,'Confirmção', MB_YesNo + MB_DEFBUTTON2) = IdYes then
           dm.executacomando('delete servicoXface where cd_servico = ''' + QueryServicosCodigo.AsString + '''')
        else
           abort;
      end;

   if QueryServicoscd_nivel_servico.AsString[1] <> 'A' then
      QueryServicosArcada.Clear
   else
   if QueryServicosArcada.AsString = '' then
   begin
      ShowMessage('É necessário informar a Arcada !');
      abort;
   end;

   if QueryServicoscd_nivel_servico.AsString[1] <> 'H' then
      QueryServicosHemiarco.clear
   else
   if QueryServicosHemiarco.AsString = '' then
   begin
      ShowMessage('É necessário informar o Hemi-Arco !');
      abort;
   end;
   if (QueryServicoscd_nivel_servico.AsString[1] in ['D','F']) then
   begin
      if (QueryServicostipo_dente.isnull) then
      begin
         ShowMessage('É necessário informar se o serviço é executado em dente Oclusal, Incisal ou Ambos');
         Abort;
      end;

      if QueryServicosPerm_deci.isnull then
      begin
         ShowMessage('É necessário informar se o serviço é executado em dentes Permanentes, Decíduos ou Ambos !');
         Abort;
      end;

      if (QueryServicosPerm_deci.AsString = 'P') and (QueryServicostipo_dente.AsString = 'O') then
      begin
         if QueryServicosmolar_preMolar.IsNull then
         begin
            ShowMessage('Inform se este serviço é executado em dentes Pré molares , molares ou Ambos');
            Abort;
         end;
      end
      else
         QueryServicosmolar_preMolar.clear

   end
   else
   begin
      QueryServicosextracao.AsBoolean := false;
      QueryServicostipo_dente.Clear;
      QueryServicosPerm_deci.Clear;
   end
end;

procedure TFormServicos.DBRGServExecEmChange(Sender: TObject);
begin
   DBEdit5.Visible           := (DBRGServExecEm.ItemIndex = 2);
   DBCheckBoxExtr.Enabled := (DBRGServExecEm.ItemIndex = 1);
   BitBtnLimFace.Enabled := DBEdit5.Visible;
   DBRGOclInc.Enabled := (DBRGServExecEm.ItemIndex in [1,2]);
   DBRGPermDeci.Enabled := DBRGOclInc.Enabled;//(DBRGServExecEm.ItemIndex <> 0);
//   DBCBIndicarHemi.Enabled      := (DBRGServExecEm.ItemIndex = 0);
   DBRHemiArco.Enabled := (DBRGServExecEm.ItemIndex = 3);
   DBRGMoPreMo.Enabled := ((DBRGOclInc.ItemIndex = 1) and (DBRGPermDeci.ItemIndex = 1)) and (DBRGServExecEm.ItemIndex in [1,2]); // somente habilita se for dente permanente oclusal
   DBRGArcada.Enabled := (DBRGServExecEm.ItemIndex = 5);
end;

procedure TFormServicos.BitBtn1Click(Sender: TObject);
var VCdservico : String;
begin
   if inputQuery('Localizar Serviço','Informe o código do serviço',VCdServico) and
      E_Numerico(VCdservico) then
      QueryServicos.Locate('codigo',VcdServico,[]);
end;

procedure TFormServicos.BitBtnLimFaceClick(Sender: TObject);
begin
   if QueryServicos.State in [DsEdit,DsInsert] then
      QueryServicos.post;
   FmDelimitaFace := TFmDelimitaFace.create(self);
   FmDelimitaFace.Query1.close;
   FmDelimitaFace.Query1.sql[1] := QueryServicosCodigo.AsString;
   FmDelimitaFace.Query1.Open;
   FmDelimitaFace.ShowModal;
   FmDelimitaFace.Free;
end;

procedure TFormServicos.DBRGOclIncChange(Sender: TObject);
begin
   DBRGMoPreMo.Enabled := (DBRGOclInc.ItemIndex = 1) and (DBRGPermDeci.ItemIndex = 1); // somente habilita se for dente permanente oclusal
end;

procedure TFormServicos.PageControl1Change(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 0 then
     DBNavigatorCadastro.DataSource := DataSourceServicos
  else
  if PageControl1.ActivePageIndex = 1 then
     DBNavigatorCadastro.DataSource := DsGrupoServico;
end;

procedure TFormServicos.QueryGrupoServicoAfterPost(DataSet: TDataSet);
begin
   QueryGrupoServico.Close;
   QueryGrupoServico.Open;
   QueryGrupoServico.last;
end;

procedure TFormServicos.QueryGrupoServicoBeforePost(DataSet: TDataSet);
begin
   ValidaCampo(QueryGrupoServico,'cd_grupo','Código do grupo'   ,true);
   ValidaCampo(QueryGrupoServico,'ds_grupo','Descrição do grupo',true);
   ValidaCampo(QueryGrupoServico,'ativo'   ,'Grupo Ativo'       ,true);
end;

procedure TFormServicos.QueryGrupoServicoNewRecord(DataSet: TDataSet);
begin
   QueryGrupoServico.FieldByName('ativo').AsBoolean := true;
end;

procedure TFormServicos.SpeedButtonLimpaGrupoClick(Sender: TObject);
begin
   QueryServicos.Edit;
   QueryServicoscd_grupo.clear;
end;

procedure TFormServicos.QueryServicosNewRecord(DataSet: TDataSet);
begin
   QueryServicosextracao.AsBoolean := false;
//   QueryServicosqtVezesTISS.AsInteger := 1;
end;

procedure TFormServicos.SpeedButton1Click(Sender: TObject);
begin
   QueryServicos.Edit;
   QueryServicosdt_exclusao.clear;
end;

procedure TFormServicos.CheckBox1Click(Sender: TObject);
begin
   QueryServicos.Close;
   if CheckBox1.Checked then
     QueryServicos.SQL[1] := ' where dt_exclusao is null '
   else
     QueryServicos.SQL[1] := '  ';
   QueryServicos.Open;

end;

end.
