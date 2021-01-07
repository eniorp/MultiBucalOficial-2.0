{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Manutenção                                                }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Manutencao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, Mask, Buttons, DBTables, Grids, DBGrids, ExtCtrls;

type
  TFormManutencoes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridManutencao: TDBGrid;
    QueryManutencao: TQuery;
    QueryUsuarios: TQuery;
    QueryServicos: TQuery;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    BitBtnSair: TBitBtn;
    Panel7: TPanel;
    DBNavigatorManutencao: TDBNavigator;
    QueryManutencaoUsuario: TIntegerField;
    QueryManutencaoServico: TIntegerField;
    QueryManutencaoData_Inicial: TDateTimeField;
    QueryManutencaoData_Final: TDateTimeField;
    QueryManutencaoDentista: TIntegerField;
    QueryManutencaoGera_Boleto: TBooleanField;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    Label1: TLabel;
    DBEditUsuario: TDBEdit;
    DataSourceManutencao: TDataSource;
    Label2: TLabel;
    DBEditServico: TDBEdit;
    Label3: TLabel;
    DBEditDataInicial: TDBEdit;
    Label4: TLabel;
    DBEditDataFinal: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEditDentista: TDBEdit;
    Label7: TLabel;
    DBEditVencimento: TDBEdit;
    DBCheckBoxBoleto: TDBCheckBox;
    BitBtnPesquisaUsuario: TBitBtn;
    BitBtnPesquisaServico: TBitBtn;
    BitBtnPesquisaDentista: TBitBtn;
    QueryDentista: TQuery;
    EditNomeUsuario: TEdit;
    EditNomeDentista: TEdit;
    EditServico: TEdit;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryDentistaData_Exclusao: TDateTimeField;
    QueryManutencaoDescricao_Servico: TStringField;
    QueryManutencaoVencimento: TIntegerField;
    QueryUsuariosContratante_Titular: TIntegerField;
    QueryUsuariosCodigo_Completo: TIntegerField;
    QueryPrecoPlano: TQuery;
    QueryPrecoPlanoTabelaPreco: TIntegerField;
    QueryPrecoPlanoPlano: TIntegerField;
    QueryPrecoPlanoAtiva: TBooleanField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryManutencaoOperador: TIntegerField;
    QueryManutencaoData_Operacao: TDateTimeField;
    QueryManutencaoDebito: TBooleanField;
    DBCheckBox1: TDBCheckBox;
    QueryManutAux: TQuery;
    QueryManutAuxUsuario: TIntegerField;
    QueryManutencaooperador_alter: TIntegerField;
    QueryManutencaodt_alter: TDateTimeField;
    QueryOperador: TQuery;
    QueryManutencaonm_operador: TStringField;
    QueryManutencaonm_oper_alter: TStringField;
    Button3: TButton;
    QueryManutencaolg_ir: TBooleanField;
    DBCheckBoxEmissaoIR: TDBCheckBox;
    procedure QueryManutencaoAfterInsert(DataSet: TDataSet);
    procedure DBEditUsuarioExit(Sender: TObject);
    procedure DBEditDentistaExit(Sender: TObject);
    procedure DBEditUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPesquisaDentistaClick(Sender: TObject);
    procedure BitBtnPesquisaUsuarioClick(Sender: TObject);
    procedure BitBtnPesquisaServicoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditServicoExit(Sender: TObject);
    procedure DataSourceManutencaoDataChange(Sender: TObject;
      Field: TField);
    procedure DBEditDataFinalExit(Sender: TObject);
    procedure DBCheckBoxBoletoExit(Sender: TObject);
    procedure QueryManutencaoBeforePost(DataSet: TDataSet);
    procedure Button3Click(Sender: TObject);
    procedure QueryManutencaoNewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormManutencoes: TFormManutencoes;
  VUsuario, Digito, Contratante_Titular : Integer;
  Valor_Servico, Valor_Bruto, Valor_Dentista, Valor_Protetico : Real;
  Data_Base, Data_Atual : TDate;

implementation

uses PesquisaDentista, PesquisaUsuario, PesquisaServicos, Senha, QRManutencoesFinalizadas,
  udm, PadraoExcel;

{$R *.DFM}

procedure TFormManutencoes.QueryManutencaoAfterInsert(DataSet: TDataSet);
begin
     EditNomeUsuario.Text := '';
     EditServico.Text := '';
     EditNomeDentista.Text := '';
     QueryManutencaoGera_Boleto.asBoolean := True;
     QueryManutencaoOperador.asInteger := Senha.Codigo_Operador;
     QueryManutencaoData_Operacao.AsDateTime := dm.now;
     DBEditUsuario.SetFocus;
end;

