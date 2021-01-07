{**************************** DataFile Informática ****************************}
{ Sistema .........: Contas                                                    }
{ Programa ........: Baixa do Título pelo nº do Banco                          }
{ Cliente .........: Pronto Vida Emergências Médicas Ltda                      }
{ Programador .....: Renato Castanho Gosuen                                    }
{ Data ............: 02/01/2001                                                }
{ Ultima Alteração : 02/01/2001                                                }

unit BaixaBanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, DBCtrls, Mask, Buttons, ExtCtrls, DBIProcs;

type
  TFormBaixaTitulo = class(TForm)
    Panel1: TPanel;
    PanelBaixa: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    MaskEditDataBaixa: TMaskEdit;
    DBEditValorPagamento: TDBEdit;
    DBEditSaldoTitulo: TDBEdit;
    DBEditJuros: TDBEdit;
    DBEditDesconto: TDBEdit;
    EditSaldoRestante: TEdit;
    Label16: TLabel;
    Panel2: TPanel;
    DBGridTitulos: TDBGrid;
    EditNumero: TEdit;
    QueryTitulo: TQuery;
    DataSourceTitulo: TDataSource;
    QueryContratante: TQuery;
    QueryTituloNumero_Titulo: TIntegerField;
    QueryTituloDesdobramento: TStringField;
    QueryTituloTipo_Documento: TSmallintField;
    QueryTituloCodigo_Contratante: TIntegerField;
    QueryTituloData_Emissao: TDateTimeField;
    QueryTituloData_Vencimento: TDateTimeField;
    QueryTituloValor: TFloatField;
    QueryTituloSaldo: TFloatField;
    QueryTituloTipo_Cobranca: TSmallintField;
    QueryTituloNumero_Banco: TStringField;
    QueryTituloData_Pagamento: TDateTimeField;
    QueryTituloValor_Pago: TFloatField;
    QueryTituloDesconto: TFloatField;
    QueryTituloJuros: TFloatField;
    QueryTituloOperador: TSmallintField;
    QueryTituloOrcamento: TIntegerField;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryTituloNome: TStringField;
    BitBtnConfirma: TBitBtn;
    BitBtnCancelar: TBitBtn;
    procedure EditNumeroEnter(Sender: TObject);
    procedure EditNumeroExit(Sender: TObject);
    procedure EditNumeroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEditValorPagamentoEnter(Sender: TObject);
    procedure DBEditValorPagamentoExit(Sender: TObject);
    procedure BitBtnConfirmaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditNumeroKeyPress(Sender: TObject; var Key: Char);
    procedure EditSaldoRestanteKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure MaskEditDataBaixaExit(Sender: TObject);
    procedure MaskEditDataBaixaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBaixaTitulo: TFormBaixaTitulo;
  SaldoRestante : Currency;
  DataBaixa : TDateTime;
  Encontrado : Boolean;
  
implementation

uses udm;

{$R *.DFM}


procedure TFormBaixaTitulo.EditNumeroEnter(Sender: TObject);
begin
     EditNumero.Text := '';
     EditSaldoRestante.Text := '';
end;

procedure TFormBaixaTitulo.EditNumeroExit(Sender: TObject);
begin
     if EditNumero.Text <> '' then
        begin
          with QueryTitulo do
            begin
              Close;
              ParamByName('Banco').asString := EditNumero.Text;
              Open;
              if RecordCount = 0 then
                 begin
                   ShowMessage('Título Não Encontrado com este Número de Banco,' +
                     #13 + 'Ou Já Baixado Anteriormente !!!');
                   QueryTitulo.Close;
                   EditNumero.SetFocus;
                   Exit;
                 end;
            end;
            QueryContratante.Close;
            QueryContratante.SQL[1] := ('where Codigo = ' + QueryTituloCodigo_Contratante.asString);
            QueryContratante.Open;
            QueryTitulo.Close;
            QueryTitulo.Open;
            BitBtnConfirma.SetFocus;
        end;
end;

procedure TFormBaixaTitulo.EditNumeroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormBaixaTitulo.DBEditValorPagamentoEnter(Sender: TObject);
begin
     QueryTituloValor_Pago.asCurrency := QueryTituloSaldo.asCurrency - QueryTituloDesconto.asCurrency
            + QueryTituloJuros.asCurrency;
end;

procedure TFormBaixaTitulo.DBEditValorPagamentoExit(Sender: TObject);
begin
     if QueryTituloSaldo.asCurrency > QueryTituloValor_Pago.asCurrency then
        SaldoRestante := QueryTituloSaldo.asCurrency - QueryTituloValor_Pago.asCurrency
     else
        SaldoRestante := 0;
     EditSaldoRestante.Text := FormatFloat( 'R$' + '###,###,###,##0.00', SaldoRestante);

     if MessageDlg('Dados Ok ? ', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
        begin
          QueryTitulo.Cancel;
          EditNumero.SetFocus;
          exit;
        end;  

     QueryTitulo.Edit;
     DataBaixa                              := StrToDate(MaskEditDataBaixa.Text);
     QueryTituloData_Pagamento.AsDateTime   := DataBaixa;

//   ****************** Atualização do Arquivo de Títulos

     if (QueryTituloValor_Pago.asCurrency < QueryTituloSaldo.asCurrency) and (QueryTituloDesconto.asString = '') then
        QueryTituloSaldo.asCurrency := QueryTituloSaldo.asCurrency - QueryTituloValor_Pago.asCurrency;

     try
       QueryTitulo.Post     except
       begin
         ShowMessage('Erro Gravação da Tabela de Títulos Abertos');
         QueryTitulo.Cancel;
         QueryTitulo.Close;
         exit;
       end;
     end;

     QueryTitulo.Close;

     Encontrado := False;
     QueryTitulo.Open;
     if not Encontrado then
        begin
          QueryTitulo.Close;
          EditNumero.SetFocus;
          Exit;
        end;
     MaskEditDataBaixa.SetFocus;
end;

procedure TFormBaixaTitulo.BitBtnConfirmaClick(Sender: TObject);
begin
     if QueryTitulo.State in [dsbrowse] then
        QueryTitulo.Edit;
     MaskEditDataBaixa.SetFocus;
end;

procedure TFormBaixaTitulo.FormCreate(Sender: TObject);
begin
     DataBaixa := dm.Now;
end;

procedure TFormBaixaTitulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryContratante.Close;
     QueryTitulo.Close;     
end;

procedure TFormBaixaTitulo.EditNumeroKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFormBaixaTitulo.EditSaldoRestanteKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', DecimalSeparator, #13, #8]) then
        key := #0;
end;

procedure TFormBaixaTitulo.BitBtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFormBaixaTitulo.MaskEditDataBaixaExit(Sender: TObject);
begin
     DataBaixa := StrToDate(MaskEditDataBaixa.Text);
end;

procedure TFormBaixaTitulo.MaskEditDataBaixaEnter(Sender: TObject);
begin
     MaskEditDataBaixa.Text := DateToStr(DataBaixa);
end;

end.
