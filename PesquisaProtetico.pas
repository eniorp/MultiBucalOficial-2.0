{ Sistema .........: Sistema Administrativo                                    }
{ Programa ........: Tela de Pesquisa de Protetico                             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PesquisaProtetico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, ExtCtrls, Grids, DBGrids ;

type
  TFormPesquisaProteticos = class(TForm)
    DBGridPesquisaProteticos: TDBGrid;
    PanelNavigatorPesquisa: TPanel;
    DBNavigatorProtetico: TDBNavigator;
    PanelLocalizarProduto: TPanel;
    Label1: TLabel;
    EditLocalizarProtetico: TEdit;
    BitBtnSair: TBitBtn;
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGridPesquisaProteticosExit(Sender: TObject);
    procedure EditLocalizarProteticoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPesquisaProteticos: TFormPesquisaProteticos;
  Campo: String[5];

implementation

uses udm;

{$R *.DFM}

procedure TFormPesquisaProteticos.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormPesquisaProteticos.FormActivate(Sender: TObject);
begin
     EditLocalizarProtetico.SetFocus;
end;

procedure TFormPesquisaProteticos.DBGridPesquisaProteticosExit(
  Sender: TObject);
begin
     BitBtnSair.SetFocus;
end;

procedure TFormPesquisaProteticos.EditLocalizarProteticoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = vk_return then
  begin
//     SQLQueryProtet.Close;
//     SQLQueryProtet.sql[2] := '''%' + EditLocalizarProtetico.text + '%''';
//     SQLQueryProtet.open;
  end;

end;

procedure TFormPesquisaProteticos.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
      showMessage('ola');
end;

end.
