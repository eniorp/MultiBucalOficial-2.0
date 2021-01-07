unit OrcPagDentista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, DBCtrls, StdCtrls;

type
  TFormOrcPagDentista = class(TForm)
    Panel1: TPanel;
    DataSourcePagDentista: TDataSource;
    DBGridPrestacoes: TDBGrid;
    EditTotalProtetico: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditTotalDentista: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    EditTotalValor: TEdit;
    Label5: TLabel;
    EditTotalBruto: TEdit;
    QuerySomas: TQuery;
    QueryPagDentista: TQuery;
    QueryPagDentistaOrcamento: TIntegerField;
    QueryPagDentistaIncremento: TIntegerField;
    QueryPagDentistaServico: TIntegerField;
    QueryPagDentistaQuantidade: TSmallintField;
    QueryPagDentistaValor: TFloatField;
    QueryPagDentistaValor_Bruto: TFloatField;
    QueryPagDentistaValor_Dentista: TFloatField;
    QueryPagDentistaValor_Protetico: TFloatField;
    QueryPagDentistaDescricao: TStringField;
    QuerySomasTot_Valor: TFloatField;
    QuerySomasTot_ValorBruto: TFloatField;
    QuerySomasTot_ValorDentista: TFloatField;
    QuerySomasTot_ValorProtetico: TFloatField;
    Label6: TLabel;
    EditSoma: TEdit;
    Label7: TLabel;
    EditSomaEmCartao: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridPrestacoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TIECustomGrid = class(TCustomGrid)
  public
    property InplaceEditor;
  end;

  TIEInplaceEdit = class(TInplaceEdit)
  public
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
  end;

var
  FormOrcPagDentista: TFormOrcPagDentista;


implementation


{$R *.DFM}

uses Orcamentos, UDM;

procedure TFormOrcPagDentista.FormCreate(Sender: TObject);
var TarifaCartao:Real;
begin
     Caption := 'Procedimentos do Orçamento Nº ' + Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asString;
     with QueryPagDentista do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asInteger;
         Open;
       end;
     with QuerySomas do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asInteger;
         Open;
       end;
     EditTotalValor.Text := FormatFloat('R$ ###,##0.00', QuerySomasTot_Valor.AsCurrency);
     EditTotalBruto.Text := FormatFloat('R$ ###,##0.00', QuerySomasTot_ValorBruto.AsCurrency);
     EditTotalDentista.Text := FormatFloat('R$ ###,##0.00', QuerySomasTot_ValorDentista.AsCurrency);
     EditTotalProtetico.Text := FormatFloat('R$ ###,##0.00', QuerySomasTot_ValorProtetico.AsCurrency);
     EditSoma.Text := FormatFloat('R$ ###,##0.00', QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency);
     if (QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency) < 0 then
        EditSoma.Color := clRed;
     if QuerySomasTot_Valor.AsCurrency>0 then
       label7.caption := 'Lucro : ' + FormatFloat('##0.00',((QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency) / QuerySomasTot_Valor.AsCurrency ) * 100) + '%'
     else
       label7.caption:=' Lucro: 0,00%';

     //calculando saldo menos a tarifa de cartão de crédito
     TarifaCartao:=StrToFloat(dm.GetParam('TCSORC'));
     EditSomaEmCartao.text:= FormatFloat('R$ ###,##0.00', (QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency)-(QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency)*TarifaCartao);
     if ((QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency)-(QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency)*TarifaCartao) < 0 then
        EditSomaEmCartao.Color := clRed;
     if QuerySomasTot_Valor.AsCurrency>0 then
       label9.caption := 'Lucro : ' + FormatFloat('##0.00',(((QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency)-(QuerySomasTot_Valor.AsCurrency - QuerySomasTot_ValorProtetico.AsCurrency - QuerySomasTot_ValorDentista.AsCurrency)*TarifaCartao) / QuerySomasTot_Valor.AsCurrency ) * 100) + '%'
     else
       label9.caption:=' Lucro: 0,00%';
     Label10.caption:= 'Tarifa Cartão: '+FloatToStr(TarifaCartao*100)+'%'
end;


procedure TFormOrcPagDentista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryPagDentista.Close;
end;

{ TIEInplaceEdit }

procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TFormOrcPagDentista.DBGridPrestacoesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
       vk_return :
          begin
            key := vk_tab;
            if Assigned(TIECustomGrid(Sender).InplaceEditor) then
               TIEInplaceEdit(TIECustomGrid(Sender).InplaceEditor).KeyDown(key,shift);
          end;
        vk_escape :
          begin
              Close;
          end;
     end;
end;

end.
