{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório do Manutenção                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRUsuariosContratante_ant;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaUsuarioContratante_ant = class(TQuickRep)
    DetailBand1: TQRBand;
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
    QRLabelRodape: TQRLabel;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabelContratante: TQRLabel;
    QueryGrupo: TQuery;
    QueryUsuarios: TQuery;
    QRLabel1: TQRLabel;
    DataSourceContratante: TDataSource;
    QRGroup2: TQRGroup;
    QRExpr6: TQRExpr;
    QRExpr8: TQRExpr;
    QueryContratos: TQuery;
    QueryContratosCodigo: TIntegerField;
    QueryContratosNome: TStringField;
    QueryContratosGrupo_Contratante: TIntegerField;
    QueryContratosCodigo_1: TIntegerField;
    QueryContratosDigito: TIntegerField;
    QueryContratosCodigo_Completo: TIntegerField;
    QueryContratosNome_1: TStringField;
    QueryContratosGrau_Parentesco: TSmallintField;
    QueryContratosData_Nascimento: TDateTimeField;
    QueryContratosData_Inclusao: TDateTimeField;
    QueryContratosData_Exclusao: TDateTimeField;
    QueryContratosContratante_Titular: TIntegerField;
    QueryContratosVendedor: TIntegerField;
    QueryContratosE_Civil: TStringField;
    QueryContratosSexo: TStringField;
    QueryContratosInclusao_Susep: TDateTimeField;
    QueryContratosExclusao_Susep: TDateTimeField;
    QueryContratosSituacao: TStringField;
    QueryContratosOperador_Inclusao: TIntegerField;
    QueryContratosOperador_Alteracao: TIntegerField;
    QueryContratosOperador_Exclusao: TIntegerField;
    QRDBText3: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QueryGrupoCodigo: TIntegerField;
    QueryGrupoDescricao: TStringField;
    QueryGrupoFlag_Envio_Ans: TStringField;
    QueryContratosNome_Grupo: TStringField;
    QRExpr7: TQRExpr;
    QRLabel3: TQRLabel;
    QRExpr5: TQRExpr;
    QRBand4: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr1: TQRExpr;
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
    QueryDesconto: TQuery;
    QueryDescontoCodigo_Plano: TSmallintField;
    QueryDescontoData: TDateTimeField;
    QueryDescontoQtde_Usuarios1: TSmallintField;
    QueryDescontoQtde_Usuarios2: TSmallintField;
    QueryDescontoPercentual_desconto: TFloatField;
    QueryDescontoValor_Desconto: TFloatField;
    QueryPrecoGrupo: TQuery;
    QueryPrecoGrupoCodigo_Grupo: TSmallintField;
    QueryPrecoGrupoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoGrupoData: TDateTimeField;
    QueryPrecoGrupoValor: TFloatField;
    QueryPrecoPlano: TQuery;
    QueryPrecoPlanoCodigo_Plano: TSmallintField;
    QueryPrecoPlanoCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoPlanoData: TDateTimeField;
    QueryPrecoPlanoValor: TFloatField;
    QueryPrecoContratante: TQuery;
    QueryPrecoContratanteCodigo_Contratante: TIntegerField;
    QueryPrecoContratanteCodigo_Grau_Parentesco: TSmallintField;
    QueryPrecoContratanteData: TDateTimeField;
    QueryPrecoContratanteValor: TFloatField;
    QueryContratosPlano: TIntegerField;
    QRLabel4: TQRLabel;
    QRLabelValor: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabelGrupo: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabelGeral: TQRLabel;
    QRLabelValorVidas: TQRLabel;
    QRLabel10: TQRLabel;
    QueryAcrescimo: TQuery;
    QueryAcrescimoPlano: TIntegerField;
    QueryAcrescimoDias: TSmallintField;
    QueryAcrescimoPercentual: TFloatField;
    QRLabelValorUsuario: TQRLabel;
    QueryAcrescimoData_Aumento: TDateTimeField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    procedure AchaValor;
    procedure Verifica_PrecoGrupo;
    procedure Verifica_PrecoPlano;
    procedure Verifica_Desconto;
    procedure Verifica_Acrescimo;

  public

  end;

var
  QRListaUsuarioContratante_ant: TQRListaUsuarioContratante_ant;
  Codigo_Contratante, Numero_Usuarios : Integer;
  Valor_Geral, Valor_Grupo, Valor_Titulo, Valor_Desconto, Valor_Usuario,
  Valor_Acrescimo : currency ;
  Tem_Acrescimo : Boolean;
  Valor : String;
  DataPesq : TDateTime;

implementation
{$R *.DFM}

uses RelManutencao, Senha;

procedure TQRListaUsuarioContratante_ant.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     Valor_Geral := 0;
     Valor_Grupo := 0;
     with QueryContratos do
       begin
         Close;
         ParamByName('Contratante').asInteger := Codigo_Contratante;
         ParambyName('DataPesq').asDateTime   := DataPesq;
         ParambyName('DataPesq2').asDateTime  := DataPesq;
         Open;
       end;
end;

procedure TQRListaUsuarioContratante_ant.AchaValor;
begin
     Valor_Titulo := 0;

     with QueryUsuarios do
       begin
         Close;
         ParamByName('Contratante').asInteger := QueryContratosCodigo.asInteger;
         Open;
         Numero_Usuarios := 0;
         // Pega o Número de Usuários do Contrato
         while not eof do
           begin
             Numero_Usuarios := Numero_Usuarios + 1;
             Next;
           end;
         Verifica_Desconto;

         First;
         while not eof do
           begin
             Valor_Usuario := 0;
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
                      Valor_Usuario := QueryPrecoContratanteValor.asCurrency;
                      if Valor_Desconto <> 0 then
                         begin
                           Valor_Titulo := Valor_Titulo - Valor_Desconto;
                           Valor_Usuario := QueryPrecoContratanteValor.asCurrency - Valor_Desconto;
                         end;
                    end;
               end;
             Verifica_Acrescimo; // Verifica se o Plano possui Acréscimo
             if Tem_Acrescimo then
                begin
                  Valor_Acrescimo := (Valor_Usuario * QueryAcrescimoPercentual.asFloat) / 100;
                  Valor_Usuario := Valor_Usuario + (int(Valor_Acrescimo * 100) /100);
                  Valor_Titulo := Valor_Titulo + (int(Valor_Acrescimo * 100) /100);
                end;
             Next;
           end;
       end;
end;

procedure TQRListaUsuarioContratante_ant.Verifica_PrecoGrupo;
begin
     with QueryPrecoGrupo do
       begin
         Close;
         ParamByName('Grupo').asInteger := QueryContratosGrupo_Contratante.asInteger;
         ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
            Verifica_PrecoPlano
         else
           begin
             Valor_Titulo := Valor_Titulo + QueryPrecoGrupoValor.asCurrency;
             Valor_Usuario := QueryPrecoGrupoValor.asCurrency;
             if Valor_Desconto <> 0 then
                begin
                  Valor_Titulo := Valor_Titulo - Valor_Desconto;
                  Valor_Usuario := QueryPrecoGrupoValor.asCurrency - Valor_Desconto;
                end;
           end;
       end;
end;

procedure TQRListaUsuarioContratante_ant.Verifica_PrecoPlano;
var Teste : String[1];
begin
     with QueryPrecoPlano do
       begin
         Close;
         ParamByName('Plano').asInteger := QueryContratosPlano.asInteger;
         ParamByName('Parentesco').asInteger := QueryUsuariosGrau_Parentesco.asInteger;
         Open;
         Last;
         if RecordCount = 0 then
//            Gera_Log
         else
           begin
             Valor_Titulo := Valor_Titulo + QueryPrecoPlanoValor.asCurrency;
             Valor_Usuario := QueryPrecoPlanoValor.asCurrency;
             if Valor_Desconto <> 0 then
                begin
                  Valor_Titulo := Valor_Titulo - Valor_Desconto;
                  Valor_Usuario := QueryPrecoPlanoValor.asCurrency - Valor_Desconto;
                end;
           end;
       end;
end;

procedure TQRListaUsuarioContratante_ant.Verifica_Desconto;
begin
     Valor_Desconto := 0;
     with QueryDesconto do
       begin
         Close;
         ParamByName('Plano').asInteger := QueryContratosPlano.asInteger;
         Open;
         if RecordCount <> 0 then
            while not eof do
              begin
                if (Numero_Usuarios >= QueryDescontoQtde_Usuarios1.asInteger)
                  and (Numero_Usuarios <= QueryDescontoQtde_Usuarios2.asInteger) then
                     Valor_Desconto := int(QueryDescontoValor_Desconto.asCurrency * 100) /100;
                Next;
              end;
      end;
end;

procedure TQRListaUsuarioContratante_ant.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
//     AchaValor;
     QRLabelValor.Caption := FormatFloat('R$ ' + '###0.00', Valor_Titulo);
     Valor_Grupo := Valor_Grupo + Valor_Titulo;
     Valor_Geral := Valor_Geral + Valor_Titulo;
end;

procedure TQRListaUsuarioContratante_ant.QRBand4BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRLabelGrupo.Caption := FormatFloat('R$ ' + '###0.00', Valor_Grupo);
end;

procedure TQRListaUsuarioContratante_ant.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRLabelGeral.Caption := FormatFloat('R$ ' + '###0.00', Valor_Geral);
     QRLabelValorVidas.Caption := FormatFloat('R$ ' + '###0.00', (Valor_Geral / QueryContratos.RecordCount));
end;

procedure TQRListaUsuarioContratante_ant.QRBand4AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     Valor_Grupo := 0;
end;
procedure TQRListaUsuarioContratante_ant.Verifica_Acrescimo;
begin
     Tem_Acrescimo := False;
     with QueryAcrescimo do
       begin
         Close;
         ParamByName('Codigo_Plano').asInteger := QueryContratosPlano.asInteger;
         Open;
         if RecordCount <> 0 then
            if (now - QueryUsuariosData_Inclusao.asDateTime) > QueryAcrescimoDias.asInteger then
               Tem_Acrescimo := True;
            if QueryAcrescimoData_Aumento.AsDateTime < QueryUsuariosData_Inclusao.asDateTime then
               Tem_Acrescimo := True;
               
      end;
end;

procedure TQRListaUsuarioContratante_ant.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
   AchaValor;
   QRLabelValorUsuario.Caption := FormatFloat('R$ ' + '###0.00', Valor_Usuario);
end;

end.
