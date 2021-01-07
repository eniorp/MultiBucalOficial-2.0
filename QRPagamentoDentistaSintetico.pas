{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório Pagamento de Dentistas             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRPagamentoDentistaSintetico;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaPagDentistaSintetico = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabelReferencia: TQRLabel;
    QRSysData4: TQRSysData;
    QRBand1: TQRBand;
    QRLabel7: TQRLabel;
    QueryItensPagDentista: TQuery;
    QueryItensPagDentistaUsuario: TIntegerField;
    QueryItensPagDentistaData: TDateTimeField;
    QueryItensPagDentistaDentista: TIntegerField;
    QueryItensPagDentistaOrcamento: TIntegerField;
    QueryItensPagDentistaIncremento: TIntegerField;
    QueryItensPagDentistaMesAno: TStringField;
    QueryItensPagDentistaServico: TIntegerField;
    QueryItensPagDentistaQuantidade: TIntegerField;
    QueryItensPagDentistaQuantidade_Paga: TIntegerField;
    QueryItensPagDentistaValor: TFloatField;
    QueryItensPagDentistaObservacao: TStringField;
    QueryItensPagDentistaNumero: TIntegerField;
    QueryUsuarios: TQuery;
    QueryUsuariosCodigo_Completo: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryItensPagDentistaNome_Usuario: TStringField;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryDentistaData_Exclusao: TDateTimeField;
    QueryItensPagDentistaNome_Dentista: TStringField;
    PageFooterBand1: TQRBand;
    QRLabelRodape: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRDBText5: TQRDBText;
    QRLabelValor: TQRLabel;
    QueryItensPagDentista2: TQuery;
    QueryItensPagDentista2Numero: TIntegerField;
    QueryItensPagDentista2Usuario: TIntegerField;
    QueryItensPagDentista2Data: TDateTimeField;
    QueryItensPagDentista2Dentista: TIntegerField;
    QueryItensPagDentista2Orcamento: TIntegerField;
    QueryItensPagDentista2Incremento: TIntegerField;
    QueryItensPagDentista2MesAno: TStringField;
    QueryItensPagDentista2Servico: TIntegerField;
    QueryItensPagDentista2Quantidade: TIntegerField;
    QueryItensPagDentista2Quantidade_Paga: TIntegerField;
    QueryItensPagDentista2Valor: TFloatField;
    QueryItensPagDentista2Observacao: TStringField;
    QRLabel1: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabelTotal: TQRLabel;
    QRLabel3: TQRLabel;
    QueryDentistaDesconto: TIntegerField;
    QRLabel2: TQRLabel;
    QRLabelValorDesc: TQRLabel;
    QRLabelTotalDesc: TQRLabel;
    QueryItensPagDentista2Desconto: TIntegerField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  QRListaPagDentistaSintetico: TQRListaPagDentistaSintetico;
  MesAno : String[7];
  Dentista : Integer;
  Valor, ValorDesc, Total, TotalDesc : Currency;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaPagDentistaSintetico.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     Total     := 0;
     TotalDesc := 0;
     with QueryItensPagDentista do
       begin
         Close;
         ParamByName('MesAno').asString := MesAno;
         if Dentista <> 0 then
            begin
              SQL[3] := 'and Orcamento.Dentista = :Codigo_Dentista';
              Params[1].DataType := ftInteger;
              Params[1].ParamType := ptInput;
              ParamByName('Codigo_Dentista').asInteger := Dentista;
              SQL[4] := 'order by Orcamento.Dentista, Orcamento.Usuario, Orcamento.Numero';
            end
         else
            begin
              SQL[3] := 'order by Orcamento.Dentista, Orcamento.Usuario, Orcamento.Numero';
              SQL[4] := '';
            end;
         Open;
       end;
end;

procedure TQRListaPagDentistaSintetico.QRGroup1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     Valor     := 0;
     ValorDesc := 0;
     with QueryItensPagDentista2 do
       begin
         Close;
         ParamByName('MesAno').asString := MesAno;
         ParamByName('Dentista').asString := QueryItensPagDentistaDentista.asString;
         Open;
         while not eof do
           begin
             if QueryItensPagDentista2Desconto.AsInteger <> 0 then begin
                Valor     := Valor + QueryItensPagDentista2Valor.asCurrency;
                ValorDesc := ValorDesc + QueryItensPagDentista2Valor.AsCurrency - ((QueryItensPagDentista2Valor.AsCurrency * QueryItensPagDentista2Desconto.AsInteger)/100);
             end
             else begin
                Valor     := Valor + QueryItensPagDentista2Valor.asCurrency;
                ValorDesc := ValorDesc + QueryItensPagDentista2Valor.asCurrency;
             end;
             Next;
           end;
         QRLabelValor.Caption     := FormatFloat( 'R$' + '###,##0.00', Valor);
         QRLabelValorDesc.Caption := FormatFloat( 'R$' + '###,##0.00', ValorDesc);
         Total     := Total + Valor;
         TotalDesc := TotalDesc + ValorDesc;
       end;
end;

procedure TQRListaPagDentistaSintetico.SummaryBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRLabelTotal.Caption     := FormatFloat( 'R$' + '###,##0.00', Total);
     QRLabelTotalDesc.Caption := FormatFloat( 'R$' + '###,##0.00', TotalDesc);
end;

end.
