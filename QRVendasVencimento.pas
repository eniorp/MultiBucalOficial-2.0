{ Programa ........: Relatório por Vendas p/ Período                           }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRVendasVencimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRListaVendasVencimento = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRLabel7: TQRLabel;
    QueryVendas: TQuery;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabelPeriodo1: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData4: TQRSysData;
    QRGroup2: TQRGroup;
    QRExpr5: TQRExpr;
    QRBand4: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PageFooterBand1: TQRBand;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QueryVendasCodigo: TIntegerField;
    QueryVendasNome: TStringField;
    QueryVendasInclusao: TDateTimeField;
    QueryVendasVendedor: TIntegerField;
    QueryVendasExclusao: TDateTimeField;
    QueryVendasCodigo_1: TIntegerField;
    QueryVendasNome_1: TStringField;
    QueryVendasRepresentante: TSmallintField;
    QueryVendasCodigo_2: TSmallintField;
    QueryVendasNome_2: TStringField;
    QueryUsuarios: TQuery;
    QRLabelVidas: TQRLabel;
    QueryUsuariosCodigo: TIntegerField;
    QRLabel3: TQRLabel;
    QueryPrecoContratante: TQuery;
    QueryPrecoPlano: TQuery;
    QueryPrecoGrupo: TQuery;
    QRLabelValor: TQRLabel;
    QueryUsuariosGrau_Parentesco: TSmallintField;
    QueryPrecoPlanoCodigo_Plano: TSmallintField;
    QueryPrecoPlanoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoPlanoData: TDateTimeField;
    QueryPrecoPlanoValor: TFloatField;
    QueryPrecoGrupoCodigo_Grupo: TSmallintField;
    QueryPrecoGrupoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoGrupoData: TDateTimeField;
    QueryPrecoGrupoValor: TFloatField;
    QueryPrecoContratanteCodigo_Contratante: TIntegerField;
    QueryPrecoContratanteCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoContratanteData: TDateTimeField;
    QueryPrecoContratanteValor: TFloatField;
    QueryVendasPlano: TIntegerField;
    QueryVendasGrupo_Contratante: TIntegerField;
    QRLabelVidasVendedor: TQRLabel;
    QRLabelValorVendedor: TQRLabel;
    QRLabelValorRepresentante: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabelVidasRepresentante: TQRLabel;
    QRLabelValorGeral: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabelVidasGeral: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabelMedia: TQRLabel;
    QRLabel17: TQRLabel;
    QueryDesconto: TQuery;
    QueryDescontoCodigo_Plano: TSmallintField;
    QueryDescontoData: TDateTimeField;
    QueryDescontoIncremento: TIntegerField;
    QueryDescontoQtde_Usuarios1: TSmallintField;
    QueryDescontoQtde_Usuarios2: TSmallintField;
    QueryDescontoPercentual_desconto: TFloatField;
    QueryDescontoValor_Desconto: TFloatField;
    QueryVendasData_Vencimento: TDateTimeField;
    QueryVendasData_Pagamento: TDateTimeField;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabelPgto: TQRLabel;
    QRLabelTratamento: TQRLabel;
    QueryOrcamentos: TQuery;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosData_Hora: TDateTimeField;
    QueryOrcamentosOperador_Cadastro: TSmallintField;
    QueryOrcamentosUsuario: TIntegerField;
    QueryOrcamentosContratante_Titular: TIntegerField;
    QueryOrcamentosContratante: TIntegerField;
    QueryOrcamentosData: TDateTimeField;
    QueryOrcamentosDentista: TIntegerField;
    QueryOrcamentosTotal: TFloatField;
    QueryOrcamentosTotal_Bruto: TFloatField;
    QueryOrcamentosTotal_Desconto: TFloatField;
    QueryOrcamentosStatus: TSmallintField;
    QueryOrcamentosNumero_Parcelas: TSmallintField;
    QueryOrcamentosData_Conferencia: TDateTimeField;
    QueryOrcamentosTotal_Dentista: TFloatField;
    QueryOrcamentosTotal_Protetico: TFloatField;
    QueryOrcamentosTotal_Contas: TFloatField;
    QueryOrcamentosAutorizado: TBooleanField;
    QueryOrcamentosOperador_Aprovacao: TSmallintField;
    QueryOrcamentosTipo: TSmallintField;
    QueryOrcamentosDesconto: TFloatField;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroup1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    procedure Verifica_PrecoGrupo;
    procedure Verifica_PrecoPlano;
    procedure Verifica_Desconto;

  public
    { Public declarations }
  end;

var
  QRListaVendasVencimento: TQRListaVendasVencimento;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;
  Valor_Desconto, Valor_Total, Valor_Titulo, Valor_Vendedor, Valor_Representante, Valor_Geral : Currency;
  Vidas_Vendedor, Vidas_Representante, Vidas_Geral : Short;
  Representante : Integer;
  i, Numero_Usuarios : Short;

implementation
   uses Senha;
{$R *.DFM}

procedure TQRListaVendasVencimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryVendas do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if Representante <> 0 then
            begin
              SQL[10] := 'and D2.Representante = :Representante';
              Params[2].DataType := ftInteger;
              Params[2].ParamType := ptInput;
              ParamByName('Representante').asInteger := Representante;
              SQL[11] := 'order by D3.Codigo, D.Vendedor, D.Inclusao, D.Codigo';
            end
         else
            begin
              SQL[10] := 'order by D3.Codigo, D.Vendedor, D.Inclusao, D.Codigo';
              SQL[11] := '';
            end;
         Open;
       end;
     Vidas_Geral := 0;
     Valor_Geral := 0;
