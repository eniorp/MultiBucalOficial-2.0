{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Contratos Cancelados               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }
{ Data.............: 21/05/2002                                                }

unit QRContratoIncluidos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaContratosIncluidos = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBTextNome: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QueryContratante: TQuery;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel1: TQRLabel;
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
    QueryContratanteperc_desconto: TFloatField;
    QueryContratanteDescricao: TStringField;
    QRLabelVidas: TQRLabel;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosCodigo_Completo: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosGrau_Parentesco: TSmallintField;
    QueryUsuariosData_Nascimento: TDateTimeField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryUsuariosContratante_Titular: TIntegerField;
    QueryUsuariosVendedor: TIntegerField;
    QueryUsuariosE_Civil: TStringField;
    QueryUsuariosSexo: TStringField;
    QueryUsuariosInclusao_Susep: TDateTimeField;
    QueryUsuariosExclusao_Susep: TDateTimeField;
    QueryUsuariosSituacao: TStringField;
    QueryUsuariosOperador_Inclusao: TIntegerField;
    QueryUsuariosOperador_Alteracao: TIntegerField;
    QueryUsuariosOperador_Exclusao: TIntegerField;
    QRLabelVidasTotal: TQRLabel;
    QRLabel3: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaContratosIncluidos: TQRListaContratosIncluidos;
  TotalVidas : Integer;
  DIntervalo1, DIntervalo2 : TDate;

implementation
   uses Senha;

{$R *.DFM}

procedure TQRListaContratosIncluidos.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryContratante do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         Open;
       end;
end;

procedure TQRListaContratosIncluidos.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   with QueryUsuarios do
     begin
       close;
       Parambyname('Contratante').asInteger := QueryContratanteCodigo.asInteger;
       Open;
       QRLabelVidas.Caption := IntToStr(QueryUsuarios.RecordCount);
       TotalVidas := TotalVidas + QueryUsuarios.RecordCount;
     end;
end;

procedure TQRListaContratosIncluidos.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   QRLabelVidasTotal.Caption := IntToStr(TotalVidas);
end;

end.
