unit frRelPagDentistaPorPeriodoDentista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadraoGroup, RLReport, DB, RLParser, ADODB;

type
  TFmfrRelPagDentistaPorPeriodoDentista = class(TFmFortesPadraoGroup)
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText2: TRLDBText;
    ADOQueryGlosa: TADOQuery;
    RLLabel2: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    ADOQueryGlosacd_orcamento: TIntegerField;
    ADOQueryGlosacdDentista: TIntegerField;
    ADOQueryGlosadentista: TStringField;
    ADOQueryGlosaCodigo_Completo: TIntegerField;
    ADOQueryGlosausuairo: TStringField;
    ADOQueryGlosaServico: TIntegerField;
    ADOQueryGlosadsServico: TStringField;
    ADOQueryGlosacd_glosa: TSmallintField;
    ADOQueryGlosads_glosa: TStringField;
    ADOQueryGlosadtGlosa: TStringField;
    ADOQueryGlosanmOperador: TStringField;
    ADOQueryGlosadenteFace: TStringField;
    ADOQueryGlosavalor_dentista: TCurrencyField;
    ADOQueryGlosaincremento: TIntegerField;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBResult1: TRLDBResult;
    ADOQueryGlosamesano: TStringField;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLLabel11: TRLLabel;
    RLDBText10: TRLDBText;
    ADOQueryGlosaNivel_Glosa: TStringField;
    RLLabel12: TRLLabel;
    RLDBText11: TRLDBText;
    procedure ADOQueryGlosaCalcFields(DataSet: TDataSet);
    procedure RLDBText11BeforePrint(Sender: TObject; var Text: String;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmfrRelPagDentistaPorPeriodoDentista: TFmfrRelPagDentistaPorPeriodoDentista;

implementation

uses udm;

{$R *.dfm}

procedure TFmfrRelPagDentistaPorPeriodoDentista.ADOQueryGlosaCalcFields(
  DataSet: TDataSet);
var VrDentista:String;
begin
  inherited;

  VrDentista:= DM.ExecutaComando('select valor_dentista a from itens_orcamento where incremento = '+ADOQueryGlosaincremento.AsString,'a');
  if VrDentista='' then
    VrDentista:='0';
  ADOQueryGlosavalor_dentista.AsCurrency:=StrToFloat(VrDentista)
end;

procedure TFmfrRelPagDentistaPorPeriodoDentista.RLDBText11BeforePrint(
  Sender: TObject; var Text: String; var PrintIt: Boolean);
begin
  inherited;
  if ADOQueryGlosaNivel_Glosa.AsString='VERDE' then
  begin
    RLDBText11.Color:=clGreen;
    RLDBText11.Font.Color:=clWhite;
  end;

  if ADOQueryGlosaNivel_Glosa.AsString='AMARELO' then
  begin
    RLDBText11.Color:=clYellow;
    RLDBText11.Font.Color:=clBlack;
  end;

  if ADOQueryGlosaNivel_Glosa.AsString='VERMELHO' then
  begin
    RLDBText11.Color:=clRed;
    RLDBText11.Font.Color:=clWhite;
  end;
end;

end.
