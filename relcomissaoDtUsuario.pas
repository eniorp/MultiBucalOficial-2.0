unit relcomissaoDtUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RelFortesPadraoGroup, DB, RLParser, RLReport, ADODB;

type
  TFmFrRelcomissaoDtUsuario = class(TFmFortesPadraoGroup)
    sp_relComissaoUsuario: TADOStoredProc;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLDBResult1: TRLDBResult;
    RLDBResult3: TRLDBResult;
    procedure RLReportHBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBandSummaryHBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private

    Valor_Parcela : array[1..24] of Currency;
    qtde_Parcela : array[1..24] of integer;
  public
    { Public declarations }
  end;

var
  FmFrRelcomissaoDtUsuario: TFmFrRelcomissaoDtUsuario;

implementation

uses udm;

{$R *.dfm}

procedure TFmFrRelcomissaoDtUsuario.RLReportHBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
  var i : integer;
begin
  inherited;
     for I := 1 to 24 do
     begin
         Valor_Parcela[I] := 0;
         qtde_Parcela[I] := 0;
     end;
end;

procedure TFmFrRelcomissaoDtUsuario.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
    Valor_Parcela[sp_relComissaoUsuario.FieldByName('parcela').AsInteger] := Valor_Parcela[sp_relComissaoUsuario.FieldByName('parcela').AsInteger] + sp_relComissaoUsuario.FieldByName('valor_mensalidade').AsCurrency;
    qtde_Parcela[sp_relComissaoUsuario.FieldByName('parcela').AsInteger] := qtde_Parcela[sp_relComissaoUsuario.FieldByName('parcela').AsInteger] + 1;
end;

procedure TFmFrRelcomissaoDtUsuario.RLBandSummaryHBeforePrint(
  Sender: TObject; var PrintIt: Boolean);
begin
  inherited;
   RLLabel2.Caption  := FormatFloat('###,##0.00', Valor_Parcela[2]) + '   Qtde : ' + IntTostr(qtde_Parcela[2]);
   RLLabel3.Caption  := FormatFloat('###,##0.00', Valor_Parcela[3]) + '   Qtde : ' + IntTostr(qtde_Parcela[3]);
   RLLabel4.Caption  := FormatFloat('###,##0.00', Valor_Parcela[4]) + '   Qtde : ' + IntTostr(qtde_Parcela[4]);
   RLLabel5.Caption  := FormatFloat('###,##0.00', Valor_Parcela[5]) + '   Qtde : ' + IntTostr(qtde_Parcela[5]);
   RLLabel6.Caption  := FormatFloat('###,##0.00', Valor_Parcela[6]) + '   Qtde : ' + IntTostr(qtde_Parcela[6]);
   RLLabel7.Caption  := FormatFloat('###,##0.00', Valor_Parcela[7]) + '   Qtde : ' + IntTostr(qtde_Parcela[7]);
   RLLabel8.Caption  := FormatFloat('###,##0.00', Valor_Parcela[8]) + '   Qtde : ' + IntTostr(qtde_Parcela[8]);
   RLLabel9.Caption  := FormatFloat('###,##0.00', Valor_Parcela[9]) + '   Qtde : ' + IntTostr(qtde_Parcela[9]);
   RLLabel10.Caption := FormatFloat('###,##0.00', Valor_Parcela[10]) + '   Qtde : ' + IntTostr(qtde_Parcela[10]);
   RLLabel11.Caption := FormatFloat('###,##0.00', Valor_Parcela[11]) + '   Qtde : ' + IntTostr(qtde_Parcela[11]);
   RLLabel12.Caption := FormatFloat('###,##0.00', Valor_Parcela[12]) + '   Qtde : ' + IntTostr(qtde_Parcela[12]);

end;

end.
