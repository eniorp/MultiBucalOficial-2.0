{ Programa ........: Relatório por Vendas p/ Período                           }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRVendasPeriodoVencEtq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRListaVendasPeriodoVencEtq = class(TQuickRep)
    QueryVendas: TQuery;
    QueryVendasNome: TStringField;
    QueryVendasEndereco_Comercial: TStringField;
    QueryVendasBairro_Comercial: TStringField;
    QueryVendasCEP_Comercial: TStringField;
    QueryVendasCidade_Comercial: TStringField;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QueryVendasEstado_Comercial: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  QRListaVendasPeriodoVencEtq: TQRListaVendasPeriodoVencEtq;
  DIntervalo1, DIntervalo2 : TDateTime;
  i , Representante : Short;

implementation

{$R *.DFM}

procedure TQRListaVendasPeriodoVencEtq.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     with QueryVendas do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if Representante <> 0 then
            begin
              SQL[05] := 'and D2.Representante = :Representante';
              Params[2].DataType := ftInteger;
              Params[2].ParamType := ptInput;
              ParamByName('Representante').asInteger := Representante;
              SQL[06] := 'order by D.Codigo';
            end
         else
            begin
              SQL[05] := 'order by D.Codigo';
              SQL[06] := '';
            end;
         Open;
       end;
end;

end.
