unit QROrcamentos;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables,enio,dialogs;

type
  TQRListaOrcamentos = class(TQuickRep)
    TitleBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabelEmpresa: TQRLabel;
    QRLabelPeriodo1: TQRLabel;
    QRLabel11: TQRLabel;
    QRSysData4: TQRSysData;
    QRLabel15: TQRLabel;
    QRLabelPeriodo2: TQRLabel;
    QRGroup1: TQRGroup;
    QRExpr4: TQRExpr;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRExpr2: TQRExpr;
    QRLabel9: TQRLabel;
    PageFooterBand1: TQRBand;
    QueryOrcamentos: TQuery;
    QueryOrcamentosNumero: TIntegerField;
    QueryOrcamentosData_Hora: TDateTimeField;
    QueryOrcamentosOperador_Cadastro: TSmallintField;
    QueryOrcamentosUsuario: TIntegerField;
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
    QRDBText3: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRExpr1: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr11: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QueryOrcamentosSaldo: TCurrencyField;
    QRLabel3: TQRLabel;
    QueryOrcamentosContratante: TIntegerField;
    QRGroupData: TQRGroup;
    QRExpr14: TQRExpr;
    QueryTipoOrcamento: TQuery;
    QueryOrcamentosDescricaoTipo: TStringField;
    QRBandTipo: TQRBand;
    QRLabel10: TQRLabel;
    QRExpr15: TQRExpr;
    QRExpr16: TQRExpr;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr19: TQRExpr;
    QRExpr20: TQRExpr;
    QRDBText2: TQRDBText;
    QueryOrcamentosNome: TStringField;
    QueryOrcamentosCodigo_Completo: TIntegerField;
    QueryOrcamentosContratante_Titular: TIntegerField;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabelFamiliar: TQRLabel;
    QRLabelEmpresarial: TQRLabel;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteFamiliar: TBooleanField;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    QRLabel1Dentista: TQRLabel;
    QRLabelRegiao: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure DetailBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QueryOrcamentosCalcFields(DataSet: TDataSet);
  private

  public
     cdDentista : string;

  end;

var
  QRListaOrcamentos: TQRListaOrcamentos;
  DIntervalo1, DIntervalo2 , DataHoje : TDateTime;
  Tipo, Contratante, TipoOrcamento : Integer;
  Empresarial, Familiar : Integer;
  DtFimDig,DtiniDig : string[10];

implementation
 uses  Senha;
{$R *.DFM}

procedure TQRListaOrcamentos.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    QRLabelEmpresa.Caption := Senha.Empresa;
     with QueryOrcamentos do
       begin
       
         Close;
         if DateToStr(DIntervalo2) = '01/01/1900' then
            QueryOrcamentos.sql[2] := ' ' // informou data em branco
         else
         begin
            ParamByName('Data1').asDateTime := DIntervalo1;
            ParamByName('Data2').asDateTime := DIntervalo2;
         end;
         if DtFimDig <> '  /  /    ' then
            QueryOrcamentos.sql[2] := QueryOrcamentos.sql[2] + ' and Orcamento.data_hora between ''' + DtiniDig + ''' and ''' + DtFimDig + ' 23:59:59''';
            //QueryOrcamentos.sql[2] := QueryOrcamentos.sql[2] + ' and Orcamento.data_hora between ''' + FormatData(DtiniDig,'MDY') + ''' and ''' + FormatData(DtFimDig,'MDY') + ' 23:59:59''';

         if Contratante <> 0 then
           ParamByName('Contratante_Titular').asInteger := Contratante
         else
            SQL[3] := ('and Usuario is not null');

         if Tipo <> 2 then
           ParamByName('Autoriza').asInteger := Tipo
         else
           SQL[4] := '';

         if TipoOrcamento <> 0 then
            ParamByName('TipoOrcamento').asInteger := TipoOrcamento
         else
            SQL[5] := '';

         if cddentista <> '0' then
         begin
            QueryOrcamentos.sql[2] := QueryOrcamentos.sql[2] + ' and orcamento.dentista = ' + cdDentista;
            
         end;

         Open;


       end;
       Empresarial := 0;
       Familiar    := 0;
end;

procedure TQRListaOrcamentos.DetailBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
  with QueryContratante do
    begin
      Close;
      ParamByName('Contratante').AsInteger := QueryOrcamentosContratante.asInteger;
      Open;
      if QueryContratanteFamiliar.Value = True then
        Familiar := Familiar + 1
      else
        Empresarial := Empresarial + 1;
    end;
end;

procedure TQRListaOrcamentos.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  QRLabelFamiliar.Caption    := IntToStr(Familiar);
  QRLabelEmpresarial.Caption := IntToStr(Empresarial);
end;

procedure TQRListaOrcamentos.QueryOrcamentosCalcFields(DataSet: TDataSet);
begin
  QueryOrcamentosSaldo.AsCurrency := QueryOrcamentosTotal.AsCurrency -
     (QueryOrcamentosTotal_Dentista.AsCurrency + QueryOrcamentosTotal_Protetico.AsCurrency);
end;

end.
