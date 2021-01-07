{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório de Manutenção Cadastro             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }

unit QRManutencaoCadastroSeato;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaManutencaoCadastroSeato = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel2: TQRLabel;
    QueryManutencao: TQuery;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QueryOrcamentos: TQuery;
    QRLabel1: TQRLabel;
    QueryMensContratante: TQuery;
    QueryManutencaoCodigo: TIntegerField;
    QueryManutencaoDigito: TIntegerField;
    QueryManutencaoCodigo_Completo: TIntegerField;
    QueryManutencaoNome: TStringField;
    QueryManutencaoGrau_Parentesco: TSmallintField;
    QueryManutencaoData_Nascimento: TDateTimeField;
    QueryManutencaoData_Inclusao: TDateTimeField;
    QueryManutencaoData_Exclusao: TDateTimeField;
    QueryManutencaoContratante_Titular: TIntegerField;
    QueryManutencaoVendedor: TIntegerField;
    QueryManutencaoE_Civil: TStringField;
    QueryManutencaoSexo: TStringField;
    QueryManutencaoPrimeiro_Faturamento: TDateTimeField;
    QueryManutencaoUltimo_Faturamento: TDateTimeField;
    QueryManutencaoInclusao_Susep: TDateTimeField;
    QueryManutencaoExclusao_Susep: TDateTimeField;
    QueryManutencaoUsuario_Anterior: TBooleanField;
    QueryManutencaoBonifica_Carencia: TBooleanField;
    QueryManutencaoSituacao: TStringField;
    QueryManutencaoOperador_Inclusao: TIntegerField;
    QueryManutencaoOperador_Alteracao: TIntegerField;
    QueryManutencaoOperador_Exclusao: TIntegerField;
    QueryManutencaofabiano: TIntegerField;
    QueryManutencaoManutencao: TBooleanField;
    QRLabelOrc: TQRLabel;
    QueryMensEmpresa: TQuery;
    QRLabelMensEm: TQRLabel;
    QRLabelMensC: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaManutencaoCadastroSeato: TQRListaManutencaoCadastroSeato;
  DIntervalo1, DIntervalo2, DataHoje, Data_Base : TDateTime;
  Dentista : Integer;
  Valor_Servico, Valor_Bruto : Currency;

implementation

{$R *.DFM}

uses RelManutencao, Senha, udm;

procedure TQRListaManutencaoCadastroSeato.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryManutencao do
       begin
         Close;
         Open;
       end;
end;

procedure TQRListaManutencaoCadastroSeato.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   with QueryOrcamentos do
     begin
        close;
        Parambyname('Data').AsDateTime := dm.now();
        ParambyName('Usuario').asInteger := QueryManutencaoCodigo.AsInteger;
        open;
        if recordcount <> 0 then
          QRLabelOrc.Caption := 'Não'
        else
          QRLabelOrc.Caption := 'Pg'
     end;

   with QueryMensContratante do
     begin
        close;
        Parambyname('Data').AsDateTime := dm.now();
        ParambyName('Usuario').asInteger := QueryManutencaoCodigo.AsInteger;
        open;
        if recordcount <> 0 then
          QRLabelMensC.Caption := 'Não'
        else
          QRLabelMensC.Caption := 'Pg'
     end;
   with QueryMensEmpresa do
     begin
        close;
        Parambyname('Data').AsDateTime := dm.now();
        ParambyName('Usuario').asInteger := QueryManutencaoContratante_Titular.AsInteger;
        open;
        if recordcount <> 0 then
          QRLabelMensEm.Caption := 'Não'
        else
          QRLabelMensEm.Caption := 'Pg'
     end;
end;

end.
