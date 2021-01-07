unit RelVendas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Db, DBTables, ExtCtrls,enio, DBCtrls, ADODB;

type
  TFormRelVendas = class(TForm)
    GroupBoxIntervalo: TGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    MaskEditPrimeiro: TMaskEdit;
    MaskEditUltimo: TMaskEdit;
    BitBtnImprimir: TBitBtn;
    BitBtnSair: TBitBtn;
    Label2: TLabel;
    ComboBoxRepresentante: TComboBox;
    QueryRepresentante: TQuery;
    QueryRepresentanteCodigo: TSmallintField;
    QueryRepresentanteNome: TStringField;
    BitBtnEtiquetas: TBitBtn;
    CheckBox1: TCheckBox;
    Label3: TLabel;
    MaskEditDtBase: TMaskEdit;
    Label5: TLabel;
    ComboBox1: TComboBox;
    Label6: TLabel;
    ADOQueryCidade: TADOQuery;
    DsCidade: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Memo1: TMemo;
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnEtiquetasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MaskEditPrimeiroChange(Sender: TObject);
    procedure ComboBoxRepresentanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
    procedure MontaRepresentante;

  public
    { Public declarations }
  end;

var
  FormRelVendas: TFormRelVendas;
  TipoRepresentante, Codigo, Representante: Integer;
  PrimeiraData, UltimaData: TDateTime;

implementation

uses QRVendasPeriodo, QRVendasPeriodoSintetico, QRVendasVencimento,
  QRVendasPeriodoVencimento, QRVendasPeriodoVencEtq, RelVendasPorUsu,
  RelFrVendasPeridTitular,senha,RLReport, udm;

{$R *.DFM}

procedure TFormRelVendas.BitBtnImprimirClick(Sender: TObject);

