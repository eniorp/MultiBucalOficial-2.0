{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Seletor dos Relatórios Contas Pagar/Receber               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit RelatoPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Mask, Db, DBTables, DBCtrls;

type
  TFormRelatoriosPagar = class(TForm)
    BitBtnSair: TBitBtn;
    GroupBoxOpcoes: TGroupBox;
    MaskEditUltimoVencimento: TMaskEdit;
    MaskEditPrimeiroVencimento: TMaskEdit;
    BitBtnVisualizar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroupRelatorioPagar: TRadioGroup;
    Label4: TLabel;
    ComboBoxTipoCob: TComboBox;
    QueryTipoCobranca: TQuery;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    Label17: TLabel;
    Label8: TLabel;
    MaskEditPrimeiroPagamento: TMaskEdit;
    Label9: TLabel;
    MaskEditUltimoPagamento: TMaskEdit;
    Label12: TLabel;
    ComboBoxGrupoCusto: TComboBox;
    Label13: TLabel;
    ComboBoxCentroCusto: TComboBox;
    QueryGrupoCusto: TQuery;
    QueryCentroCusto: TQuery;
    QueryGrupoCustoCodigo: TStringField;
    QueryGrupoCustoDescricao: TStringField;
    QueryCentroCustoId_Conta: TIntegerField;
    QueryCentroCustoConta: TStringField;
    QueryCentroCustoDescricao: TStringField;
    QueryCentroCustoReduzida: TStringField;
    QueryCentroCustoGrupo_Conta: TIntegerField;
    QueryGrupoCustoid_Grupo: TIntegerField;
    ComboBoxTipoPgto: TComboBox;
    QueryTiposPgtos: TQuery;
    QueryTiposPgtosId_TipoPgto: TIntegerField;
    QueryTiposPgtosDescricao_TipoPgto: TStringField;
    Label3: TLabel;
    MaskEditDtCancelado1: TMaskEdit;
    MaskEditDtCancelado2: TMaskEdit;
    Label5: TLabel;
    procedure BitBtnVisualizarClick(Sender: TObject);
    procedure EditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RadioGroupRelatorioPagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditVencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxGrupoCustoExit(Sender: TObject);

  private
    { Private declarations }
    procedure MontaTipoCob;
    procedure MontaGrupoCustos;
    procedure MontaCentroCustos;
    procedure MontaTipoPgto;
        
  public
    { Public declarations }
  end;

var
  FormRelatoriosPagar: TFormRelatoriosPagar;
  PrimeiraData, UltimaData : TDate;
  Codigo, TipoCobranca, Cont, Grupo, Custo : Integer;
  TipoPgto : integer;

implementation

uses QRAbeFor, QRAbeForVen, QRBaiFor, QRBaiForVen, QRCanFor, QRCanForVen,
  QRAbeForCusto, QRBaiForCusto, QRCanForCusto;

{$R *.DFM}

procedure TFormRelatoriosPagar.BitBtnVisualizarClick(Sender: TObject);
begin
    if (MaskEditPrimeiroVencimento.Text = '  /  /    ') or (MaskEditUltimoVencimento.Text = '  /  /    ') then
       begin
         ShowMessage('Os Intervalos de Pagamento devem estar preenchidos !!! [ENTER]');
         MaskEditPrimeiroVencimento.SetFocus;
         Exit;
       end;

     if (RadioGroupRelatorioPagar.ItemIndex = 3) or (RadioGroupRelatorioPagar.ItemIndex = 4) or
       (RadioGroupRelatorioPagar.ItemIndex = 5) then
           begin
             if (MaskEditPrimeiroPagamento.Text = '  /  /    ') or (MaskEditUltimoPagamento.Text = '  /  /    ') then
                begin
                  ShowMessage('Os Intervalos de Pagamento devem estar preenchidos !!! [ENTER]');
                  MaskEditPrimeiroPagamento.SetFocus;
                  Exit;
                end;
           end;

     if ComboBoxTipoCob.Text = '' then
        TipoCobranca := 0
     else
        TipoCobranca := StrToInt(Copy(ComboBoxTipoCob.Text, 1, 3));

     if ComboBoxTipoPgto.Text = '' then
        TipoPgto := 0
     else
       TipoPgto := StrToInt(Copy(ComboBoxTipoPgto.Text, 1, 3));

     if ComboBoxGrupoCusto.Text = '' then
        Grupo := 0
     else
        Grupo := StrToInt(Copy(ComboBoxGrupoCusto.Text, 1, 2));

     if ComboBoxCentroCusto.Text = '' then
        Custo := 0
     else
        Custo := StrToInt(Copy(ComboBoxCentroCusto.Text, 1, 2));

     case RadioGroupRelatorioPagar.ItemIndex of
        0 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            Application.CreateForm(TQRTitAbeFornecedor, QRTitAbeFornecedor);
            QRAbeFor.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeFor.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitAbeFornecedor.Preview;
            QRTitAbeFornecedor.Free;
          end;
        1 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            Application.CreateForm(TQRTitAbeForVencimento, QRTitAbeForVencimento);
            QRAbeForven.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeForven.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitAbeForVencimento.Preview;
            QRTitAbeForVencimento.Free;
          end;
        2 :
          begin
            Application.CreateForm(TQRTitAbeFornCusto, QRTitAbeFornCusto);
            QRAbeForCusto.Intervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeForCusto.Intervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeForCusto.Custo := Custo;
            QRAbeForCusto.Grupo := Grupo;
            QRTitAbeFornCusto.Preview;
            QRTitAbeFornCusto.Free;
          end;
         3 :
          begin
            Application.CreateForm(TQRTitBaiFornecedor, QRTitBaiFornecedor);
            QRBaiFor.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiFor.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitBaiFornecedor.Preview;
            QRTitBaiFornecedor.Free;
          end;
        4 :
          begin
            Application.CreateForm(TQRTitBaiForVencimento, QRTitBaiForVencimento);
            QRBaiForVen.Intervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiForVen.Intervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitBaiForVencimento.Preview;
            QRTitBaiForVencimento.Free;
          end;
        5 :
          begin
            Application.CreateForm(TQRTitBaiFornCusto, QRTitBaiFornCusto);
            QRBaiForCusto.Intervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiForCusto.Intervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRBaiForCusto.Intervalo3 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiForCusto.Intervalo4 := StrToDate(MaskEditUltimoPagamento.Text);
            QRBaiForCusto.Custo := Custo;
            QRBaiForCusto.Grupo := Grupo;
            QRTitBaiFornCusto.Preview;
            QRTitBaiFornCusto.Free;
          end;
        6 :
          begin
            Application.CreateForm(TQRTitCanFornecedor, QRTitCanFornecedor);
            QRTitCanFornecedor.Preview;
            QRTitCanFornecedor.Free;
          end;
        7 :
          begin
            Application.CreateForm(TQRTitCanForVencimento, QRTitCanForVencimento);
            QRCanForVen.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanForVen.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanForVencimento.Preview;
            QRTitCanForVencimento.Free;
          end;
        8 :
          begin
            Application.CreateForm(TQRTitCanFornCusto, QRTitCanFornCusto);
            QRCanForCusto.Intervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanForCusto.Intervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanFornCusto.Preview;
            QRTitCanFornCusto.Free;
          end;

     end;
end;

procedure TFormRelatoriosPagar.EditPrimeiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelatoriosPagar.RadioGroupRelatorioPagarClick(Sender: TObject);
begin
     MaskEditPrimeiroVencimento.SetFocus;
end;

procedure TFormRelatoriosPagar.FormCreate(Sender: TObject);
begin
     Top := 90;
     Left := 105;
     MaskEditPrimeiroVencimento.Text := '  /  /    ';
     MaskEditUltimoVencimento.Text := '  /  /    ';
     MaskEditPrimeiroPagamento.Text := '  /  /    ';
     MaskEditUltimoPagamento.Text := '  /  /    ';
     MontaTipoPgto;
     MontaTipoCob;
     MontaGrupoCustos;
     ComboBoxTipoCob.ItemIndex := 0;
     ComboBoxTipoPgto.ItemIndex := 0;
     ComboBoxGrupoCusto.ItemIndex := 0;
     
end;

procedure TFormRelatoriosPagar.MontaTipoCob;
begin
     ComboBoxTipoCob.Items.Add('000'+' - ' + 'Todos');
     with QueryTipoCobranca do
       begin
         Open;
         First;
         while not Eof do
            begin
              Codigo := StrToInt(QueryTipoCobrancaCodigo.asString);
              if Codigo < 10 then
                 ComboBoxTipoCob.Items.Add('00' + QueryTipoCobrancaCodigo.asString + ' - '+ QueryTipoCobrancaDescricao.asString)
              else
              if (Codigo >= 10) and (Codigo < 100) then
                 ComboBoxTipoCob.Items.Add('0' + QueryTipoCobrancaCodigo.asString + ' - '+ QueryTipoCobrancaDescricao.asString)
              else
                 ComboBoxTipoCob.Items.Add(QueryTipoCobrancaCodigo.asString + ' - '+ QueryTipoCobrancaDescricao.asString);
              Next;
            end;
       end;
end;

procedure TFormRelatoriosPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryTipoCobranca.Close;
end;

procedure TFormRelatoriosPagar.EditVencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFormRelatoriosPagar.MontaGrupoCustos;
begin
     ComboBoxGrupoCusto.Items.Add('00' + ' - ' + 'Todos');
       with QueryGrupoCusto do
         begin
           Open;
           First;
           while not eof do
             begin
               if QueryGrupoCustoid_Grupo.AsInteger < 10 then
                 ComboBoxGrupoCusto.Items.Add('0' + QueryGrupoCustoid_Grupo.asString + ' - '+ QueryGrupoCustoDescricao.asString)
               else
                 ComboBoxGrupoCusto.Items.Add(QueryGrupoCustoid_Grupo.asString + ' - '+ QueryGrupoCustoDescricao.asString);
                 next;
             end;
         end;
end;

procedure TFormRelatoriosPagar.MontaCentroCustos;
begin
    ComboBoxCentroCusto.Clear;
    with QueryCentroCusto do
      begin
        close;
        parambyname('Grupo').asinteger := StrToInt(Copy(ComboBoxGrupoCusto.Text, 1, 2));
        Open;
        First;
        while not eof do
          begin
            if QueryCentroCustoId_Conta.AsInteger < 10 then
              ComboBoxCentroCusto.Items.Add('0' + QueryCentroCustoId_Conta.asString + ' - '+ QueryCentroCustoDescricao.asString)
            else
              ComboBoxCentroCusto.Items.Add(QueryCentroCustoId_Conta.asString + ' - '+ QueryCentroCustoDescricao.asString);
              next;
          end;
      end;
end;



procedure TFormRelatoriosPagar.ComboBoxGrupoCustoExit(Sender: TObject);
begin
   MontaCentroCustos;
end;

procedure TFormRelatoriosPagar.MontaTipoPgto;
begin
     ComboBoxTipoPgto.Items.Add('000' + ' - ' + 'Todos');
       with QueryTiposPgtos do
         begin
           Open;
           First;
           while not eof do
             begin
               Grupo := QueryTiposPgtosId_TipoPgto.AsInteger;
               if Grupo < 10 then
                  ComboBoxTipoPgto.Items.Add('00' + QueryTiposPgtosId_TipoPgto.asString + ' - '+ QueryTiposPgtosDescricao_TipoPgto.asString)
               else
                  if (Grupo < 100) then
                     ComboBoxTipoPgto.Items.Add('0' + QueryTiposPgtosId_TipoPgto.asString + ' - '+ QueryTiposPgtosDescricao_TipoPgto.asString)
                  else
                     ComboBoxTipoPgto.Items.Add(QueryTiposPgtosId_TipoPgto.asString + ' - '+ QueryTiposPgtosDescricao_TipoPgto.asString);
               Next;
             end;
         end;
end;

end.
