unit SelecionaNovoTitular;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB;

type
  TFmSelecionaNovoTitular = class(TFmPadrao)
    Label1: TLabel;
    Label2: TLabel;
    ADOQuery1: TADOQuery;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmSelecionaNovoTitular: TFmSelecionaNovoTitular;

implementation

uses udm;

{$R *.dfm}

procedure TFmSelecionaNovoTitular.Button1Click(Sender: TObject);
begin
  inherited;
    if ADOQuery1.FieldByName('cpf').IsNull or (ADOQuery1.FieldByName('cpf').AsString = '') then
       ShowMessage('Usuário não possui cpf, não pode ser titular !')
    else
   if Application.MessageBox(Pchar('Confirma o usuário "' + Adoquery1.fieldByName('nome').AsString + '" como novo titular?'),'Confirmção', MB_YESNO + MB_DEFBUTTON2) = IdYes then
   begin
      FmSelecionaNovoTitular.tag := 100;
      close;
   end
end;

end.
