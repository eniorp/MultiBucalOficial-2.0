unit USms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, InvokeRegistry, StdCtrls, Rio, SOAPHTTPClient, Buttons, Mask,Shellapi,
  jpeg, ExtCtrls, DBCtrls, DB, ADODB,enio;

type
  TFmEnviaSMS = class(TForm)
    HTTPRIO1: THTTPRIO;
    Button1: TButton;
    BitBtn1: TBitBtn;
    EditDD: TEdit;
    EditFone: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LabelCaracter: TLabel;
    EditMensagem: TMemo;
    Label6: TLabel;
    ButtonCadastrarMsgSMS: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    ADOQueryMsg: TADOQuery;
    DataSource1: TDataSource;
    CheckBoxPersonalizarSMS: TCheckBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditMensagemChange(Sender: TObject);
    procedure ButtonCadastrarMsgSMSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure CheckBoxPersonalizarSMSClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure formataCelular();
    procedure gravaContatos();
  public
      cdContratante : string;
      celular       : string;
  end;

var
  FmEnviaSMS: TFmEnviaSMS;

implementation

uses

Prjsms, udm, cadMensagemSMS, senha;

{$R *.dfm}

procedure TFmEnviaSMS.Button1Click(Sender: TObject);
var
  ObjSoap : SmsServicePort;
  Num : string;
  nmUsuarioSMS, senhaSMS : string;
begin
  nmUsuarioSMS := dm.GetParam('SMSU');
  senhaSMS     := dm.GetParam('SMSP');

  ObjSoap := Httprio1 as SmsServicePort;
  Num := ObjSoap.creditos(nmUsuarioSMS,senhaSMS);
  Num := Copy(Num,9, Length(Num));

  Num := Copy(Num,1, Pos(',',num) - 1);

  Button1.Caption :='Créditos Restantes:'+ Num;


//  Showmessage('Créditos Restantes: ' + Num);
  //Creditos();
end;

procedure TFmEnviaSMS.BitBtn1Click(Sender: TObject);
var
  ObjSoap : SmsServicePort;
  Num : string;
  Posicao : Integer;
  nmUsuarioSMS, senhaSMS : string;
  begin
//  gravaContatos();
//  exit;
  ObjSoap := Httprio1 as SmsServicePort;
  nmUsuarioSMS := dm.GetParam('SMSU');
  senhaSMS     := dm.GetParam('SMSP');
  Num := ObjSoap.enviarSMS(EditDD.text,EditFone.text,EditMensagem.text,nmUsuarioSMS,senhaSMS);
  Posicao:= Pos(',',Num);
  Delete(Num,Posicao,30);

//  Showmessage(Num);
   If Copy(Num,1,1) = '0' then
   begin
     gravaContatos();
     Showmessage('Mensagem enviada!');
  end
  else
   if  Copy(Num,1,1) = '1' then
  Showmessage('Mensagem não enviada Tente Novamente!')
  else
   if  Copy(Num,1,3) = '400' then
  Showmessage('O usuário ou senha fornecidas não são reconhecidas pelo sistema.!')
    else
   if  Copy(Num,1,3) = '401' then
  Showmessage('O usuário foi autenticado com sucesso, entretanto não possui permissão para utilização do serviço.!')
    else
   if  Copy(Num,1,3) = '402' then
  Showmessage('O usuário não tem nenhuma carga de créditos ou todos os créditos expiraram.')
    else
   if  Copy(Num,1,3) = '403' then
  Showmessage('Os créditos do usuário acabaram.')
    else
   if  Copy(Num,1,3) = '404' then
  Showmessage('O envio de SenderID personalizado deverá ser contrato à parte dos créditos.')
    else
 if  Copy(Num,1,3) = '405' then
  Showmessage('Para enviar vários SMS de uma única vez o usuário deverá possuir créditos suficientes antes de '+
'proceder o envio. No envio múltiplo, ou se envia todas, ou não se envia.')
  else
 if  Copy(Num,1,3) = '500' then
  Showmessage('Os campos de usuário e senha não foram fornecidos.')
    else
 if  Copy(Num,1,3) = '501' then
  Showmessage('O telefone deve ter 8 dígitos e começar com [6-9]');





   Button1.Click;



   end;

procedure TFmEnviaSMS.gravaContatos();
begin
   dm.execmd('set dateformat dmy insert into contato ' +
             ' (Data_Contato, Hora_Contato, Codigo_Contratante,  Data_Agenda, Operador, Tipo, Hora_Agenda,texto_contato) ' +
             ' values(convert(char(10),getdate(),103),convert(char(8),getdate(),108), ' + cdContratante + ',convert(char(10),getdate(),103),' + inttoStr(senha.codigo_operador) +  ',83,convert(char(8),getdate(),108),''' + Replace(EditMensagem.Text,'''','"') + ' para : ' + EditDD.text + '-' + EditFone.text + ''')');

end;
procedure TFmEnviaSMS.EditMensagemChange(Sender: TObject);
  Var
   Numero : integer;
   texto : String;
   begin
     Texto := EditMensagem.Text;
     Numero := Length(EditMensagem.Text);
     LabelCaracter.Caption := IntToStr(160-Numero);
     If Numero > 160 then
     Begin
     Showmessage('Excedeu o Numero de Caracteres');
     Delete(Texto,Numero,Numero);
     EditMensagem.Text := texto;

     end;


     end;

procedure TFmEnviaSMS.ButtonCadastrarMsgSMSClick(Sender: TObject);
begin
   FmCadMensagemSMS := TFmCadMensagemSMS.create(self);
   FmCadMensagemSMS.ShowModal;
   FmCadMensagemSMS.Free;
   ADOQueryMsg.Close;
   ADOQueryMsg.open;
   
end;
procedure TFmEnviaSMS.formataCelular();
begin
   celular := enio.Sonumero(celular);
   if length(celular) = 0 then
      exit;
   celular := FloatToStr(strToFloat(celular));

   if length(celular) < 10 then
   begin
     EditDD.Text := '16';
     EditFone.Text := celular;
   end
   else
   begin
     EditDD.Text := copy(celular,1,2);
     EditFone.Text := copy(celular,3,length(celular));
   end;
   if not (StrToInt(copy(EditFone.text,1,1)) in [9,8,7]) then
   begin
     If Application.MessageBox(Pchar('O número ' + EditDD.Text + '-' + EditFone.Text + ' não parece ser um telefone celular, confirma esse número ? '),'Celuar',MB_YesNo + MB_DEFBUTTON2)  = mrNo then
     begin
        EditDD.Clear;
        EditFone.Clear;
     end;
   end;

end;
procedure TFmEnviaSMS.FormShow(Sender: TObject);
begin

   formataCelular();
   ADOQueryMsg.Close;
   ADOQueryMsg.open;
   ButtonCadastrarMsgSMS.Enabled := dm.VerifPermissao('0','0','0','157');
   CheckBoxPersonalizarSMS.Enabled := dm.VerifPermissao('0','0','0','158');
   
end;

procedure TFmEnviaSMS.DBLookupComboBox1Click(Sender: TObject);
begin

   EditMensagem.Text := dm.execmd('select ds_mensagem m from mensagemSMS where cd_mensagem = ' + ADOQueryMsg.fieldByName('cd_mensagem').AsString,'m');
end;

procedure TFmEnviaSMS.CheckBoxPersonalizarSMSClick(Sender: TObject);
begin
   EditMensagem.Enabled := CheckBoxPersonalizarSMS.Checked;
end;

procedure TFmEnviaSMS.Button2Click(Sender: TObject);
begin
   close;
end;

end.
