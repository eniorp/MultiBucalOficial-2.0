unit PesqOrcamentosExc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask, ADODB, DBCtrls;

type
  TFmPesqOrcamentosExc = class(TFmPadrao)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    EditOrcamento: TEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    ADOQuery1: TADOQuery;
    DBMemo1: TDBMemo;
    ADOQuery1NUMERO: TIntegerField;
    ADOQuery1DTDIGITACAO: TDateTimeField;
    ADOQuery1DATAEXCL: TDateTimeField;
    ADOQuery1OPEXCLUSAO: TStringField;
    ADOQuery1CD_USUARIO: TIntegerField;
    ADOQuery1NM_USUARIO: TStringField;
    ADOQuery1DENTISTA: TIntegerField;
    ADOQuery1NM_DENTISTA: TStringField;
    ADOQuery1TOTAL: TBCDField;
    ADOQuery1TOTAL_BRUTO: TBCDField;
    ADOQuery1TOTAL_DESCONTO: TBCDField;
    ADOQuery1TOTAL_DENTISTA: TBCDField;
    ADOQuery1TOTAL_PROTETICO: TBCDField;
    ADOQuery1DSSTATUSORC: TStringField;
    ADOQuery1DSSTATUSPAGTO: TStringField;
    ADOQuery1DTAPROVACAO: TDateTimeField;
    ADOQuery1AUTORIZADO: TStringField;
    ADOQuery1OPAPROVACAO: TStringField;
    ADOQuery1OPCADASTRO: TStringField;
    ADOQuery1DS_MOTIVO_EXCL: TStringField;
    ADOQuery1CONTRATANTE_TITULAR: TIntegerField;
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmPesqOrcamentosExc: TFmPesqOrcamentosExc;

implementation

uses udm;

{$R *.dfm}

procedure TFmPesqOrcamentosExc.BitBtn2Click(Sender: TObject);
begin
  inherited;
   AdoQuery1.Close;
   AdoQuery1.sql[42] := ' where 1 = 1 ';
   if EditOrcamento.Text <> '' then
      AdoQuery1.sql[42] := AdoQuery1.sql[42] + ' and o.numero = ' + EditOrcamento.Text;

   if (MaskEditDtIni.Text <> '  /  /    ') and (MaskEditDtFim.Text <> '  /  /    ') then
      AdoQuery1.sql[42] := AdoQuery1.sql[42] + ' and O.DATA_HORA BETWEEN ''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + ' 23:59''';
   AdoQuery1.Open;
end;

end.
