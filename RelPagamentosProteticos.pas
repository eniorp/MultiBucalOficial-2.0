unit RelPagamentosProteticos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, ExtCtrls;

type
  TFormRelPagamentosProteticos = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    BitBtnAnalitico: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    ComboBoxProtetico: TComboBox;
    Label3: TLabel;
    QueryProtetico: TQuery;
    QueryProteticoCodigo: TIntegerField;
    QueryProteticoNome: TStringField;
    EditReferencia: TEdit;
    BitBtnSintetico: TBitBtn;
    Label12: TLabel;
    EditClinica: TEdit;
    BitBtnPesquisaClinica: TBitBtn;
    BitBtnClinica: TBitBtn;
    BitBtnRecibo: TBitBtn;
    RadioGroupTipo: TRadioGroup;
    Memo1: TMemo;
    procedure BitBtnAnaliticoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnSinteticoClick(Sender: TObject);
    procedure BitBtnPesquisaClinicaClick(Sender: TObject);
    procedure BitBtnClinicaClick(Sender: TObject);
    procedure EditClinicaExit(Sender: TObject);
    procedure BitBtnReciboClick(Sender: TObject);

  private
    { Private declarations }
    procedure MontaProtetico;

  public
    { Public declarations }
  end;

var
  FormRelPagamentosProteticos: TFormRelPagamentosProteticos;
  Codigo : Integer;
  Referencia: String[7];

implementation

uses QRPagamentoProtetico, QRPagamentoProteticoSintetico, PesquisaClinica,
     QRPagamentoProteticoClinica, ReciboServico, Recibo_Servico,
     QRPagamentoProteticoRecibo;

{$R *.DFM}

procedure TFormRelPagamentosProteticos.BitBtnAnaliticoClick(Sender: TObject);
begin
     QRPagamentoProtetico.MesAno    := EditReferencia.Text;
     QRPagamentoProtetico.Protetico := StrToInt(Copy(ComboBoxProtetico.Text , 1, 3));
     QRPagamentoProtetico.Clinica   := StrToInt(EditClinica.Text);
     if RadioGroupTipo.ItemIndex = 0 then
        QRPagamentoProtetico.VTipoPessoa := 'AU'
     else
        QRPagamentoProtetico.VTipoPessoa := 'PJ';

     Application.CreateForm(TQRListaPagProtetico, QRListaPagProtetico);
     QRPagamentoProtetico.QRListaPagProtetico.QRLabelReferencia.Caption := EditReferencia.Text;
     QRListaPagProtetico.Preview;
     QRListaPagProtetico.Free;
end;

procedure TFormRelPagamentosProteticos.FormActivate(Sender: TObject);
begin
     EditReferencia.SetFocus;
end;

procedure TFormRelPagamentosProteticos.FormCreate(Sender: TObject);
begin
     MontaProtetico;
end;

procedure TFormRelPagamentosProteticos.MontaProtetico;
begin
     ComboBoxProtetico.Items.Add('000' + ' - ' + 'Todos');
     with QueryProtetico do
       begin
         Open;
         First;
         while not Eof do
            begin
               Codigo := StrToInt(QueryProteticoCodigo.asString);

               if Codigo < 10 then
                  ComboBoxProtetico.Items.Add('00' + QueryProteticoCodigo.asString + ' - '+ QueryProteticoNome.asString)
               else
               if (Codigo >= 10) and (Codigo < 100) then
                  ComboBoxProtetico.Items.Add('0' + QueryProteticoCodigo.asString + ' - '+ QueryProteticoNome.asString)
               else
                  ComboBoxProtetico.Items.Add(QueryProteticoCodigo.asString + ' - '+ QueryProteticoNome.asString);
              Next;
            end;
      end;
end;

procedure TFormRelPagamentosProteticos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryProtetico.Close;
end;

procedure TFormRelPagamentosProteticos.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelPagamentosProteticos.BitBtnSinteticoClick(Sender: TObject);
begin
     QRPagamentoProteticoSintetico.MesAno := EditReferencia.Text;
     QRPagamentoProteticoSintetico.Protetico := StrToInt(Copy(ComboBoxProtetico.Text , 1, 3));
     Application.CreateForm(TQRListaPagProteticoSintetico, QRListaPagProteticoSintetico);
     QRPagamentoProteticoSintetico.QRListaPagProteticoSintetico.QRLabelReferencia.Caption := EditReferencia.Text;
     QRListaPagProteticoSintetico.Preview;
     QRListaPagProteticoSintetico.Free;
end;

procedure TFormRelPagamentosProteticos.BitBtnPesquisaClinicaClick(
  Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaClinica, FormPesquisaClinica);
     FormPesquisaClinica.ShowModal;
     EditClinica.text:= IntToStr(PesquisaClinica.FormPesquisaClinica.QueryClinicasCodigo.asInteger);
     RadioGroupTipo.Visible := (EditClinica.Text = '0');
     BitBtnClinica.SetFocus;
     FormPesquisaClinica.Query50.Close;
     FormPesquisaClinica.QueryClinicas.Close;
     FormPesquisaClinica.Free;
end;

procedure TFormRelPagamentosProteticos.BitBtnClinicaClick(Sender: TObject);
begin
     QRPagamentoProteticoClinica.MesAno := EditReferencia.Text;
     QRPagamentoProteticoClinica.Clinica := StrToInt(EditClinica.Text);
     Application.CreateForm(TQRListaPagProteticoClinica, QRListaPagProteticoClinica);
     QRPagamentoProteticoClinica.QRListaPagProteticoClinica.QRLabelReferencia.Caption := EditReferencia.Text;
     if RadioGroupTipo.ItemIndex = 0 then
        QRPagamentoProteticoClinica.VTipoPessoa := 'AU'
     else
        QRPagamentoProteticoClinica.VTipoPessoa := 'PJ';

     QRListaPagProteticoClinica.Preview;
     QRListaPagProteticoClinica.Free;
end;

procedure TFormRelPagamentosProteticos.EditClinicaExit(Sender: TObject);
begin
  if (EditClinica.Text = '') then
     EditClinica.Text := '0';
  RadioGroupTipo.Visible := (EditClinica.Text = '0');     
end;

procedure TFormRelPagamentosProteticos.BitBtnReciboClick(Sender: TObject);
begin
  QRPagamentoProteticoRecibo.MesAno    := EditReferencia.Text;
  QRPagamentoProteticoRecibo.VProtetico := StrToInt(Copy(ComboBoxProtetico.Text , 1, 3));
  QRPagamentoProteticoRecibo.VClinica  := StrToInt(EditClinica.text);
  Application.CreateForm(TQRPagProteticoRecibo, QRPagProteticoRecibo);
  QRPagProteticoRecibo.Preview;
  QRPagProteticoRecibo.Free;
end;

end.
