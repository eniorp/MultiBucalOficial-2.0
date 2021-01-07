{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Pagamento de Dentistas             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRContratantePlano;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaContratantePlano = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRBand2: TQRBand;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QueryContratante: TQuery;
    QRLabel4: TQRLabel;
    QueryPlanos: TQuery;
    QRDBText5: TQRDBText;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryDentistaData_Exclusao: TDateTimeField;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryContratanteExclusao: TDateTimeField;
    QueryContratantePlano: TIntegerField;
    QueryPlanosCodigo: TIntegerField;
    QueryPlanosDescricao: TStringField;
    QueryPlanosCodigo_Susep: TIntegerField;
    QueryPlanosTitular_Contratante: TStringField;
    QueryPlanosFis_Jur: TStringField;
    QueryPlanosFlag_Envio_Ans: TStringField;
    QueryContratanteNome_Plano: TStringField;
    QueryContratanteInclusao: TDateTimeField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaContratantePlano: TQRListaContratantePlano;
  Plano : Integer;

implementation

{$R *.DFM}

procedure TQRListaContratantePlano.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     with QueryContratante do
       begin
         Close;
         if Plano <> 0 then
            begin
              SQL[1] := 'and Plano = :Plano';
              Params[0].DataType := ftInteger;
              Params[0].ParamType := ptInput;
              ParamByName('Plano').asInteger := Plano;
              SQL[2] := 'and Exclusao is null';
              SQL[3] := 'order by Plano, Codigo';
            end
         else
            begin
              SQL[1] := 'and Exclusao is null';
              SQL[2] := 'order by Plano, Codigo';
              SQL[3] := '';
            end;
         Open;
       end;
end;

end.