procedure TFormManutencoes.DBEditUsuarioExit(Sender: TObject);
begin
     if QueryManutencaoUsuario.asString = '' then exit;

     with QueryUsuarios do
       begin
         Close;
         ParamByName('Usuario').asInteger := StrToInt(DBEditUsuario.Text);
         Open;
         if RecordCount = 0 then
            begin
              MessageDlg('Usuário Não Cadastrado !!!!', mtError, [mbOk], 0);
              //DBEditUsuario.SetFocus;
              exit;
            end
         else
            begin
              EditNomeUsuario.Text := QueryUsuariosNome.asString;
              Contratante_Titular  := QueryUsuariosContratante_Titular.asInteger;
            end;
         if QueryUsuariosData_Exclusao.asString <> '' then
            begin
              MessageDlg('Usuário Excluído em ' + DateToStr(QueryUsuariosData_Exclusao.asDateTime) + ' !!!', mtError, [mbOk], 0);
              //DBEditUsuario.SetFocus;
              Contratante_Titular := 0;
              exit;
            end;
       end;

{   if QueryManutencao.State = dsInsert then
     begin
       with QueryManutAux do
         Begin
           close;
           ParamByName('Usu').asInteger := StrToInt(DBEditUsuario.Text);
           open;
           if recordcount <> 0 then
             begin
               showmessage('Usuário já contém Manutenção cadastrada !');
               QueryManutencao.Cancel;
             end;
         end;
     end;}
end;

procedure TFormManutencoes.DBEditDentistaExit(Sender: TObject);
begin
     if QueryManutencaoDentista.asString = '' then exit;

     with QueryDentista do
       begin
         Close;
         ParamByName('Dentista').asInteger := QueryManutencaoDentista.asInteger;
         Open;
         if RecordCount = 0 then
            begin
              MessageDlg('Dentista Não Cadastrado !!!!', mtError, [mbOk], 0);
              DBEditDentista.SetFocus;
              exit;
            end;

         EditNomeDentista.Text := QueryDentistaNome.asString;

         if QueryDentistaData_Exclusao.asString <> '' then
            begin
              MessageDlg('Dentista Excluído em ' + DateToStr(QueryDentistaData_Exclusao.asDateTime) + ' !!!', mtError, [mbOk], 0);
              DBEditDentista.SetFocus;
              exit;
            end;
       end;
end;

procedure TFormManutencoes.DBEditUsuarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
          vk_f1:
            begin
              if DBEditDentista.Focused then
                 BitBtnPesquisaDentistaClick(Sender);
              if DBEditUsuario.Focused then
                 BitBtnPesquisaUsuarioClick(Sender);
              if DBEditServico.Focused then
                 BitBtnPesquisaServicoClick(Sender);
            end;
          vk_f9 : if QueryManutencao.State in [dsbrowse] then
                  QueryManutencao.Insert;
     end;

end;

procedure TFormManutencoes.BitBtnPesquisaDentistaClick(Sender: TObject);
begin
     if QueryManutencao.State in [dsbrowse] then
        exit;

     Application.CreateForm(TFormPesquisaDentistas, FormPesquisaDentistas);
     FormPesquisaDentistas.ShowModal;
     with QueryDentista do
       begin
         Close;
         ParamByName('Dentista').asInteger := PesquisaDentista.FormPesquisaDentistas.QueryDentistasCodigo.asInteger;
         Open;
       end;
     FormPesquisaDentistas.QueryDentistas.Close;
     FormPesquisaDentistas.Query50.Close;
     FormPesquisaDentistas.Free;
     QueryManutencaoDentista.asInteger := QueryDentistaCodigo.asInteger;
     DBEditDentista.SetFocus;
end;

procedure TFormManutencoes.BitBtnPesquisaUsuarioClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
     FormPesquisaUsuarios.ShowModal;
     if QueryManutencao.state in [dsbrowse] then
        begin
          with QueryManutencao do
            begin
              Close;
              SQL[1] := 'where Usuario = ' + PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.AsString;
              Open;
            end;
        end
     else
       QueryManutencaoUsuario.asString := (PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.asString);
     FormPesquisaUsuarios.QueryUsuarios.close;
     FormPesquisaUsuarios.Free;

     DBEditUsuario.SetFocus;
end;

procedure TFormManutencoes.BitBtnPesquisaServicoClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaServicos, FormPesquisaServicos);
     if QueryManutencao.State in [dsbrowse] then
        exit;

     if FormPesquisaServicos.ShowModal <> mrOK then
        exit;

     with QueryServicos do
       begin
         Close;
         ParamByName('Servico').asInteger := PesquisaServicos.FormPesquisaServicos.QueryServicosCodigo.asInteger;
         Open;
       end;

     QueryManutencaoServico.asInteger := QueryServicosCodigo.asInteger;
     FormPesquisaServicos.QueryServicos.Close;
     FormPesquisaServicos.Query50.Close;
     FormPesquisaServicos.Free;
end;

procedure TFormManutencoes.FormCreate(Sender: TObject);
begin
     QueryUsuarios.Open;
     QueryServicos.Open;
     QueryDentista.Open;
     QueryManutencao.Open;
end;

procedure TFormManutencoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryUsuarios.Close;
     QueryServicos.Close;
     QueryDentista.Close;
     QueryManutencao.Close;
end;

procedure TFormManutencoes.DBEditServicoExit(Sender: TObject);
begin
     if QueryManutencaoServico.asString = '' then exit;

     with QueryServicos do
       begin
         Close;
         ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
         Open;
         if RecordCount = 0 then
            begin
              MessageDlg('Serviço Não Cadastrado !!!!', mtError, [mbOk], 0);
              DBEditServico.SetFocus;
              exit;
            end;

         EditServico.Text := QueryServicosDescricao.asString;
       end;
