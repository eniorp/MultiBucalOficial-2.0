{ Sistema .........: Sistema Administrativo   }
{ Programa ........: Tela de Fundo do Sistema }
{ Cliente .........: MultiOdonto              }
{ Programador .....: Enio da Silveira   }
//tirar0
// lembretes

                                       
// desativar o DataBase
// senhas sa
  

//tirar00
// Mudar a versão
                         
unit Fundo;
                                      
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,  Dialogs,
  Db, DBTables, ExtCtrls, ComCtrls,
  StdCtrls, Menus, Grids, 
  DirOutln, ColorGrd, jpeg,enio,IniFiles, DBXpress, FMTBcd, SqlExpr,
  RLHTMLFilter, RLRichFilter, RLFilters, RLPDFFilter, QRExport, XPMan;
                                                                        
type
  TFormFundo = class(TForm)
    StatusBarFundo: TStatusBar;
    Timer1: TTimer;
    DatabaseMultiOdonto: TDatabase;
    PanelClear: TPanel;
    PanelFiguraFundo: TPanel;
    ImageFundo: TImage;
    Timer2: TTimer;
    TimerT: TTimer;
    QueryGenerica: TQuery;
    Timer3: TTimer;
    RLPDFFilter1: TRLPDFFilter;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    QRTextFilter1: TQRTextFilter;
    XPManifest1: TXPManifest;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure DatabaseMultiOdontoLogin(Database: TDatabase;
      LoginParams: TStrings);
    procedure TimerTTimer(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private

  public
    { Public declarations }
  end;

var
  FormFundo: TFormFundo;

implementation

{$R *.DFM}

uses Seletor, Senha, Cadastro, NetSend, Sobre, udm;

procedure TFormFundo.FormResize(Sender: TObject);
begin
   if WindowState = wsMaximized then
     FormSeletor.WindowState := wsNormal;
end;

procedure TFormFundo.FormCreate(Sender: TObject);

var Ini: TIniFile;
    
begin
     if DatabaseMultiOdonto.Connected then
        ShowMessage('desconectar o DatabaseMulti Bucal!');
     ShortDateFormat := 'dd/MM/yyyy';
     Left := 0;
     Top := 0;
     //FormFundo.StatusBarFundo.Panels[1].Text := senha.Empresa;
     Caption := '';
     if ParamStr(2) = 'P' then // significa Protótipo
     begin
        DatabaseMultiOdonto.AliasName := 'ProtoMulti';
        FmNetSend := TFmNetSend.Create(self);
        Timer2.Enabled := True;
     end                                                                                  
     else
     begin
        try
           DatabaseMultiOdonto.close;
           Ini := TInifile.Create(ExtractFilePath(Application.Exename) +  'paramMt.ini');
           DatabaseMultiOdonto.AliasName := Ini.ReadString('CONEXAO', 'alias', '');
           DatabaseMultiOdonto.open;
           try
             FormFundo.Height := StrToInt(Ini.ReadString('CONFIG', 'height', '768'));
             FormFundo.Width := StrToInt(Ini.ReadString('CONFIG', 'width', '1024'));
           except
              Height := 675;
              Width := 900;
           end;

           Ini.free;
        except
           DatabaseMultiOdonto.close;
           DatabaseMultiOdonto.AliasName := 'Multiodonto';
           DatabaseMultiOdonto.Open;
        end;

     end;
     if DatabaseMultiOdonto.AliasName = '' then
     begin
       DatabaseMultiOdonto.Close;
       DatabaseMultiOdonto.AliasName := 'Multiodonto';
       
       DatabaseMultiOdonto.Open;
     end;
     if uppercase(DatabaseMultiOdonto.AliasName) <> 'MULTIODONTO' then
     begin
       if DebugHook <> 0 then
          beep
       else
        repeat
        until application.MessageBox(Pchar('O Alias ODBC configurado nesta versao eh "' + DatabaseMultiOdonto.AliasName + '", O alias padrao eh "Multiodonto", voce pode nao estar acessando a base de dados em producao(oficial) deseja continuar ?'),'Alerta',
                                     MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk;
     end;
     QueryGenerica.Close;
     QueryGenerica.Open;
     //tirar00 depois que rodar o script
end;

procedure TFormFundo.Timer1Timer(Sender: TObject);
begin
   FormFundo.StatusBarFundo.Panels[2].Text := TimeToStr(dm.Now);
end;

procedure TFormFundo.Timer2Timer(Sender: TObject);
begin
   if not FmNetSend.Visible then
      FmNetSend.show;
end;

procedure TFormFundo.DatabaseMultiOdontoLogin(Database: TDatabase;
  LoginParams: TStrings);
  var Ini: TIniFile;

begin
   Ini := TInifile.Create(ExtractFilePath(Application.Exename) +  'paramMt.ini');
   if Ini.ReadString('CONEXAO', 'GetLogin', '') = 'S' then
   begin
      LoginParams.Values['USER NAME'] := InputBox('User Name','User Name','');
      LoginParams.Values['PASSWORD']  := InputBox('PWD','PWD','');
      
   end
   else
   begin
      LoginParams.Values['USER NAME'] := 'sa';
      LoginParams.Values['PASSWORD']  := 'sa';
   end;

   Ini.free;
  end;
procedure TFormFundo.TimerTTimer(Sender: TObject);
procedure erro;
begin
  try
   FormSobre.ShowModal;
  except
    on E: Exception do
      showMessage(E.Message);
  end;
end;
begin
   erro;
   erro;
   erro;
   erro;
   erro;
   erro;
   erro;
end;
//16657
procedure TFormFundo.Timer3Timer(Sender: TObject);
begin
    FormFundo.Timer3.Enabled := false;
    Application.CreateForm(TFormSenha, FormSenha);
    FormSenha.EditUsuario.text := senha.Apelido;
    FormSenha.EditUsuario.Enabled := False;
//    FormSenha.EditSenha.SetFocus;
    FormSenha.ShowModal;
    FormSenha.EditUsuario.Enabled := true;
    if FormSenha.Tag <> 1 then
       Close;
    Timer3.Enabled := true;
    FormSenha.free;
end;

procedure TFormFundo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.QueryGlobal.close;
 
end;

end.

