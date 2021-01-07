{ Programa ........: Relatório por Data de Baixa                               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRBaiCliVen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitBaiCliVencimento = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel7: TQRLabel;
    QueryReceber: TQuery;
    QRGroup1: TQRGroup;
    QRDBText1: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText9: TQRDBText;
    QRExpr4: TQRExpr;
    QRLabelSituacao_: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData4: TQRSysData;
    QueryReceberData_Pagamento: TDateTimeField;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberData_Emissao: TDateTimeField;
    QueryReceberValor: TFloatField;
    QueryReceberValor_Pago: TFloatField;
    QueryReceberTipo_Documento: TIntegerField;
    QueryReceberTipo_Cobranca: TIntegerField;
    QRGroup2: TQRGroup;
    QRExpr5: TQRExpr;
    QRBand4: TQRBand;
    QRExpr6: TQRExpr;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr3: TQRExpr;
    PageFooterBand1: TQRBand;
    QueryReceberNumero_Banco: TStringField;
    QueryReceberStatus_Cheque: TStringField;
    QueryReceberNome_Contratante: TStringField;
    QueryReceberNome_Documento: TStringField;
    QueryReceberNome_Cobranca: TStringField;
    QRLabel3: TQRLabel;
    QueryReceberTipo_Pagamento: TIntegerField;
    QueryReceberDescricao_TipoPgto: TStringField;
    QRDBText3: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText10: TQRDBText;
    QueryReceberParcela: TSmallintField;
    QueryReceberData_Vencimento: TStringField;
    QRLabel14: TQRLabel;
    QRLabeldtPagto: TQRLabel;
    procedure QueryReceberCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public

  end;

var
  QRTitBaiCliVencimento: TQRTitBaiCliVencimento;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DIntervalo3, DIntervalo4, DataHoje : TDateTime;
  Pgto  : Integer;



implementation

{$R *.DFM}
uses RelatoReceber, Senha, udm;

procedure TQRTitBaiCliVencimento.QueryReceberCalcFields(DataSet: TDataSet);
begin
     DataHoje := dm.Date;
     If (QueryReceberDesdobramento.asString = '') or (QueryReceberDesdobramento.asString = ' ') then
        QueryReceberDesdobramento.asString := ''
     else
         QueryReceberDesdobramento.asString := '/' + QueryReceberDesdobramento.asString;
end;

procedure TQRTitBaiCliVencimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
var i, cont : Short;
Variavel : String;
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     i := 4; // ponteiro dos parametros
     with QueryReceber do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         ParamByName('Data3').asDateTime := DIntervalo3;
         ParamByName('Data4').asDateTime := DIntervalo4;

         if RelatoReceber.TipoCobranca <> 0 then
            begin
               SQL[7] := 'and Tipo_Cobranca = :TipoCobranca';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoCobranca').asInteger := RelatoReceber.TipoCobranca;
               i := i + 1;
            end
         else
               SQL[7] := '';
         if Pgto <> 0 then
            begin
              SQL[8] := 'and Tipo_Pagamento = :Pgto';
              Params[i].DataType := ftInteger;
              Params[i].ParamType := ptInput;
              ParamByName('Pgto').asInteger := Pgto;
              i := i + 1;
            end
         else
               SQL[8] := '';
         if RelatoReceber.TipoDocumento <> 0 then
            begin
               SQL[9] := 'and Tipo_Documento = :TipoDocumento';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoDocumento').asInteger := RelatoReceber.TipoDocumento;
               i := i + 1;
            end
         else
            SQL[9] := '';
         if RelatoReceber.FormRelatoriosReceber.ComboBoxClassificacao.Text <> 'Todos' then
            begin

               with RelatoReceber.FormRelatoriosReceber.QueryTipoDocumento2 do
                 begin
                   First;
                   Cont := 1;
                   while not eof do
                      begin
                        if Cont = 1 then
                           Variavel := 'and ((Tipo_Documento = ' + RelatoReceber.FormRelatoriosReceber.QueryTipoDocumento2Codigo.asString + ')'
                        else
                           Variavel := Variavel + ' or (Tipo_Documento = ' + RelatoReceber.FormRelatoriosReceber.QueryTipoDocumento2Codigo.asString + ')';
                        Cont := Cont + 1;
                        Next;
                       end;
                 end;
               SQL[10] := Variavel + ')';
               i := i - 1;
            end
         else
           SQL[10] := '';
           
         case FormRelatoriosReceber.RadioGroupTp.ItemIndex of
             0 : SQL[9] := SQL[9] + 'and Contratante.empresa = 1';
             1 : SQL[9] := SQL[9] + 'and Contratante.empresa = 0';
         end;

         Open;
         FormRelatoriosReceber.Memo1.Lines.clear;
         FormRelatoriosReceber.Memo1.Lines.add(text);

       end;
end;


end.
