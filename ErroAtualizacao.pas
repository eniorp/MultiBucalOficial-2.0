unit ErroAtualizacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  ComCtrls, DBCtrls;

type
  TFmErroAtualizacao = class(TFmPadrao)
    Panel2: TPanel;
    Panel3: TPanel;
    DBRichEdit1: TDBRichEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    DBRichEdit2: TDBRichEdit;
    CheckBox1: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmErroAtualizacao: TFmErroAtualizacao;

implementation

uses Senha, udm;

{$R *.DFM}

procedure TFmErroAtualizacao.CheckBox1Click(Sender: TObject);
begin
  inherited;
   Query1.close;
   if CheckBox1.checked then
      Query1.sql[1] := ' where revisada = 0 '
   else
     Query1.sql[1] := ' ';
   Query1.Open;

end;

procedure TFmErroAtualizacao.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   if (formSenha.EditUsuario.text = 'ENIO') then
   begin
      if Application.MessageBox('Confirma revisão?','Revisão',MB_YesNo) = Mryes then
      begin
         if not Query1.FieldByName('revisada').AsBoolean then
            dm.ExecutaComando('update erro_atualizacao set revisada = 1 where indice = ' + Query1.FieldByName('indice').AsString)
         else
            dm.ExecutaComando('update erro_atualizacao set revisada = 0 where indice = ' + Query1.FieldByName('indice').AsString);
         Query1.close;
         Query1.Open;
      end
   end
   else
      ShowMessage('Somente o desenvolvedor do sistema poderá revisar os erros de atualização !');
end;

end.
