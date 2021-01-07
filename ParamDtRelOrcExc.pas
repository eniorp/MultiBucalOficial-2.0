unit ParamDtRelOrcExc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ParamDatas, StdCtrls, Mask, Buttons,enio;

type
  TFmParamDtRelOrcExc = class(TFmParamData)
    procedure BitBtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmParamDtRelOrcExc: TFmParamDtRelOrcExc;

implementation

uses RelOrcExcluidos, Senha;

{$R *.dfm}

procedure TFmParamDtRelOrcExc.BitBtnOkClick(Sender: TObject);
begin
  inherited;
      FmFrOrcExcluidos := TFmFrOrcExcluidos.Create(senha.Empresa,'ORÇAMENTOS EXCLUÍDOS',self);
      FmFrOrcExcluidos.ADOQueryOrcExcluido.Close;
      FmFrOrcExcluidos.ADOQueryOrcExcluido.sql[21] := '''' + FormatData(FmParamDtRelOrcExc.MaskEditDtIni.text,'MDY')  +  ''' and ''' + FormatData(FmParamDtRelOrcExc.MaskEditDtFim.text,'MDY') + ' 23:59:59''';
      FmFrOrcExcluidos.ADOQueryOrcExcluido.open;
      FmFrOrcExcluidos.RLLabel13.Caption := 'INTERVALO DE DATAS : ' + FmParamDtRelOrcExc.MaskEditDtIni.text + ' A ' + FmParamDtRelOrcExc.MaskEditDtFim.text;
      FmFrOrcExcluidos.RLReportH.PreviewModal;
      FmFrOrcExcluidos.free;

end;

end.