end;

procedure TFormManutencoes.DataSourceManutencaoDataChange(Sender: TObject;
  Field: TField);
begin
     EditNomeUsuario.Text := '';
     EditServico.Text := '';
     EditNomeDentista.Text := '';

     if QueryManutencao.RecordCount = 0 then exit;

     if DBEditUsuario.Text <> '' then
        begin
          VUsuario := StrToInt(DBEditUsuario.Text);
          with QueryUsuarios do
            begin
              Close;
              ParamByName('Usuario').asInteger := VUsuario;
              Open;
              EditNomeUsuario.Text := QueryUsuariosNome.asString;
            end;
        end;

     with QueryDentista do
       begin
         Close;
         ParamByName('Dentista').asInteger := QueryManutencaoDentista.asInteger;
         Open;
         EditNomeDentista.Text := QueryDentistaNome.asString;
       end;

     with QueryServicos do
       begin
         Close;
         ParamByName('Servico').asInteger := QueryManutencaoServico.asInteger;
         Open;
         EditServico.Text := QueryServicosDescricao.asString;
       end;
end;

procedure TFormManutencoes.DBEditDataFinalExit(Sender: TObject);
begin
     if QueryManutencaoData_Final.asDateTime < QueryManutencaoData_Inicial.asDateTime then
        begin
          ShowMessage('A Data Final Não Pode ser Menor que a Data Inicial !!!');
          DBEditDataFinal.SetFocus;
        end;
end;

procedure TFormManutencoes.DBCheckBoxBoletoExit(Sender: TObject);
begin
     if QueryManutencao.State in [dsbrowse] then
        exit;

     if MessageDlg('Dados Ok ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        exit
     else
       begin
         try
          QueryManutencaoOperador.asInteger       := Senha.Codigo_Operador;
          QueryManutencaoData_Operacao.AsDateTime := dm.now;
          QueryManutencao.Post
         except
           begin
             ShowMessage('Erro Gravação da Tabela de Manutenções !!!');
             QueryManutencao.Cancel;
           end;
         end;
       end;
     DBEditUsuario.SetFocus;
end;



procedure TFormManutencoes.QueryManutencaoBeforePost(DataSet: TDataSet);
var aux : integer;
begin
   if QueryManutencao.State = dsInsert then
     begin
       QueryManutAux.close;
       QueryManutAux.ParamByName('Usu').asInteger := StrToInt(DBEditUsuario.Text);
       QueryManutAux.sql[2] := ' and servico = ' + queryManutencaoServico.AsString;
       QueryManutAux.open;
       if QueryManutAux.recordcount <> 0 then
       begin
          showmessage('Usuário já contém Manutenção cadastrada com esse serviço !');
          abort;
       end;
     end;

   if dm.GetParam('MSGIR') = 'S' then
   begin
      if application.MessageBox('Será emitido informes de rendimento para esta manutenção?','Alerta',MB_YESNO ) = Mryes then
         QueryManutencao.FieldByName('lg_ir').AsBoolean  := true
      else
         QueryManutencao.FieldByName('lg_ir').asBoolean := false;
   end;

    aux := trunc((QueryManutencaoData_Final.AsDateTime - QueryManutencaoData_Inicial.AsDateTime) / 30);
   if  aux > 36 then

      repeat
      until Application.MessageBox('ATENÇÃO O período é superior a 36 meses, verifique se está realmente correto a data inicial e final (Para fechar essa mensagem clique em cancelar)','Confirmção', MB_YESNOCANCEL + MB_DEFBUTTON2) = IdCancel;


   QueryManutencaooperador_alter.AsInteger := Senha.Codigo_Operador;
   QueryManutencaodt_alter.AsString := Dm.GetDataSrv;
end;

procedure TFormManutencoes.Button3Click(Sender: TObject);
begin
   FmPadraoExcel := TFmPadraoExcel.create(self);
   dm.execmd('select u.nome, m.*, o.apelido operador_alter, o1.apelido operador_inclusao  from manutencao m left join usuario u on m.usuario = u.codigo_completo ' +
   ' left join operador o on o.codigo = m.operador_alter left join operador o1 on o1.codigo = m.operador order by m.data_inicial','nome');
   FmPadraoExcel.PGeraExcel(Dm.QueryGlobal);
   FmPadraoExcel.free;
end;

procedure TFormManutencoes.QueryManutencaoNewRecord(DataSet: TDataSet);
begin
   if dm.GetParam('ORCIR') = 'S' then
      QueryManutencao.FieldByName('lg_ir').AsBoolean := true
   else
      QueryManutencao.FieldByName('lg_ir').AsBoolean := false;
end;

procedure TFormManutencoes.FormShow(Sender: TObject);
begin
   DBCheckBoxEmissaoIR.Enabled := dm.GetParam('MSGIR') = 'S'; // se faz a pergunte "informes de rendimento para este orçamento?" habilita esse campo para alteração
end;


end.


