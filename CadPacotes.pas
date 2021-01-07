unit CadPacotes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,
  DBCtrls, Mask,enio, ADODB;

type
  TFmCadPacotes = class(TFmPadrao)
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DsPacote: TDataSource;
    QueryPacote: TQuery;
    Label3: TLabel;
    Query1cd_pacote: TIntegerField;
    Query1cd_servico: TIntegerField;
    Query1qt_servico: TSmallintField;
    BitBtnPesquisar: TBitBtn;
    Panel2: TPanel;
    DBNavigator2: TDBNavigator;
    procedure PanelTopExit(Sender: TObject);
    procedure QueryPacoteBeforePost(DataSet: TDataSet);
    procedure QueryPacoteAfterScroll(DataSet: TDataSet);
    procedure Query1cd_servicoValidate(Sender: TField);
    procedure Query1AfterScroll(DataSet: TDataSet);
    procedure QueryPacoteAfterPost(DataSet: TDataSet);
    procedure Query1NewRecord(DataSet: TDataSet);
    procedure Query1AfterPost(DataSet: TDataSet);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure QueryPacoteNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TIECustomGrid = class(TCustomGrid)
  public
    property InplaceEditor;
  end;

  TIEInplaceEdit = class(TInplaceEdit)
  public
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  end;

var
  FmCadPacotes: TFmCadPacotes;

implementation

uses udm, PesqPacote;

{$R *.DFM}

procedure TFmCadPacotes.PanelTopExit(Sender: TObject);
begin
  inherited;
   if not QueryPacote.FieldByName('cd_pacote').IsNull and (QueryPacote.State in
      [DsEdit,DsInsert]) then
      QueryPacote.Post;

end;

procedure TFmCadPacotes.QueryPacoteBeforePost(DataSet: TDataSet);
begin
  inherited;
   if dm.ExecutaComando('select count(*) q from servicos where codigo = ' +
      QueryPacote.FieldByname('cd_pacote').AsString,'q') = '0' then
   begin
     ShowMessage('O C�digo do pacote deve ser o c�digo de um servi�o V�lido');
     DBEdit1.SetFocus;
     Abort;
   end;
   ValidaCampo(QueryPacote,'cd_pacote','C�digo do Pacote',true);
   ValidaCampo(QueryPacote,'ds_pacote','Descri��o do Pacote',true);   
end;

procedure TFmCadPacotes.QueryPacoteAfterScroll(DataSet: TDataSet);
begin
  inherited;
   Query1.Close;
   if not QueryPacote.FieldByName('cd_pacote').IsNull then
   begin
      Query1.sql[1] := QueryPacote.FieldByName('cd_pacote').AsString;
      Query1.Open;
   end;
   
end;

procedure TFmCadPacotes.Query1cd_servicoValidate(Sender: TField);
begin
  inherited;
   Label3.Caption := dm.ExecutaComando('select descricao d from servicos where codigo = ''' +
   Query1cd_Servico.AsString + '''','d') ;
end;

procedure TFmCadPacotes.Query1AfterScroll(DataSet: TDataSet);
begin
  inherited;
   Label3.Caption := dm.ExecutaComando('select descricao d from servicos where codigo = ''' +
   Query1cd_Servico.AsString + '''','d') ;
end;

procedure TFmCadPacotes.QueryPacoteAfterPost(DataSet: TDataSet);
var VcdPacote : String[10];
begin
  inherited;
   VcdPacote := QueryPacote.FieldByName('cd_pacote').AsString;
   QueryPacote.Close;
   QueryPacote.sql[1] := VcdPacote;
   QueryPacote.Open;
end;

procedure TFmCadPacotes.Query1NewRecord(DataSet: TDataSet);
begin
  inherited;
   Query1cd_pacote.AsInteger := QueryPacote.FieldbyName('cd_pacote').AsInteger;
end;

procedure TFmCadPacotes.Query1AfterPost(DataSet: TDataSet);
begin
  inherited;
   Query1.Close;
   Query1.Open;
   Query1.Last;
end;

procedure TFmCadPacotes.DBEdit1Exit(Sender: TObject);
Var VCdPacote : String[10];
begin
  inherited;
   VCdPacote := DbEdit1.text;
   if VCdPacote <> '' then
   begin
      if dm.ExecutaComando('select count(*) q from pacote where cd_pacote = ' + VCdPacote,'q') <> '0' then
      begin
         QueryPacote.Close;
         QueryPacote.sql[1] := VCdPacote;
         QueryPacote.Open;
      end;
   end;
end;

procedure TFmCadPacotes.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key =  vk_return then
   begin
      key := vk_tab;
      if Assigned(TIECustomGrid(Sender).InplaceEditor) then
         TIEInplaceEdit(TIECustomGrid(Sender).InplaceEditor).KeyDown(key,shift);
   end;

end;
procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TFmCadPacotes.FormShow(Sender: TObject);
begin
  inherited;
   QueryPacote.open;
end;

procedure TFmCadPacotes.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   if key = #13 then
      Perform(WM_NEXTDLGCTL, 0 , 0 );
end;

procedure TFmCadPacotes.BitBtnPesquisarClick(Sender: TObject);
begin
  inherited;
  FmPesqPacote := TFmPesqPacote.create(self);
  FmPesqPacote.ShowModal;
  if FmPesqPacote.tag = 1 then
  begin
     DBEdit1.text := FmPesqPacote.Query1.FieldByName('cd_pacote').AsString;
     DBEdit1Exit(Sender);
  end;
  FmPesqPacote.free;
end;

procedure TFmCadPacotes.QueryPacoteNewRecord(DataSet: TDataSet);
begin
  inherited;
   Label3.Caption := '';
end;

end.
