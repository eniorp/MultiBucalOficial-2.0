{ Programa ........: Relat�rio por Vendas p/ Per�odo p/ Plano }
{ Cliente .........: MultiOdonto                              }
{ Programador .....: Fl�via Pontoglio                         }
{ Data.............: 22/04/2002                               }
{ QuickReport list template                                   }

unit QRComissaoPeriodoPlano;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRListaComissaoPeriodoPlano = class(TQuickRep)
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
    QueryUsuarios: TQuery;
    QRLabelVidas: TQRLabel;
    QueryUsuariosCodigo: TIntegerField;
    QRLabel3: TQRLabel;
    QueryPrecoContratante: TQuery;
    QueryPrecoPlano: TQuery;
    QueryPrecoGrupo: TQuery;
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
    QRLabel5: TQRLabel;
    QRLabelVidasRepresentante: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabelVidasGeral: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRLabel18: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr6: TQRExpr;
    QRLabel16: TQRLabel;
    QRLabelParcela2: TQRLabel;
    QRLabelParcela3: TQRLabel;
    QRLabelParcela4: TQRLabel;
    QRLabelParcela5: TQRLabel;
    QRLabelParcela6: TQRLabel;
    QRLabelParcela7: TQRLabel;
    QRLabelParcela8: TQRLabel;
    QRLabelParcela9: TQRLabel;
    QRLabelParcela10: TQRLabel;
    QRLabelParcela11: TQRLabel;
    QRLabelParcela12: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabelVidas2: TQRLabel;
    QRLabelVidas3: TQRLabel;
    QRLabelVidas4: TQRLabel;
    QRLabelVidas5: TQRLabel;
    QRLabelVidas6: TQRLabel;
    QRLabelVidas7: TQRLabel;
    QRLabelVidas8: TQRLabel;
    QRLabelVidas9: TQRLabel;
    QRLabelVidas10: TQRLabel;
    QRLabelVidas11: TQRLabel;
    QRLabelVidas12: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRGroup3: TQRGroup;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRLabel29: TQRLabel;
    QueryVendasCodigo: TIntegerField;
    QueryVendasNome: TStringField;
    QueryVendasInclusao: TDateTimeField;
    QueryVendasVendedor: TIntegerField;
    QueryVendasExclusao: TDateTimeField;
    QueryVendasPlano: TIntegerField;
    QueryVendasGrupo_Contratante: TIntegerField;
    QueryVendasCodigo_1: TIntegerField;
    QueryVendasNome_1: TStringField;
    QueryVendasRepresentante: TSmallintField;
    QueryVendasCodigo_2: TSmallintField;
    QueryVendasNome_2: TStringField;
    QueryVendasNumero_Titulo: TIntegerField;
    QueryVendasCodigo_Contratante: TIntegerField;
    QueryVendasValor_Pago: TFloatField;
    QueryVendasValor: TFloatField;
    QueryVendasData_Pagamento: TDateTimeField;
    QueryVendasData_Vencimento: TDateTimeField;
    QueryVendasParcela: TSmallintField;
    QueryVendasCodigo_3: TIntegerField;
    QueryVendasDescricao: TStringField;
    QRBand5: TQRBand;
    QRLabel30: TQRLabel;
    QRLabelVidasVendedor: TQRLabel;
    QRExpr11: TQRExpr;
    QRLabelVidasPlano: TQRLabel;
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
    procedure QRGroup3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand5BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    procedure Verifica_PrecoGrupo;
    procedure Verifica_PrecoPlano;

  public
     TpPessoaPlano : char; // f fisica j juridica e t todas
    { Public declarations }
  end;

var
  QRListaComissaoPeriodoPlano: TQRListaComissaoPeriodoPlano;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;
  Valor_Total, Valor_Titulo, Valor_Vendedor, Valor_Plano, Valor_Representante, Valor_Geral : Currency;
  Vidas_Vendedor, Vidas_Plano, Vidas_Representante, Vidas_Geral, DParcela1, DParcela2 : Short;
  Representante, PlanoSel : Integer;
  Valor_Parcela : array[1..24] of Currency;
  Vidas, Contratos : array[1..24] of Short;
  I : Short;

