{ Programa ........: Relatório de Títulos em Aberto por Cobranca               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRAbeCobranca;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls, QRExport;

type
  TQRTitAbeCliCobranca = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRBand3: TQRBand;
    QRLabel7: TQRLabel;
    QueryTitulo: TQuery;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr3: TQRExpr;
    QRLabel10: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabelSituacao: TQRLabel;
    QRSysData4: TQRSysData;
    QueryTituloDescricao: TStringField;
    QueryTituloDescricao_1: TStringField;
    QueryTituloTipo_Documento: TIntegerField;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloDesdobramento: TStringField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloTipo_Cobranca: TIntegerField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloNome: TStringField;
    QueryTituloStatus_Cheque: TStringField;
    QRDBText3: TQRDBText;
    QueryTituloOrcamento: TIntegerField;
    QueryTituloExclusao: TDateTimeField;
    QRDBText8: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText9: TQRDBText;
    QueryTituloParcela: TSmallintField;
    QRTextFilter1: TQRTextFilter;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    procedure QueryTituloCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitAbeCliCobranca: TQRTitAbeCliCobranca;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;
  i : Short;
  Pgto : Integer;

implementation

{$R *.DFM}
uses RelatoReceber, Senha, udm, tacio;

procedure TQRTitAbeCliCobranca.QueryTituloCalcFields(DataSet: TDataSet);
begin
     DataHoje := dm.Date;
end;

procedure TQRTitAbeCliCobranca.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
  var sqlAux : string;
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     i := 2;
     sqlAux := ' and codigo_contratante in(select codigo_contratante from Receber D, v_Contratante D1, TipoDocumento D2, TipoCobranca D3 ' +
               ' where  (D1.Codigo = D.Codigo_Contratante) and (D2.Codigo = D.Tipo_Documento)  and (D3.Codigo = D.Tipo_Cobranca) and (Data_Pagamento  is null) ';
     with QueryTitulo do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         sqlAux := sqlAux + ' and D.Data_Vencimento between ''' + FormRelatoriosReceber.MaskEditPrimeiroVencimento.Text + ''' and ''' + FormRelatoriosReceber.MaskEditUltimoVencimento.Text + ''' ';
         if RelatoReceber.TipoDocumento <> 0 then
            begin
               SQL[10] := 'and D.Tipo_Documento = :TipoDocumento';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoDocumento').asInteger := RelatoReceber.TipoDocumento;
               i := i + 1;
               sqlAux := sqlAux + ' and D.Tipo_Documento = ' + intToStr(RelatoReceber.TipoDocumento);
            end
         else
               SQL[10] := '';
         if RelatoReceber.TipoCobranca <> 0 then
            begin
               SQL[11] := 'and D.Tipo_Cobranca = :TipoCobranca';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoCobranca').asInteger := RelatoReceber.TipoCobranca;
               i := i + 1;
               sqlAux := sqlAux + ' and D.Tipo_Cobranca = ' + inttostr(RelatoReceber.TipoCobranca);
            end
         else
               SQL[11] := '';
         if Pgto <> 0 then
            begin
              SQL[12] := 'and D.Tipo_Pagamento = :Pgto';
              Params[i].DataType := ftInteger;
              Params[i].ParamType := ptInput;
              ParamByName('Pgto').asInteger := Pgto;
              i := i + 1;
              sqlAux := sqlAux +  ' and D.Tipo_Pagamento = ' + intToStr(Pgto);
            end
         else
               SQL[12] := '';

         case FormRelatoriosReceber.RadioGroupTp.ItemIndex of
             0 : begin
                   SQL[12] := SQL[12] + ' and d1.empresa = 1';
                   sqlAux := sqlAux +  ' and d1.empresa = 1';
                 end;
             1 : begin
                    SQL[12] := SQL[12] + ' and d1.empresa = 0';
                    sqlAux := sqlAux +  ' and d1.empresa = 0';
                 end;
         end;
         If FormRelatoriosReceber.ADOQueryRegiao.FieldByName('cd_regiao').AsInteger <> 0 then
         begin
            QueryTitulo.SQL[12] := QueryTitulo.SQL[12] + ' and d1.cd_regiao_res = ' + FormRelatoriosReceber.ADOQueryRegiao.FieldByName('cd_regiao').AsString;
            sqlAux := sqlAux +  ' and d1.cd_regiao_res = ' + FormRelatoriosReceber.ADOQueryRegiao.FieldByName('cd_regiao').AsString;
         end;

         case FormRelatoriosReceber.ComboBoxTpUsuario.ItemIndex of
               0: QueryTitulo.sql[13] := ' ';
               1: begin
                     QueryTitulo.sql[13] := ' and D1.Exclusao is null ';
                     sqlAux := sqlAux +  ' and D1.Exclusao is null ';
                  end;
               2: begin
                     QueryTitulo.sql[13] := ' and D1.Exclusao is not null ';
                     sqlAux := sqlAux +  ' and D1.Exclusao is not null ';
                  end;
          end;

         if FormRelatoriosReceber.ComboBoxQtTitAbe.Text <> 'Todos' then
         begin
           if FormRelatoriosReceber.ComboBoxQtTitAbe.ItemIndex > 1 then
              sqlAux := sqlAux + ' group by codigo_contratante having count(*) >= 3)'
           else
           sqlAux := sqlAux + ' group by codigo_contratante having count(*) = ' + FormRelatoriosReceber.ComboBoxQtTitAbe.Text + ')';
           QueryTitulo.SQL[12] :=  QueryTitulo.SQL[12] + sqlAux;
         end;

         FormRelatoriosReceber.Memo1.Text := QueryTitulo.text;
         QueryTitulo.Open;

       end;
end;

end.
