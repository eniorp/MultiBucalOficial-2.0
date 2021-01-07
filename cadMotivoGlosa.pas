unit cadMotivoGlosa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls;

type
  TFmCadMotivoGlosa = class(TFmPadrao)
    ADOQueryGlosa: TADOQuery;
    DBNavigator1: TDBNavigator;
    procedure ADOQueryGlosaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadMotivoGlosa: TFmCadMotivoGlosa;

implementation

{$R *.dfm}

procedure TFmCadMotivoGlosa.ADOQueryGlosaNewRecord(DataSet: TDataSet);
begin
  inherited;
   ADOQueryGlosa.FieldByName('ativo').AsString := 'S';
end;

end.
