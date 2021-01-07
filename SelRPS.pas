unit SelRPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, ADODB, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, Mask;

type
  TFmSelRPS = class(TFmPadrao)
    ADOQueryFaturamento: TADOQuery;
    GroupBox1: TGroupBox;
    MaskEditDtIni: TMaskEdit;
    Label2: TLabel;
    Label1: TLabel;
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    ADOQueryFaturamentocd_contratante: TAutoIncField;
    ADOQueryFaturamentonm_contratante: TStringField;
    ADOQueryFaturamentovalor: TBCDField;
    ADOQueryFaturamentosessao: TIntegerField;
    ADOQueryFaturamentoflag: TBooleanField;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Button2: TButton;
    Button3: TButton;
    ADOStoredProcsp_geraLoteRPS: TADOStoredProc;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
     sessaoAux : integer;
  public
    { Public declarations }
  end;

var
  FmSelRPS: TFmSelRPS;

implementation

uses udm, senha;

{$R *.dfm}

procedure TFmSelRPS.Button1Click(Sender: TObject);
begin
  inherited;
   dm.execmd('exec sp_geraTempRPS ''' + MaskEditDtIni.Text + ''',''' + MaskEdit1.Text + '''');
   sessaoAux := StrToInt(dm.execmd('select max(sessao) m from temp_rps','m'));
   AdoQueryFaturamento.Close;
   AdoQueryFaturamento.sql[1] := IntToStr(sessaoAux);
   AdoQueryFaturamento.open;
   DBGrid1.setFocus;
end;

procedure TFmSelRPS.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_space then
   begin
         DBGrid1DblClick(sender);
   end;
end;

procedure TFmSelRPS.FormShow(Sender: TObject);
begin
  inherited;
   sessaoAux := 0;
end;

procedure TFmSelRPS.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
     if ADOQueryFaturamentoflag.AsBoolean then
     begin
        DBGrid1.Canvas.Font.Color:= ClRed;
        DBGrid1.Canvas.Font.Style := [fsBold];
     end
     else
     begin
        DBGrid1.Canvas.Font.Color:= Clnone;
        DBGrid1.Canvas.Font.Style := [];
     end;

   DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.columns[datacol].field, State);


end;

procedure TFmSelRPS.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   ADOQueryFaturamento.Edit;
   ADOQueryFaturamentoflag.AsBoolean := not ADOQueryFaturamentoflag.AsBoolean;
   ADOQueryFaturamento.Post;

   Edit1.text := dm.execmd('select isnull(sum(valor),0) v from temp_rps where sessao = ' + IntTostr(SessaoAux) + ' and flag = 1','v');

   Edit1.text := formatFloat('###,###,##0.00',StrToFloat(Edit1.text));
end;

procedure TFmSelRPS.Button2Click(Sender: TObject);
begin
  inherited;
     if application.MessageBox(Pchar('confirma geração do lote RPS de NFe no valor de ' + Edit1.text + ' ?'),'Alerta',MB_OKCANCEL + MB_DEFBUTTON2 ) = MrOk then
     begin
        ADOStoredProcsp_geraLoteRPS.Close;
        ADOStoredProcsp_geraLoteRPS.Parameters[1].Value := sessaoAux;
        ADOStoredProcsp_geraLoteRPS.Parameters[2].Value := copy(MaskEditDtIni.Text,4,7);
        ADOStoredProcsp_geraLoteRPS.Parameters[3].Value := senha.Apelido;
        ADOStoredProcsp_geraLoteRPS.Open;

        ShowMessage('Lote RPS número ' + ADOStoredProcsp_geraLoteRPS.FieldByName('nrLoteRps').AsString + ' gerado com sucesso');
        AdoQueryFaturamento.close;
        AdoQueryFaturamento.open;
     end;
end;

end.
