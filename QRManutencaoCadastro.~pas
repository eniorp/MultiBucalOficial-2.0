{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório de Manutenção Cadastro             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Flávia Pontoglio                                          }

unit QRManutencaoCadastro;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaManutencaoCadastro = class(TQuickRep)
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRDBText3: TQRDBText;
    QRLabel2: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel3: TQRLabel;
    QueryManutencao: TQuery;
    QRLabel11: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRDBText8: TQRDBText;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosGrau_Parentesco: TSmallintField;
    QueryUsuariosData_Nascimento: TDateTimeField;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryUsuariosContratante_Titular: TIntegerField;
    QueryUsuariosVendedor: TIntegerField;
    QueryUsuariosE_Civil: TStringField;
    QueryUsuariosSexo: TStringField;
    QueryUsuariosPrimeiro_Faturamento: TDateTimeField;
    QueryUsuariosUltimo_Faturamento: TDateTimeField;
    QueryUsuariosInclusao_Susep: TDateTimeField;
    QueryUsuariosExclusao_Susep: TDateTimeField;
    QueryUsuariosUsuario_Anterior: TBooleanField;
    QueryUsuariosBonifica_Carencia: TBooleanField;
    QueryUsuariosSituacao: TStringField;
    QueryManutencaoUsuario: TIntegerField;
    QueryManutencaoServico: TIntegerField;
    QueryManutencaoData_Inicial: TDateTimeField;
    QueryManutencaoData_Final: TDateTimeField;
    QueryManutencaoDentista: TIntegerField;
    QueryManutencaoVencimento: TIntegerField;
    QueryManutencaoGera_Boleto: TBooleanField;
    QueryManutencaoOperador: TIntegerField;
    QueryManutencaoData_Operacao: TDateTimeField;
    QueryManutencaoNome: TStringField;
    QueryManutencaoDescricao: TStringField;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryManutencaoNomeDentista: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaManutencaoCadastro: TQRListaManutencaoCadastro;
  DIntervalo1, DIntervalo2, DataHoje, Data_Base : TDateTime;
  Dentista : Integer;
  Valor_Servico, Valor_Bruto : Currency;

implementation

{$R *.DFM}

uses RelManutencao, Senha;

procedure TQRListaManutencaoCadastro.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryManutencao do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if Dentista <> 0 then
           ParamByName('Dentista').asInteger := Dentista
         else
           begin
             SQL[5] := '';
           end;
         Open;
       end;
end;

end.
