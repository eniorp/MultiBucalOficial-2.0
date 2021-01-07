{ Sistema .........: Contas a Receber                                          }
{ Programa ........: Impressão do Relatório do Manutenção                      }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit QRUsuariosContratante_2;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaUsuarioContratante_2 = class(TQuickRep)
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
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QueryGrupoCodigo: TIntegerField;
    QueryGrupoDescricao: TStringField;
    QueryGrupoFlag_Envio_Ans: TStringField;
    QueryContratosNome_Grupo: TStringField;
    QRExpr7: TQRExpr;
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
    QRLabel8: TQRLabel;
    QRLabelGeral: TQRLabel;
    QRLabelValorVidas: TQRLabel;
    QRLabel10: TQRLabel;
    QueryAcrescimo: TQuery;
    QueryAcrescimoPlano: TIntegerField;
    QueryAcrescimoDias: TSmallintField;
    QueryAcrescimoPercentual: TFloatField;
    QRLabelValor: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel12: TQRLabel;
    QueryContratanteAux: TQuery;
    QueryContratanteAuxperc_desconto: TFloatField;
    QRLabel2: TQRLabel;
    QRLabelVidas: TQRLabel;
    QueryAcrescimoData_Aumento: TDateTimeField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
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
  QRListaUsuarioContratante_2: TQRListaUsuarioContratante_2;
  Codigo_Contratante, Numero_Usuarios : Integer;
  Valor_Geral, Valor_Grupo, Valor_Titulo, Valor_Desconto, Valor_Usuario,
  Valor_Acrescimo, Valor_AuxDesc : Currency;
  Tem_Acrescimo : Boolean;
  Perc_Desconto : Integer;

implementation

{$R *.DFM}

uses RelManutencao, Senha, udm;

procedure TQRListaUsuarioContratante_2.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     Valor_Geral := 0;
     Valor_Grupo := 0;
     with QueryContratos do
       begin
         Close;
         ParamByName('Contratante').asInteger := Codigo_Contratante;
         Open;
       end;
end;

procedure TQRListaUsuarioContratante_2.AchaValor;
begin
     Valor_Titulo  := 0;
     Perc_desconto := 0;
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
                  Valor_Titulo := Valor_Titulo + (int(Valor_Acrescimo * 100) / 100);
                end;

             Next;
           end;
       end;
       if Perc_desconto <> 0 then
         begin
           Valor_AuxDesc := (Valor_Titulo * Perc_desconto) / 100;
           Valor_Titulo := Valor_Titulo - Valor_AuxDesc;
           Valor_AuxDesc := (QueryPrecoContratanteValor.asCurrency  * Perc_desconto) / 100;
           Valor_Usuario := QueryPrecoContratanteValor.asCurrency - Valor_Desconto;
         end;

end;

procedure TQRListaUsuarioContratante_2.Verifica_PrecoGrupo;
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

procedure TQRListaUsuarioContratante_2.Verifica_PrecoPlano;

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

procedure TQRListaUsuarioContratante_2.Verifica_Desconto;
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
                     Valor_Desconto := int(QueryDescontoValor_Desconto.asCurrency * 100) / 100;
                Next;
              end;
      end;

      with QueryContratanteAux do
        begin
          close;
          parambyname('Contrato').AsInteger := QueryUsuariosCodigo.asInteger;
          open;
          if QueryContratanteAuxPerc_Desconto.AsInteger <> 0 then
             Perc_Desconto := QueryContratanteAuxPerc_Desconto.asInteger;
        end;
end;

procedure TQRListaUsuarioContratante_2.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     AchaValor;
     QRLabelValor.Caption := FormatFloat('R$ ' + '###0.00', Valor_Titulo);
     Valor_Grupo := Valor_Grupo + Valor_Titulo;
     Valor_Geral := Valor_Geral + Valor_Titulo;
end;

procedure TQRListaUsuarioContratante_2.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRLabelGeral.Caption := FormatFloat('R$ ' + '###0.00', Valor_Geral);
     QRLabelValorVidas.Caption := FormatFloat('R$ ' + '###0.00', (Valor_Geral / QueryContratos.RecordCount));
end;

procedure TQRListaUsuarioContratante_2.QRBand4AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
     Valor_Grupo := 0;
end;
procedure TQRListaUsuarioContratante_2.Verifica_Acrescimo;
begin
     Tem_Acrescimo := False;
     with QueryAcrescimo do
       begin
         Close;
         ParamByName('Codigo_Plano').asInteger := QueryContratosPlano.asInteger;
         Open;
         if RecordCount <> 0 then
            if (dm.now - QueryUsuariosData_Inclusao.asDateTime) > QueryAcrescimoDias.asInteger then
               Tem_Acrescimo := True;
            if QueryAcrescimoData_Aumento.AsDateTime < QueryUsuariosData_Inclusao.asDateTime then
               Tem_Acrescimo := True;
      end;
end;

procedure TQRListaUsuarioContratante_2.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     AchaValor;
     QRLabelValor.Caption := FormatFloat('R$ ' + '###0.00', Valor_Titulo);
     QRLabelVidas.Caption := IntToStr(Numero_Usuarios);
     Valor_Grupo := Valor_Grupo + Valor_Titulo;
     Valor_Geral := Valor_Geral + Valor_Titulo;
end;

end.
