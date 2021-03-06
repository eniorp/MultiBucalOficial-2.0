unit CadServicosImcompativeisOdonto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, ADODB, ExtCtrls, Buttons;

type

  TFmCadServIncompativeisOdonto = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ADOQuery1BeforePost(DataSet: TDataSet);
    procedure ADOQuery1AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmCadServIncompativeisOdonto: TFmCadServIncompativeisOdonto;

implementation

uses udm;

{$R *.dfm}

procedure TFmCadServIncompativeisOdonto.FormShow(Sender: TObject);
begin
   AdoQuery1.Open;
end;

procedure TFmCadServIncompativeisOdonto.ADOQuery1BeforePost(
  DataSet: TDataSet);
begin
   if AdoQuery1.FieldByName('face').AsString <> '' then
   begin
      if not dm.PValidaFace('34' + AdoQuery1.FieldByName('face').AsString,AdoQuery1.FieldByName('cd_servico2').AsString,false) then
      begin
         AdoQuery1.FieldByName('face').FocusControl;
         Abort;
      end;
   end;

  if AdoQuery1.FieldByName('indice').Isnull then
     AdoQuery1.FieldByName('indice').AsString := dm.execmd('select isnull(max(indice),0) + 1 m from ServIncompativeisOdonto','m');

end;

procedure TFmCadServIncompativeisOdonto.ADOQuery1AfterPost(
  DataSet: TDataSet);
begin
   AdoQuery1.close;
   AdoQuery1.open;
   AdoQuery1.last;
end;

end.
