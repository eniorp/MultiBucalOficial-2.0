unit RelbaixaPorAtendente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadrao, RLParser, RLHTMLFilter, RLPDFFilter, RLFilters,
  RLRichFilter, RLReport, DB, DBTables, RLSaveDialog, RLXLSFilter;

type
  TFmRelBaixaPorAtendente = class(TFmFortesRepPadrao)
    QueryReceber: TQuery;
    Dsreceber: TDataSource;
    RLGroup2: TRLGroup;
    RLGroup1: TRLGroup;
    RLBandHeader2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLBandDetail: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLBandFooterGroup1: TRLBand;
    RLDBResult2: TRLDBResult;
    RLSystemInfo1: TRLSystemInfo;
    RLDBResult1: TRLDBResult;
    RLBandHeader1: TRLBand;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLBandSummary: TRLBand;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLSystemInfo2: TRLSystemInfo;
    RLLabelPeriodo: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabelTpCobranca: TRLLabel;
    RLBandHeaderGroup2: TRLBand;
    RLLabel9: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLPDFFilter1: TRLPDFFilter;
    RLSaveDialogSetup1: TRLSaveDialogSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    procedure RLGroup2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmRelBaixaPorAtendente: TFmRelBaixaPorAtendente;

implementation

{$R *.dfm}

procedure TFmRelBaixaPorAtendente.RLGroup2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
   if RLBandDetail.enabled then
   begin
      RLSystemInfo2.Text := 'QTDE REG. ' + QueryReceber.FieldByName('apelido').AsString + ' : ';
      RLSystemInfo1.Text := 'Qtde Registros : ';
   end
   else
   begin
      RLSystemInfo2.Text := '';
      RLSystemInfo1.Text := '';
   end
end;

procedure TFmRelBaixaPorAtendente.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
   if RLBandDetail.enabled then
      RLLabelTpCobranca.Caption := ''
   else
      RLLabelTpCobranca.Caption := QueryReceber.FieldByName('tpcobranca').AsString;
end;

end.
