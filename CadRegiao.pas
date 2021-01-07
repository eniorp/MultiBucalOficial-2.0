unit CadRegiao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, DBCtrls, ADODB;

type
  TFmCadRegiao = class(TFmPadrao)
    DBNavigator1: TDBNavigator;
    ADOQueryRegiao: TADOQuery;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadRegiao: TFmCadRegiao;

implementation

{$R *.dfm}

procedure TFmCadRegiao.FormShow(Sender: TObject);
begin
  inherited;
   ADOQueryRegiao.Close;
   ADOQueryRegiao.Open;
end;

end.
