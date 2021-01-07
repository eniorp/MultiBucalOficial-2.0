unit ArqErroSib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmCargaErroSib = class(TFmPadrao)
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Labemmsg: TLabel;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
      arq : textfile;
      VNrLinha,Vcco,linha,VNome,VCodigo : string;

      procedure CarregaTemp;
      procedure CarregaNnUsu;
     procedure IncluiRegistro;      
  public
    { Public declarations }
  end;

var
  FmCargaErroSib: TFmCargaErroSib;

implementation

uses udm, RelFrErroSib, Senha;

{$R *.dfm}

procedure TFmCargaErroSib.FormShow(Sender: TObject);
var NmTabela : string;
begin
  inherited;
    NmTabela := '#erroSib_' + dm.execmd('select convert(char(2),getdate(),103) + substring(convert(char(10),getdate(),103),4,2) + substring(convert(char(10),getdate(), ' + '103),9,2) + substring(convert(char(10),getdate(),108),1,2) + substring(convert(char(10),getdate(),108),4,2) + substring(convert(char(10),getdate(),108),7,2) tb','tb');
   ADOQuery1.close;
   ADOQuery1.sql[1] := NmTabela;
   ADOQuery1.sql[15] := NmTabela;
   ADOQuery1.Open;

end;

procedure TFmCargaErroSib.Button1Click(Sender: TObject);

begin
  inherited;
   if not OpenDialog1.Execute then
     exit;

   if (application.MessageBox('Confirma a letirua do arquivo de erros?','Confirmação',MB_OKCANCEL + MB_DEFBUTTON2 ) <> MrOk) then
      exit;
   Labemmsg.Caption := '';
   ADOQuery1.First;
   while not ADOQuery1.Eof do
      ADOQuery1.Delete;
   Edit1.Text := OpenDialog1.FileName;
   assignFile(Arq,OpenDialog1.FileName);
   Reset(Arq);
   Vcco := '';
   VNrLinha := '';
   Readln(Arq,linha);
   while not eof(arq) do
   begin
      CarregaTemp;
   end;
end;
procedure TFmCargaErroSib.CarregaNnUsu;
   // pelo layout de retorno de erro a primeira linha da arquivo é a linha original que deu erro
   // logo em sequencia vem o erro ou os erros relacionados a essa linha, então o controle é o nr da linha e o tipo do arquivo que deu erro
   // quando mudar o nr da linha e o tipo é que é outra linha

   // então para carregar o nome do usuario precisa saber qual tipo de arquivo é, inclusão, alteração,exclusão, reinclusão
   // pois para buscar o nome e codigo do usuario é diferente em cada tipo:
   // para inclusão o nome está no arquivo original
   // agora para alteração,exclusão e reincluisão o nome não vai no layout, precisa dar um bico na tabela usuario pelo codigo CCO
begin
   VNrLinha := copy(linha,1,8); // controla quantos erros do mesmo registro teve. //pega o sequencial e o tipo de registro
   VNome := '';
   VCodigo := '';
   Vcco := '';
   if copy(linha,8,1) = '1' then // o erro foi em uma linha de inclusão
   begin
      VNome := copy(linha,41,70);
      VCodigo := IntToStr(StrToInt(copy(linha,11,30))) // para tirar os zeros a esquerdas..;
   end
   else
   if copy(linha,8,1) = '2' then // o erro foi em uma linha de alteração tem que pegar o nome pelo cco
   begin
      VNome := copy(linha,23,70);
      Vcco := copy(linha,11,10);
   end
   else
   if copy(linha,8,1) = '7' then // o erro foi em uma linha de exclusao tem que pegar o nome pelo cco
       Vcco := copy(linha,11,10)
   else
   if copy(linha,8,1) = '8' then // o erro foi em uma linha de reinclusao tem que pegar o nome pelo cco
       Vcco := copy(linha,09,10)
   else
      ShowMessage('Atenção tipo de registro não previsto nessa rotina, entre em contato com o desenvolvedor do sistema');
   if Vcco <> '' then
   begin
      if dm.execmd('select count(*) q from usuario where cco = ''' + vcco + '''','q') <> '0' then
      begin
         VNome   := dm.execmd('select nome from usuario where cco = ''' + vcco + '''','nome') ;
         VCodigo := dm.execmd('select codigo_completo cd from usuario where cco = ''' + vcco + '''','cd');
      end
      else
        vcodigo := 'CCO NÃO LOCALIZADO NA BASE';
   end;

 end;
procedure TFmCargaErroSib.IncluiRegistro;
begin
  while not eof(arq) do
  begin
    Readln(Arq,linha);
    if copy(linha,1,8) = VNrLinha then
    begin
      ADOQuery1.Insert;
      ADOQuery1.FieldByName('cd_usuario').AsString := VCodigo;
      ADOQuery1.FieldByName('nm_usuario').AsString := VNome;
      ADOQuery1.FieldByName('tp_detalhe').AsString     := copy(linha,008,08);
//      ADOQuery1.FieldByName('cco').AsString          := copy(linha,009,10);
//      ADOQuery1.FieldByName('dg_cco').AsString       := copy(linha,019,02);
      ADOQuery1.FieldByName('nr_controle').AsString := copy(linha,021,02);
      ADOQuery1.FieldByName('campo_erro').AsString   := trim(copy(linha,023,69));
      ADOQuery1.FieldByName('cd_erro').AsString      := trim(copy(linha,092,03));
      ADOQuery1.FieldByName('ds_erro').AsString      := trim(copy(linha,095,40));
      ADOQuery1.FieldByName('ds_causa').AsString     := trim(copy(linha,135,70));
      ADOQuery1.post;
    end
    else
    begin
      VNrLinha := copy(linha,1,8);
      break;
    end;
  end;

end;
procedure tfmCargaErroSib.CarregaTemp;
begin
   // pelo layout de retorno de erro a primeira linha da arquivo é a linha original que deu erro
   // logo em sequencia vem o erro ou os erros relacionados a essa linha, então o controle é o nr da linha e o tipo do arquivo que deu erro
   // quando mudar o nr da linha e o tipo é que é outra linha

   // então para carregar o nome do usuario precisa saber qual tipo de arquivo é, inclusão, alteração,exclusão, reinclusão
   // pois para buscar o nome e codigo do usuario é diferente em cada tipo:
   // para inclusão o nome está no arquivo original
   // agora para alteração,exclusão e reincluisão o nome não vai no layout, precisa dar um bico na tabela usuario pelo codigo CCO
   CarregaNnUsu;
   incluiRegistro;
end;
procedure TFmCargaErroSib.Button2Click(Sender: TObject);
begin
  inherited;

   FrRelErroSib := TFrRelErroSib.create(Senha.empresa,'ERROS SIB',self);
   FrRelErroSib.RLReportH.PreviewModal;
   FrRelErroSib.Free;

end;

end.
