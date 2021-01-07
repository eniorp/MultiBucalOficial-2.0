unit CadMensagens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, DBCtrls, ExtCtrls, StdCtrls, Mask, Db, DBTables, ADODB, Grids,
  DBGrids,variants;

type
  TFmCadMensagens = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    DsMensagem: TDataSource;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBEdit1: TDBEdit;
    ButtonPesqCoop: TButton;
    Edit1: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Edit2: TEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    QueryMensagem: TADOQuery;
    ADOQueryMsg: TADOQuery;
    DataSource1: TDataSource;
    CheckBox1: TCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    procedure QueryMensagemNewRecord(DataSet: TDataSet);
    procedure ButtonPesqCoopClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure ADOQuery1AfterPost(DataSet: TDataSet);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure ADOQueryMsgAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
  private
     Function GetNomeDescricao: String;
  public
    { Public declarations }
  end;

var
  FmCadMensagens: TFmCadMensagens;

implementation

uses udm,senha, PesquisaUsuario, PesquisaContratante, PesqGrupoContrat;

{$R *.DFM}

Function TFmCadMensagens.GetNomeDescricao: String;
Var PTipo: String[2];
begin
   if DBRadioGroup1.ItemIndex >= 0 then
      PTipo := DBRadioGroup1.values[DBRadioGroup1.ItemIndex]
   else
      PTipo := '';

   if Ptipo = 'US' then
      Result := dm.ExecutaComando('select nome from usuario where codigo_completo = ''' + DBEdit1.Text +  '''','nome')
   else
   if (Ptipo = 'CO') or (Ptipo = 'CT') then
      Result := dm.ExecutaComando('select nome from contratante where codigo = ''' + DBEdit1.Text +  '''','nome')
   else
   if Ptipo = 'GC' then
      Result := dm.ExecutaComando('select descricao a from grupo_contratante where codigo =  ''' + DBEdit1.Text +  '''','a')
   else
      Result := '';

end;

procedure TFmCadMensagens.QueryMensagemNewRecord(DataSet: TDataSet);
begin
   QueryMensagem.FieldByName('cd_operador').AsInteger := senha.Codigo_Operador;
  QueryMensagem.FieldByName('dtValidade').AsString := '01/01/2079';
  QueryMensagem.FieldByName('permite_desabilitar').AsBoolean := false;  //O = avisa no orçamento, C = avisa no Contratante e T = Todos
  QueryMensagem.FieldByName('tipo_aviso').AsString := 'O'; //
end;

procedure TFmCadMensagens.ButtonPesqCoopClick(Sender: TObject);
begin
   Case DBRadioGroup1.ItemIndex of
      0: begin
            FormPesquisaUsuarios := TFormPesquisaUsuarios.create(self);
            FormPesquisaUsuarios.ShowModal;
            QueryMensagem.FieldByName('cd_codigo').AsInteger := FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.AsInteger;
            FormPesquisaUsuarios.Free;
         end;
      1,2: begin
            FormPesquisaContratante := TFormPesquisaContratante.create(self);
            FormPesquisaContratante.ShowModal;
            QueryMensagem.FieldByName('cd_codigo').AsInteger := FormPesquisaContratante.QueryContratanteCodigo.AsInteger;
            FormPesquisaContratante.Free;
         end;
      3: begin
            FmPesqGrupoContrat := TFmPesqGrupoContrat.create(self);
            FmPesqGrupoContrat.ShowModal;
            QueryMensagem.FieldByName('cd_codigo').AsInteger := FmPesqGrupoContrat.Query1.FieldByName('codigo').AsInteger;
            FmPesqGrupoContrat.Free;
         end;
   end;
   Edit1.Text := GetNomeDescricao;
end;

procedure TFmCadMensagens.DBEdit1Exit(Sender: TObject);
begin
   Edit1.Text := GetNomeDescricao;
end;

procedure TFmCadMensagens.FormShow(Sender: TObject);
begin
   QueryMensagem.Open;
   ADOQueryMsg.open;
end;

procedure TFmCadMensagens.DBRadioGroup1Click(Sender: TObject);
begin
    Edit1.Text := GetNomeDescricao;
end;

procedure TFmCadMensagens.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     key := #0
end;

procedure TFmCadMensagens.ADOQuery1AfterPost(DataSet: TDataSet);
begin
   QueryMensagem.Close;
   QueryMensagem.Open;
   ADOQueryMsg.close;
   ADOQueryMsg.open;
end;

procedure TFmCadMensagens.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
   Edit2.Text := dm.ExecutaComando('select apelido from operador where codigo = ''' + QueryMensagem.FieldByName('cd_operador').AsString + '''','apelido');
   Edit1.Text := GetNomeDescricao;
end;

procedure TFmCadMensagens.ADOQuery1BeforePost(DataSet: TDataSet);
begin
   if GetNomeDescricao = '' then
   begin
      ShowMessage('Código inválido para o tipo de mensagem selecionada, selecione "Usuário", "Contratante", "Contratante Titular" ou "Grupo de Contratante"');
      Abort;
   end
end;

procedure TFmCadMensagens.ADOQueryMsgAfterScroll(DataSet: TDataSet);
begin
   QueryMensagem.Locate('cd_tipo; cd_codigo; dtcriacao',VarArrayOf([ADOQueryMsg.FieldByName('cd_tipo').AsString,ADOQueryMsg.FieldByName('cd_codigo').AsString,ADOQueryMsg.FieldByName('dtcriacao').AsDatetime]),[]);
end;

procedure TFmCadMensagens.CheckBox1Click(Sender: TObject);
begin
  QueryMensagem.close;
    ADOQueryMsg.close;
  QueryMensagem.sql.Clear;
  if CheckBox1.checked then
  begin
     QueryMensagem.sql.add('select * from mensagem where dtvalidade > getdate() -1 order by dtcriacao desc');
     ADOQueryMsg.sql[04] := ' and dtvalidade > getdate() -1';
     ADOQueryMsg.sql[10] := ' and dtvalidade > getdate() -1';
     ADOQueryMsg.sql[16] := ' and dtvalidade > getdate() -1';
     ADOQueryMsg.sql[22] := ' and dtvalidade > getdate() -1';
  end
  else
  begin
    QueryMensagem.sql.add('select * from mensagem  order by dtcriacao desc');
     ADOQueryMsg.sql[04] := ' ';
     ADOQueryMsg.sql[10] := ' ';
     ADOQueryMsg.sql[16] := ' ';
     ADOQueryMsg.sql[22] := ' ';
  end;
  QueryMensagem.open;
  ADOQueryMsg.open;




end;

end.
