unit LiberaOdonto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TFmSenhaOdonto = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EditUsu: TEdit;
    EditSenha: TEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSenhaOdonto: TFmSenhaOdonto;

implementation

uses udm;

{$R *.DFM}

procedure TFmSenhaOdonto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
     Perform(WM_NEXTDLGCTL, 0, 0)
  else
  if key = VK_ESCAPE then
     close;
end;
  {
procedure TFmSenhaOdonto.BitBtn1Click(Sender: TObject);
begin
   FmSenhaOdonto.tag := 0;
   if dm.GetParam('ENCRY') = 'S' then
      BitBtn1.tag :=  1
   else
     BitBtn1.tag :=  0;

   if dm.ExecutaComando('select codigo ,senha,LiberaOdonto from operador where  dtexclusao is null and apelido = ''' + EditUsu.Text + '''', 'codigo') = '' then
   begin
      ShowMessage('Nome de usuário não encontrado !');
      EditUsu.SetFocus;
      exit;
   end;

   if BitBtn1.tag = 1 then
   begin
      if uppercase(dm.Decrypt(dm.QueryGlobal.FieldByName('senha').AsString)) <> uppercase(EditSenha.Text) then
      begin
         ShowMessage('Senha inválida !');
         EditSenha.SetFocus;
         exit;
      end;
   end
   else
   begin
      if uppercase(dm.QueryGlobal.FieldByName('senha').AsString) <> uppercase(EditSenha.Text) then
      begin
         ShowMessage('Senha inválida !');
         EditSenha.SetFocus;
         exit
      end;
   end;

   if dm.QueryGlobal.FieldByName('LiberaOdonto').AsString = 'S' then
   begin
      FmSenhaOdonto.tag := dm.QueryGlobal.FieldByName('codigo').AsInteger;
      dm.executacomando('update parametro set vl_parametro = ''' + EditUsu.Text + ''' where cd_parametro = ''LASTUS''');
      Close;
   end
   else
      ShowMessage('Usuário não habilitado para liberar eventos do odontograma !');
end;
     }

procedure TFmSenhaOdonto.BitBtn1Click(Sender: TObject);
begin
   FmSenhaOdonto.tag := 0;
   if dm.GetParam('ENCRY') = 'S' then
      BitBtn1.tag :=  1
   else
     BitBtn1.tag :=  0;

   if dm.ExecutaComando('select codigo ,senha,LiberaOdonto from operador where  dtexclusao is null and apelido = ''' + EditUsu.Text + '''', 'codigo') = '' then
   begin
      ShowMessage('Nome de usuário não encontrado !');
      EditUsu.SetFocus;
      exit;
   end;

   if BitBtn1.tag = 1 then
   begin
      if uppercase(dm.Decrypt(dm.QueryGlobal.FieldByName('senha').AsString)) <> uppercase(EditSenha.Text) then
      begin
         ShowMessage('Senha inválida !');
         EditSenha.SetFocus;
         exit;
      end;
   end
   else
   begin
      if uppercase(dm.QueryGlobal.FieldByName('senha').AsString) <> uppercase(EditSenha.Text) then
      begin
         ShowMessage('Senha inválida !');
         EditSenha.SetFocus;
         exit
      end;
   end;
   if FmSenhaOdonto.tag <> 100 then // aproveitando o form de senha odontograma para permitir excluir usuario sem cco
   begin
      if dm.QueryGlobal.FieldByName('LiberaOdonto').AsString = 'S' then
      begin
         FmSenhaOdonto.tag := dm.QueryGlobal.FieldByName('codigo').AsInteger;
         dm.executacomando('update parametro set vl_parametro = ''' + EditUsu.Text + ''' where cd_parametro = ''LASTUS''');
         Close;
      end
      else
         ShowMessage('Usuário não habilitado para liberar eventos do odontograma !');
   end
   else
   begin
      FmSenhaOdonto.tag := dm.QueryGlobal.FieldByName('codigo').AsInteger;
      close;
   end;
end;   

procedure TFmSenhaOdonto.FormShow(Sender: TObject);
begin
   EditUsu.Text := dm.executacomando('select vl_parametro A from parametro where cd_parametro = ''LASTUS''','A');
   if EditUsu.Text <> '' then
      EditSenha.SetFocus;
end;

end.