begin
     PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
     UltimaData   := StrToDate(MaskEditUltimo.Text);

     if UltimaData < PrimeiraData then
       begin
         ShowMessage('A última Data não pode ser Menor que a primeira !!!');
         MaskEditUltimo.SetFocus;
         Exit;
       end;

     case FormRelVendas.Tag of
       0 :   // Analítico
       begin
         QRVendasPeriodo.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
         QRVendasPeriodo.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         QRVendasPeriodo.Representante := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
         Application.CreateForm(TQRListaVendasPeriodo, QRListaVendasPeriodo);
         QRVendasPeriodo.QRListaVendasPeriodo.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRVendasPeriodo.QRListaVendasPeriodo.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         QRListaVendasPeriodo.Preview;
         QRListaVendasPeriodo.Free;
       end;
       1 :   // Sintético
       begin
         QRVendasPeriodoSintetico.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
         QRVendasPeriodoSintetico.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         QRVendasPeriodoSintetico.Representante := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
         Application.CreateForm(TQRListaVendasPeriodoSintetico, QRListaVendasPeriodoSintetico);
         QRVendasPeriodoSintetico.QRListaVendasPeriodoSintetico.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRVendasPeriodoSintetico.QRListaVendasPeriodoSintetico.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         QRListaVendasPeriodoSintetico.Preview;
         QRListaVendasPeriodoSintetico.Free;
       end;
       2 :   //  Vendas por Vencimento
       begin
         QRVendasVencimento.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
         QRVendasVencimento.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         QRVendasVencimento.Representante := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
         Application.CreateForm(TQRListaVendasVencimento, QRListaVendasVencimento);
         QRVendasVencimento.QRListaVendasVencimento.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRVendasVencimento.QRListaVendasVencimento.QRLabelPeriodo2.Caption := MaskEditUltimo.Text;
         QRListaVendasVencimento.Preview;
         QRListaVendasVencimento.Free;
       end;
       3 :   // Analítico p/ Vencimento
       begin
         QRVendasPeriodoVencimento.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
         QRVendasPeriodoVencimento.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
         QRVendasPeriodoVencimento.Representante := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
         Application.CreateForm(TQRListaVendasPeriodoVencimento, QRListaVendasPeriodoVencimento);
         QRListaVendasPeriodoVencimento.QRLabelPeriodo1.Caption := MaskEditPrimeiro.Text;
         QRListaVendasPeriodoVencimento.QRLabelPeriodo2.Caption := MaskEditUltimo.Text + '     Data Base : ' + MaskEditDtBase.Text;
         QRListaVendasPeriodoVencimento.QRGroupVendedor.ForceNewPage := CheckBox1.Checked;
         QRListaVendasPeriodoVencimento.Preview;
         QRListaVendasPeriodoVencimento.Free;
       end;
       4 :
       begin
          QrVendasPorUsu := TQrVendasPorUsu.create(self);
          QrVendasPorUsu.QueryVendasUsu.close;

          QrVendasPorUsu.QueryVendasUsu.sql[35] := '''' + FormatData(MaskEditPrimeiro.Text,'MDY') + ''' and ''' + FormatData(MaskEditUltimo.Text,'MDY') + '''';

          if Copy(ComboBoxRepresentante.Text,1,2) <> '00' then
             QrVendasPorUsu.QueryVendasUsu.sql[36] := ' and r.codigo = ' + copy(ComboBoxRepresentante.Text,1,2);

          if (DBLookupComboBox1.Text <> '') and (DBLookupComboBox1.Text <> 'TODAS') then
             QrVendasPorUsu.QueryVendasUsu.sql[36] := QrVendasPorUsu.QueryVendasUsu.sql[36] + ' and c.cd_cidade_res = ' + ADOQueryCidade.FieldByName('cd_cidade').AsString;
          QrVendasPorUsu.QrGroupVend.ForceNewPage := CheckBox1.Checked;
          QrVendasPorUsu.QrGroupRepr.Enabled  := not CheckBox1.Checked;
          QrVendasPorUsu.QRLabel21.Enabled   := CheckBox1.Checked;
          QrVendasPorUsu.QRDBText13.Enabled  :=  CheckBox1.Checked;
          QrVendasPorUsu.QRDBText14.Enabled  :=  CheckBox1.Checked;
          //QrVendasPorUsu.QrGroupRepr.ForceNewPage := CheckBox1.Checked;
          //QrVendasPorUsu.QRLabel26.Caption := '04/' + copy(MaskEditPrimeiro.Text,4,7);
          memo1.Lines.Clear;
          memo1.lines.Add(QrVendasPorUsu.QueryVendasUsu.sql.text);
          QrVendasPorUsu.QueryVendasUsu.Open;
          QrVendasPorUsu.QRLabelPeriodo.caption := 'Período : ' + MaskEditPrimeiro.Text + ' A ' + MaskEditUltimo.Text;
          if QrVendasPorUsu.QueryVendasUsu.Bof and QrVendasPorUsu.QueryVendasUsu.Eof then
             ShowMessage('Não há registros no período selecionado !')
          else
             QrVendasPorUsu.Preview;
          QrVendasPorUsu.free;

       end;
       5:
       begin
          FrVendPeridTitular := TFrVendPeridTitular.create(senha.Empresa,'CONTROLE DE VENDAS - POR CONTRATANTE',self);
          FrVendPeridTitular.sp_rel_vendas_contrat_titular.Close;

          FrVendPeridTitular.sp_rel_vendas_contrat_titular.Parameters[1].Value := MaskEditPrimeiro.Text;
          FrVendPeridTitular.sp_rel_vendas_contrat_titular.Parameters[2].Value := MaskEditUltimo.Text;

          if ComboBoxRepresentante.text = '00 - Todos' then
          begin
             FrVendPeridTitular.sp_rel_vendas_contrat_titular.Parameters[3].Value := 0;
             FrVendPeridTitular.sp_rel_vendas_contrat_titular.Parameters[4].Value := 99999999;
          end
          else
          begin
             FrVendPeridTitular.sp_rel_vendas_contrat_titular.Parameters[3].Value := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
             FrVendPeridTitular.sp_rel_vendas_contrat_titular.Parameters[4].Value := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
          end;
          FrVendPeridTitular.RLLabel3.Caption := 'PERÍODO : ' +  MaskEditPrimeiro.Text + ' A ' + MaskEditUltimo.Text;
          FrVendPeridTitular.sp_rel_vendas_contrat_titular.open;
          if CheckBox1.Checked then
             FrVendPeridTitular.RLGroupRep.PageBreaking := pbBeforePrint;
          FrVendPeridTitular.RLReportH.PreviewModal;

          FrVendPeridTitular.Free;
       end

     end;

     //MaskEditPrimeiro.Text := '  /  /    ';
     //MaskEditUltimo.Text := '  /  /    ';
