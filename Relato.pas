{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Seletor dos Relatórios Contas Pagar/Receber               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit Relato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Mask, Db, DBTables, DBCtrls;

type
  TFormRelatorios = class(TForm)
    RadioGroupRelatorioReceber: TRadioGroup;
    BitBtnSair: TBitBtn;
    GroupBoxOpcoes: TGroupBox;
    MaskEditUltimoVencimento: TMaskEdit;
    MaskEditPrimeiroVencimento: TMaskEdit;
    BitBtnVisualizar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroupRelatorioPagar: TRadioGroup;
    Label3: TLabel;
    Label4: TLabel;
    ComboBoxTipoDoc: TComboBox;
    ComboBoxTipoCob: TComboBox;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratanteNome: TStringField;
    QueryTipoDocumento: TQuery;
    QueryTipoCobranca: TQuery;
    QueryTipoDocumentoCodigo: TIntegerField;
    QueryTipoDocumentoDescricao: TStringField;
    QueryTipoCobrancaCodigo: TIntegerField;
    QueryTipoCobrancaDescricao: TStringField;
    QueryTipoCobrancaGera_Receber: TBooleanField;
    Label17: TLabel;
    ComboBoxCheque: TComboBox;
    Label5: TLabel;
    ComboBoxStatus: TComboBox;
    QueryStatus: TQuery;
    QueryStatusCodigo: TSmallintField;
    QueryStatusDescricao: TStringField;
    Label6: TLabel;
    ComboBoxOrcamentos: TComboBox;
    Label7: TLabel;
    ComboBoxClassificacao: TComboBox;
    QueryTipoDocumento2: TQuery;
    QueryTipoDocumento2Codigo: TIntegerField;
    QueryTipoDocumento2Descricao: TStringField;
    QueryTipoDocumento2Classificacao: TStringField;
    Label8: TLabel;
    MaskEditPrimeiroPagamento: TMaskEdit;
    Label9: TLabel;
    MaskEditUltimoPagamento: TMaskEdit;
    Label10: TLabel;
    EditVencimento: TEdit;
    QueryReceber: TQuery;
    QueryReceberNumero_Titulo: TIntegerField;
    QueryReceberDesdobramento: TStringField;
    QueryReceberTipo_Documento: TSmallintField;
    QueryReceberCodigo_Contratante: TIntegerField;
    QueryReceberData_Emissao: TDateTimeField;
    QueryReceberData_Vencimento: TDateTimeField;
    QueryReceberValor: TFloatField;
    QueryReceberSaldo: TFloatField;
    QueryReceberTipo_Cobranca: TSmallintField;
    QueryReceberNumero_Banco: TStringField;
    QueryReceberData_Pagamento: TDateTimeField;
    QueryReceberValor_Pago: TFloatField;
    QueryReceberDesconto: TFloatField;
    QueryReceberJuros: TFloatField;
    QueryReceberOperador: TSmallintField;
    QueryReceberOrcamento: TIntegerField;
    QueryReceberParcela: TSmallintField;
    QueryReceberStatus_Cheque: TStringField;
    QueryReceberObservacoes: TStringField;
    QueryReceberDescricao_Documento: TStringField;
    QueryReceberDescricao_Cobranca: TStringField;
    QueryReceberStatus_Orcamento: TSmallintField;
    QueryReceberDescricao_Status: TStringField;
    QueryReceberCodigo: TIntegerField;
    QueryReceberNome: TStringField;
    QueryReceberEndereco_Residencial: TStringField;
    QueryReceberBairro_Residencial: TStringField;
    QueryReceberCidade_Residencial: TStringField;
    QueryReceberExclusao: TDateTimeField;
    QueryReceberCodigo_Usuario: TIntegerField;
    QueryReceberCep_Residencial: TStringField;
    QueryReceberEstado_Residencial: TStringField;
    QueryReceberFone1: TStringField;
    QueryReceberFone2: TStringField;
    QueryReceberInclusao: TDateTimeField;
    QueryReceberVencimento: TIntegerField;
    procedure RadioGroupRelatorioReceberClick(Sender: TObject);
    procedure BitBtnVisualizarClick(Sender: TObject);
    procedure EditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtnImprimirClick(Sender: TObject);
    procedure RadioGroupRelatorioPagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditPrimeiroClick(Sender: TObject);
    procedure EditVencimentoKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    procedure MontaTipoDoc;
    procedure MontaClassificacao;
    procedure MontaTipoCob;
    procedure MontaStatus;

  public
    { Public declarations }
  end;

var
  FormRelatorios: TFormRelatorios;
  PrimeiraData, UltimaData : TDate;
  Status, Codigo, TipoDocumento, TipoCobranca, PrimeiroDocumento, UltimoDocumento: Integer;
  TipoSituacao, Classificacao: String;
  Variavel : String;
  Cont : Integer;

implementation

uses QRAbeCli, QRAbeCliVen, QRBaiCli, QRBaiCliVen, QRCanCli, QRCanCliVen,
     QRAbeFor, QRAbeForVen, QRBaiFor, QRBaiForVen, QRCanFor, QRCanForVen,
  QRContratoCobranca, QRAbeCompleto, QRAbeCobranca, QRBaiCliOrcamento,
  QRBaiCliVenSint;//, QRBaiFor, QRBaiForVen, QRCanFor, QRCanForVen;

{$R *.DFM}

procedure TFormRelatorios.RadioGroupRelatorioReceberClick(Sender: TObject);
begin
     MaskEditPrimeiroVencimento.Enabled := True;
     MaskEditUltimoVencimento.Enabled := True;
     MaskEditPrimeiroPagamento.Enabled := True;
     MaskEditUltimoPagamento.Enabled := True;
     RadioGroupRelatorioPagar.Enabled := False;
     MaskEditPrimeiroVencimento.SetFocus;
end;

procedure TFormRelatorios.BitBtnVisualizarClick(Sender: TObject);
begin
     if (RadioGroupRelatorioReceber.ItemIndex <> 8) or (RadioGroupRelatorioReceber.ItemIndex <> 10) or
        (RadioGroupRelatorioReceber.ItemIndex <> 11) then
        begin
          if (MaskEditPrimeiroVencimento.Text = '  /  /    ') or (MaskEditUltimoVencimento.Text = '  /  /    ') then
             begin
               ShowMessage('Os Intervalos de Vencimento devem estar preenchidos !!! [ENTER]');
               MaskEditPrimeiroVencimento.SetFocus;
               Exit;
             end;
        end;

     if (RadioGroupRelatorioReceber.ItemIndex = 3) or (RadioGroupRelatorioReceber.ItemIndex = 4) or
       (RadioGroupRelatorioReceber.ItemIndex = 5) or (RadioGroupRelatorioReceber.ItemIndex = 10) or
       (RadioGroupRelatorioReceber.ItemIndex <> 11) then
           begin
             if (MaskEditPrimeiroPagamento.Text = '  /  /    ') or (MaskEditUltimoPagamento.Text = '  /  /    ') then
                begin
                  ShowMessage('Os Intervalos de Pagamento devem estar preenchidos !!! [ENTER]');
                  MaskEditPrimeiroPagamento.SetFocus;
                  Exit;
                end;
           end;

     if ComboBoxTipoDoc.Text = '' then
        TipoDocumento := 0
     else
        TipoDocumento := StrToInt(Copy(ComboBoxTipoDoc.Text , 1, 2));

     if ComboBoxTipoCob.Text = '' then
        TipoCobranca := 0
     else
        TipoCobranca := StrToInt(Copy(ComboBoxTipoCob.Text, 1, 3));

     with QueryTipoDocumento2 do
       begin
         Close;
         if ComboBoxClassificacao.Text <> 'Todos' then
            begin
              SQL[1] := 'where Classificacao = :TipoClassificacao';
              Params[0].DataType := ftString;
              Params[0].ParamType := ptInput;
              ParamByName('TipoClassificacao').asString := ComboBoxClassificacao.Text;
            end
         else
            SQL[1] := '';
         Open;
       end;

     if ComboBoxClassificacao.Text <> 'Todos' then
        begin
          with QueryTipoDocumento2 do
            begin
              First;
              Cont := 1;
              while not eof do
                begin
                  if Cont = 1 then
                     Variavel := 'and D.Tipo_Documento = ' + Relato.FormRelatorios.QueryTipoDocumento2Codigo.asString
                  else
                     Variavel := Variavel + ' or D.Tipo_Documento = ' + Relato.FormRelatorios.QueryTipoDocumento2Codigo.asString;
                  Cont := Cont + 1;
                  Next;
                end;
             end;
        end;


     if ComboBoxStatus.Text = '' then
        Status := 0
     else
        Status := StrToInt(Copy(ComboBoxStatus.Text, 1, 2));

     case RadioGroupRelatorioReceber.ItemIndex of
        0 :
          begin
            QRAbeCli.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCli.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            Application.CreateForm(TQRTitAbeCliente, QRTitAbeCliente);
            QRTitAbeCliente.Preview;
            QRTitAbeCliente.Free;
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
            QRAbeCliven.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCliven.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCliven.NCheque := ComboBoxCheque.Text;
            Application.CreateForm(TQRTitAbeCliVencimento, QRTitAbeCliVencimento);
            QRTitAbeCliVencimento.Preview;
            QRTitAbeCliVencimento.Free;
          end;
        2 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            QRAbeCobranca.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCobranca.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCobranca.NCheque := ComboBoxCheque.Text;
            Application.CreateForm(TQRTitAbeCliCobranca, QRTitAbeCliCobranca);
            QRTitAbeCliCobranca.Preview;
            QRTitAbeCliCobranca.Free;
          end;
        3 :
          begin
            QRBaiCli.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCli.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            QRBaiCli.DIntervalo3 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiCli.DIntervalo4 := StrToDate(MaskEditUltimoVencimento.Text);
            Application.CreateForm(TQRTitBaiCliente, QRTitBaiCliente);
            QRTitBaiCliente.Preview;
            QRTitBaiCliente.Free;
          end;
        4 :
          begin
            Application.CreateForm(TQRTitBaiCliVencimento, QRTitBaiCliVencimento);
            QRBaiCliVen.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCliVen.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            QRBaiCliVen.DIntervalo3 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiCliVen.DIntervalo4 := StrToDate(MaskEditUltimoVencimento.Text);
            QRBaiCliven.NCheque := ComboBoxCheque.Text;
            QRTitBaiCliVencimento.Preview;
            QRTitBaiCliVencimento.Free;
          end;
        6 :
          begin
            Application.CreateForm(TQRTitCanCliente, QRTitCanCliente);
            QRCanCli.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanCli.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanCliente.Preview;
            QRTitCanCliente.Free;
          end;
        7 :
          begin
            Application.CreateForm(TQRTitCanCliVencimento, QRTitCanCliVencimento);
            QRCanCliVen.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanCliVen.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanCliVencimento.Preview;
            QRTitCanCliVencimento.Free;
          end;
        8 :
          begin
            if ComboBoxTipoCob.Text = '' then
               begin
                 ShowMessage('Escolha um Tipo de Cobrança !!!');
                 exit;
               end;
            Application.CreateForm(TQRListaContratosCobranca, QRListaContratosCobranca);
            QRListaContratosCobranca.Preview;
            QRListaContratosCobranca.Free;
          end;
        9 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            QRAbeCompleto.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCompleto.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCompleto.NCheque := ComboBoxCheque.Text;
            Application.CreateForm(TQRTitAbeCompleto, QRTitAbeCompleto);
            QRTitAbeCompleto.Preview;
            QRTitAbeCompleto.Free;
          end;
        10 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            QRBaiCliOrcamento.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCliOrcamento.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            Application.CreateForm(TQRTitBaiCliOrcamento, QRTitBaiCliOrcamento);
            QRTitBaiCliOrcamento.Preview;
            QRTitBaiCliOrcamento.Free;
          end;
        11 :
          begin
            Application.CreateForm(TQRTitBaiCliVencimentoSint, QRTitBaiCliVencimentoSint);
            QRBaiCliVenSint.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCliVenSint.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            QRBaiCliVenSint.DIntervalo3 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiCliVenSint.DIntervalo4 := StrToDate(MaskEditUltimoVencimento.Text);
            QRBaiClivenSint.NCheque := ComboBoxCheque.Text;
            QRTitBaiCliVencimentoSint.Preview;
            QRTitBaiCliVencimentoSint.Free;
          end;

     end;

     case RadioGroupRelatorioPagar.ItemIndex of
        0 :
          begin
            Application.CreateForm(TQRTitAbeFornecedor, QRTitAbeFornecedor);
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
            Application.CreateForm(TQRTitBaiFornecedor, QRTitBaiFornecedor);
            QRTitBaiFornecedor.Preview;
            QRTitBaiFornecedor.Free;
          end;
        3 :
          begin
            Application.CreateForm(TQRTitBaiForVencimento, QRTitBaiForVencimento);
            QRBaiForVen.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiForVen.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitBaiForVencimento.Preview;
            QRTitBaiForVencimento.Free;
          end;
        4 :
          begin
            Application.CreateForm(TQRTitCanFornecedor, QRTitCanFornecedor);
            QRTitCanFornecedor.Preview;
            QRTitCanFornecedor.Free;
          end;
        5 :
          begin
            Application.CreateForm(TQRTitCanForVencimento, QRTitCanForVencimento);
            QRCanForVen.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanForVen.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanForVencimento.Preview;
            QRTitCanForVencimento.Free;
          end;
     end;
end;

procedure TFormRelatorios.EditPrimeiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelatorios.BitBtnImprimirClick(Sender: TObject);
begin
     if RadioGroupRelatorioReceber.ItemIndex <> 6 then
        begin
          if (MaskEditPrimeiroVencimento.Enabled = True) and (MaskEditUltimoVencimento.Enabled = True) then
             if (MaskEditPrimeiroVencimento.Text = '  /  /    ') or (MaskEditUltimoVencimento.Text = '  /  /    ') then
                begin
                  ShowMessage('Os Intervalos devem estar preenchidos !!! [ENTER]');
                  Exit;
                end;
        end;

     if RadioGroupRelatorioReceber.ItemIndex <> 6 then
        begin
          if (MaskEditPrimeiroPagamento.Enabled = True) and (MaskEditUltimoPagamento.Enabled = True) then
             if (MaskEditPrimeiroPagamento.Text = '  /  /    ') or (MaskEditUltimoPagamento.Text = '  /  /    ') then
                begin
                  ShowMessage('Os Intervalos devem estar preenchidos !!! [ENTER]');
                  Exit;
                end;
        end;

     if ComboBoxTipoDoc.Text = '' then
        TipoDocumento := 0
     else
        TipoDocumento := StrToInt(Copy(ComboBoxTipoDoc.Text , 1, 2));

     if ComboBoxTipoCob.Text = '' then
        TipoCobranca := 0
     else
        TipoCobranca := StrToInt(Copy(ComboBoxTipoCob.Text, 1, 3));

     if ComboBoxClassificacao.Text <> 'Todos' then
        begin
          with QueryTipoDocumento2 do
            begin
              First;
              Cont := 1;
              while not eof do
                begin
                  if Cont = 1 then
                     Variavel := 'and D.Tipo_Documento = ' + Relato.FormRelatorios.QueryTipoDocumento2Codigo.asString
                  else
                     Variavel := Variavel + ' or D.Tipo_Documento = ' + Relato.FormRelatorios.QueryTipoDocumento2Codigo.asString;
                  Cont := Cont + 1;
                  Next;
                end;
             end;
        end;

     if ComboBoxStatus.Text = '' then
        Status := 0
     else
        Status := StrToInt(Copy(ComboBoxStatus.Text, 1, 2));

     case RadioGroupRelatorioReceber.ItemIndex of
        0 :
          begin
            Application.CreateForm(TQRTitAbeCliente, QRTitAbeCliente);
            QRTitAbeCliente.Print;
            QRTitAbeCliente.Free;
          end;
        1 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor ser que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            Application.CreateForm(TQRTitAbeCliVencimento, QRTitAbeCliVencimento);
            QRAbeCliven.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCliven.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCliven.NCheque := ComboBoxCheque.Text;
            QRTitAbeCliVencimento.Print;
            QRTitAbeCliVencimento.Free;
          end;
        2 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            QRAbeCobranca.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCobranca.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCobranca.NCheque := ComboBoxCheque.Text;
            Application.CreateForm(TQRTitAbeCliCobranca, QRTitAbeCliCobranca);
            QRTitAbeCliCobranca.Print;
            QRTitAbeCliCobranca.Free;
          end;
        3 :
          begin
            QRBaiCli.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCli.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            Application.CreateForm(TQRTitBaiCliente, QRTitBaiCliente);
            QRTitBaiCliente.Print;
            QRTitBaiCliente.Free;
          end;
        4 :
          begin
            Application.CreateForm(TQRTitBaiCliVencimento, QRTitBaiCliVencimento);
            QRBaiCliVen.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCliVen.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            QRBaiCliven.NCheque := ComboBoxCheque.Text;
            QRTitBaiCliVencimento.Print;
            QRTitBaiCliVencimento.Free;
          end;
        6 :
          begin
            Application.CreateForm(TQRTitCanCliente, QRTitCanCliente);
            QRCanCli.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanCli.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanCliente.Print;
            QRTitCanCliente.Free;
          end;
        7 :
          begin
            Application.CreateForm(TQRTitCanCliVencimento, QRTitCanCliVencimento);
            QRCanCliVen.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanCliVen.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanCliVencimento.Print;
            QRTitCanCliVencimento.Free;
          end;
        8 :
          begin
            if ComboBoxTipoCob.Text = '' then
               begin
                 ShowMessage('Escolha um Tipo de Cobrança !!!');
                 exit;
               end;
            Application.CreateForm(TQRListaContratosCobranca, QRListaContratosCobranca);
            QRListaContratosCobranca.Print;
            QRListaContratosCobranca.Free;
          end;
        9 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            QRAbeCompleto.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCompleto.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCompleto.NCheque := ComboBoxCheque.Text;
            Application.CreateForm(TQRTitAbeCompleto, QRTitAbeCompleto);
            QRTitAbeCompleto.Print;
            QRTitAbeCompleto.Free;
          end;
     end;

     case RadioGroupRelatorioPagar.ItemIndex of
        0 :
          begin
            Application.CreateForm(TQRTitAbeFornecedor, QRTitAbeFornecedor);
            QRTitAbeFornecedor.Print;
            QRTitAbeFornecedor.Free;
          end;
        1 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A última Data não pode ser Menor ser que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            Application.CreateForm(TQRTitAbeForVencimento, QRTitAbeForVencimento);
            QRAbeForven.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeForven.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitAbeForVencimento.Print;
            QRTitAbeForVencimento.Free;
          end;
        2 :
          begin
            Application.CreateForm(TQRTitBaiFornecedor, QRTitBaiFornecedor);
            QRTitBaiFornecedor.Print;
            QRTitBaiFornecedor.Free;
          end;
        3 :
          begin
            Application.CreateForm(TQRTitBaiForVencimento, QRTitBaiForVencimento);
            QRBaiForVen.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiForVen.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            QRTitBaiForVencimento.Print;
            QRTitBaiForVencimento.Free;
          end;
        4 :
          begin
            Application.CreateForm(TQRTitCanFornecedor, QRTitCanFornecedor);
            QRTitCanFornecedor.Print;
            QRTitCanFornecedor.Free;
          end;
        5 :
          begin
            Application.CreateForm(TQRTitCanForVencimento, QRTitCanForVencimento);
            QRCanForVen.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanForVen.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanForVencimento.Print;
            QRTitCanForVencimento.Free;
          end;
     end;
end;

procedure TFormRelatorios.RadioGroupRelatorioPagarClick(Sender: TObject);
begin
     MaskEditPrimeiroVencimento.Enabled := True;
     MaskEditUltimoVencimento.Enabled := True;
     MaskEditPrimeiroPagamento.Enabled := True;
     MaskEditUltimoPagamento.Enabled := True;
     RadioGroupRelatorioReceber.Enabled := False;

{     case RadioGroupRelatorioPagar.ItemIndex of
        0 :
          begin
            MaskEditPrimeiro.Enabled := False;
            MaskEditUltimo.Enabled := False;
          end;
        2 :
          begin
            MaskEditPrimeiro.Enabled := False;
            MaskEditUltimo.Enabled := False;
          end;
        4 :
          begin
            MaskEditPrimeiro.Enabled := False;
            MaskEditUltimo.Enabled := False;
          end;
     end;}
end;

procedure TFormRelatorios.FormCreate(Sender: TObject);
begin
     Top := 90;
     Left := 105;
     MaskEditPrimeiroVencimento.Text := '  /  /    ';
     MaskEditUltimoVencimento.Text := '  /  /    ';
     MaskEditPrimeiroPagamento.Text := '  /  /    ';
     MaskEditUltimoPagamento.Text := '  /  /    ';

     MontaTipoDoc;
//     MontaClassificacao;
     MontaTipoCob;
     MontaStatus;
     ComboBoxTipoDoc.ItemIndex := 0;
     ComboBoxTipoCob.ItemIndex := 0;
     ComboBoxClassificacao.ItemIndex := 0;
     ComboBoxOrcamentos.ItemIndex := 0;
     ComboBoxStatus.ItemIndex := 0;
     ComboBoxCheque.ItemIndex := 0;
end;

procedure TFormRelatorios.MontaTipoDoc;
begin
     ComboBoxTipoDoc.Items.Add('00' + ' - ' + 'Todos');
       with QueryTipoDocumento do
         begin
           Open;
           First;
           while Not Eof do
             begin
               Codigo := StrToInt(QueryTipoDocumentoCodigo.asString);
               if Codigo < 10 then
                  ComboBoxTipoDoc.Items.Add('0' + QueryTipoDocumentoCodigo.asString + ' - '+ QueryTipoDocumentoDescricao.asString)
               else
                  ComboBoxTipoDoc.Items.Add(QueryTipoDocumentoCodigo.asString + ' - '+ QueryTipoDocumentoDescricao.asString);
               Next;
             end;
         end;
end;

procedure TFormRelatorios.MontaClassificacao;
begin
     ComboBoxClassificacao.Items.Add('00' + ' - ' + 'Todos');
       with QueryTipoDocumento2 do
         begin
           Open;
           First;
           while not eof do
             begin
               Codigo := StrToInt(QueryTipoDocumento2Codigo.asString);
               if Codigo < 10 then
                  ComboBoxClassificacao.Items.Add('0' + QueryTipoDocumento2Codigo.asString + ' - '+ QueryTipoDocumento2Descricao.asString + '/' + QueryTipoDocumento2Classificacao.asString)
               else
                  ComboBoxClassificacao.Items.Add(QueryTipoDocumento2Codigo.asString + ' - '+ QueryTipoDocumento2Descricao.asString + '/' + QueryTipoDocumento2Classificacao.asString);
               Next;
             end;
         end;
end;

procedure TFormRelatorios.MontaTipoCob;
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

procedure TFormRelatorios.MontaStatus;
begin
     ComboBoxStatus.Items.Add('00' + ' - ' + 'Todos');
       with QueryStatus do
         begin
           Open;
           First;
           while not eof do
             begin
               Codigo := StrToInt(QueryStatusCodigo.asString);
               if Codigo < 10 then
                  ComboBoxStatus.Items.Add('0' + QueryStatusCodigo.asString + ' - '+ QueryStatusDescricao.asString)
               else
                  ComboBoxStatus.Items.Add(QueryStatusCodigo.asString + ' - '+ QueryStatusDescricao.asString);
               Next;
             end;
         end;
end;

procedure TFormRelatorios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryStatus.Close;
     QueryContratante.close;
     QueryTipoDocumento2.Close;
end;

procedure TFormRelatorios.EditPrimeiroClick(Sender: TObject);
begin
     if(RadioGroupRelatorioReceber.Items.Text = '') or (RadioGroupRelatorioPagar.Items.Text = '' ) then
       begin
         ShowMessage('Escolha um Relatório !!![ENTER]');
         Exit;
       end;
end;

procedure TFormRelatorios.EditVencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

end.