end;

procedure TQRListaVendasVencimento.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     Valor_Titulo := 0;

     with QueryUsuarios do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + QueryVendasCodigo.asString);
         // Testar filtro data exclusao do usuario Exclusao = ''
//         SQL[2] := 'and Exclusao = ''''';
//         SQL[3] := 'and Inclusao <= ' + DateToStr(Data_Base); // Data do ultimo dia mes anterior
         Open;
         Numero_Usuarios := 0;
        // Pega o Número de Usuários do Contrato
         while not eof do
           begin
             Numero_Usuarios := Numero_Usuarios + 1;
             Next;
           end;

         QRLabelVidas.Caption := IntToStr(RecordCount);
         Vidas_Vendedor := Vidas_Vendedor + RecordCount;
         Vidas_Representante := Vidas_Representante + RecordCount;
         Vidas_Geral := Vidas_Geral + RecordCount;

         First;
         while not eof do
           begin
             with QueryPrecoContratante do
               begin
                 Close;
                 ParamByName('Contratante').asInteger := QueryUsuariosCodigo.asInteger;
                 ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
                 Open;
                 Last;
                 if RecordCount = 0 then
                    Verifica_PrecoGrupo
                 else
                    begin
                      Valor_Titulo := Valor_Titulo + QueryPrecoContratanteValor.asCurrency;
                      Verifica_Desconto;
                      if Valor_Desconto <> 0 then
                         Valor_Titulo := Valor_Titulo - Valor_Desconto;
                    end;
               end;
             Next;
           end;
          QRLabelValor.Caption := FormatFloat( 'R$' + '###,##0.00', Valor_Titulo);
          Valor_Vendedor := Valor_Vendedor + Valor_Titulo;
          Valor_Representante := Valor_Representante + Valor_Titulo;
          Valor_Geral := Valor_Geral + Valor_Titulo;
       end;
       if QueryVendasData_Pagamento.AsString = '' then
         QRLabelPgto.Caption := 'N'
       else
         QRLabelPgto.Caption := 'S';

     with QueryOrcamentos do
       begin
         Close;
         SQL[2] := ('and Contratante = ' + QueryVendasCodigo.asString);
         Open;
         if QueryOrcamentos.RecordCount > 0 then
           QRLabelTratamento.Caption := 'S'
         else
           QRLabelTratamento.Caption := 'N';
       end;

end;

procedure TQRListaVendasVencimento.Verifica_PrecoGrupo;
begin
     with QueryPrecoGrupo do
       begin
         Close;
         ParamByName('Grupo').asInteger := QueryVendasGrupo_Contratante.asInteger;
         ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Verifica_PrecoPlano
         else
           begin
             Valor_Titulo := Valor_Titulo + QueryPrecoGrupoValor.asCurrency;
             Verifica_Desconto;
             if Valor_Desconto <> 0 then
                Valor_Titulo := Valor_Titulo - Valor_Desconto;
           end;
       end;
end;

procedure TQRListaVendasVencimento.Verifica_PrecoPlano;
begin
     with QueryPrecoPlano do
       begin
         Close;
         ParamByName('Plano').asInteger := QueryVendasPlano.asInteger;
         ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Valor_Titulo := Valor_Titulo
         else
            begin
             Valor_Titulo := Valor_Titulo + QueryPrecoPlanoValor.asCurrency;
             Verifica_Desconto;
             if Valor_Desconto <> 0 then
                Valor_Titulo := Valor_Titulo - Valor_Desconto;
            end;
       end;
end;

procedure TQRListaVendasVencimento.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     Vidas_Vendedor := 0;
     Valor_Vendedor := 0;
end;

procedure TQRListaVendasVencimento.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabelVidasVendedor.Caption := IntToStr(Vidas_Vendedor);
     QRLabelValorVendedor.Caption := FormatFloat( 'R$' + '###,##0.00', Valor_Vendedor);
end;

procedure TQRListaVendasVencimento.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     Vidas_Representante := 0;
     Valor_Representante := 0;
end;

procedure TQRListaVendasVencimento.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabelVidasRepresentante.Caption := IntToStr(Vidas_Representante);
     QRLabelValorRepresentante.Caption := FormatFloat( 'R$' + '###,##0.00', Valor_Representante);
end;

procedure TQRListaVendasVencimento.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Media : Currency;
begin
     QRLabelVidasGeral.Caption := IntToStr(Vidas_Geral);
     QRLabelValorGeral.Caption := FormatFloat( 'R$' + '###,##0.00', Valor_Geral);
     Media := Valor_Geral / Vidas_Geral;
     QRLabelMedia.Caption := FormatFloat( 'R$' + '###,##0.00', Media);
end;

procedure TQRListaVendasVencimento.Verifica_Desconto;
begin
     Valor_Desconto := 0;
     with QueryDesconto do
       begin
         Close;
         ParamByName('Plano').asInteger := QueryVendasPlano.asInteger;
         Open;
         if RecordCount <> 0 then
            while not eof do
              begin
                if (Numero_Usuarios >= QueryDescontoQtde_Usuarios1.asInteger)
                  and (Numero_Usuarios <= QueryDescontoQtde_Usuarios2.asInteger) then
                     Valor_Desconto := QueryDescontoValor_Desconto.asCurrency;
                Next;
              end;
      end;
end;

end.
