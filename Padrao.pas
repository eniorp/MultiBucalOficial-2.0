unit Padrao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Db, DBTables, ADODB;

type
  TFmPadrao = class(TForm)
    PanelLeft: TPanel;
    PanelRigth: TPanel;
    PanelCenter: TPanel;
    PanelBotton: TPanel;
    PanelTop: TPanel;
    DBGrid1: TDBGrid;
    Bevel1: TBevel;
    Panel1: TPanel;
    BitBtnSair: TBitBtn;
    DataSource1: TDataSource;
    Query1: TQuery;
    ADOQueryH: TADOQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPadrao: TFmPadrao;

implementation

{$R *.DFM}

procedure TFmPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
  
end;

procedure TFmPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0 , 0 );
end;

procedure TFmPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if DBGrid1.focused then
     exit;
   if Query1.Active then
   begin
      case key  of
        vk_down : Query1.Next;
        vk_up   : Query1.Prior;
      end;
   end;


end;

end.
