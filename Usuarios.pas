{ Programa ........: Controle de Operadores                                    }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

unit Usuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,Variants,
  StdCtrls, DBCtrls, ComCtrls, ExtCtrls, Db, DBTables, Mask, Buttons,
  Grids, DBGrids, Menus, ADODB;

type
  TFormUsuarios = class(TForm)
    QueryOperador: TQuery;
    DataSourcePermissoes: TDataSource;
    DataSourceOperador: TDataSource;
    DataSourceDisponiveis: TDataSource;
    QueryDisponiveis: TQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label15: TLabel;
    DBEditNomeOperador: TDBEdit;
    Label21: TLabel;
    DBEditApelidoOperador: TDBEdit;
    Label24: TLabel;
    DBEditCidadeOperador: TDBEdit;
    DBComboBoxEstadoOperador: TDBComboBox;
    Label25: TLabel;
    DBEditEnderecoOperador: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    DBEditBairroOperador: TDBEdit;
    Label30: TLabel;
    DBEditSenhaOperador: TDBEdit;
    DBEditFoneOperador: TDBEdit;
    Label29: TLabel;
    DBEditCepOperador: TDBEdit;
    Label28: TLabel;
    Panel4: TPanel;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    DBNavigatorOperador: TDBNavigator;
    GroupBox2: TGroupBox;
    DBGridDisponiveis: TDBGrid;
    GroupBox3: TGroupBox;
    DBGridPermitidos: TDBGrid;
    BitBtnMandaUm: TBitBtn;
    BitBtnMandaTodos: TBitBtn;
    BitBtnRetornaUm: TBitBtn;
    BitBtnRetornaTodos: TBitBtn;
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
    QueryDisponiveisCodigo_Grupo: TIntegerField;
    QueryDisponiveisCodigo_Procedimento: TIntegerField;
    QueryDisponiveisDescricao_Grupo: TStringField;
    QueryDisponiveisDescricao_Procedimento: TStringField;
    QueryDisponiveisCodigo_SubProcedimento: TSmallintField;
    QueryDisponiveisDescricao_SubProcedimento: TStringField;
    QueryPermissoes: TQuery;
    QueryPermissoesCodigo_Operador: TSmallintField;
    QueryPermissoesCodigo_Grupo: TSmallintField;
    QueryPermissoesCodigo_Procedimento: TSmallintField;
    QueryPermissoesCodigo_SubProcedimento: TSmallintField;
    QueryPermissoesNome_Grupo: TStringField;
    QueryPermissoesNome_Procedimento: TStringField;
    QueryPermissoesNome_SubProcedimento: TStringField;
    QueryDisponiveisAuxiliar: TQuery;
    QueryDisponiveisAuxiliarCodigo_Grupo: TSmallintField;
    QueryDisponiveisAuxiliarCodigo_Procedimento: TSmallintField;
    QueryDisponiveisAuxiliarCodigo_SubProcedimento: TSmallintField;
    QueryDisponiveisAuxiliarDescricao_Grupo: TStringField;
    QueryDisponiveisAuxiliarDescricao_Procedimento: TStringField;
    QueryDisponiveisAuxiliarDescricao_SubProcedimento: TStringField;
    Label1: TLabel;
    DBComboBoxBanco: TDBComboBox;
    QueryOperadorBanco_Dados: TStringField;
    BitBtn2: TBitBtn;
    QueryPermissoesSomente_Leitura: TBooleanField;
    DBRadioGroup1: TDBRadioGroup;
    QueryOperadorLiberaOdonto: TStringField;
    BitBtn3: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    QueryOperadorestacaoTrab: TStringField;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    SpeedButton2: TSpeedButton;
    CheckBoxOcuExl: TCheckBox;
    QueryOperadordtExclusao: TDateTimeField;
    Label4: TLabel;
    ADOQueryGrupo: TADOQuery;
    DsGrupo: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    QueryOperadorcd_grupo: TSmallintField;
    BitBtn4: TBitBtn;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DsTpCobranca: TDataSource;
    ADOQueryTpCobranca: TADOQuery;
    QueryOperadortp_baixa_visualiza: TStringField;
    QueryOperadorcdRepresentante: TSmallintField;
    DBLookupComboBox3: TDBLookupComboBox;
    Label7: TLabel;
    DataSourceRepresentante: TDataSource;
    ADOQueryRepresentante: TADOQuery;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnMandaUmClick(Sender: TObject);
    procedure BitBtnRetornaUmClick(Sender: TObject);
    procedure BitBtnMandaTodosClick(Sender: TObject);
    procedure QueryPermissoesCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnRetornaTodosClick(Sender: TObject);
    procedure QueryOperadorAfterInsert(DataSet: TDataSet);
    procedure DataSourceOperadorDataChange(Sender: TObject; Field: TField);
    procedure QueryOperadorAfterPost(DataSet: TDataSet);
    procedure QueryOperadorBeforeDelete(DataSet: TDataSet);
    procedure QueryOperadorAfterEdit(DataSet: TDataSet);
    procedure Propriedades1Click(Sender: TObject);
    procedure QueryOperadorAfterScroll(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBoxOcuExlClick(Sender: TObject);
    procedure QueryOperadorBeforePost(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QueryOperadorSenhaChange(Sender: TField);
    procedure QueryOperadorNewRecord(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
  private
    Encrypt : boolean;
    procedure AbreQueryUsu;    

  public
    { Public declarations }
  end;

var
  FormUsuarios: TFormUsuarios;
  Tipo_Operacao : Short;
  Nome : String[40];

implementation

{$R *.DFM}
uses Senha, udm, PermEspeciais, PermFunc, Seletor;//, DMLog;

procedure TFormUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryOperador.Close;
     QueryPermissoes.Close;
     QueryDisponiveis.Close;
     QueryDisponiveisAuxiliar.Close;
end;

procedure TFormUsuarios.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     Case key Of
          VK_RETURN : Perform(WM_NEXTDLGCTL, 0 , 0 );
      end;
end;

procedure TFormUsuarios.BitBtnMandaUmClick(Sender: TObject);
begin
     if QueryOperador.State in [dsInsert] then
        begin
          try
           QueryOperador.Post
          except
            begin
              ShowMessage('Problemas ao Gravar o Arquivo de Operadores !!');
              QueryOperador.Cancel;
              exit;
            end;
          end;
        end;

     if not QueryPermissoes.Locate('Codigo_Operador ; Codigo_Grupo ; Codigo_Procedimento; Codigo_SubProcedimento',VarArrayOf([QueryOperadorCodigo.asInteger,
           QueryDisponiveisCodigo_Grupo.asInteger, QueryDisponiveisCodigo_Procedimento.asInteger, QueryDisponiveisCodigo_SubProcedimento.asInteger]),[]) Then
        begin
          QueryPermissoes.Insert;
          QueryPermissoesCodigo_Operador.asInteger := QueryOperadorCodigo.asInteger;
          QueryPermissoesCodigo_Grupo.asInteger := QueryDisponiveisCodigo_Grupo.asInteger;
          QueryPermissoesCodigo_Procedimento.asInteger := QueryDisponiveisCodigo_Procedimento.asInteger;
          QueryPermissoesCodigo_SubProcedimento.asInteger := QueryDisponiveisCodigo_SubProcedimento.asInteger;
          QueryPermissoesSomente_Leitura.AsBoolean := False;
          try
           QueryPermissoes.Post
          except
            begin
              ShowMessage('Problemas ao Gravar o Arquivo de Permissões de Usuários !!');
              QueryPermissoes.Cancel;
            end;
          end;
        end;
     QueryPermissoes.Close;
     QueryPermissoes.Open;
     QueryDisponiveis.Next;
     if QueryDisponiveis.Eof then
     begin
        QueryDisponiveis.Close;
        QueryDisponiveis.Open;
     end
end;

procedure TFormUsuarios.BitBtnRetornaUmClick(Sender: TObject);
begin
     DBGridPermitidos.SelectedRows.Delete;
     QueryPermissoes.Close;
     QueryPermissoes.Open;
     QueryDisponiveis.close;
     QueryDisponiveis.Open;
end;

procedure TFormUsuarios.BitBtnMandaTodosClick(Sender: TObject);
begin
     if QueryOperador.State in [dsInsert] then
        begin
          try
           QueryOperador.Post
          except
            begin
              ShowMessage('Problemas ao Gravar o Arquivo de Operadores !!');
              QueryOperador.Cancel;
              exit;
            end;
          end;
        end;

     with QueryDisponiveis do
       begin
         First;
         while not eof do
           begin
             if not QueryPermissoes.Locate('Codigo_Operador ; Codigo_Grupo ; Codigo_Procedimento; Codigo_SubProcedimento',VarArrayOf([QueryOperadorCodigo.asInteger,
                QueryDisponiveisCodigo_Grupo.asInteger, QueryDisponiveisCodigo_Procedimento.asInteger, QueryDisponiveisCodigo_SubProcedimento.asInteger]),[]) Then
                   begin
                     QueryPermissoes.Insert;
                     QueryPermissoesCodigo_Operador.asInteger := QueryOperadorCodigo.asInteger;
                     QueryPermissoesCodigo_Grupo.asInteger := QueryDisponiveisCodigo_Grupo.asInteger;
                     QueryPermissoesCodigo_Procedimento.asInteger := QueryDisponiveisCodigo_Procedimento.asInteger;
                     QueryPermissoesCodigo_SubProcedimento.asInteger := QueryDisponiveisCodigo_SubProcedimento.asInteger;
                     QueryPermissoesSomente_Leitura.AsBoolean := False;

                     try
                       QueryPermissoes.Post
                     except
                       begin
                         ShowMessage('Problemas ao Gravar o Arquivo de Permissões de Usuários !!');
                         QueryPermissoes.Cancel;
                       end;
                     end;
                   end;
             Next;
           end;
       end;
       QueryPermissoes.Close;
       QueryPermissoes.Open;
       QueryDisponiveis.close;
       QueryDisponiveis.Open;
end;

procedure TFormUsuarios.QueryPermissoesCalcFields(DataSet: TDataSet);
begin
     QueryDisponiveisAuxiliar.Locate('Codigo_Grupo; Codigo_Procedimento; Codigo_SubProcedimento', VarArrayOf([QueryPermissoesCodigo_Grupo.asInteger, QueryPermissoesCodigo_Procedimento.asInteger, QueryPermissoesCodigo_SubProcedimento.asInteger]),[]);
     QueryPermissoesNome_Grupo.asString := QueryDisponiveisAuxiliarDescricao_Grupo.asString;
     QueryPermissoesNome_Procedimento.asString := QueryDisponiveisAuxiliarDescricao_Procedimento.asString;
     QueryPermissoesNome_SubProcedimento.asString := QueryDisponiveisAuxiliarDescricao_SubProcedimento.asString;
end;

procedure TFormUsuarios.FormCreate(Sender: TObject);
begin

     CheckBoxOcuExl.Checked :=  (dm.GetParam('OCUEXL') = 'S');
     if FormSeletor.Menu = FormSeletor.MainMenu1 then
     begin
        QueryDisponiveisAuxiliar.Open;
        QueryDisponiveis.Open;
     end
     else
     begin
        Panel3.Visible := false;
        BitBtn2.Visible := false;
        FormUsuarios.Height := 300;
     end;
     AbreQueryUsu;

     DBGridPermitidos.EditorMode := False;
     DBGridPermitidos.ReadOnly   := False;
end;
procedure TFormUsuarios.AbreQueryUsu;
begin

     QueryOperador.close;
     if CheckBoxOcuExl.Checked then
        QueryOperador.sql[1] := ' where dtExclusao is null '
     else
       QueryOperador.sql[1] := '  ';
     QueryOperador.Open;

end;
procedure TFormUsuarios.BitBtnRetornaTodosClick(Sender: TObject);
begin
     with QueryPermissoes do
        begin
           First;
           while not eof do
             begin
               Delete;
             end;
           Close;
           Open;
        end;
     QueryDisponiveis.close;
     QueryDisponiveis.Open;
end;

procedure TFormUsuarios.QueryOperadorAfterInsert(DataSet: TDataSet);
begin
     Tipo_Operacao := 4; // Inserção
     DBGridPermitidos.DataSource := Nil;
     QueryOperadorNome.FocusControl;

//  erro Quando cadastrar novo operador ligar Tabela de Operador com a de permissoes
     if QueryOperadorCodigo.asString <> '' then
           with QueryPermissoes do
              begin
                Close;
                SQL[1] := 'where Codigo_Operador = ' + QueryOperadorCodigo.asString + ' order by Codigo_Grupo, codigo_procedimento';
                Open;
                DBGridPermitidos.DataSource := DataSourcePermissoes;
              end;
end;

procedure TFormUsuarios.DataSourceOperadorDataChange(Sender: TObject;
  Field: TField);
begin
   if FormSeletor.Menu = FormSeletor.MainMenu2 then
     exit;
   if QueryOperadorCodigo.asString <> '' then
   begin
      QueryPermissoes.Close;
      QueryPermissoes.SQL[1] := 'where Codigo_Operador = ' + QueryOperadorCodigo.asString + ' order by Codigo_Grupo, codigo_procedimento ';
      QueryPermissoes.Open;
      DBGridPermitidos.DataSource := DataSourcePermissoes;
   end;
end;

procedure TFormUsuarios.QueryOperadorAfterPost(DataSet: TDataSet);
begin
     with QueryOperador do
        begin
           DisableControls;
           Nome := QueryOperadorNome.asString;
           Close;
           Open;
           Locate('Nome', Nome, [loCaseInsensitive]);
           EnableControls;
        end;

end;


procedure TFormUsuarios.QueryOperadorBeforeDelete(DataSet: TDataSet);
begin
   if Application.MessageBox('Confirma exclusão do usuário?','Confirmação',MB_YesNo + MB_DEFBUTTON2)  = IdYes then
   begin
      dm.execmd('update operador set dtexclusao = getdate() where codigo = ' + QueryOperadorcodigo.AsString);
      AbreQueryUsu;
   end;
   Abort;
end;

procedure TFormUsuarios.QueryOperadorAfterEdit(DataSet: TDataSet);
begin
     Tipo_Operacao := 2; // Alteração
end;

procedure TFormUsuarios.Propriedades1Click(Sender: TObject);
begin
   DBGridPermitidos.EditorMode := True;
   DBGridPermitidos.EditorMode := True;
end;


procedure TFormUsuarios.QueryOperadorAfterScroll(DataSet: TDataSet);
begin
   if FormSeletor.Menu = FormSeletor.MainMenu2 then
     exit;
   QueryDisponiveis.close;
   if not QueryOperadorCodigo.IsNull then
   begin
     QueryDisponiveis.ParamByName('operador').AsInteger := QueryOperadorCodigo.AsInteger;
     QueryDisponiveis.Open;
   end;
end;

procedure TFormUsuarios.BitBtn3Click(Sender: TObject);
begin
   QueryOperador.Locate('apelido',Uppercase(inputbox('Informe o operador','Informe o Operador','')),[]);
end;

procedure TFormUsuarios.SpeedButton1Click(Sender: TObject);
begin
   QueryOperador.Edit;
   QueryOperadorestacaoTrab.AsString := inputBox('Estação de Trabalho','Estação de Trabalho',QueryOperadorestacaoTrab.AsString);
   QueryOperador.post;
end;

procedure TFormUsuarios.CheckBoxOcuExlClick(Sender: TObject);
begin
   AbreQueryUsu;
end;

procedure TFormUsuarios.QueryOperadorBeforePost(DataSet: TDataSet);
begin
   if (DM.GetParam('ENCRY') = 'S') and Encrypt then
      QueryOperadorSenha.AsString := dm.Encrypt(QueryOperadorSenha.AsString);
   Encrypt := false;
end;

procedure TFormUsuarios.BitBtn2Click(Sender: TObject);
begin
   FmPermEspeciais := TFmPermEspeciais.create(self);
   FmPermEspeciais.showModal;
   FmPermEspeciais.free;
end;

procedure TFormUsuarios.FormShow(Sender: TObject);
begin
   Encrypt := false;
   BitBtn2.enabled := (dm.execmd('select count(*) q from especiais where codigo_operador = ' + intToStr(senha.Codigo_Operador),'q') <> '0');
   ADOQueryGrupo.open;
   ADOQueryTpCobranca.open;
   ADOQueryRepresentante.open;
end;

procedure TFormUsuarios.QueryOperadorSenhaChange(Sender: TField);
begin
  Encrypt := true;
end;

procedure TFormUsuarios.QueryOperadorNewRecord(DataSet: TDataSet);
begin
   QueryOperadorLiberaOdonto.AsString := 'N';
   Encrypt := true;
end;

procedure TFormUsuarios.BitBtn4Click(Sender: TObject);
begin
   fmPermFunc := TfmPermFunc.create(self);
   fmPermFunc.Cdfunc := QueryOperadorCodigo.AsString;
   fmPermFunc.ADOQueryPermissoes.sql[3] := QueryOperadorCodigo.AsString;
   fmPermFunc.ADOQueryPermissoes.sql[8] := QueryOperadorcd_grupo.AsString;
   fmPermFunc.ADOQueryPermissoes.open;
   fmPermFunc.ADOQueryPermissaoFunc.sql[1] := QueryOperadorCodigo.AsString;
   fmPermFunc.ADOQueryPermissaoFunc.open;
   fmPermFunc.Edit1.text := QueryOperadorApelido.asString;
   fmPermFunc.ShowMOdal;
   fmPermFunc.free;
end;

end.
