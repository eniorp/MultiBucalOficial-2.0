unit ParamRelTitPgContratRestricao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons;

type
  TFmParamRelTitPgContratRestricao = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    MaskEditDtFim: TMaskEdit;
    BitBtn2: TBitBtn;
    BitBtnSair: TBitBtn;
    Label3: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure MaskEditDtIniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamRelTitPgContratRestricao: TFmParamRelTitPgContratRestricao;

implementation

uses relContratRestricaoTitPago, senha, udm;

{$R *.dfm}

procedure TFmParamRelTitPgContratRestricao.BitBtn2Click(Sender: TObject);
begin

   if(MaskEditDtIni.Text = '  /  /    ') or (MaskEditDtFim.Text = '  /  /    ') then
   begin
      ShowMessage('Informe a data início e a data fim !');
      exit;
   end;
   if(StrToDate(MaskEditDtIni.Text)) > (StrToDate(MaskEditDtFim.text)) then
   begin
      ShowMessage('A Data fim deve ser maior que a data início !');
      exit;
   end;
   
   FmFrrContratRestricaoTitPago := TFmFrrContratRestricaoTitPago.create(senha.Empresa,'TITULOS PAGOS DE CONTRATANTES COM RESTRIÇÃO',self);
   FmFrrContratRestricaoTitPago.RLLabel9.Caption := 'Período : ' +   MaskEditDtIni.Text + ' A ' + MaskEditDtFim.Text;

   FmFrrContratRestricaoTitPago.ADOQueryReceber.Close;
   FmFrrContratRestricaoTitPago.ADOQueryReceber.sql[18] := '''' + MaskEditDtIni.Text + ''' and ''' + MaskEditDtFim.Text + ' 23:59''';
   FmFrrContratRestricaoTitPago.ADOQueryReceber.Open;
   FmFrrContratRestricaoTitPago.RLReportH.PreviewModal;


end;

procedure TFmParamRelTitPgContratRestricao.MaskEditDtIniExit(
  Sender: TObject);
begin
  if copy(MaskEditDtIni.Text,1,2) = '01' then
  begin
      dm.sp_lastDayMonth.Close;
      dm.sp_lastDayMonth.ParamByName('@MesAno').AsString := copy(MaskEditDtIni.Text,4,7);
      dm.sp_lastDayMonth.Open;
      MaskEditDtFim.text := dm.sp_lastDayMonth.FieldByName('LastDayMonth').AsString;
      dm.sp_lastDayMonth.close;
//      ver se deu certo
  end;
end;

end.
