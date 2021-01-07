unit RelExcluidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables;

type
  TFormRelCancelamento = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    MaskEditUltimo: TMaskEdit;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    LabelMotivo: TLabel;
    ComboBoxMotivo: TComboBox;
    QueryCancelamento: TQuery;
    QueryCancelamentoDescricao: TStringField;
    QueryRepresentantes: TQuery;
    QueryRepresentantesCodigo: TSmallintField;
    QueryRepresentantesNome: TStringField;
    Label2: TLabel;
    ComboBoxRepresentante: TComboBox;
    QueryCancelamentoCODIGO: TIntegerField;
    QueryCancelamentocombo: TMemoField;
    QueryCancelamentoativo: TBooleanField;
    QueryRepresentantescombo: TMemoField;
    CheckBox1: TCheckBox;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    procedure MontaCancelamento;
    procedure MontaRepresentante;

  public
    { Public declarations }
  end;

var
  FormRelCancelamento: TFormRelCancelamento;
  Codigo : Integer;
  PrimeiraData, UltimaData: TDateTime;

implementation

uses QRContratoExcluidos, QRContratoExcluidosRepresentante, CancelUsuarios,
  Contratante;

{$R *.DFM}

procedure TFormRelCancelamento.BitBtnImprimirClick(Sender: TObject);
begin
     PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
     UltimaData := StrToDate(MaskEditUltimo.Text);

     if UltimaData < PrimeiraData then
       begin
         ShowMessage('A última Data não pode ser Menor que a primeira !!!');
         MaskEditUltimo.SetFocus;
         Exit;
       end;
     case FormRelCancelamento.Tag of
       0:
         begin
           QRContratoExcluidos.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
           QRContratoExcluidos.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
           QRContratoExcluidos.Motivo := StrToInt(Copy(ComboBoxMotivo.Text , 1, 3));
           Application.CreateForm(TQRListaContratosCancelados, QRListaContratosCancelados);
           QRContratoExcluidos.QRListaContratosCancelados.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
           QRContratoExcluidos.QRListaContratosCancelados.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
           QRListaContratosCancelados.Preview;
           QRListaContratosCancelados.Free;
         end;
       1:
         begin
           QRContratoExcluidosRepresentante.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
           QRContratoExcluidosRepresentante.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
           QRContratoExcluidosRepresentante.Representante := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 3));
           QRContratoExcluidosRepresentante.Motivo := StrToInt(Copy(ComboBoxMotivo.Text , 1, 3));
           Application.CreateForm(TQRListaContratosCanceladosRepresentante, QRListaContratosCanceladosRepresentante);
           QRContratoExcluidosRepresentante.QRListaContratosCanceladosRepresentante.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
           QRContratoExcluidosRepresentante.QRListaContratosCanceladosRepresentante.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
           QRListaContratosCanceladosRepresentante.Preview;
           QRListaContratosCanceladosRepresentante.Free;
         end;
        2:
        begin
           // usa a funcao GetvrMens
           FormContratante := TFormContratante.create(self);
           QrCancelUsuarios := TQrCancelUsuarios.create(self);
           QrCancelUsuarios.QueryUsuCancel.close;
           QrCancelUsuarios.QueryUsuCancel.sql[34] := ' u.data_exclusao between ''' + MaskEditPrimeiro.Text + ''' and ''' + MaskEditUltimo.Text + ' 23:59:59''';

           if ComboBoxMotivo.ItemIndex > 0 then
              QrCancelUsuarios.QueryUsuCancel.sql[34] := QrCancelUsuarios.QueryUsuCancel.sql[34] + ' and U.motivo_cancelamento = ' + Copy(ComboBoxMotivo.Text,1,3);

           if ComboBoxRepresentante.ItemIndex > 0 then
              QrCancelUsuarios.QueryUsuCancel.sql[34] := QrCancelUsuarios.QueryUsuCancel.sql[34] + ' and r.codigo = ' + Copy(ComboBoxRepresentante.Text,1,3);

           if CheckBox1.Checked then
              QrCancelUsuarios.QueryUsuCancel.sql[34] := QrCancelUsuarios.QueryUsuCancel.sql[34] + ' and u.lg_excl_renovacao = 0';

           QrCancelUsuarios.QueryUsuCancel.Open;
           QrCancelUsuarios.qrlabel2.caption := 'PERÍODO : ' + MaskEditPrimeiro.Text + ' A ' + MaskEditUltimo.Text;
           QrCancelUsuarios.Preview;
           QrCancelUsuarios.Free;
           FormContratante.free;
        end;
     end;
end;

procedure TFormRelCancelamento.FormActivate(Sender: TObject);
begin
   MaskEditPrimeiro.SetFocus;
   case FormRelCancelamento.Tag of
     0:
       begin
         MontaCancelamento;
         ComboBoxRepresentante.Enabled := true;
       end;
     1,2:
       begin
         MontaRepresentante;
         MontaCancelamento;         
       end;
   end;     
end;

procedure TFormRelCancelamento.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelCancelamento.MontaCancelamento;
begin
   ComboBoxMotivo.Items.Add('000' + ' - ' + 'Todos');
   with QueryCancelamento do
   begin
      Open;
      First;
      while not Eof do
      begin
         ComboBoxMotivo.Items.Add(QueryCancelamentoCombo.asString);
         Next;
      end;
   end;
end;

procedure TFormRelCancelamento.MontaRepresentante;
begin
   ComboBoxRepresentante.Items.Add('000' + ' - ' + 'Todos');
   with QueryRepresentantes do
   begin
      Open;
      First;
      while not Eof do
      begin
         ComboBoxRepresentante.Items.Add(QueryRepresentantesCombo.asString);
         Next;
      end;
   end;
end;
procedure TFormRelCancelamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryCancelamento.Close;
     QueryRepresentantes.Close;
end;

end.
