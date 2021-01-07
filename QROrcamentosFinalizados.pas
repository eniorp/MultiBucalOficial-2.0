unit QROrcamentosFinalizados;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, ADODB;

type
  TQRListaOrcamentosFinalizados = class(TQuickRep)
    QRBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData4: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRBand3: TQRBand;
    QRBand5: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabelRegiao: TQRLabel;
    QRLabelDentista: TQRLabel;
    QueryItensPagDentista: TADOQuery;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QueryItensPagDentistaMesAno: TStringField;
    QueryItensPagDentistaUsuario: TIntegerField;
    QueryItensPagDentistanome_usuario: TStringField;
    QueryItensPagDentistadentista: TStringField;
    QueryItensPagDentistaorcamento: TIntegerField;
    QueryItensPagDentistatelefone: TStringField;
    QueryItensPagDentistacelulares: TStringField;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    QueryItensPagDentistaSohLR: TStringField;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel10: TQRLabel;
    procedure QueryItensPagDentistaCalcFields(DataSet: TDataSet);
  private

  public

  end;

var
  QRListaOrcamentosFinalizados: TQRListaOrcamentosFinalizados;


implementation
  uses Senha, udm;
{$R *.DFM}

procedure TQRListaOrcamentosFinalizados.QueryItensPagDentistaCalcFields(
  DataSet: TDataSet);
begin
  if DM.execmd('select count(*)qtd from itens_pagDentista  where '+
  ' orcamento = '+QueryItensPagDentistaorcamento.AsString+' and '+
  ' mesano = '''+QueryItensPagDentistaMesAno.AsString+''' and '+
  ' servico not in(2110,2120,2107,2108,2109, 3224,3225,3226,3227,3220,3221,3222,3223)','qtd')='0' then
    QueryItensPagDentistaSohLR.AsString:='S'
  else
    QueryItensPagDentistaSohLR.AsString:='N';
end;

end.
