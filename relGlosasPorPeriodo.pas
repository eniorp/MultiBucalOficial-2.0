unit relGlosasPorPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, DB, RLParser, RLReport, ADODB;

type
  TFmFrRelGlosas = class(TFmFortesRepPadrao)
    RLLabel1: TRLLabel;
    ADOQueryGlosa: TADOQuery;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLBand1: TRLBand;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    ADOQueryGlosacd_orcamento: TIntegerField;
    ADOQueryGlosacdDentista: TIntegerField;
    ADOQueryGlosadentista: TStringField;
    ADOQueryGlosaCodigo_Completo: TIntegerField;
    ADOQueryGlosausuairo: TStringField;
    ADOQueryGlosaServico: TIntegerField;
    ADOQueryGlosadsServico: TStringField;
    ADOQueryGlosads_glosa: TStringField;
    ADOQueryGlosadtGlosa: TStringField;
    ADOQueryGlosanmOperador: TStringField;
    ADOQueryGlosavalor_dentista: TCurrencyField;
    ADOQueryGlosaincremento: TIntegerField;
    RLDBResult1: TRLDBResult;
    procedure ADOQueryGlosaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmFrRelGlosas: TFmFrRelGlosas;

implementation

uses udm, Math;

{$R *.dfm}

procedure TFmFrRelGlosas.ADOQueryGlosaCalcFields(DataSet: TDataSet);
var VrDentista:String;
begin
  inherited;

  VrDentista:= DM.ExecutaComando('select valor_dentista a from itens_orcamento where incremento = '+ADOQueryGlosaincremento.AsString,'a');
  if VrDentista='' then
    VrDentista:='0';
  ADOQueryGlosavalor_dentista.AsCurrency:=StrToFloat(VrDentista)

end;

end.
