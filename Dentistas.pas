{ Sistema .........: Controle de Assist�ncia Odontol�gica                      }
{ Programa ........: Cadastros Dentistas                                       }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Dentistas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, ExtCtrls, Db, DBTables,
  ComCtrls,enio, FMTBcd, SqlExpr, DBClient, SimpleDS, ADODB, ExtDlgs,biblio,
  jpeg, Menus;

type
  TFormDentistas = class(TForm)
    QueryDentistas: TQuery;
    DataSourceDentistas: TDataSource;
    QueryDentistasCodigo: TIntegerField;
    QueryDentistasNome: TStringField;
    QueryDentistasEndereco_Comercial: TStringField;
    QueryDentistasBairro_Comercial: TStringField;
    QueryDentistasCep_Comercial: TStringField;
    QueryDentistasCidade_Comercial: TStringField;
    QueryDentistasEstado_Comercial: TStringField;
    QueryDentistasEndereco_Residencial: TStringField;
    QueryDentistasBairro_Residencial: TStringField;
    QueryDentistasCep_Residencial: TStringField;
    QueryDentistasCidade_Residencial: TStringField;
    QueryDentistasEstado_Residencial: TStringField;
    QueryDentistasFone1: TStringField;
    QueryDentistasTipo_Fone1: TStringField;
    QueryDentistasFone2: TStringField;
    QueryDentistasTipo_Fone2: TStringField;
    QueryDentistasFax: TStringField;
    QueryDentistasCelular: TStringField;
    QueryDentistasemail: TStringField;
    QueryDentistasData_Exclusao: TDateTimeField;
    QueryDentistasCodigo_Clinica: TIntegerField;
    QueryPermissoes: TQuery;
    QueryPermissoesCodigo_Operador: TSmallintField;
    QueryPermissoesCodigo_Grupo: TSmallintField;
    QueryPermissoesCodigo_Procedimento: TSmallintField;
    QueryPermissoesCodigo_SubProcedimento: TSmallintField;
    QueryPermissoesSomente_Leitura: TBooleanField;
    QueryDentistasAcrescimo_NF: TIntegerField;
    QueryDentistasDesconto: TIntegerField;
    QueryDentistasCIC: TStringField;
    QueryDentistasINSS: TStringField;
    PageControl1: TPageControl;
    TabSheetDados: TTabSheet;
    TabSheet2: TTabSheet;
    Panel2: TPanel;
    Panel8: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label10: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButtonExtorno: TSpeedButton;
    Label13: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    BitBtnPesquisar: TBitBtn;
    DBEditTelefone1: TDBEdit;
    DBEditFax: TDBEdit;
    DBEditExclusao: TDBEdit;
    DBEditemail: TDBEdit;
    DBEditTelefone2: TDBEdit;
    DBEditCelular: TDBEdit;
    DBEditClinica: TDBEdit;
    BitBtnPesquisaClinica: TBitBtn;
    DBEditAcrecimo: TDBEdit;
    DBEditDesconto: TDBEdit;
    DBEditCic: TDBEdit;
    DBEditInss: TDBEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtnSair: TBitBtn;
    Panel5: TPanel;
    DBNavigatorDentistas: TDBNavigator;
    GroupBoxComercial: TGroupBox;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEditEndereco: TDBEdit;
    DBEditBairro: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEditUF: TDBEdit;
    DBEditCep: TDBEdit;
    GroupBoxResidencial: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditEnderecoResidencial: TDBEdit;
    DBEditBairroResidencial: TDBEdit;
    DBEditCidadeResidencial: TDBEdit;
    DBEditEstadoResidencial: TDBEdit;
    DBEditCepResidencial: TDBEdit;
    Label26: TLabel;
    EditNmClinica: TEdit;
    Label25: TLabel;
    DBEdit1: TDBEdit;
    Label27: TLabel;
    DBEdit2: TDBEdit;
    Label43: TLabel;
    DBComboBoxEstadoCivil: TDBComboBox;
    DBEdit3: TDBEdit;
    Label28: TLabel;
    Label29: TLabel;
    DBEdit4: TDBEdit;
    QueryCancelamento: TQuery;
    DataSourceCancelamento: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label30: TLabel;
    GroupBoxEsp: TGroupBox;
    DBGrid1: TDBGrid;
    QueryEspXDent: TQuery;
    DsEspXDent: TDataSource;
    QueryEspXDentcd_dentista: TIntegerField;
    QueryEspXDentcd_especialidade: TSmallintField;
    QueryEspXDentAnoFormacao: TSmallintField;
    DsEsp: TDataSource;
    QueryEsp: TQuery;
    QueryEspds_especialidade: TStringField;
    QueryEspativa: TStringField;
    QueryEspcd_especialidade: TSmallintField;
    QueryDentistascd_motivo_exclusao: TIntegerField;
    QueryDentistascro: TStringField;
    QueryDentistase_civil: TStringField;
    QueryDentistasdt_formacao: TDateTimeField;
    QueryDentistasrg: TStringField;
    QueryDentistasdt_inclusao: TDateTimeField;
    QueryEspXDentprincipal: TStringField;
    QueryEspXDentds_especialidade: TStringField;
    DBNavigator1: TDBNavigator;
    TabSheet1: TTabSheet;
    DBGrid2: TDBGrid;
    Label20: TLabel;
    GroupBox1: TGroupBox;
    DBEdit5: TDBEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit8: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    Label36: TLabel;
    DBEdit9: TDBEdit;
    Label37: TLabel;
    DBEdit10: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    QueryEndDentista: TQuery;
    DsEndDentista: TDataSource;
    QueryEndDentistacd_dentista: TIntegerField;
    QueryEndDentistads_endereco: TStringField;
    QueryEndDentistalogradouro: TStringField;
    QueryEndDentistabairro: TStringField;
    QueryEndDentistacep: TStringField;
    QueryEndDentistacd_cidade: TSmallintField;
    QueryEndDentistafone1: TStringField;
    QueryEndDentistahr_ini_atend: TStringField;
    QueryEndDentistahr_fim_atend: TStringField;
    DBText2: TDBText;
    Panel6: TPanel;
    Panel7: TPanel;
    BitBtn1: TBitBtn;
    DBNavigator2: TDBNavigator;
    DBEdit11: TDBEdit;
    QueryCidade: TQuery;
    DsCidade: TDataSource;
    GroupBox3: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    QueryEndDentistaseg: TBooleanField;
    QueryEndDentistater: TBooleanField;
    QueryEndDentistaqua: TBooleanField;
    QueryEndDentistaqui: TBooleanField;
    QueryEndDentistasex: TBooleanField;
    QueryEndDentistasab: TBooleanField;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    Label40: TLabel;
    QueryDentistasobs: TMemoField;
    DBNavigator3: TDBNavigator;
    DsBairro: TDataSource;
    QueryEndDentistacd_bairro: TSmallintField;
    DBLookupComboBox3: TDBLookupComboBox;
    DBText1: TDBText;
    Label41: TLabel;
    QueryDentistascd_op_alter: TIntegerField;
    EditAlter: TEdit;
    Label42: TLabel;
    DBEdit6: TDBEdit;
    QueryDentistascnes: TStringField;
    Button1: TButton;
    QueryEndDentistatp_endereco: TStringField;
    DBRadioGroup1: TDBRadioGroup;
    QueryDentistasdt_envio_grafica: TDateTimeField;
    QueryDentistasalterado: TStringField;
    DBRadioGroup2: TDBRadioGroup;
    GroupBox4: TGroupBox;
    DBEdit12: TDBEdit;
    TabSheetContatos: TTabSheet;
    GroupBox5: TGroupBox;
    Label67: TLabel;
    DBEditDataContato: TDBEdit;
    Label70: TLabel;
    EditNomeOperador: TEdit;
    DBMemoTexto: TDBMemo;
    Label44: TLabel;
    DBNavigator4: TDBNavigator;
    ADOQueryContato: TADOQuery;
    DsContato: TDataSource;
    DBEdit13: TDBEdit;
    Label45: TLabel;
    ADOQueryContatocd_dentista: TIntegerField;
    ADOQueryContatoindice: TAutoIncField;
    ADOQueryContatodata: TDateTimeField;
    ADOQueryContatocd_operador: TIntegerField;
    ADOQueryContatods_contato: TStringField;
    ADOQueryContatodt_sistema: TDateTimeField;
    GroupBox6: TGroupBox;
    DBGrid3: TDBGrid;
    ADOQueryContatoresumo: TStringField;
    DBComboBox1: TDBComboBox;
    Label46: TLabel;
    QueryDentistaslanca_pkg_orcamento: TStringField;
    GroupBox7: TGroupBox;
    DBEdit14: TDBEdit;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    QueryDentistascd_especialidade: TSmallintField;
    QueryDentistasbanco: TStringField;
    QueryDentistasagencia: TStringField;
    QueryDentistascontaCorrente: TStringField;
    QueryDentistasdigitoCC: TStringField;
    QueryDentistaslg_recebimento_deposito: TBooleanField;
    DBCheckBox7: TDBCheckBox;
    ADOQueryBairro: TADOQuery;
    Label50: TLabel;
    DBEdit18: TDBEdit;
    Label51: TLabel;
    DBEdit19: TDBEdit;
    QueryEndDentistanumero: TStringField;
    QueryEndDentistacomplemento: TStringField;
    QueryDentistascd_tabelaQTUS: TIntegerField;
    GroupBox8: TGroupBox;
    DBLookupComboBox4: TDBLookupComboBox;
    TabelaQtUS: TADOQuery;
    dsTabelaQtUS: TDataSource;
    QueryDentistasexibir: TBooleanField;
    DBCheckBox9: TDBCheckBox;
    TabSheet4: TTabSheet;
    Button2: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    GroupBox9: TGroupBox;
    Image1: TImage;
    Label35: TLabel;
    DBEdit7: TDBEdit;
    Label52: TLabel;
    DBEdit20: TDBEdit;
    Label53: TLabel;
    DBEdit21: TDBEdit;
    QueryEndDentistaupdated: TDateTimeField;
    QueryEndDentistaidEndereco: TIntegerField;
    QueryEndDentistafone2: TStringField;
    QueryEndDentistafone3: TStringField;
    QueryDentistasdt_nascimento: TDateTimeField;
    Label54: TLabel;
    DBEdit22: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    QueryDentistascd_credenciador: TIntegerField;
    ADOQueryCredenciador: TADOQuery;
    DsCredenciador: TDataSource;
    Label55: TLabel;
    QueryDentistasNivel_Glosa: TStringField;
    Label56: TLabel;
    DBComboBox2: TDBComboBox;
    QueryDentistasDiasVenctoOrc: TIntegerField;
    Label57: TLabel;
    DBEdit23: TDBEdit;
    MainMenu1: TMainMenu;
    QueryDentistasautorizado_panoramica: TBooleanField;
    DBCheckBox8: TDBCheckBox;
    procedure QueryDentistasAfterPost(DataSet: TDataSet);
    procedure QueryDentistasAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPesquisaClinicaClick(Sender: TObject);
    procedure SpeedButtonExtornoClick(Sender: TObject);
    procedure QueryDentistasBeforePost(DataSet: TDataSet);
    procedure QueryDentistasAfterScroll(DataSet: TDataSet);
    procedure QueryEspXDentNewRecord(DataSet: TDataSet);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure QueryDentistasNewRecord(DataSet: TDataSet);
    procedure QueryEspXDentBeforePost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QueryEspXDentAfterPost(DataSet: TDataSet);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure QueryEndDentistaAfterPost(DataSet: TDataSet);
    procedure QueryEndDentistaBeforePost(DataSet: TDataSet);
    procedure DBEdit10Exit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure QueryEndDentistaNewRecord(DataSet: TDataSet);
    procedure QueryDentistasCodigo_ClinicaValidate(Sender: TField);
    procedure DBEditCodigoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure QueryEspXDentAfterInsert(DataSet: TDataSet);
    procedure ADOQueryContatoAfterScroll(DataSet: TDataSet);
    procedure ADOQueryContatoNewRecord(DataSet: TDataSet);
    procedure ADOQueryContatoBeforePost(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AtualizarNivelGlosa();
    procedure DBComboBox2Change(Sender: TObject);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDentistas: TFormDentistas;

implementation

uses PesquisaClinica, Senha, Fundo, udm, PesqDentista, TabPagtoXDentista,
  CadTabPagtoDentistaUS, CadTabPagtoDentistaProcUS, Math;

{$R *.DFM}

procedure TFormDentistas.QueryDentistasAfterPost(DataSet: TDataSet);
var Codigo: String;
begin
   if (QueryDentistascnes.IsNull) or (trim(QueryDentistascnes.AsString) = '') then
   begin
      ShowMessage('CNES deve ser preenchido');
      abort;
   end;
   Codigo := QueryDentistasCodigo.AsString;
   QueryDentistas.Close;
   QueryDentistas.sql[01] := Codigo;
   QueryDentistas.Open;
end;

procedure TFormDentistas.QueryDentistasAfterInsert(DataSet: TDataSet);
begin
     DBEditCodigo.SetFocus;
end;

procedure TFormDentistas.FormCreate(Sender: TObject);
begin
   PageControl1.ActivePageIndex := 0;
     Top := 65;
     Left := 112;
     QueryDentistas.Open;
     QueryEsp.Open;
     QueryCancelamento.Open;
     QueryCidade.Open;
     TabelaQtUS.Open;
     ADOQueryBairro.open;
     with QueryPermissoes do
       begin
         Close;
         ParamByName('Operador').asInteger        := Senha.Codigo_Operador;
         ParamByName('Grupo').asInteger           := 1;
         ParamByName('Procedimento').asInteger    := 11;
         ParamByName('Subprocedimento').asInteger := 111;
         Open;
         if QueryPermissoesSomente_Leitura.asBoolean then
           DBNavigatorDentistas.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
       end;
end;

procedure TFormDentistas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

     QueryDentistas.Close;
     QueryPermissoes.Close;
     action := cafree;
end;

procedure TFormDentistas.DBEditNomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if  Key  = VK_RETURN then
        Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFormDentistas.BitBtnPesquisaClinicaClick(Sender: TObject);
begin

   Application.CreateForm(TFormPesquisaClinica, FormPesquisaClinica);
   FormPesquisaClinica.ShowModal;
   if Application.MessageBox('Confirma altera��o da Cl�nica?','Confirma��o',MB_OKCANCEL) = IDOK then
   begin
      QueryDentistas.Edit;
      QueryDentistasCodigo_Clinica.asInteger := FormPesquisaClinica.QueryClinicasCodigo.asInteger;
      EditNmClinica.Text := FormPesquisaClinica.QueryClinicasDescricao.AsString;
      DBEditClinica.SetFocus;
   end;
   FormPesquisaClinica.Query50.Close;
   FormPesquisaClinica.QueryClinicas.Close;
   FormPesquisaClinica.Free;
end;

procedure TFormDentistas.SpeedButtonExtornoClick(Sender: TObject);
begin
  if QueryDentistas.State in [dsbrowse] then
    if MessageDlg('Confirma reativa��o do Dentista ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        QueryDentistas.Edit;
        QueryDentistasData_Exclusao.AsString := '';
        QueryDentistascd_motivo_exclusao.AsString := '';
      end;
end;

procedure TFormDentistas.QueryDentistasBeforePost(DataSet: TDataSet);
begin
   if not QueryDentistasData_Exclusao.IsNull then
   begin
      if (QueryDentistascd_motivo_exclusao.IsNull) then
      begin
         ShowMessage('Para exclus�o � necess�rio informar o moitvo da exclus�o');
         abort;
      end;
      if QueryDentistasData_Exclusao.AsDateTime < QueryDentistasdt_inclusao.AsDateTime then
      begin
         ShowMessage('A Data de Exclus�o n�o pode ser menor do que a data de Inclus�o');
         abort;
      end
   end;
      if(dm.GetParam('UFNVPD') = 'S') then // indica que usa formula nova para valoriza��o de dentista
         if QueryDentistascd_tabelaQTUS.IsNull then
         begin
            ShowMessage('Informe a tabela de refer�ncia US para valoriza��o dos or�amentos');
            abort;
         end
         else if not TabelaQtUS.FieldByName('dtfim').IsNull then
         begin
            showMessage('Tabele de referencia US n�o pode ser usada, selecione outra tabela ');
            abort;
         end;


   if QueryDentistasData_Exclusao.IsNull and (not QueryDentistascd_motivo_exclusao.IsNull) then
   begin
      ShowMessage('Para exclus�o � necess�rio informar a data  da exclus�o');
      abort;
   end;
  ValidaCampo(QueryDentistas,'nome','Nome Dentista',true);
  ValidaCampo(QueryDentistas,'Codigo_Clinica','Cl�nica',true);
  ValidaCampo(QueryDentistas,'cro','C.R.O',true);
  ValidaCampo(QueryDentistas,'cd_credenciador','Credenciador',true);  
  //msn 06/10/2011 Taciano God�i de Souza diz
  //enio.. acho que o importante � ser num�rico.. a quantidade nao eh importante..
  //if ((length(QueryDentistascro.AsString) <> 5) or (length(QueryDentistascro.AsString) <> 6)) or (not E_Numerico(QueryDentistascro.AsString)) then
  if (not E_Numerico(QueryDentistascro.AsString)) then
  begin
     ShowMessage('Aten��o o c�digo C.R.O deve ter obrigatoriamente 5 ou 6 d�gitos num�ricos!');
     abort;
  end;
  if QueryDentistasCodigo_Clinica.AsInteger = 46 then
  begin
     if not QueryDentistasDesconto.IsNull then
     begin
        ShowMessage('N�o � permitido preencher desconto para para dentistas da cl�nica ' + EditNmClinica.Text);
        abort;
     end;
  end;
  if dm.execmd('select ExigeANS from clinicas where codigo   = ''' + QueryDentistasCodigo_Clinica.AsString  + '''','ExigeANS') = 'True' then
  begin
     if QueryDentistasCIC.IsNull or (QueryDentistasCIC.AsString =  '') or (copy(QueryDentistasCIC.AsString,1,1) =  ' ') or (not ValidaCPF(QueryDentistasCIC.AsString)) then
     begin
        ShowMessage('O Campo CPF deve ser preenchido(Conforme parametriza��o no cadastro da Cl�nica ' + EditNmClinica.text + ')');
        abort;
     end;
     if QueryDentistasRG.IsNull or (QueryDentistasRG.AsString = '') or (copy(QueryDentistasRG.AsString,1,1) = ' ') then
     begin
        ShowMessage('O Campo RG deve ser preenchido(Conforme parametriza��o no cadastro da Cl�nica ' + EditNmClinica.text + ')');
        abort;
     end;
     if QueryDentistasINSS.IsNull or (QueryDentistasINSS.AsString = '') or (copy(QueryDentistasINSS.AsString,1,1) = ' ') or (length(QueryDentistasINSS.AsString) <> 11)  then
     begin
        ShowMessage('O Campo INSS deve ser preenchido com 11 d�gitos (Conforme parametriza��o no cadastro da Cl�nica ' + EditNmClinica.text + ')');
        abort;
     end;
     if QueryDentistasDesconto.AsInteger <= 0 then
     begin
        ShowMessage('O Campo Desconto deve ser preenchido(Conforme parametriza��o no cadastro da Cl�nica ' + EditNmClinica.text + ')');
        abort;
     end;

  end;
  QueryDentistascd_op_alter.AsInteger := senha.Codigo_Operador;
end;

procedure TFormDentistas.QueryDentistasAfterScroll(DataSet: TDataSet);
var CaminhoFoto,Destino : string;
begin
  AtualizarNivelGlosa;
  QueryEspXDent.Close;
  QueryEndDentista.Close;
  ADOQueryContato.close;
  if not QueryDentistasCodigo.IsNull then
  begin
     CaminhoFoto := dm.GetParam('PATIMG') + '\Dentista\';
     if FileExists(CaminhoFoto + Lpad(QueryDentistasCodigo.AsString,9,'0') + '.jpg') then
     begin
        Destino := CaminhoFoto + Lpad(QueryDentistasCodigo.AsString,9,'0') + '.jpg';
        image1.Picture.LoadFromFile(CaminhoFoto + Lpad(QueryDentistasCodigo.AsString,9,'0') + '.jpg');
     end
     else
        image1.Picture := nil;
     QueryEspXDent.sql[01] := QueryDentistasCodigo.AsString;
     QueryEspXDent.Open;
     QueryEndDentista.sql[01] := QueryDentistasCodigo.AsString;
     QueryEndDentista.Open;
     ADOQueryContato.SQL[01] := QueryDentistasCodigo.AsString;
     ADOQueryContato.open;
     ADOQueryContato.Last;
     if not QueryDentistasexibir.AsBoolean then
     begin
        DBEditNome.Font.Color := clRed;
        DBEditNome.Font.Style := [fsbold];
     end
     else
     begin
        DBEditNome.Font.Color := clBlack;
        DBEditNome.Font.Style := [];
     end;

  end;
  EditNmClinica.Text := dm.ExecutaComando('select descricao a from clinicas where codigo = ''' + QueryDentistasCodigo_Clinica.AsString + '''','a');
  EditAlter.text := dm.execmd('select apelido n from operador where codigo = ''' + QueryDentistasCd_op_alter.AsString + '''','n');

end;

procedure TFormDentistas.QueryEspXDentNewRecord(DataSet: TDataSet);
begin
   QueryEspXDentcd_dentista.AsInteger := QueryDentistasCodigo.asInteger;
end;

procedure TFormDentistas.BitBtnPesquisarClick(Sender: TObject);
begin
   FmPesqDentista := TFmPesqDentista.create(self);
   FmPesqDentista.ShowModal;
   if FmPesqDentista.tag = 1 then
   begin
      QueryDentistas.close;
      QueryDentistas.sql[1] := FmPesqDentista.Query1.fieldbyname('codigo').AsString;
      QueryDentistas.open;
   end;
   FmPesqDentista.Free;
end;

procedure TFormDentistas.QueryDentistasNewRecord(DataSet: TDataSet);
begin
   QueryDentistasCodigo.AsString := dm.executacomando('SELECT MAX(CODIGO) + 1 q FROM DENTISTA','q');
   QueryDentistasdt_inclusao.AsString := dm.GetDataSrv;
   QueryDentistaslanca_pkg_orcamento.AsString := 'S';
   QueryDentistasexibir.AsBoolean := true;
   DBEditNome.Setfocus;

end;

procedure TFormDentistas.QueryEspXDentBeforePost(DataSet: TDataSet);
begin
//   QueryEspXDentcd_especialidade.AsInteger; := QueryEspcd_especialidade.asInteger;

   if (QueryEspXDentPrincipal.AsString <> 'S') and
      (QueryEspXDentPrincipal.AsString <> 'N' ) then
   begin
      ShowMessage('Se esta especialidade for a principal informe "S" sen�o informe "N"');
      Abort;
   end;
   ValidaCampo(QueryEspXDent,'Anoformacao','Ano de Forma��o',true);
   if QueryEspXDentPrincipal.AsString = 'S' then
   begin
      dm.executacomando('update esp_x_dentista set principal = ''N'' where cd_dentista = ' +
      QueryEspXDentcd_dentista.AsString + ' and cd_especialidade <> ' +
      QueryEspXDentcd_especialidade.AsString);
   end
   else
   if dm.executacomando('select count(*) q from esp_x_dentista where principal = ''S'' and cd_dentista = ' +
      QueryEspXDentcd_dentista.AsString,'q') = '0' then
   begin
      ShowMessage('N�o existe especialidade principal cadastrada, cadastre primeiro a especialidade principal');
     Abort;
   end;
   
end;

procedure TFormDentistas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   key := upcase(key);
end;

procedure TFormDentistas.QueryEspXDentAfterPost(DataSet: TDataSet);
begin
   QueryEspXDent.close;
   QueryEspXDent.Open;
   QueryDentistas.close;
   QueryDentistas.Open;

   if dm.executacomando('select count(*) q from esp_x_dentista where principal = ''S'' and cd_dentista = ' +
      QueryEspXDentcd_dentista.AsString,'q') = '0' then
      ShowMessage('ATEN��O, n�o existe especialdade principal para este Dentista, verifique');

end;

procedure TFormDentistas.DBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
   key := upcase(key);
end;

procedure TFormDentistas.QueryEndDentistaAfterPost(DataSet: TDataSet);
begin
   QueryEndDentista.close;
   QueryEndDentista.Open;
   QueryDentistas.close;
   QueryDentistas.Open;
   if QueryDentistas.State <> Dsedit then
      QueryDentistas.edit;
   QueryDentistascd_op_alter.AsInteger := senha.Codigo_Operador;
   QueryDentistas.post;   
end;

procedure TFormDentistas.QueryEndDentistaBeforePost(DataSet: TDataSet);
begin
   ValidaCampo(QueryEndDentista,'tp_endereco','Tipo de Endere�o(Comercial ou Residencial)',False);
   ValidaCampo(QueryEndDentista,'ds_endereco','T�tulo do Endere�o',true);
   ValidaCampo(QueryEndDentista,'logradouro','Logradouro',true);
end;

procedure TFormDentistas.DBEdit10Exit(Sender: TObject);
begin
   if QueryEndDentista.state in [DsEdit,DsInsert] then
      QueryEndDentista.Post;
end;

procedure TFormDentistas.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   if QueryDentistas.state in [DsEdit,DsInsert] then
   begin
      ShowMessage('Os dados foram alterados, por�m n�o foram salvos, salve ou cancele as altera��es para poder sair');
      CanClose := False;
   end;
   if QueryEspXDent.state in [DsEdit,DsInsert] then
   begin
      ShowMessage('Os dados referente a especialidade do dentista foram alterados, por�m n�o foram salvos, salve ou cancele as altera��es para poder sair');
      CanClose := False;
   end;
   if QueryEndDentista.state in [DsEdit,DsInsert] then
   begin
      ShowMessage('Os dados referente aos endere�os do dentista foram alterados, por�m n�o foram salvos, salve ou cancele as altera��es para poder sair');
      CanClose := False;
   end;


end;

procedure TFormDentistas.QueryEndDentistaNewRecord(DataSet: TDataSet);
begin
   QueryEndDentistacd_dentista.AsInteger := QueryDentistasCodigo.AsInteger;
   QueryEndDentistacd_cidade.AsInteger := 1;
   QueryEndDentistaseg.AsBoolean := false;
   QueryEndDentistater.AsBoolean := false;
   QueryEndDentistaqua.AsBoolean := false;
   QueryEndDentistaqui.AsBoolean := false;
   QueryEndDentistasex.AsBoolean := false;
   QueryEndDentistasab.AsBoolean := false;
   DBEdit11.Setfocus;
end;

procedure TFormDentistas.QueryDentistasCodigo_ClinicaValidate(
  Sender: TField);
begin
   EditNmClinica.Text := dm.ExecutaComando('select descricao a from clinicas where codigo = ''' + QueryDentistasCodigo_Clinica.AsString + '''','a');
   if EditNmClinica.Text = '' then
   begin
      ShowMessage('C�digo de Cl�nica n�o localizado !');
      DBEditClinica.Setfocus;
   end;
end;

procedure TFormDentistas.DBEditCodigoExit(Sender: TObject);
Var VCd_dentista : String;
begin
  VCd_dentista := DBEditCodigo.Text;;
  if dm.ExecutaComando('select count(*) q from dentista where codigo = ''' + VCd_dentista + '''','q') <> '0' then
  begin
     QueryDentistas.Close;
     QueryDentistas.sql[1] := VCd_dentista;
     QueryDentistas.Open;
  end;
end;

procedure TFormDentistas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = vk_f1 then
      BitBtnPesquisarClick(Sender);
end;

procedure TFormDentistas.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
   key := So_inteiro(key);
end;

procedure TFormDentistas.Button1Click(Sender: TObject);
begin

   if QueryDentistas.Bof and QueryDentistas.eof then
     exit;
   if(dm.GetParam('UFNVPD') = 'S') then // indica que usa formula nova para valoriza��o de dentista
   begin
      FmCadTabPagDentProcUS := TFmCadTabPagDentProcUS.create(self);
      FmCadTabPagDentProcUS.ADOQuery1.SQL[1] := QueryDentistasCodigo.AsString;
      FmCadTabPagDentProcUS.ADOQuery1.Open;
      FmCadTabPagDentProcUS.cdDentistaAux := QueryDentistasCodigo.AsInteger;
      FmCadTabPagDentProcUS.ShowModal;
      FmCadTabPagDentProcUS.Free;
      exit;
      {FmCadTabPagtoDentistaUS := TFmCadTabPagtoDentistaUS.create(self);
      FmCadTabPagtoDentistaUS.ADOQuery1.SQL[1] := QueryDentistasCodigo.AsString;
      FmCadTabPagtoDentistaUS.ADOQuery1.Open;
      FmCadTabPagtoDentistaUS.cdDentistaAux := QueryDentistasCodigo.AsInteger;
      FmCadTabPagtoDentistaUS.ShowModal;
      FmCadTabPagtoDentistaUS.Free;
      exit;}
   end;

   FmTabPagtoDentista := TFmTabPagtoDentista.create(self);
   FmTabPagtoDentista.CdDentista := QueryDentistasCodigo.AsInteger;
   FmTabPagtoDentista.ADOQuery1.SQL[1] := QueryDentistasCodigo.AsString;
   FmTabPagtoDentista.ADOQuery1.open;
   FmTabPagtoDentista.ShowModal;
   FmTabPagtoDentista.free;
end;

procedure TFormDentistas.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  key := so_numero(key);
end;

procedure TFormDentistas.QueryEspXDentAfterInsert(DataSet: TDataSet);
begin
   QueryDentistas.close;
   QueryDentistas.Open;

end;

procedure TFormDentistas.ADOQueryContatoAfterScroll(DataSet: TDataSet);
begin
  if not(ADOQueryContato.Bof and ADOQueryContato.Eof) then
     EditNomeOperador.Text := dm.execmd('select apelido from operador where codigo = ' + ADOQueryContato.FieldByName('cd_operador').AsString,'apelido')
  else
  EditNomeOperador.Text := '';

end;

procedure TFormDentistas.ADOQueryContatoNewRecord(DataSet: TDataSet);
begin
   AdoQueryContato.fieldByName('cd_operador').AsInteger := senha.Codigo_Operador;
   AdoQueryContato.fieldByName('cd_dentista').AsInteger := QueryDentistasCodigo.AsInteger;
   AdoQueryContato.fieldByName('data').AsDateTime := dm.now;
   DBEditDataContato.SetFocus;

end;

procedure TFormDentistas.ADOQueryContatoBeforePost(DataSet: TDataSet);
begin
   AdoQueryContato.fieldByName('cd_operador').AsInteger := senha.Codigo_Operador;
   ValidaCampo(ADOQueryContato,'ds_contato','Descri��o',true);
   ValidaCampo(ADOQueryContato,'data','Data',true);
end;

procedure TFormDentistas.Button2Click(Sender: TObject);
var CaminhoFoto,Destino : string;
begin
    if OpenPictureDialog1.Execute then
    begin
       CaminhoFoto := dm.GetParam('PATIMG') + '\dentista\';
       Destino := CaminhoFoto + Lpad(QueryDentistasCodigo.AsString,9,'0') + '.jpg';
       if CopyFile(PChar(OpenPictureDialog1.FileName), PChar(Destino), false) then
          Image1.Picture.LoadFromFile(Destino);
      end;

end;

procedure TFormDentistas.FormShow(Sender: TObject);
begin
   ADOQueryCredenciador.Close;
   ADOQueryCredenciador.Open;   
end;

procedure TFormDentistas.AtualizarNivelGlosa;
var
  cor:string;
begin
  cor:=DBComboBox2.Text;
  if cor<>'' then
  begin
    If cor='VERDE' then
    begin
      DBComboBox2.Color:=clGreen;
      DBComboBox2.Font.Color:=clWhite;
    end;
    If cor='AMARELO' then
    begin
      DBComboBox2.Color:=clYellow;
      DBComboBox2.Font.Color:=clBlack;
    end;
    If cor='VERMELHO' then
    begin
      DBComboBox2.Color:=clRed;
      DBComboBox2.Font.Color:=clWhite;
    end;
  end;

end;

procedure TFormDentistas.DBComboBox2Change(Sender: TObject);
begin
AtualizarNivelGlosa;
end;

procedure TFormDentistas.DBComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key<>#13) or (Key <>#40) or (Key <>#40) then
    Key:=#0;
end;

end.
