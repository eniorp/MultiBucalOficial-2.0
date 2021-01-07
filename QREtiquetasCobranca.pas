unit QREtiquetasCobranca;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQRListaEtiquetasCobranca = class(TQuickRep)
    QueryTitulo: TQuery;
    QueryTituloNome: TStringField;
    QueryTituloEndereco_Comercial: TStringField;
    QueryTituloBairro_Comercial: TStringField;
    QueryTituloCidade_Comercial: TStringField;
    QueryTituloEstado_Comercial: TStringField;
    QueryTituloCEP_Comercial: TStringField;
    v: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText7: TQRDBText;
    QueryTitulonumero_com: TStringField;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QRListaEtiquetasCobranca : TQRListaEtiquetasCobranca;
  NIntervalo1, NIntervalo2 : String;
  DIntervalo1, DIntervalo2 : TDateTime;
  Pgto : Integer;

implementation
    uses RelatoReceber;

{$R *.DFM}

procedure TQRListaEtiquetasCobranca.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);

begin
   QueryTitulo.Close;
   QueryTitulo.ParamByName('Data1').asDateTime := DIntervalo1;
   QueryTitulo.ParamByName('Data2').asDateTime := DIntervalo2;

   if RelatoReceber.TipoDocumento <> 0 then
      QueryTitulo.SQL[5] := 'and D.Tipo_Documento = ' + IntToStr(RelatoReceber.TipoDocumento)
   else
      QueryTitulo.SQL[5] := '';

  if RelatoReceber.TipoCobranca <> 0 then
     QueryTitulo.SQL[6] := 'and D.Tipo_Cobranca = ' + IntToStr(RelatoReceber.TipoCobranca)
  else
     QueryTitulo.SQL[6] := '';

  if Pgto <> 0 then
     QueryTitulo.SQL[7] :=  'and D.Tipo_Pagamento = ' + IntToStr(Pgto)
   else
      QueryTitulo.SQL[7] := '';

  if RelatoReceber.Status <> 0 then
     QueryTitulo.SQL[8] := 'and Status_Orcamento = ' + IntToStr(RelatoReceber.Status)
  else
     QueryTitulo.SQL[8] := '';

   if FormRelatoriosReceber.ComboBoxOrcamentos.Text = 'Com Orçamentos' then
      QueryTitulo.SQL[10] := 'and exists (select * from orcamento where orcamento.contratante = D.codigo_contratante and Autorizado is not null)'
   else
   if FormRelatoriosReceber.ComboBoxOrcamentos.Text = 'Sem Orçamentos' then
      QueryTitulo.SQL[10] := 'and not exists (select * from orcamento where orcamento.contratante = D.codigo_contratante and Autorizado is not null)'
   else
      QueryTitulo.SQL[10] := '';

   if FormRelatoriosReceber.ComboBoxClassificacao.Text = 'Mensalidade' then
      QueryTitulo.SQL[11] := 'and D.desdobramento = ''M'''
   else
   if FormRelatoriosReceber.ComboBoxClassificacao.Text = 'Orçamento' then
      QueryTitulo.SQL[11] := 'and D.desdobramento = ''O'''
   else
      QueryTitulo.SQL[11] := '';

   QueryTitulo.Open;
end;

end.
