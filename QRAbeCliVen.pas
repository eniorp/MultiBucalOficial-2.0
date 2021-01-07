{ Programa ........: Relat�rio de T�tulos em Aberto por Vencimento             }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

{ QuickReport list template }

unit QRAbeCliVen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, quickrpt, DB, DBTables, ExtCtrls;

type
  TQRTitAbeCliVencimento = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel2: TQRLabel;
    PageFooterBand1: TQRBand;
    QRLabel1: TQRLabel;
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
    QRDBText4: TQRDBText;
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
    QueryTituloOrcamento: TIntegerField;
    QueryTituloExclusao: TDateTimeField;
    QueryTituloParcela: TSmallintField;
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
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    procedure QueryTituloCalcFields(DataSet: TDataSet);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  QRTitAbeCliVencimento: TQRTitAbeCliVencimento;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2, DataHoje : TDateTime;
  Qtde_Parcela : array[1..12] of Integer;
  i : Short;
  Pgto : Integer;
  
implementation

{$R *.DFM}
uses RelatoReceber, Senha, udm,tacio;

procedure TQRTitAbeCliVencimento.QueryTituloCalcFields(DataSet: TDataSet);
begin
     DataHoje := dm.Date;
end;

procedure TQRTitAbeCliVencimento.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
     QRLabelEmpresa.Caption := Senha.Empresa;
     i := 2;
     with QueryTitulo do
       begin
         Close;
         ParamByName('Data1').asDateTime := DIntervalo1;
         ParamByName('Data2').asDateTime := DIntervalo2;
         if RelatoReceber.TipoDocumento <> 0 then
            begin
               SQL[10] := 'and D.Tipo_Documento = :TipoDocumento';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('TipoDocumento').asInteger := RelatoReceber.TipoDocumento;
               i := i + 1;
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
            end
         else
               SQL[12] := '';
         if RelatoReceber.Status <> 0 then
            begin
               SQL[13] := 'and Status_Orcamento = :Status';
               Params[i].DataType := ftInteger;
               Params[i].ParamType := ptInput;
               ParamByName('Status').asInteger := RelatoReceber.Status;
            end
         else
            begin
              SQL[13] := '';
            end;
         if RelatoReceber.FormRelatoriosReceber.ComboBoxOrcamentos.Text = 'Com Or�amentos' then
            SQL[15] := 'and exists (select * from orcamento where orcamento.contratante = D.codigo_contratante and Autorizado is not null)'
         else
         if RelatoReceber.FormRelatoriosReceber.ComboBoxOrcamentos.Text = 'Sem Or�amentos' then
            SQL[15] := 'and not exists (select * from orcamento where orcamento.contratante = D.codigo_contratante and Autorizado is not null)'
         else
            SQL[15] := '';
         if RelatoReceber.FormRelatoriosReceber.ComboBoxClassificacao.Text = 'Mensalidade' then
           begin
             SQL[16] := 'and D.desdobramento = :Desdobra';
             ParamByName('Desdobra').asString := 'M';
           end
         else
           if RelatoReceber.FormRelatoriosReceber.ComboBoxClassificacao.Text = 'Or�amento' then
             begin
               SQL[16] := 'and D.desdobramento = :Desdobra';
               ParamByName('Desdobra').asString := 'O';
             end
           else
              SQL[16] := '';
         Open;
       end;
     for I := 1 to 12 do
       Qtde_Parcela[I] := 0;

end;

procedure TQRTitAbeCliVencimento.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  Qtde_Parcela[QueryTituloParcela.asInteger] := Qtde_Parcela[QueryTituloParcela.asInteger] + 1;
end;

procedure TQRTitAbeCliVencimento.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
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
     for I := 2 to 12 do
       begin
         case I of
           2: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela2.Caption := IntToStr(Qtde_Parcela[I]);
           3: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela3.Caption := IntToStr(Qtde_Parcela[I]);
           4: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela4.Caption := IntToStr(Qtde_Parcela[I]);
           5: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela5.Caption := IntToStr(Qtde_Parcela[I]);
           6: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela6.Caption := IntToStr(Qtde_Parcela[I]);
           7: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela7.Caption := IntToStr(Qtde_Parcela[I]);
           8: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela8.Caption := IntToStr(Qtde_Parcela[I]);
           9: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela9.Caption := IntToStr(Qtde_Parcela[I]);
           10: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela10.Caption := IntToStr(Qtde_Parcela[I]);
           11: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela11.Caption := IntToStr(Qtde_Parcela[I]);
           12: if Qtde_Parcela[I] <> 0 then
                 QRLabelParcela12.Caption := IntToStr(Qtde_Parcela[I]);
         end;
       end;
end;

end.
