unit Associa_cco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmAssociaCCO = class(TFmPadrao)
    OpenDialog1: TOpenDialog;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    ADOQuery1: TADOQuery;
    Labemmsg: TLabel;
    procedure Button1Click(Sender: TObject);

    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmAssociaCCO: TFmAssociaCCO;

implementation

uses udm;

{$R *.dfm}

procedure TFmAssociaCCO.Button1Click(Sender: TObject);
var arq : textfile;
    linha : string;
begin
  inherited;
   if OpenDialog1.Execute then
   begin
      if (application.MessageBox('Confirma a associação dos códigos CCO?','Confirmação',MB_OKCANCEL + MB_DEFBUTTON2 ) <> MrOk) then
         exit;
      Labemmsg.Caption := '';
      ADOQuery1.First;
      while not ADOQuery1.Eof do
         ADOQuery1.Delete;
      Edit1.Text := OpenDialog1.FileName;
      assignFile(Arq,OpenDialog1.FileName);
      Reset(Arq);
      while not eof(arq) do
      begin
         Readln(Arq,linha);
         if (dm.execmd('select count(*) qt from usuario where codigo_completo = ' + copy(linha,11,30),'qt') = '0') then
         begin
            ShowMessage('Atenção a linha do arquivo CCO (' + linha + ') não foi localizada no banco de dados, CCO não atualizado, verifique!');
            continue;
         end;
         dm.execmd('update usuario set cco = ''' + copy(linha,149,10) + ''' , dg_cco = ''' + copy(linha,159,2) + ''' where cco is null and codigo_completo = ' + copy(linha,11,30));
         ADOQuery1.Insert;
         ADOQuery1.FieldByName('codigo').AsString := copy(linha,11,30);
         ADOQuery1.FieldByName('nome').AsString := copy(linha,41,60);
         ADOQuery1.FieldByName('cco').AsString := copy(linha,149,10);
         ADOQuery1.FieldByName('dg_cco').AsString := copy(linha,159,2);
         ADOQuery1.post;
      end;
      Labemmsg.Caption := 'Atualização efetuada com sucesso!';
      CloseFile(arq);

   end;
end;

procedure TFmAssociaCCO.FormShow(Sender: TObject);
var NmTabela : string;
begin
  inherited;
    // monta o nome tabela temporaria com #cco_ + ddmmyyhhmmss
    NmTabela := '#cco_' + dm.execmd('select convert(char(2),getdate(),103) + substring(convert(char(10),getdate(),103),4,2) + substring(convert(char(10),getdate(), ' + '103),9,2) + substring(convert(char(10),getdate(),108),1,2) + substring(convert(char(10),getdate(),108),4,2) + substring(convert(char(10),getdate(),108),7,2) tb','tb');
   ADOQuery1.close;
   ADOQuery1.sql[1] := NmTabela;
   ADOQuery1.sql[4] := NmTabela;
   ADOQuery1.Open;
end;

end.



