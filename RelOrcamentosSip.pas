unit RelOrcamentosSip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, DBCtrls,enio;

type
  TFormRelOrcamentosSip = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    MaskEditUltimo: TMaskEdit;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    MaskEditPeriodo: TMaskEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EditContratanteKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormRelOrcamentosSip: TFormRelOrcamentosSip;
  PrimeiraData, UltimaData: TDateTime;
  Codigo : integer;

implementation

uses QROrcamentos, QROrcamentosSip, QRDiopsSip, QRTaxaSuplementar;


{$R *.DFM}

procedure TFormRelOrcamentosSip.BitBtnImprimirClick(Sender: TObject);
begin
   if FormRelOrcamentosSip.Tag <> 1 then
   begin
        PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
        UltimaData := StrToDate(MaskEditUltimo.Text);


        if UltimaData < PrimeiraData then
        begin
          ShowMessage('A última Data não pode ser Menor que a primeira !!!');
          MaskEditUltimo.SetFocus;
          Exit;
        end;

    end;
     case FormRelOrcamentosSip.Tag of
       1 :
       begin
         //QROrcamentosSip.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
         //QROrcamentosSip.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         Application.CreateForm(TQRListaOrcamentosSip, QRListaOrcamentosSip);
         QROrcamentosSip.QRListaOrcamentosSip.QRLabelPeriodo.Caption := MaskEditPeriodo.text;
         //QROrcamentosSip.QRListaOrcamentosSip.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         QRListaOrcamentosSip.QueryOrcamentos.Close;
         QRListaOrcamentosSip.QueryOrcamentos.ParamByName('@periodo').AsString := MaskEditPeriodo.text;
         QRListaOrcamentosSip.QueryOrcamentos.Open;
         //QRListaOrcamentosSip.QueryOrcamentos.sql[07] := '''' + MaskEditPeriodo.text + '''';
         QRListaOrcamentosSip.Preview;
         QRListaOrcamentosSip.Free;
       end;
       2 :
       begin
         QRDiopsSip.DataFim := StrToDate(MaskEditUltimo.Text);
         Application.CreateForm(TQRListaDiopsSip, QRListaDiopsSip);
         QRDiopsSip.QRListaDiopsSip.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRDiopsSip.QRListaDiopsSip.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         QRListaDiopsSip.Preview;
         QRListaDiopsSip.Free;
       end;
       3 :
       begin
         QRTaxaSuplementar.DataFim := StrToDate(MaskEditUltimo.Text);
         Application.CreateForm(TQRListaTaxaSuplementar, QRListaTaxaSuplementar);
         QRTaxaSuplementar.QRListaTaxaSuplementar.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRTaxaSuplementar.QRListaTaxaSuplementar.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         QRListaTaxaSuplementar.QRLabel_menor.Caption := 'Usuários menores de ' + Edit1.text + ' anos: ';
         QRListaTaxaSuplementar.QRLabel_maior.Caption := 'Usuários maiores de ' + Edit1.text + ' anos: ';
         QRListaTaxaSuplementar.QueryUsuariosMenor.sql[4] := Edit1.text;
         QRListaTaxaSuplementar.QueryUsuariosMaior.sql[4] := Edit1.text;
         QRListaTaxaSuplementar.Preview;
         QRListaTaxaSuplementar.Free;
       end;
     end;
end;

procedure TFormRelOrcamentosSip.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of

          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelOrcamentosSip.EditContratanteKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #8]) then key := #0;
end;

procedure TFormRelOrcamentosSip.FormShow(Sender: TObject);
begin
   if tag = 1 then
   begin
      Label2.Visible := true;
      MaskEditPeriodo.Visible := true;
      Label1.Visible := false;
      MaskEditPrimeiro.Visible := false;
      Label4.Visible := false;
      MaskEditUltimo.Visible := false;
   end
   else
   if tag in [2,3] then
   begin
      Label1.caption := 'Data Venda';
      MaskEditPrimeiro.SetFocus;
   end
   else
      MaskEditPrimeiro.SetFocus;
end;

procedure TFormRelOrcamentosSip.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
   key := so_numero(key);
end;

end.