implementation
  uses Senha, RelComissao;

{$R *.DFM}

procedure TQRListaComissaoPeriodoPlano.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryVendas do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         ParamByName('Parcela1').asInteger := DParcela1;
         ParamByName('Parcela2').asInteger := DParcela2;
         if Representante <> 0 then
            begin
              SQL[13] := 'and D2.Representante = :Representante';
              Params[4].DataType := ftInteger;
              Params[4].ParamType := ptInput;
              ParamByName('Representante').asInteger := Representante;
              if PlanoSel <> 0 then
                begin
                  SQL[14] := 'and D.Plano = :Plano';
                  Params[5].DataType := ftInteger;
                  Params[5].ParamType := ptInput;
                  ParamByName('Plano').asInteger := PlanoSel;
                  SQL[15] := 'order by D3.Codigo, D.Vendedor, D.Plano, D4.Parcela, D4.Data_Vencimento';
                end
              else
                begin
                  SQL[14] := 'order by D3.Codigo, D.Vendedor, D.Plano, D4.Parcela, D4.Data_Vencimento';
                  SQL[15] := '';
               end;
            end
         else
            begin
              if PlanoSel <> 0 then
                begin
                  SQL[13] := 'and D.Plano = :Plano';
                  Params[5].DataType := ftInteger;
                  Params[5].ParamType := ptInput;
                  ParamByName('Plano').asInteger := PlanoSel;
                  SQL[14] := 'order by D3.Codigo, D.Vendedor, D.Plano, D4.Parcela, D4.Data_Vencimento';
                  SQL[15] := '';
                end
              else
                begin
                  SQL[13] := 'order by D3.Codigo, D.Vendedor, D.Plano, D4.Parcela, D4.Data_Vencimento';
                  SQL[14] := '';
                  SQL[15] := '';
               end;
            end;
            // filtra se � quer plano pj ou pf ou os dois.
            if TpPessoaPlano <> 'T' then
            begin
              //FormRelComissao.memo1.lines.add(text);
               case TpPessoaPlano of

                 'F': sql[13] := ' and d5.Fis_Jur = ''F�sica'' ' + sql[13];
                 'J': sql[13] := ' and d5.Fis_Jur = ''Jur�dica'' ' + sql[13];
               end;
            end;

         Open;
        //fmRelComissao.Memo1.Lines.Add(text);
       end;
     Vidas_Geral := 0;
     Valor_Geral := 0;
     for I := 1 to 24 do
       begin
         Valor_Parcela[I] := 0;
         Vidas[I] := 0;
       end;
end;

procedure TQRListaComissaoPeriodoPlano.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     Valor_Titulo := 0;
     with QueryUsuarios do
       begin
         Close;
         SQL[1] := ('where Contratante_titular = ' + QueryVendasCodigo.asString);
         // Testar filtro data exclusao do usuario Exclusao = ''
//         SQL[2] := 'and Exclusao = ''''';
//         SQL[3] := 'and Inclusao <= ' + DateToStr(Data_Base); // Data do ultimo dia mes anterior
         Open;
         QRLabelVidas.Caption := IntToStr(RecordCount);
         Vidas[QueryVendasParcela.asInteger] := Vidas[QueryVendasParcela.asInteger] + RecordCount;
         Vidas_Plano := Vidas_Plano + RecordCount;
         Vidas_Vendedor := Vidas_Vendedor + RecordCount;
         Vidas_Representante := Vidas_Representante + RecordCount;
         Vidas_Geral := Vidas_Geral + RecordCount;

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
                    Valor_Titulo := Valor_Titulo + QueryPrecoContratanteValor.asCurrency;
               end;
             Next;
           end;
          Valor_Vendedor := Valor_Vendedor + Valor_Titulo;
          Valor_Plano := Valor_Plano + Valor_Titulo;
          Valor_Representante := Valor_Representante + Valor_Titulo;
          Valor_Geral := Valor_Geral + Valor_Titulo;
       end;
       Valor_Parcela[QueryVendasParcela.asInteger] := Valor_Parcela[QueryVendasParcela.asInteger] + QueryVendasValor.asCurrency;

