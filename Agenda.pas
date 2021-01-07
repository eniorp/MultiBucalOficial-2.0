unit Agenda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, Grids, DBGrids, ExtCtrls, Db, DBTables, Buttons;
type
  TFormAgenda = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridContato: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    DBNavigatorAgenda: TDBNavigator;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    DBEditDataContato: TDBEdit;
    DBEditHoraContato: TDBEdit;
    DBEditDataAgenda: TDBEdit;
    DBMemoTexto: TDBMemo;
    QueryContato: TQuery;
    QueryOperador: TQuery;
    QueryOperadorCodigo: TIntegerField;
    QueryOperadorNome: TStringField;
    QueryOperadorApelido: TStringField;
    QueryOperadorEndereco: TStringField;
    QueryOperadorBairro: TStringField;
    QueryOperadorCidade: TStringField;
    QueryOperadorUF: TStringField;
    QueryOperadorCep: TStringField;
    QueryOperadorFone: TStringField;
    QueryOperadorSenha: TStringField;
    QueryTipoContato: TQuery;
    QueryTipoContatoCodigo: TIntegerField;
    QueryTipoContatoDescricao: TStringField;
    QueryContratanteAuxiliar: TQuery;
    QueryContratanteAuxiliarCodigo: TIntegerField;
    QueryContratanteAuxiliarNome: TStringField;
    DataSourceContato: TDataSource;
    DBEditNomeOperador: TDBEdit;
    BitBtnSair: TBitBtn;
    DBLookupComboBoxTipo: TDBLookupComboBox;
    DataSourceTipoContato: TDataSource;
    Label1: TLabel;
    DBEditCodigoContratante: TDBEdit;
    Label2: TLabel;
    BitBtnPesquisar: TBitBtn;
    DataSourceContratante: TDataSource;
    QueryUsuarios: TQuery;
    DBEditDigito: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryContatoNome: TStringField;
    DBEditNome: TDBEdit;
    QueryContatoIncremento: TIntegerField;
    QueryContatoData_Contato: TDateTimeField;
    QueryContatoHora_Contato: TDateTimeField;
    QueryContatoCodigo_Contratante: TIntegerField;
    QueryContatoDigito_Usuario: TSmallintField;
    QueryContatoData_Agenda: TDateTimeField;
    QueryContatoOperador: TIntegerField;
    QueryContatoTexto_Contato: TMemoField;
    QueryContatoTipo: TSmallintField;
    QueryContatoNome_Operador: TStringField;
    QueryContatoDescricao_Tipo: TStringField;
    BitBtnProcura: TBitBtn;
    GroupBoxPesquisa: TGroupBox;
    MaskEditData: TMaskEdit;
    Label5: TLabel;
    QueryContatoHora_Agenda: TDateTimeField;
    BitBtnRelatorio: TBitBtn;
    Label6: TLabel;
    DBEditHoraSaida: TDBEdit;
    QueryContatosAux: TQuery;
    Label39: TLabel;
    QueryContatoHora_Alteracao: TDateTimeField;
    QueryContatoData_Alteracao: TDateTimeField;
    QueryContatoOperador_Alteracao: TIntegerField;
    QueryContatoLigacao: TIntegerField;
    DBLookupComboBoxTp_Ligacao: TDBLookupComboBox;
    QueryTipo_Ligacao: TQuery;
    QueryTipo_LigacaoCodigo: TIntegerField;
    QueryTipo_LigacaoDescricao: TStringField;
    DataSource_Tipo_Ligacao: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryContatoAfterInsert(DataSet: TDataSet);
    procedure DBEditDigitoExit(Sender: TObject);
    procedure QueryContatoCalcFields(DataSet: TDataSet);
    procedure DBEditCodigoContratanteKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure BitBtnProcuraClick(Sender: TObject);
    procedure QueryContatoAfterPost(DataSet: TDataSet);
    procedure QueryContatoBeforePost(DataSet: TDataSet);
    procedure BitBtnRelatorioClick(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure MaskEditDataExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAgenda: TFormAgenda;
  Data_Atual : TDate;

implementation

{$R *.DFM}

uses Senha, RelAgenda, PesquisaUsuario, udm;

procedure TFormAgenda.FormCreate(Sender: TObject);
begin
     Top := 90;
     Left := 12;
     Data_Atual := dm.Date;
     QueryOperador.Open;
     QueryContratanteAuxiliar.Open;
     QueryTipoContato.Open;
     QueryTipo_Ligacao.Open;

     with QueryContato do
       begin
         Close;
         ParamByName('Agenda').asDateTime := Data_Atual;
         Open;
       end;
end;

procedure TFormAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     QueryOperador.Close;
     QueryContratanteAuxiliar.Close;
     QueryTipoContato.Close;
     QueryContato.Close;
     QueryUsuarios.Close;
     QueryTipo_Ligacao.Close;     
end;

procedure TFormAgenda.QueryContatoAfterInsert(DataSet: TDataSet);
begin
     QueryContatoData_Contato.asDateTime := dm.Date;
     QueryContatoHora_Contato.asDateTime := dm.Now;
     QueryContatoOperador.asInteger := Senha.Codigo_Operador;
     QueryContatoHora_Agenda.AsDateTime := Time;
     DBEditCodigoContratante.SetFocus;
end;

procedure TFormAgenda.DBEditDigitoExit(Sender: TObject);
begin
     with QueryUsuarios do
       begin
         Close;
         ParamByName('Codigo').asInteger := QueryContatoCodigo_Contratante.asInteger;
         if QueryContatoDigito_Usuario.asString = '' then
            ParamByName('Digito').asInteger := 0
         else
            ParamByName('Digito').asInteger := QueryContatoDigito_Usuario.asInteger;
         Open;
         if RecordCount = 0 then
            begin
              ShowMessage('Usuário Não Cadastrado !!!');
              DBEditCodigoContratante.SetFocus;
              exit;
            end;
         DBEditNome.Text := QueryUsuariosNome.asString;
       end;
end;

procedure TFormAgenda.QueryContatoCalcFields(DataSet: TDataSet);
begin
     with QueryUsuarios do
       begin
         Close;
         ParamByName('Codigo').asInteger := QueryContatoCodigo_Contratante.asInteger;
         if QueryContatoDigito_Usuario.asString = '' then
            ParamByName('Digito').asInteger := 0
         else
            ParamByName('Digito').asInteger := QueryContatoDigito_Usuario.asInteger;
         Open;
         QueryContatoNome.asString := QueryUsuariosNome.asString;
       end;
end;

procedure TFormAgenda.DBEditCodigoContratanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
         VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
         VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormAgenda.BitBtnProcuraClick(Sender: TObject);
begin
     GroupBoxPesquisa.Visible := True;
     MaskEditData.Text := '';
     MaskEditData.SetFocus;
end;

procedure TFormAgenda.QueryContatoAfterPost(DataSet: TDataSet);
begin
     with QueryContato do
       begin
         Close;
         Open;
         Last;
       end;
end;

procedure TFormAgenda.QueryContatoBeforePost(DataSet: TDataSet);
begin
   if QueryContatoDigito_Usuario.AsString = '' then
     begin
       showmessage('É obrigatório o preenchimento do campo Dig. (Dígito do Usuário) !');
       DBEditDigito.SetFocus;
       Abort;
       exit;
     end;
   if QueryContatoTipo.AsString = '' then
     begin
       showmessage('É obrigatório o preenchimento do campo Tipo !');
       DBLookupComboBoxTipo.SetFocus;
       Abort;
       exit;
     end;
   if ((QueryContatoTipo.AsInteger = 2) or (QueryContatoTipo.AsInteger = 4)) then begin
      with QueryContatosAux do
        begin
          close;
          ParamByName('Data').asDateTime := QueryContatoData_Agenda.asDateTime;
          ParamByName('Hora').asString   := TimeToStr(QueryContatoHora_Agenda.asDateTime);
          open;
          if recordcount <> 0 then
            begin
              showmessage('Já existe uma Perícia ou Prevenção agendada para esse horário !');
              Abort;
              exit;
            end;
        end;
   end;
end;

procedure TFormAgenda.BitBtnRelatorioClick(Sender: TObject);
begin
     Application.CreateForm(TFormRelAgenda, FormRelAgenda);
     FormRelAgenda.ShowModal;
     FormRelAgenda.Free;
end;

procedure TFormAgenda.BitBtnPesquisarClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
     FormPesquisaUsuarios.ShowModal;
     QueryContatoCodigo_Contratante.AsInteger := PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo.asInteger;
     QueryContatoDigito_Usuario.AsInteger := PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosDigito.asInteger;
     DBEditDataAgenda.SetFocus; 
     FormPesquisaUsuarios.QueryUsuarios.close;
     FormPesquisaUsuarios.Free;
end;

procedure TFormAgenda.MaskEditDataExit(Sender: TObject);
begin
     Data_Atual := StrToDate(MaskEditData.Text);
     with QueryContato do
       begin
         Close;
         ParamByName('Agenda').asDateTime := Data_Atual;
         Open;
       end;
     GroupBoxPesquisa.Visible := False;
     DBGridContato.SetFocus;
end;

end.
