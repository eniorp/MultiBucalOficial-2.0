{ Sistema .........: Controle de Assist�ncia Dent�ria                          }
{ Programa ........: Login do Sistema                                          }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Enio da Silveira                                    }

unit Senha;

interface
                 
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls,enio,IniFiles, jpeg;

type
  TFormSenha = class(TForm)
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
    Panel1: TPanel;
    Panel2: TPanel;
    Image2: TImage;
    QueryOperadorBanco_Dados: TStringField;
    Bevel1: TBevel;
    Image1: TImage;
    BitBtnCancela: TBitBtn;
    BitBtnOk: TBitBtn;
    EditUsuario: TEdit;
    ComboBoxBanco: TComboBox;
    EditSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QueryEmpresa: TQuery;
    QueryEmpresaRazao_Social: TStringField;
    QueryEmpresaFantasia: TStringField;
    QueryEmpresaEndereco: TStringField;
    QueryEmpresaCidade: TStringField;
    QueryEmpresaEstado: TStringField;
    QueryEmpresaCGC: TStringField;
    QueryEmpresaIns_Estadual: TStringField;
    QueryEmpresaCodigo: TIntegerField;
    Image3: TImage;
    Timer1: TTimer;
    LabelVersao: TLabel;
    procedure BitBtnOkClick(Sender: TObject);
    procedure BitBtnCancelaClick(Sender: TObject);
    procedure EditUsuarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
     FechouAplic : Boolean;
    { Public declarations }
  end;

var
  FormSenha: TFormSenha;
  Codigo_Operador : Integer;
  NomeSenha : String[40];
  Apelido : String[15];
  Flague : Short;
  Empresa : String;
  Cod_Empresa : Integer;

implementation

{$R *.DFM}

uses Seletor, Fundo, udm, tacio;


procedure TFormSenha.BitBtnOkClick(Sender: TObject);
var vUsuario : String[20];
begin
     FormFundo.DatabaseMultiOdonto.Connected := True;
     vUsuario := EditUsuario.Text;
     with QueryOperador do
       begin
         Close;
         SQL[1] := ('where Apelido = ' + '''' + vUsuario + '''');
         Open;
       end;

     if QueryOperador.RecordCount = 0 Then
        begin
          MessageDlg('Usu�rio N�o Cadastrado !!!!', mtError, [mbOk], 0);
          EditUsuario.SetFocus;
          Exit;
        end;

     if DM.execmd('select vl_parametro v from parametro where cd_parametro =''ENCRY''','v') = 'S' then
     begin
        if dm.Decrypt(QueryOperadorSenha.asString) <> EditSenha.Text then
        begin
          MessageDlg('Senha Inv�lida !!!!', mtError, [mbOk], 0);
          EditSenha.SetFocus;
          Exit;
        end;
     end
     else
     begin
        if QueryOperadorSenha.asString <> EditSenha.Text then
        begin
          MessageDlg('Senha Inv�lida !!!!', mtError, [mbOk], 0);
          EditSenha.SetFocus;
          Exit;
        end;
     end;

     if (QueryOperadorBanco_Dados.asString <> 'Todos') and
        (QueryOperadorBanco_Dados.asString <> ComboBoxBanco.Text) then
           begin
             MessageDlg('Acesso Negado!!!!', mtError, [mbOk], 0);
             ComboBoxBanco.SetFocus;
             Exit;
           end;


     Codigo_Operador := QueryOperadorCodigo.AsInteger;
     Apelido := QueryOperadorApelido.asString;
     // tira o desconto caso o mesmo esteja vencido..
     dm.ZeraDescontoVencidoBoleto(Apelido);
     //FormFundo.TimerT.Enabled := (apelido = 'TATIANA');
     Empresa := QueryEmpresaFantasia.AsString;
     
     Seletor.FormSeletor.Caption := 'Controle Administrativo     ' + 'Operador : ( ' + Senha.FormSenha.EditUsuario.Text + ' )'
         + '   Logon ' + DateToStr(dm.Now) + ' ' + TimeToStr(dm.Now) + '   Base : ( ' + ComboBoxBanco.Text + ' )';

     FormSenha.Tag := 1;
     QueryOperador.Close;
     QueryEmpresa.Close;
     Close;
     FormFundo.StatusBarFundo.Panels[1].Text := senha.Empresa;
     Dm.VerifNmMaquina;
end;


procedure TFormSenha.BitBtnCancelaClick(Sender: TObject);
begin
     Application.Terminate;
     FechouAplic := true;
end;

procedure TFormSenha.EditUsuarioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     Case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
          VK_ESCAPE : BitBtnCancelaClick(Sender);
     end;
end;

procedure TFormSenha.FormCreate(Sender: TObject);
var Ini: TIniFile;
begin
     QueryOperador.Open;
     QueryEmpresa.Open;
     EditUsuario.Text := '';
     EditSenha.Text := '';
     ComboBoxBanco.ItemIndex := 0;
     Tag := 0;
     Flague := 0;

     Cod_empresa := QueryEmpresaCodigo.asInteger;
     case QueryEmpresaCodigo.asInteger of
       1: begin  //Multiodonto
            Image2.Visible := True;
            Image3.Visible := False;
            ComboBoxBanco.ItemIndex := 0;
          end;
       2: begin //Seato
            Image2.Visible := False;
            Image3.Visible := True;
            ComboBoxBanco.ItemIndex := 1;
          end;
      end;
     Ini := TInifile.Create(ExtractFilePath(Application.Exename) +  'paramMt.ini');
     EditUsuario.text := Ini.ReadString('CONFIG', 'LastLogin', '');
     Ini.free;
end;

procedure TFormSenha.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     if FormSenha.Tag = 0 then
        CanClose := False;
end;

procedure TFormSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     if Key = vk_escape then
        BitBtnCancelaClick(Sender);
end;

procedure TFormSenha.FormShow(Sender: TObject);
begin
     FechouAplic := False;
     LabelVersao.caption := 'Vers�o ' + GetBuildInfo;
     FormFundo.StatusBarFundo.Panels[0].Text := DateToStr(dm.Date);
     FormFundo.StatusBarFundo.Panels[2].Text := TimeToStr(dm.Now);

     if Uppercase(copy(GetNmMaquina,1,11)) = 'ANALISTA_02' then
     begin
        Image1.visible := false;
        Image2.visible := false;
        Image3.visible := false;
        Panel2.visible := false;
     end;
     if (EditUsuario.text <> '') AND (DebugHook = 0) then
        EditSenha.setFocus;     
end;

procedure TFormSenha.Timer1Timer(Sender: TObject);
begin
   Timer1.Enabled := False;
   if ParamStr(1) = 'D' then //  D sig desenvolvimento
   begin
      EditUsuario.setFocus;
      EditUsuario.Text := 'ENIO';
      if ParamStr(2) = 'P' then //  Prototipo
         EditSenha.Text := 'proto'
      else
         EditSenha.Text := '183729';

      EditSenha.setFocus;
      BitBtnOkClick(Sender);
   end;
end;

procedure TFormSenha.FormClose(Sender: TObject; var Action: TCloseAction);
var Ini: TIniFile;
begin
     Ini := TInifile.Create(ExtractFilePath(Application.Exename) +  'paramMt.ini');
     Ini.WriteString('CONFIG','LastLogin', EditUsuario.text);
     Ini.free;
end;

end.
