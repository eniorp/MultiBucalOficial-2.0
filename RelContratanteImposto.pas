unit RelContratanteImposto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables;

type
  TFormRelContratanteImposto = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    EditAno: TEdit;
    Label1: TLabel;
    EditCodigo: TEdit;
    BitBtnPesquisar: TBitBtn;
    EditNome: TEdit;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure EditReferenciaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnPesquisarClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelContratanteImposto: TFormRelContratanteImposto;

implementation

uses QRReciboImpRenda, PesquisaContratante, udm, senha;

{$R *.DFM}

procedure TFormRelContratanteImposto.BitBtnImprimirClick(Sender: TObject);
begin
   if FormRelContratanteImposto.Tag = 1 then begin
     QRReciboImpRenda.Ano := StrToInt(EditAno.text);
     QRReciboImpRenda.Contratante := StrToInt(EditCodigo.text);
     Application.CreateForm(TQRReciboImpostoRenda, QRReciboImpostoRenda);
     QRReciboImpostoRenda.QRLabelDtBase.Caption := 'DATA BASE: ' + EditAno.Text;
     QRReciboImpostoRenda.Preview;
     if QRReciboImpostoRenda.imprimiu then
     begin
       if dm.ExecutaComando('select count(*) qt from ReciboIR_contratante where ano = ' + EditAno.Text + ' and cd_contratante = ' + EditCodigo.text,'qt') = '0' then
       begin
             dm.execmd('insert into ReciboIR_contratante  select ' + EditAno.Text + ',' + EditCodigo.text + ',getdate(),' +
             inttostr(senha.Codigo_Operador) + ',' + ' sum(valor_Pago) from receber  where codigo_contratante = ' +
             EditCodigo.text + ' and DATEPART(year, data_pagamento) = ' + EditAno.Text);
       end;
     end;
    QRReciboImpostoRenda.Free;
   end;
end;

procedure TFormRelContratanteImposto.EditReferenciaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelContratanteImposto.BitBtnPesquisarClick(Sender: TObject);
begin
     Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
     FormPesquisaContratante.ShowModal;
     EditCodigo.Text := IntToStr(PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asInteger);
     EditNome.Text   := PesquisaContratante.FormPesquisaContratante.QueryContratanteNome.asString;
     BitBtnImprimir.setFocus;
     FormPesquisaContratante.QueryContratante.close;
     FormPesquisaContratante.Free;
end;

end.
