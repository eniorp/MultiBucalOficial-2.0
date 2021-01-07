unit RelatorioRecursoGlosa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLParser, RLReport, DB, ADODB, StdCtrls, Mask, DBCtrls;

type
  TFmFrRelRecursoGlosa = class(TForm)
    QueryRecursoGlosa: TADOQuery;
    DS_RecursoGlosa: TDataSource;
    QueryRecursoGlosaorcamento: TIntegerField;
    QueryRecursoGlosadentista: TStringField;
    QueryRecursoGlosanome: TStringField;
    QueryRecursoGlosadsServico: TStringField;
    QueryRecursoGlosavalor: TBCDField;
    QueryRecursoGlosamesano: TStringField;
    RLExpressionParser1: TRLExpressionParser;
    RLReportH: TRLReport;
    RLBand1: TRLBand;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLBand2: TRLBand;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLDBResult1: TRLDBResult;
    RLSystemInfo3: TRLSystemInfo;
    RLSystemInfo4: TRLSystemInfo;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel9: TRLLabel;
  private

  public
    ValorTotal:Real;
  end;

var
  FmFrRelRecursoGlosa: TFmFrRelRecursoGlosa;

implementation
uses udm, Math, tacio;


{$R *.dfm}

end.
