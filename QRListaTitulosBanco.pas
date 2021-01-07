{****************************   Nortex Informática ****************************}
{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Relatório Títulos Emitidos p/ Faturamento                 }
{ Cliente .........: Pronto Vida Emergências Médicas Ltda                      }
{ Programador .....: Renato Castanho Gosuen                                    }
{ Data ............: 04/01/2001                                                }
{ Ultima Alteração : 04/01/2001                                                }

unit QRListaTitulosBanco;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRTitulosBanco = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel3: TQRLabel;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QueryReceber: TQuery;
    QRSysData4: TQRSysData;
    QueryReceberTipo_Documento: TStringField;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberData_Emissao: TDateTimeField;
    QueryReceberValor: TFloatField;
    QueryReceberData_Vencimento: TDateTimeField;
    QueryReceberNumero_Banco: TStringField;
    QueryReceberTipo_Cobranca: TStringField;
    QueryReceberNome: TStringField;
    QueryReceberDescricao: TStringField;
    QueryReceberDescricao_1: TStringField;
    QRLabel11: TQRLabel;
    procedure QueryReceberFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
  private

  public

  end;

var
  QRTitulosBanco: TQRTitulosBanco;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;

implementation

{$R *.DFM}

uses Francesa;

procedure TQRTitulosBanco.QueryReceberFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);

begin
     accept := (QueryReceberData_Vencimento.asDateTime >= DIntervalo1) and
               (QueryReceberData_Vencimento.asDateTime <= DIntervalo2);
end;

end.