end;

procedure TFormRelVendas.FormActivate(Sender: TObject);
begin
     MaskEditPrimeiro.SetFocus;
end;

procedure TFormRelVendas.MaskEditPrimeiroKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelVendas.FormCreate(Sender: TObject);
begin
     MontaRepresentante;
end;

procedure TFormRelVendas.MontaRepresentante;
begin
     ComboBoxRepresentante.Items.Add('00' + ' - ' + 'Todos');
     with QueryRepresentante do
       begin
         Open;
         First;
         while not Eof do
            begin
               Codigo := StrToInt(QueryRepresentanteCodigo.asString);
               if Codigo < 10 then
                  ComboBoxRepresentante.Items.Add('0' + QueryRepresentanteCodigo.asString + ' - '+ QueryRepresentanteNome.asString)
               else
                  ComboBoxRepresentante.Items.Add(QueryRepresentanteCodigo.asString + ' - '+ QueryRepresentanteNome.asString);
              Next;
            end;
      end;
end;

procedure TFormRelVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryRepresentante.Close;
end;

procedure TFormRelVendas.BitBtnEtiquetasClick(Sender: TObject);
begin
     PrimeiraData := StrToDate(MaskEditPrimeiro.Text);
     UltimaData   := StrToDate(MaskEditUltimo.Text);

     if UltimaData < PrimeiraData then
       begin
         ShowMessage('A última Data não pode ser Menor que a primeira !!!');
         MaskEditUltimo.SetFocus;
         Exit;
       end;

     QRVendasPeriodoVencEtq.DIntervalo1 := StrToDate(MaskEditPrimeiro.Text);
     QRVendasPeriodoVencEtq.DIntervalo2 := StrToDate(MaskEditUltimo.Text);
     QRVendasPeriodoVencEtq.Representante := StrToInt(Copy(ComboBoxRepresentante.Text , 1, 2));
     Application.CreateForm(TQRListaVendasPeriodoVencEtq, QRListaVendasPeriodoVencEtq);
     QRListaVendasPeriodoVencEtq.Preview;
     QRListaVendasPeriodoVencEtq.Free;
end;

procedure TFormRelVendas.FormShow(Sender: TObject);
begin

     If FormRelVendas.Tag = 3 then
        BitBtnEtiquetas.Enabled := True
        else
        if FormRelVendas.Tag = 4 then
        begin
          ADOQueryCidade.Open;
          DBLookupComboBox1.Visible := true;
          Label6.Visible := true;
        end;
     CheckBox1.Visible  := (FormRelVendas.Tag in [3,4,5]);
end;

procedure TFormRelVendas.MaskEditPrimeiroChange(Sender: TObject);
begin
   BitBtnImprimir.enabled := (MaskEditPrimeiro.Text <> '  /  /    ') and (MaskEditUltimo.text <> '  /  /    ') and
    (ComboBoxRepresentante.Text <> '');
end;

procedure TFormRelVendas.ComboBoxRepresentanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = VK_RETURN then
     Perform(WM_NEXTDLGCTL, 0, 0)
end;

end.
