{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Contratos Canceladosp/Representante}
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }
{ Data.............: 20/05/2002                                                }

unit QRContratoExcluidosRepresentante;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaContratosCanceladosRepresentante = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBTextNome: TQRDBText;
    QRDBText6: TQRDBText;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QueryCancelamento: TQuery;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryContratanteRG: TStringField;
    QueryContratanteCGC_CPF: TStringField;
    QueryContratanteIE: TStringField;
    QueryContratanteVencimento: TIntegerField;
    QueryContratanteInclusao: TDateTimeField;
    QueryContratanteExclusao: TDateTimeField;
    QueryContratanteEndereco_Comercial: TStringField;
    QueryContratanteBairro_Comercial: TStringField;
    QueryContratanteCidade_Comercial: TStringField;
    QueryContratanteEstado_Comercial: TStringField;
    QueryContratanteCep_Comercial: TStringField;
    QueryContratanteEndereco_Residencial: TStringField;
    QueryContratanteBairro_Residencial: TStringField;
    QueryContratanteCidade_Residencial: TStringField;
    QueryContratanteEstado_Residencial: TStringField;
    QueryContratanteCEP_Residencial: TStringField;
    QueryContratanteFone1: TStringField;
    QueryContratanteFone2: TStringField;
    QueryContratanteFax: TStringField;
    QueryContratanteTipo_Correspondencia: TStringField;
    QueryContratanteVendedor: TIntegerField;
    QueryContratanteBanco: TIntegerField;
    QueryContratanteAgencia: TStringField;
    QueryContratanteConta: TStringField;
    QueryContratanteDigito: TStringField;
    QueryContratanteTitular_Conta: TStringField;
    QueryContratanteContrato_Anterior: TStringField;
    QueryContratanteemail: TStringField;
    QueryContratanteNumero_Cartao: TStringField;
    QueryContratanteCodigo_Seguranca: TStringField;
    QueryContratanteMotivo_Cancelamento: TIntegerField;
    QueryContratanteSituacao: TStringField;
    QueryContratanteForma_Cobranca: TIntegerField;
    QueryContratanteUltimo_Faturamento: TDateTimeField;
    QueryContratantePlano: TIntegerField;
    QueryContratanteGrupo_Contratante: TIntegerField;
    QueryContratanteOperador_Inclusao: TIntegerField;
    QueryContratanteOperador_Alteracao: TIntegerField;
    QueryContratanteOperador_Exclusao: TIntegerField;
    QueryCancelamentoDescricao: TStringField;
    QueryContratanteDescricao_Cancelamento: TStringField;
    QueryContratanteperc_desconto: TFloatField;
    QueryContratanteCodigo_1: TSmallintField;
    QueryContratanteNome_1: TStringField;
    QRGroup2: TQRGroup;
    QRExpr1: TQRExpr;
    QRBand4: TQRBand;
    QRExpr3: TQRExpr;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabelRepr: TQRLabel;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QueryContratanteNome_Vendedor: TStringField;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QueryCancelamentoCODIGO: TIntegerField;
    QueryCancelamentoativo: TBooleanField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaContratosCanceladosRepresentante: TQRListaContratosCanceladosRepresentante;
  Representante, Motivo, Total_Cancelados : Short;
  DIntervalo1, DIntervalo2 : TDate;

implementation
   uses Senha;

{$R *.DFM}

procedure TQRListaContratosCanceladosRepresentante.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     Total_Cancelados := 0;
     with QueryContratante do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if Representante <> 0 then
            ParamByName('Representante').asInteger := Representante
         else
            SQL[4] := '';

         if Motivo <> 0 then
            ParamByName('Cancelamento').asInteger := Motivo
         else
            SQL[5] := '';
         Open;
       end;
end;

procedure TQRListaContratosCanceladosRepresentante.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelRepr.Caption := IntToStr(Total_Cancelados);
end;

procedure TQRListaContratosCanceladosRepresentante.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Total_Cancelados := Total_Cancelados + 1;
end;

procedure TQRListaContratosCanceladosRepresentante.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Total_Cancelados := 0;
end;

end.
