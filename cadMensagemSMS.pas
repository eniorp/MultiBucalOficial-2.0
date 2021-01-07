unit cadMensagemSMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ADODB, DBCtrls;

type
  TFmCadMensagemSMS = class(TFmPadrao)
    ADOQueryMsg: TADOQuery;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure ADOQueryMsgNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadMensagemSMS: TFmCadMensagemSMS;

implementation

uses udm;

{$R *.dfm}

procedure TFmCadMensagemSMS.FormShow(Sender: TObject);
begin
  inherited;
   ADOQueryMsg.Close;
   ADOQueryMsg.Open;
end;

procedure TFmCadMensagemSMS.ADOQueryMsgNewRecord(DataSet: TDataSet);
begin
  inherited;

   ADOQueryMsg.FieldByName('cd_mensagem').AsString := dm.execmd('select isnull(max(cd_mensagem),0) + 1 m from mensagemSMS','m');
   ADOQueryMsg.FieldByName('lg_ativo').AsString := 'S';
   ADOQueryMsg.FieldByName('nm_mensagem').FocusControl;

end;

end.