end;

procedure TQRListaComissaoPeriodoPlano.Verifica_PrecoGrupo;
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
            Valor_Titulo := Valor_Titulo + QueryPrecoGrupoValor.asCurrency;
       end;
end;

procedure TQRListaComissaoPeriodoPlano.Verifica_PrecoPlano;
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
            Valor_Titulo := Valor_Titulo + QueryPrecoPlanoValor.asCurrency;
       end;
end;

procedure TQRListaComissaoPeriodoPlano.QRGroup2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     Vidas_Vendedor := 0;
     Valor_Vendedor := 0;
end;

procedure TQRListaComissaoPeriodoPlano.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabelVidasPlano.Caption := IntToStr(Vidas_Plano);
end;

procedure TQRListaComissaoPeriodoPlano.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     Vidas_Representante := 0;
     Valor_Representante := 0;
end;

procedure TQRListaComissaoPeriodoPlano.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabelVidasRepresentante.Caption := IntToStr(Vidas_Representante);
end;

procedure TQRListaComissaoPeriodoPlano.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

begin
     QRLabelVidasGeral.Caption := IntToStr(Vidas_Geral);
     QRLabelParcela2.Caption := '';
     QRLabelParcela3.Caption := '';
     QRLabelParcela4.Caption := '';
     QRLabelParcela5.Caption := '';
     QRLabelParcela6.Caption := '';
     QRLabelParcela7.Caption := '';
     QRLabelParcela8.Caption := '';
     QRLabelParcela9.Caption := '';
     QRLabelParcela10.Caption := '';
     QRLabelParcela11.Caption := '';
     QRLabelParcela12.Caption := '';
     QRLabelVidas2.Caption := '';
     QRLabelVidas3.Caption := '';
     QRLabelVidas4.Caption := '';
     QRLabelVidas5.Caption := '';
     QRLabelVidas6.Caption := '';
     QRLabelVidas7.Caption := '';
     QRLabelVidas8.Caption := '';
     QRLabelVidas9.Caption := '';
     QRLabelVidas10.Caption := '';
     QRLabelVidas11.Caption := '';
     QRLabelVidas12.Caption := '';

     for I := 2 to 12 do
       begin
         case I of
           2: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela2.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas2.Caption := IntToStr(Vidas[I]);
                 end;
           3: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela3.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas3.Caption := IntToStr(Vidas[I]);
                 end;
           4: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela4.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas4.Caption := IntToStr(Vidas[I]);
                 end;
           5: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela5.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas5.Caption := IntToStr(Vidas[I]);
                 end;
           6: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela6.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas6.Caption := IntToStr(Vidas[I]);
                 end;
           7: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela7.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas7.Caption := IntToStr(Vidas[I]);
                 end;
           8: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela8.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas8.Caption := IntToStr(Vidas[I]);
                 end;
           9: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela9.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas9.Caption := IntToStr(Vidas[I]);
                 end;
           10: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela10.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas10.Caption := IntToStr(Vidas[I]);
                 end;
           11: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela11.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas11.Caption := IntToStr(Vidas[I]);
                 end;
           12: if Valor_Parcela[I] <> 0 then
                 begin
                    QRLabelParcela12.Caption := FormatFloat('###,##0.00', Valor_Parcela[I]);
                    QRLabelVidas12.Caption := IntToStr(Vidas[I]);
                 end;
         end;
       end;
end;

procedure TQRListaComissaoPeriodoPlano.QRGroup3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     Vidas_Plano    := 0;
     Valor_Plano    := 0;
end;

procedure TQRListaComissaoPeriodoPlano.QRBand5BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     QRLabelVidasVendedor.Caption := IntToStr(Vidas_Vendedor);
end;

end.
