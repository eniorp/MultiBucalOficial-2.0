unit OrcamentoDentista;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQROrcamentoDentista = class(TQuickRep)
    QueryOrcamento: TQuery;
    QRGroup1: TQRGroup;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QueryOrcamentoNumero: TIntegerField;
    QueryOrcamentoData_Hora: TDateTimeField;
    QueryOrcamentoOperador_Cadastro: TSmallintField;
    QueryOrcamentoUsuario: TIntegerField;
    QueryOrcamentoContratante_Titular: TIntegerField;
    QueryOrcamentoContratante: TIntegerField;
    QueryOrcamentoData: TDateTimeField;
    QueryOrcamentoDentista: TIntegerField;
    QueryOrcamentoTotal: TFloatField;
    QueryOrcamentoTotal_Bruto: TFloatField;
    QueryOrcamentoTotal_Desconto: TFloatField;
    QueryOrcamentoStatus: TSmallintField;
    QueryOrcamentoNumero_Parcelas: TSmallintField;
    QueryOrcamentoData_Conferencia: TDateTimeField;
    QueryOrcamentoTotal_Dentista: TFloatField;
    QueryOrcamentoTotal_Protetico: TFloatField;
    QueryOrcamentoTotal_Contas: TFloatField;
    QueryOrcamentoAutorizado: TBooleanField;
    QueryOrcamentoOperador_Aprovacao: TSmallintField;
    QueryOrcamentoTipo: TSmallintField;
    QueryOrcamentoDesconto: TFloatField;
    QueryOrcamentonro_urgencia: TIntegerField;
    QueryOrcamentoData_Status: TDateTimeField;
    QueryOrcamentoOperador_Status: TIntegerField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    QRDBText23: TQRDBText;
    QRDBText24: TQRDBText;
    QRDBText25: TQRDBText;
    QueryOrcamentoStatus_Pagamento: TSmallintField;
  private

  public

  end;

var
  QROrcamentoDentista: TQROrcamentoDentista;

implementation

{$R *.DFM}

end.
