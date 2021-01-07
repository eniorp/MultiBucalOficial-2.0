{ Programa ........: Relatório por Vendas p/ Período                           }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRVendasPeriodoVencimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DB, DBTables, QRCtrls, QuickRpt, ExtCtrls,
  enio;

type
  TQRListaVendasPeriodoVencimento = class(TQuickRep)
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
    QRExpr4: TQRExpr;
    QRLabelPeriodo1: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData4: TQRSysData;
    QRGroupVendedor: TQRGroup;
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
    QueryVendasFone1: TStringField;
    QRDBText3: TQRDBText;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabelPgo: TQRLabel;
    QRLabelTr: TQRLabel;
    QueryOrcamentos: TQuery;
    QueryReceber: TQuery;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabelValorPagos: TQRLabel;
    QRLabelValorNPagos: TQRLabel;
    QRLabelTotPagos: TQRLabel;
    QRLabelTotNPagos: TQRLabel;
    QRLabelVendPagos: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabelVendNPagos: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabelEmpr: TQRLabel;
    QueryUsuariosContratante_Titular: TIntegerField;
    QRLabel23: TQRLabel;
    QRLabelQtcontrat: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRGroupVendedorBeforePrint(Sender: TQRCustomBand;
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
  QRListaVendasPeriodoVencimento: TQRListaVendasPeriodoVencimento;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;
  Valor_Desconto, Valor_Total, Valor_Titulo, Valor_Vendedor, Valor_Representante,
  Valor_Geral, ValorTotPagos, ValorTotNPagos : Currency;
  Vidas_Vendedor, Vidas_Representante, Vidas_Geral : Short;
  Representante, TotPagos, TotNPagos, TotVendPagos, TotVendNPagos,TotContrNPagos,TotContrPagos : Integer;
  i, Numero_Usuarios : Short;

implementation
   uses Senha, Fundo, udm, RelVendas;

{$R *.DFM}

procedure TQRListaVendasPeriodoVencimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     TotPagos       := 0;
     TotNPagos      := 0;
     TotVendPagos   := 0;
     TotContrNPagos := 0;
     TotContrPagos  := 0;     
     TotVendNPagos  := 0;
     ValorTotPagos  := 0;
     ValorTotNPagos := 0;
     FormFundo.QueryGenerica.Close;
     FormFundo.QueryGenerica.Sql.clear;
     FormFundo.QueryGenerica.Sql.Add('select getdate() as DtAtual');
     FormFundo.QueryGenerica.Open;
     DataHoje       := FormFundo.QueryGenerica.FieldByName('DtAtual').AsDatetime;
     FormFundo.QueryGenerica.Close;

     QueryVendas.Close;
     QueryVendas.ParamByName('Data1').asDateTime := DIntervalo1;
     QueryVendas.ParamByName('Data2').asDateTime := DIntervalo2;
     if Representante <> 0 then
        begin
        
          QueryVendas.SQL[07] := 'and D2.Representante = :Representante';
          QueryVendas.Params[2].DataType := ftInteger;
          QueryVendas.Params[2].ParamType := ptInput;
          QueryVendas.ParamByName('Representante').asInteger := Representante;
          QueryVendas.SQL[08] := 'order by D3.Codigo, D.Vendedor, D.Inclusao, D.Codigo';
        end
     else
        begin
          QueryVendas.SQL[07] := 'order by D3.Codigo, D.Vendedor, D.Inclusao, D.Codigo';
          QueryVendas.SQL[08] := '';
        end;
     if FormRelVendas.ComboBox1.ItemIndex = 1 then  // pessoa fisica
        QueryVendas.SQL[08] := ' and p.Fis_Jur = ''Física''' + QueryVendas.SQL[08]
     else
     if FormRelVendas.ComboBox1.ItemIndex = 2 then  // pessoa fisica
        QueryVendas.SQL[08] := ' and p.Fis_Jur = ''Jurídica''' + QueryVendas.SQL[08];

     QueryVendas.Open;

     Vidas_Geral := 0;
     Valor_Geral := 0;
end;

procedure TQRListaVendasPeriodoVencimento.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
     Valor_Titulo := 0;
     with QueryUsuarios do
       begin
         Close;
         SQL[1] := ('where Codigo = ' + QueryVendasCodigo.asString);
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

          QueryOrcamentos.Close;
          QueryOrcamentos.ParamByName('Contratante').asInteger := QueryUsuariosCodigo.asInteger;
          QueryOrcamentos.sql[3] := ' and data_conferencia < ' + dm.GetDataSrv();

          QueryOrcamentos.Open;
          if QueryOrcamentos.RecordCount <> 0 then
            QRLabelTr.Caption := 'S'
          else
            QRLabelTr.Caption := 'N';


          if QueryUsuariosCodigo.asInteger <> QueryUsuariosContratante_Titular.asInteger then begin
             with QueryReceber do  // pesquisar débito das empresas
               begin
                 Close;
                 ParamByName('Contratante').asInteger := QueryUsuariosContratante_Titular.asInteger;
                 ParamByName('Data').asDateTime       := DataHoje;
                 Open;
                 if QueryReceber.RecordCount <> 0 then begin
                    QRLabelEmpr.Caption := 'S';
                    TotPagos      := TotPagos + Numero_Usuarios;
                    TotVendPagos  := TotVendPagos + QueryUsuarios.RecordCount;
                    inc(TotContrPagos);
                    ValorTotPagos := ValorTotPagos + Valor_Titulo;
                 end
                 else begin
                    QRLabelEmpr.Caption := 'N';
                    TotNPagos      := TotNPagos + Numero_Usuarios;
                    TotVendNPagos  := TotVendNPagos + QueryUsuarios.RecordCount;
                    inc(TotContrNPagos);
                    ValorTotNPagos := ValorTotNPagos + Valor_Titulo;
                 end;
               end;
          end
          else
             QRLabelEmpr.Caption := '';

          with QueryReceber do
            begin
              Close;
              ParamByName('Contratante').asInteger := QueryUsuariosCodigo.asInteger;

//              ParamByName('Data').asDateTime       := DataHoje;
              ParamByName('Data').asDateTime  := StrToDate(FormRelVendas.MaskEditDtBase.Text);
              ParamByName('Data1').asDateTime := StrToDate(FormRelVendas.MaskEditDtBase.Text);

              Open;
              if QRLabelEmpr.Caption = '' then begin
                 if QueryReceber.RecordCount <> 0 then
                   begin
                     QRLabelPgo.Caption := 'S';
                     TotPagos      := TotPagos + Numero_Usuarios;
                     TotVendPagos  := TotVendPagos + QueryUsuarios.RecordCount;
                     inc(TotContrPagos);
                     ValorTotPagos := ValorTotPagos + Valor_Titulo;
                   end
                 else
                   begin
                     QRLabelPgo.Caption := 'N';
                     TotNPagos      := TotNPagos + Numero_Usuarios;
                     TotVendNPagos  := TotVendNPagos + QueryUsuarios.RecordCount;
                     inc(TotContrNPagos);
                     ValorTotNPagos := ValorTotNPagos + Valor_Titulo;
                   end;
              end
              else
                 QRLabelPgo.Caption := '';
           end;
       end;

end;

procedure TQRListaVendasPeriodoVencimento.Verifica_PrecoGrupo;
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

procedure TQRListaVendasPeriodoVencimento.Verifica_PrecoPlano;
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

procedure TQRListaVendasPeriodoVencimento.QRGroupVendedorBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     Vidas_Vendedor := 0;
     Valor_Vendedor := 0;
end;

procedure TQRListaVendasPeriodoVencimento.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabelVidasVendedor.Caption := IntToStr(Vidas_Vendedor);
     QRLabelValorVendedor.Caption := FormatFloat( 'R$' + '###,##0.00', Valor_Vendedor);
     if TotVendPagos + TotVendNPagos > 0  then
     begin
        QRLabelVendPagos.Caption  := IntToStr(TotVendPagos)  + ' -> ' + FormatFloat('00.00',(TotVendPagos  * 100) / (TotVendPagos + TotVendNPagos)) + '%';
        QRLabelVendNPagos.Caption := IntToStr(TotVendNPagos) + ' -> ' + FormatFloat('00.00',(TotVendNPagos * 100) / (TotVendPagos + TotVendNPagos)) + '%';
     end
     else
     begin
        QRLabelVendPagos.Caption  := '0%';
        QRLabelVendNPagos.Caption := '0%';
     end;
     if TotContrPagos + TotContrNPagos > 0  then
     begin
        QRLabel27.Caption := IntToStr(TotContrPagos)  + ' -> ' + FormatFloat('00.00',(TotContrPagos  * 100) / (TotContrPagos + TotContrNPagos)) + '%';
        QRLabel29.Caption := IntToStr(TotContrNPagos) + ' -> ' + FormatFloat('00.00',(TotContrNPagos * 100) / (TotContrPagos + TotContrNPagos)) + '%';
     end
     else
     begin
        QRLabel27.Caption := '0%';
        QRLabel29.Caption := '0%';
     end;

     QRLabelQtcontrat.Caption  := IntToStr(TotContrPagos + TotContrNPagos); // dm.execmd('select count(distinct c.codigo) qt from contratante c, usuario u where u.codigo = c.codigo and exclusao is null and inclusao between ''' +  FormatData(QRLabelPeriodo1.Caption,'MDY') + ''' and ''' + FormatData(QRLabelPeriodo2.Caption,'MDY')  + ''' and c.vendedor = ' + QueryVendasCodigo_1.AsString, 'qt');
     TotVendNPagos := 0;
     TotVendPagos  := 0;
     TotContrNPagos := 0;
     TotContrPagos  := 0;
end;

procedure TQRListaVendasPeriodoVencimento.QRGroup1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     Vidas_Representante := 0;
     Valor_Representante := 0;
end;

procedure TQRListaVendasPeriodoVencimento.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     QRLabelVidasRepresentante.Caption := IntToStr(Vidas_Representante);
     QRLabelValorRepresentante.Caption := FormatFloat( 'R$' + '###,##0.00', Valor_Representante);
end;

procedure TQRListaVendasPeriodoVencimento.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var Media : Currency;
begin
     QRLabelVidasGeral.Caption := IntToStr(Vidas_Geral);
     QRLabelValorGeral.Caption := FormatFloat( 'R$' + '###,##0.00', Valor_Geral);
     if Vidas_Geral > 0 then
        Media := Valor_Geral / Vidas_Geral
     else
        media := 0;
     QRLabelMedia.Caption := FormatFloat( 'R$' + '###,##0.00', Media);
     QRLabelValorPagos.Caption := FormatFloat( 'R$' + '###,##0.00', ValorTotPagos);
     QRLabelValorNPagos.Caption := FormatFloat( 'R$' + '###,##0.00', ValorTotNPagos);
     QRLabelTotPagos.Caption := IntToStr(TotPagos);
     QRLabelTotNPagos.Caption := IntToStr(TotNPagos);
end;

procedure TQRListaVendasPeriodoVencimento.Verifica_Desconto;
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
