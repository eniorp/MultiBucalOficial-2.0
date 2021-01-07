{ Sistema .........: Controle de Assistência Odontológica                      }
{ Programa ........: Cadastros Proteticos                                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Proteticos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Buttons, Grids, DBGrids, Mask, ExtCtrls, Db, DBTables,enio,
  ADODB;

type
  TFormProteticos = class(TForm)
    Panel2: TPanel;
    Panel8: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    QueryProteticos: TQuery;
    DataSourceProteticos: TDataSource;
    BitBtnPesquisar: TBitBtn;
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
    Label19: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label10: TLabel;
    DBEditTelefone1: TDBEdit;
    DBEditFax: TDBEdit;
    DBEditExclusao: TDBEdit;
    DBEditemail: TDBEdit;
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
    Label8: TLabel;
    DBEditTelefone2: TDBEdit;
    Label11: TLabel;
    DBEditCelular: TDBEdit;
    DBLookupComboBoxEspecialidade: TDBLookupComboBox;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtnSair: TBitBtn;
    Panel5: TPanel;
    DBNavigatorProteticos: TDBNavigator;
    QueryProteticosCodigo: TIntegerField;
    QueryProteticosNome: TStringField;
    QueryProteticosEndereco_Comercial: TStringField;
    QueryProteticosBairro_Comercial: TStringField;
    QueryProteticosCep_Comercial: TStringField;
    QueryProteticosCidade_Comercial: TStringField;
    QueryProteticosEstado_Comercial: TStringField;
    QueryProteticosEndereco_Residencial: TStringField;
    QueryProteticosBairro_Residencial: TStringField;
    QueryProteticosCep_Residencial: TStringField;
    QueryProteticosCidade_Residencial: TStringField;
    QueryProteticosEstado_Residencial: TStringField;
    QueryProteticosFone1: TStringField;
    QueryProteticosFone2: TStringField;
    QueryProteticosFax: TStringField;
    QueryProteticosCelular: TStringField;
    QueryProteticosemail: TStringField;
    QueryProteticosEspecialidade: TSmallintField;
    QueryProteticosData_Exclusao: TDateTimeField;
    QueryPermissoes: TQuery;
    QueryPermissoesCodigo_Operador: TSmallintField;
    QueryPermissoesCodigo_Grupo: TSmallintField;
    QueryPermissoesCodigo_Procedimento: TSmallintField;
    QueryPermissoesCodigo_SubProcedimento: TSmallintField;
    QueryPermissoesSomente_Leitura: TBooleanField;
    Label12: TLabel;
    DBEditClinica: TDBEdit;
    BitBtnPesquisaClinica: TBitBtn;
    QueryProteticosCodigo_Clinica: TIntegerField;
    SpeedButtonExtorno: TSpeedButton;
    Label13: TLabel;
    DBEditAcrecimo: TDBEdit;
    QueryProteticosAcrescimo_NF: TIntegerField;
    Label22: TLabel;
    DBEditDesconto: TDBEdit;
    QueryProteticosDesconto: TIntegerField;
    DBEditCIC: TDBEdit;
    DBEditINSS: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    QueryProteticosCic: TStringField;
    QueryProteticosInss: TStringField;
    DBEditEspecialidade: TDBEdit;
    Label25: TLabel;
    Label42: TLabel;
    DBEdit6: TDBEdit;
    QueryProteticoscnes: TStringField;
    Button1: TButton;
    QueryProteticosdt_inclusao: TDateTimeField;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    Panel6: TPanel;
    Button3: TButton;
    QueryProteticosbanco: TStringField;
    QueryProteticosagencia: TStringField;
    QueryProteticoscontaCorrente: TStringField;
    QueryProteticosdigitoCC: TStringField;
    QueryProteticoslg_recebimento_deposito: TBooleanField;
    TabelaQtUS: TADOQuery;
    dsTabelaQtUS: TDataSource;
    GroupBox8: TGroupBox;
    DBLookupComboBox4: TDBLookupComboBox;
    QueryProteticoscd_tabelaQTUS: TIntegerField;
    procedure QueryProteticosAfterPost(DataSet: TDataSet);
    procedure QueryProteticosAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPesquisaClinicaClick(Sender: TObject);
    procedure SpeedButtonExtornoClick(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure QueryProteticosBeforePost(DataSet: TDataSet);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    utilizaFormulaNovaPagtoProtetico : boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProteticos: TFormProteticos;

implementation

uses Senha, PesquisaClinica, PesqProtetico, udm, TabPagtoXProtetico,
  FmDadosBancariosProtetico, CadTabPagtoProteticoProcUS;

{$R *.DFM}

procedure TFormProteticos.QueryProteticosAfterPost(DataSet: TDataSet);
var Codigo: Integer;
begin
     with QueryProteticos do
       begin
         DisableControls;
         Codigo := QueryProteticosCodigo.asInteger;
         Close;
         Open;
         Locate('Codigo', Codigo, [loCaseInsensitive]);
         EnableControls;
       end;
end;

procedure TFormProteticos.QueryProteticosAfterInsert(DataSet: TDataSet);
begin
     DBEditCodigo.SetFocus;
end;

procedure TFormProteticos.FormCreate(Sender: TObject);
begin
    utilizaFormulaNovaPagtoProtetico :=(dm.GetParam('UFNVPP') = 'S'); // indica que usa formula nova para valorização de protetico
     Top := 65;
     Left := 112;
     QueryProteticos.Open;
     with QueryPermissoes do
       begin
         Close;
         ParamByName('Operador').asInteger        := Senha.Codigo_Operador;
         ParamByName('Grupo').asInteger           := 1;
         ParamByName('Procedimento').asInteger    := 12;
         ParamByName('Subprocedimento').asInteger := 121;
         Open;
         if QueryPermissoesSomente_Leitura.asBoolean then
           DBNavigatorProteticos.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
       end;
end;

procedure TFormProteticos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryProteticos.Close;
     QueryPermissoes.close;
     action := cafree;
end;

procedure TFormProteticos.DBEditNomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormProteticos.BitBtnPesquisaClinicaClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaClinica, FormPesquisaClinica);
     FormPesquisaClinica.ShowModal;

     if QueryProteticos.state in [dsEdit, dsInsert] then
        begin
          QueryProteticosCodigo_Clinica.asInteger := PesquisaClinica.FormPesquisaClinica.QueryClinicasCodigo.asInteger;
          DBEditClinica.SetFocus;
        end;
     FormPesquisaClinica.Query50.Close;
     FormPesquisaClinica.QueryClinicas.Close;
     FormPesquisaClinica.Free;
end;

procedure TFormProteticos.SpeedButtonExtornoClick(Sender: TObject);
begin
  if QueryProteticos.State in [dsbrowse] then
    if MessageDlg('Confirma reativação do Protético ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        QueryProteticos.Edit;
        QueryProteticosData_Exclusao.AsString := '';
      end;
end;

procedure TFormProteticos.BitBtnPesquisarClick(Sender: TObject);
begin
   FmPesqProtetico := TFmPesqProtetico.create(self);
   FmPesqProtetico.showModal;

   if FmPesqProtetico.tag = 1  then
   begin
     QueryProteticos.Close;
     QueryProteticos.sql[1] := ' where codigo  = ' + FmPesqProtetico.ADOQuery1.FieldByName('codigo').AsString;
     QueryProteticos.Open;
   end;
   FmPesqProtetico.free;

end;

procedure TFormProteticos.QueryProteticosBeforePost(DataSet: TDataSet);
begin
  if dm.execmd('select ExigeANS from clinicas where codigo = ''' + QueryProteticosCodigo_Clinica.AsString  + '''','ExigeANS') = 'True' then
  begin
     if QueryProteticosCIC.IsNull or (QueryProteticosCIC.AsString =  '') or (copy(QueryProteticosCIC.AsString,1,1) =  ' ') then
     begin
        ShowMessage('O Campo CIC deve ser preenchido(Conforme parametrização no cadastro da Clínica ' + DBEditClinica.text + ')');
        abort;
     end;
//     if QueryProteticosRG.IsNull or (QueryProteticosRG.AsString = '') or (copy(QueryProteticosRG.AsString,1,1) = ' ') then
//     begin
//        ShowMessage('O Campo RG deve ser preenchido(Conforme parametrização no cadastro da Clínica ' + EditNmClinica.text);
//        abort;
//     end;
     if QueryProteticosINSS.IsNull or (QueryProteticosINSS.AsString = '') or (copy(QueryProteticosINSS.AsString,1,1) = ' ') then
     begin
        ShowMessage('O Campo INSS deve ser preenchido(Conforme parametrização no cadastro da Clínica ' + DBEditClinica.text + ')');
        abort;
     end;
  end;
  if(dm.GetParam('UFNVPp') = 'S') then // indica que usa formula nova para valorização de protetico
  begin
    if QueryProteticoscd_tabelaQTUS.IsNull then
     begin
        ShowMessage('Informe a tabela de referência US para valorização dos orçamentos');
        abort;
     end
     else if not TabelaQtUS.FieldByName('dtfim').IsNull then
     begin
        showMessage('Tabele de referencia US não pode ser usada, selecione outra tabela ');
        abort;
     end;
  end;


end;

procedure TFormProteticos.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
   key := So_inteiro(key);
end;

procedure TFormProteticos.Button1Click(Sender: TObject);
begin
   if QueryProteticos.Bof and QueryProteticos.eof then
     exit;
   if utilizaFormulaNovaPagtoProtetico then
   begin
      FmCadtabPagProteticoProcUS := TFmCadtabPagProteticoProcUS.create(self);
      FmCadtabPagProteticoProcUS.ADOQuery1.SQL[1] := QueryProteticosCodigo.AsString;
      FmCadtabPagProteticoProcUS.ADOQuery1.Open;

      FmCadtabPagProteticoProcUS.cdProteticoAux := QueryProteticosCodigo.AsInteger;
      FmCadtabPagProteticoProcUS.ShowModal;
      FmCadtabPagProteticoProcUS.free;


   end
   else
   begin
      FmTabPagtoProtetico := TFmTabPagtoProtetico.create(self);
      FmTabPagtoProtetico.CdProtetico := QueryProteticosCodigo.AsInteger;
      FmTabPagtoProtetico.ADOQuery1.SQL[1] := QueryProteticosCodigo.AsString;
      FmTabPagtoProtetico.ADOQuery1.open;
      FmTabPagtoProtetico.ShowModal;
      FmTabPagtoProtetico.free;
   end;
end;

procedure TFormProteticos.Button3Click(Sender: TObject);
begin
   FmDadosBancProt := TFmDadosBancProt.create(self);
   FmDadosBancProt.ShowModal;
   FmDadosBancProt.free;
end;

procedure TFormProteticos.FormShow(Sender: TObject);
begin
   TabelaQtUS.Open;
end;

end.
