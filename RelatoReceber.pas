{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Seletor dos Relat�rios Contas Pagar/Receber               }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit RelatoReceber;
//tirar0 trocar Orcamento por Or�amento no
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Mask, Db, DBTables, DBCtrls,biblio, Menus,enio,
  ADODB,ClipBrd ;

type
  TFormRelatoriosReceber = class(TForm)
    RadioGroupRelatorioReceber: TRadioGroup;
    BitBtnSair: TBitBtn;
    GroupBoxOpcoes: TGroupBox;
    MaskEditUltimoVencimento: TMaskEdit;
    MaskEditPrimeiroVencimento: TMaskEdit;
    BitBtnVisualizar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    LabelTpDoc: TLabel;
    LabelTpcobr: TLabel;
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
    LabelStatus: TLabel;
    ComboBoxStatus: TComboBox;
    QueryStatus: TQuery;
    QueryStatusCodigo: TSmallintField;
    QueryStatusDescricao: TStringField;
    LabelCOrc: TLabel;
    ComboBoxOrcamentos: TComboBox;
    LabelClassif: TLabel;
    ComboBoxClassificacao: TComboBox;                               
    QueryTipoDocumento2: TQuery;
    QueryTipoDocumento2Codigo: TIntegerField;
    QueryTipoDocumento2Descricao: TStringField;
    QueryTipoDocumento2Classificacao: TStringField;
    Label8: TLabel;
    MaskEditPrimeiroPagamento: TMaskEdit;
    Label9: TLabel;
    MaskEditUltimoPagamento: TMaskEdit;
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
    LabelGrpContrat: TLabel;
    ComboBoxGrupoContratante: TComboBox;
    QueryGrupoContratante: TQuery;
    QueryGrupoContratanteCodigo: TIntegerField;
    QueryGrupoContratanteDescricao: TStringField;
    QueryGrupoContratanteFlag_Envio_Ans: TStringField;
    LabelPagto: TLabel;
    ComboBoxTipoPgto: TComboBox;
    QueryTiposPgtos: TQuery;
    QueryTiposPgtosId_TipoPgto: TIntegerField;
    QueryTiposPgtosDescricao_TipoPgto: TStringField;
    SpTitulosPagos: TStoredProc;
    QueryTitulo: TQuery;
    QueryTituloNome: TStringField;
    QueryTituloEndereco_Comercial: TStringField;
    QueryTituloBairro_Comercial: TStringField;
    QueryTituloCidade_Comercial: TStringField;
    QueryTituloEstado_Comercial: TStringField;
    QueryTituloCEP_Comercial: TStringField;
    QueryTitulonumero_com: TStringField;
    CheckBoxFlag: TCheckBox;
    QueryTitulocomplemento_com: TStringField;
    PopupMenu1: TPopupMenu;
    HabilitatodososFiltros1: TMenuItem;
    Label3: TLabel;
    ComboBoxTpUsuario: TComboBox;
    RadioGroupTp: TRadioGroup;
    Memo1: TMemo;
    LabelRegiao: TLabel;
    DBLookupComboBoxRegiao: TDBLookupComboBox;
    ADOQueryRegiao: TADOQuery;
    DsRegiao: TDataSource;
    Label4: TLabel;
    Label5: TLabel;
    ComboBoxQtTitAbe: TComboBox;
    procedure RadioGroupRelatorioReceberClick(Sender: TObject);
    procedure BitBtnVisualizarClick(Sender: TObject);
    procedure EditPrimeiroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EditVencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure FormDblClick(Sender: TObject);
    procedure HabilitatodososFiltros1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditQtTitAbertoKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBoxTipoDocChange(Sender: TObject);

  private
    function verificaPermissao:Boolean;
    procedure ControleDeFiltros(controle: Boolean);
    procedure HabilitaFiltros;
    //Procedure ContraComponentes(Flag: Boolean);
    procedure FiltraDadosEtiqueta;
    procedure MontaTipoDoc;
//    procedure MontaClassificacao;
    procedure MontaTipoCob;
    procedure MontaStatus;
    procedure MontaGrupoContratante;
    procedure MontaTipoPgto;

  public
    { Public declarations }
  end;

var
  FormRelatoriosReceber: TFormRelatoriosReceber;
  PrimeiraData, UltimaData : TDate;
  Status, Codigo, TipoDocumento, TipoCobranca, PrimeiroDocumento, UltimoDocumento,
  Cont, Grupo, Pgto : Integer;
  TipoSituacao, Classificacao, TpOrc: String;
  Variavel : String;


implementation

uses QRAbeCli, QRAbeCliVen, QRBaiCli, QRBaiCliVen, QRCanCli, QRCanCliVen,
  QRContratoCobranca, QRAbeCompleto, QRAbeCobranca, QRBaiCliOrcamento,
  QRBaiCliVenSint, QRAbeGrupo, QRBaiChequePre, QREtiquetasCobranca,
  QRAbeCliVenOrc, QRTitulosGerado, RelResumoBaixasPorBanco, Etiquetas,
  SelContratEtiquetasCobr, Seletor, udm, SelTpDoc, Senha,
  RelFrResumoBaixaPorData, SelTipoRel, GraficoRecebMensXOrcamento;
{$R *.DFM}

{Procedure TFormRelatoriosReceber.ContraComponentes(Flag: Boolean);
begin
   LabelTpDoc.enabled := flag;
   LabelTpcobr.enabled := flag;
   LabelClassif.enabled := flag;
   LabelGrpContrat.enabled := flag;
   LabelCOrc.enabled := flag;
   LabelStatus.enabled := flag;
   LabelPagto.enabled := flag;
   LabelDiaVecto.enabled := flag;
   LabelEmpresa.enabled := flag;
   EditVencimento.enabled := flag;
   CheckBoxEmpresa.enabled := flag;
   ComboBoxTipoDoc.enabled := flag;
   ComboBoxTipoCob.enabled := flag;
   ComboBoxClassificacao.enabled := flag;
   ComboBoxGrupoContratante.enabled := flag;
   ComboBoxOrcamentos.enabled := flag;
   ComboBoxStatus.enabled := flag;
   ComboBoxTipoPgto.enabled := flag;
end;}

procedure TFormRelatoriosReceber.RadioGroupRelatorioReceberClick(Sender: TObject);
begin
     ComboBoxTipoDocChange(sender);
     if MaskEditUltimoPagamento.Visible = false then
         MaskEditPrimeiroPagamento.Clear;
     MaskEditUltimoPagamento.Visible := true;
     Label9.Visible := true;
     Label8.Caption := 'Pagamento';
     if dm.GetParam('HABFIL') = 'S' then
     begin
        ControleDeFiltros(False);
        HabilitaFiltros;
     end;

     if RadioGroupRelatorioReceber.ItemIndex in [07,17] then
     begin
        //ContraComponentes(False);
        MaskEditPrimeiroVencimento.Text := '01/01/1800';
        MaskEditUltimoVencimento.Text   := '01/01/3000';
        MaskEditPrimeiroPagamento.SetFocus;
     end
     else
     begin
        if MaskEditPrimeiroVencimento.CanFocus then
           MaskEditPrimeiroVencimento.SetFocus;
        //ContraComponentes(true);
     end;
end;
function TFormRelatoriosReceber.verificaPermissao:Boolean;
begin
   if FormSeletor.Menu = FormSeletor.MainMenu1 then
      result := (dm.ExecutaComando('select count(*) q from permissoes where codigo_operador = ' + IntToStr(Senha.Codigo_Operador) +
                        ' and codigo_grupo = 3 and Codigo_Procedimento = 5 and Codigo_SubProcedimento = ' + intToStr(RadioGroupRelatorioReceber.ItemIndex + 1),'q') = '1')
   else
      // soma 101 ao indice porque a as permiss�es desses relatorios estao em sequencia na tabela menu_disponivel
      // a partir do 101 ate o 118
     result := Dm.VerifPermissao('0','0','0',intToStr(RadioGroupRelatorioReceber.ItemIndex + 101));


end;
procedure TFormRelatoriosReceber.BitBtnVisualizarClick(Sender: TObject);
var cont : word;
    qtDiasOrc, sqlStr, aux : string;


    PrimeiraLinha : Boolean;
begin
    if not verificaPermissao then
   begin
      ShowMessage('Voc� n�o tem permiss�o para visualizar este relat�rio !');
      exit;
   end;
//     if ((RadioGroupRelatorioReceber.ItemIndex <> 14) and (RadioGroupRelatorioReceber.ItemIndex <> 5)) then
       if MaskEditPrimeiroVencimento.enabled then
        begin
          if (MaskEditPrimeiroVencimento.Text = '  /  /    ') or (MaskEditUltimoVencimento.Text = '  /  /    ') then
             begin
               ShowMessage('Os Intervalos de Vencimento devem estar preenchidos !!! [ENTER]');
               MaskEditPrimeiroVencimento.SetFocus;
               Exit;
             end;
        end;

     if (RadioGroupRelatorioReceber.ItemIndex = 6) or (RadioGroupRelatorioReceber.ItemIndex = 7) or
       (RadioGroupRelatorioReceber.ItemIndex = 8) or (RadioGroupRelatorioReceber.ItemIndex = 9) or
       (RadioGroupRelatorioReceber.ItemIndex = 10) or (RadioGroupRelatorioReceber.ItemIndex = 11) then
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

     if ComboBoxGrupoContratante.Text = '' then
        Grupo := 0
     else
        Grupo := StrToInt(Copy(ComboBoxGrupoContratante.Text, 1, 3));

     if ComboBoxTipoPgto.Text = '' then
        Pgto := 0
     else
        Pgto := StrToInt(Copy(ComboBoxTipoPgto.Text,1,3));

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
            SQL[1] := 'where 1 = 1 ';  //somente para manter a clausa where

         Open;
         //Memo1.Lines.Clear;
         //Memo1.Text := QueryTipoDocumento2.Text ;
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
                     Variavel := 'and D.Tipo_Documento = ' + QueryTipoDocumento2Codigo.asString
                  else
                     Variavel := Variavel + ' or D.Tipo_Documento = ' + QueryTipoDocumento2Codigo.asString;
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
            QRTitAbeCliente.QueryTitulo.Close;
            case ComboBoxTpUsuario.ItemIndex of
               0: QRTitAbeCliente.QueryTitulo.sql[10] := ' ';
               1: QRTitAbeCliente.QueryTitulo.sql[10] := ' and Contratante.exclusao is null ';
               2: QRTitAbeCliente.QueryTitulo.sql[10] := ' and Contratante.exclusao is not null ';
            end;
            QRTitAbeCliente.Preview;
            QRTitAbeCliente.Free;
          end;
        1 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A �ltima Data n�o pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            QRAbeCliven.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCliven.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCliven.Pgto        := StrToInt(Copy(ComboBoxTipoPgto.Text , 1, 3));
            Application.CreateForm(TQRTitAbeCliVencimento, QRTitAbeCliVencimento);
            case ComboBoxTpUsuario.ItemIndex of
               0: QRTitAbeCliVencimento.QueryTitulo.sql[14] := ' ';
               1: QRTitAbeCliVencimento.QueryTitulo.sql[14] := ' and D1.Exclusao is null ';
               2: QRTitAbeCliVencimento.QueryTitulo.sql[14] := ' and D1.Exclusao is NOT null ';
            end;
            case RadioGroupTp.ItemIndex of
                0 : QRTitAbeCliVencimento.QueryTitulo.sql[14] := QRTitAbeCliVencimento.QueryTitulo.sql[14] + ' and d1.empresa = 1';
                1 : QRTitAbeCliVencimento.QueryTitulo.sql[14] := QRTitAbeCliVencimento.QueryTitulo.sql[14] + ' and d1.empresa = 0';
            end;
            memo1.Lines.Add(QRTitAbeCliVencimento.QueryTitulo.text);

            QRTitAbeCliVencimento.Preview;
            QRTitAbeCliVencimento.Free;
          end;
        2 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A �ltima Data n�o pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            QRAbeCobranca.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCobranca.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCobranca.Pgto := StrToInt(Copy(ComboBoxTipoPgto.Text , 1, 3));
            Application.CreateForm(TQRTitAbeCliCobranca, QRTitAbeCliCobranca);
            QRTitAbeCliCobranca.Preview;
            QRTitAbeCliCobranca.Free;
          end;
        3 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A �ltima Data n�o pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            QRAbeCompleto.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeCompleto.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeCompleto.Pgto        := StrToInt(Copy(ComboBoxTipoPgto.Text , 1, 3));
            Application.CreateForm(TQRTitAbeCompleto, QRTitAbeCompleto);
            QRTitAbeCompleto.Preview;
            QRTitAbeCompleto.Free;
          end;
        4 :
          begin
            QRAbeGrupo.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRAbeGrupo.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRAbeGrupo.Grupo := Grupo;
            Application.CreateForm(TQRTitAbeGrupoContr, QRTitAbeGrupoContr);
            QRTitAbeGrupoContr.Preview;
            QRTitAbeGrupoContr.Free;
          end;
        5 :  // Aberto c/ Or�amento em Tratamento
          begin

            Application.CreateForm(TQRTitAbeCliVencOrc, QRTitAbeCliVencOrc);
            QRTitAbeCliVencOrc.QueryTitulo.close;
            QRTitAbeCliVencOrc.QRLabelVencto.caption := 'VENCIMENTO DE : ' + MaskEditPrimeiroVencimento.Text +  ' A ' + MaskEditUltimoVencimento.text;
            //QRTitAbeCliVencOrc.QueryTitulo.sql[8] := '''' + FormatData(MaskEditPrimeiroVencimento.Text,'MDY') +  ''' AND ''' + FormatData(MaskEditUltimoVencimento.text,'MDY') + ' 23:59''';
            QRTitAbeCliVencOrc.QueryTitulo.sql[8] := '''' + MaskEditPrimeiroVencimento.Text +  ''' AND ''' + MaskEditUltimoVencimento.text + ' 23:59''';

            If FormRelatoriosReceber.ADOQueryRegiao.FieldByName('cd_regiao').AsInteger <> 0 then
               QRTitAbeCliVencOrc.QueryTitulo.sql[8] := QRTitAbeCliVencOrc.QueryTitulo.sql[8] + ' and v_Contratante.cd_regiao_res = ' + FormRelatoriosReceber.ADOQueryRegiao.FieldByName('cd_regiao').AsString;
            repeat
               qtDiasOrc := InputBox('Qt Dias Or�amento','Considerar apenas or�amentos autorizados h� mais de(dias) :','365');
            until enio.E_Numerico(qtDiasOrc);
            // considera orcamentos superiores a quantidade de dias informado acima
            QRTitAbeCliVencOrc.QueryTitulo.sql[2] := ' where orcamento.Data_Conferencia >= DATEADD(day,-1 * ' + qtDiasOrc + ',getdate())';
            memo1.Clear;
            memo1.Lines.Add(QRTitAbeCliVencOrc.QueryTitulo.text);

            QRTitAbeCliVencOrc.Preview;
            QRTitAbeCliVencOrc.Free;
            //RadioGroupRelatorioReceber.Items[8] := '' ;
          end;

        6: begin
            QRBaiCli.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCli.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            QRBaiCli.DIntervalo3 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiCli.DIntervalo4 := StrToDate(MaskEditUltimoVencimento.Text);
            Application.CreateForm(TQRTitBaiCliente, QRTitBaiCliente);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              QRTitBaiCliente.QueryReceber.SQL[2]:='where Numero_Titulo <> '''' and (nro_cheque<>''y'' or nro_cheque is null)';
            QRTitBaiCliente.Preview;
            QRTitBaiCliente.Free;
           end;
        7 :
          begin

            aux := Uppercase(dm.execmd('select tp_baixa_visualiza a from operador where codigo = ' + IntToStr(senha.Codigo_Operador), 'a'));
            if aux <> 'TODOS' then
            begin
               if aux <> UpperCase(Copy(ComboBoxTipoCob.Text, 7, length(ComboBoxTipoCob.Text))) then
               begin
                  ShowMessage('Voc� n�o tem permiss�o para visualizar o tipo de Cobran�a "' + ComboBoxTipoCob.Text + '", tipo de cobran�a permitido : "' + aux + '"');
                  exit;
               end;
            end;
            Application.CreateForm(TQRTitBaiCliVencimento, QRTitBaiCliVencimento);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  QRTitBaiCliVencimento.QueryReceber.sql[11]:= 'and (nro_cheque<>''y'' or nro_cheque is null) order by Data_Pagamento,  Tipo_Cobranca,Codigo_Contratante, Tipo_Documento,  Numero_Titulo,';
            QRBaiCliVen.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCliVen.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            QRBaiCliVen.DIntervalo3 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiCliVen.DIntervalo4 := StrToDate(MaskEditUltimoVencimento.Text);

            QRBaiCliven.Pgto        := StrToInt(Copy(ComboBoxTipoPgto.Text , 1, 3));
            QRTitBaiCliVencimento.QRLabeldtPagto.Caption := 'Per�odo Pagto : ' + MaskEditPrimeiroPagamento.Text + ' A ' + MaskEditUltimoPagamento.Text;
            //MACORC Manuten��o � considerado or�amento(na multi � e seato n�o)
            if (dm.GetParam('MACORC') = 'S') and (ComboBoxClassificacao.Text = 'Or�amento') then // so atualiza qdo eh or�amento pq a queritipodocumento2 ja eh aberta antes de chamar o relatorio, somente no 8 tem essa exce��o.
            begin
               // para o relatorio 8 quando selecionar or�amento, entende-se or�amento e manuten��o conf. taciano em 18/12/2015.
              QueryTipoDocumento2.Close;
              QueryTipoDocumento2.SQL[1] := 'where Classificacao in (''Or�amento'',''Manuten��o'')';
              QueryTipoDocumento2.Open;
             end;
            Clipboard.AsText:=QRTitBaiCliVencimento.QueryReceber.SQL.Text;
            QRTitBaiCliVencimento.Preview;

            QRTitBaiCliVencimento.QueryReceber.close;
            QRTitBaiCliVencimento.Free;

            if application.MessageBox('Deseja imprimir o resumo do relat�rio','Alerta',MB_YESNO) <> mrYes then
              exit;


            FmFrRelResumoBaixaPorData := TFmFrRelResumoBaixaPorData.create(senha.Empresa,'RESUMO DE T�TULOS BAIXADOS POR DATA',self);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     FmFrRelResumoBaixaPorData.AdoQueryResumo.sql[13]:= 'and (nro_cheque<>''y'' or nro_cheque is null) group by descricao_tipopgto';
            FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] := ' and Data_Pagamento between ''' + MaskEditPrimeiroPagamento.Text + ''' and ''' + MaskEditUltimoPagamento.Text + ''' and Data_Vencimento between ''' + MaskEditPrimeiroVencimento.Text + ''' and ''' + MaskEditUltimoVencimento.Text + '''' ;


            if RelatoReceber.TipoCobranca <> 0 then
            begin;
               FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] := FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] + ' and Tipo_Cobranca = ' +
               IntToStr(RelatoReceber.TipoCobranca);
            end;

            if QRBaiCliven.Pgto <> 0 then
            begin
               FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] := FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] + ' and Tipo_Pagamento = ' +
               IntToStr(QRBaiCliven.Pgto);
            end;

            if RelatoReceber.TipoDocumento <> 0 then
            begin
               FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] := FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] + ' and Tipo_Documento = ' +
               IntToStr(RelatoReceber.TipoDocumento);
              end;

            if FormRelatoriosReceber.ComboBoxClassificacao.Text <> 'Todos' then
            begin
               sqlStr := '';
               QueryTipoDocumento2.First;
               PrimeiraLinha := true;


               while not QueryTipoDocumento2.eof do
               begin
                  if PrimeiraLinha then
                    sqlStr := 'and ((Tipo_Documento = ' + QueryTipoDocumento2Codigo.asString + ')'
                  else
                     sqlStr := sqlStr + ' or (Tipo_Documento = ' + QueryTipoDocumento2Codigo.asString + ')';
                  PrimeiraLinha := false;
                  QueryTipoDocumento2.Next;

               end;
            end;
            FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] := FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] +  sqlStr + ')';
            case FormRelatoriosReceber.RadioGroupTp.ItemIndex of

                0 : FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] := FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] + 'and Contratante.empresa = 1';
                1 : FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] := FmFrRelResumoBaixaPorData.AdoQueryResumo.SQL[9] + 'and Contratante.empresa = 0';
            end;

            
            FmFrRelResumoBaixaPorData.AdoQueryResumo.open;
            FmFrRelResumoBaixaPorData.RLReportH.PreviewModal;
            FmFrRelResumoBaixaPorData.Free;

          end;
        9 :
          begin
           //PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           //UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           //if UltimaData < PrimeiraData then
            //  begin
             //   ShowMessage('A �ltima Data n�o pode ser Menor que a primeira !!!');
              //  MaskEditUltimoVencimento.SetFocus;
               // exit;
             // end;
            QRBaiCliOrcamento.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiCliOrcamento.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            Application.CreateForm(TQRTitBaiCliOrcamento, QRTitBaiCliOrcamento);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              QRTitBaiCliOrcamento.QueryTitulo.sql[28]:= 'and (nro_cheque<>''y'' or nro_cheque is null) order by paralizado desc, D.Data_Vencimento, D.Tipo_Documento,  D.Tipo_Cobranca,  D.Codigo_Contratante';
            QRTitBaiCliOrcamento.Preview;
            QRTitBaiCliOrcamento.Free;
          end;
        10 :
          begin
            fmTipoRel := TfmTipoRel.create(self);
            fmTipoRel.showModal;
            if fmTipoRel.ComboBox1.ItemIndex = 0 then
            begin
               Application.CreateForm(TQRTitBaiCliVencimentoSint, QRTitBaiCliVencimentoSint);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        QRTitBaiCliVencimentoSint.QueryReceber.sql[4]:= 'and (nro_cheque<>''y'' or nro_cheque is null) order by data_pagamento';
               QRBaiCliVenSint.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
               QRBaiCliVenSint.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
               QRBaiCliVenSint.DIntervalo3 := StrToDate(MaskEditPrimeiroVencimento.Text);
               QRBaiCliVenSint.DIntervalo4 := StrToDate(MaskEditUltimoVencimento.Text);
               QRTitBaiCliVencimentoSint.Preview;
               QRTitBaiCliVencimentoSint.Free;
            end
            else
            begin
              fmGrafMensXOrcamento := TfmGrafMensXOrcamento.create(self);
              fmGrafMensXOrcamento.MaskEditDtVIni.Text := MaskEditPrimeiroVencimento.Text;
              fmGrafMensXOrcamento.MaskEditDtVFim.Text := MaskEditUltimoVencimento.Text;
              fmGrafMensXOrcamento.MaskEditDtPIni.Text := MaskEditPrimeiroPagamento.Text;
              fmGrafMensXOrcamento.MaskEditDtPFim.Text := MaskEditUltimoPagamento.Text;
              fmGrafMensXOrcamento.Button1Click(sender);
              fmGrafMensXOrcamento.ShowModal;
              fmGrafMensXOrcamento.free;
            end;
            fmTipoRel.free;
          end;
        11 :
          begin
            QRBaiChequePre.DIntervalo1 := StrToDate(MaskEditPrimeiroPagamento.Text);
            QRBaiChequePre.DIntervalo2 := StrToDate(MaskEditUltimoPagamento.Text);
            QRBaiChequePre.DIntervalo3 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRBaiChequePre.DIntervalo4 := StrToDate(MaskEditUltimoVencimento.Text);
            QRBaiChequePre.Pgto        := StrToInt(Copy(ComboBoxTipoPgto.Text , 1, 3));
            Application.CreateForm(TQRTitBaiChequePre, QRTitBaiChequePre);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  QRTitBaiChequePre.QueryReceber.sql[8]:= 'and (nro_cheque<>''y'' or nro_cheque is null) order by Data_Pagamento, Tipo_Pagamento, Codigo_Contratante, Banco_cheque, agencia_cheque, Nro_ContaCheque, Nro_cheque';
            QRTitBaiChequePre.Preview;
            QRTitBaiChequePre.Free;
          end;
        12 :
          begin
            Application.CreateForm(TQRTitCanCliente, QRTitCanCliente);
            QRCanCli.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanCli.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);
            QRTitCanCliente.Preview;
            QRTitCanCliente.Free;
          end;
        13 :
          begin
            Application.CreateForm(TQRTitCanCliVencimento, QRTitCanCliVencimento);
            QRCanCliVen.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRCanCliVen.DIntervalo2 := StrToDate(MaskEditPrimeiroVencimento.Text);
            QRTitCanCliVencimento.Preview;
            QRTitCanCliVencimento.Free;
          end;
        14 :
          begin
            if ComboBoxTipoCob.Text = '' then
               begin
                 ShowMessage('Escolha um Tipo de Cobran�a !!!');
                 exit;
               end;
            Application.CreateForm(TQRListaContratosCobranca, QRListaContratosCobranca);
            QRListaContratosCobranca.Preview;
            QRListaContratosCobranca.Free;
          end;
        15 :
          begin
           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A �ltima Data n�o pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
           FiltraDadosEtiqueta;

           if not (QueryTitulo.Bof and QueryTitulo.Eof) then
             FormSeletor.GeraEtiquetas(QueryTitulo,CheckBoxFlag.Checked)
           else
              ShowMessage('Nehum registro foi encontrado coms os par�metros selecionados!');
          end;
        16 :
          begin

           PrimeiraData := StrToDate(MaskEditPrimeiroVencimento.Text);
           UltimaData := StrToDate(MaskEditUltimoVencimento.Text);
           if UltimaData < PrimeiraData then
              begin
                ShowMessage('A �ltima Data n�o pode ser Menor que a primeira !!!');
                MaskEditUltimoVencimento.SetFocus;
                exit;
              end;
            SpTitulosPagos.ParamByName('@Data1').asdateTime := StrToDate(MaskEditPrimeiroVencimento.Text);
            SpTitulosPagos.ParamByName('@Data2').asdateTime := StrToDate(MaskEditUltimoVencimento.Text);
            SpTitulosPagos.ExecProc;

            FmSelTpDoc := TFmSelTpDoc.create(self);
            Application.CreateForm(TQrTitulosGerados, QrTitulosGerados);
            QrTitulosGerados.ImprimeGraf :=  (application.MessageBox('Imprimir os gr�ficos?','Alerta',MB_YESNO) = mrYes);
            repeat
               QRTitulosGerado.DIntervalo1 := StrToDate(MaskEditPrimeiroVencimento.Text);
               QRTitulosGerado.DIntervalo2 := StrToDate(MaskEditUltimoVencimento.Text);


               FmSelTpDoc.Showmodal;
               if FmSelTpDoc.tag = 1 then
                  QrTitulosGerados.Preview;

              until FmSelTpDoc.tag = 0;
            QrTitulosGerados.Free;
            FmSelTpDoc.free;
          end;
        17:
           begin
              QrResumoBaixasPorBanco := TQrResumoBaixasPorBanco.Create(self);
              QrResumoBaixasPorBanco.QueryResumoPagtoBanco.ParamByName('DtPgIni').asString     := MaskEditPrimeiroPagamento.text;
              QrResumoBaixasPorBanco.QueryResumoPagtoBanco.ParamByName('DtPgFim').asString     := MaskEditUltimoPagamento.Text;
              QrResumoBaixasPorBanco.QueryResumoPagtoBanco.ParamByName('DtVenctoIni').asString := MaskEditPrimeiroVencimento.text;
              QrResumoBaixasPorBanco.QueryResumoPagtoBanco.ParamByName('DtVenctoFim').asString := MaskEditUltimoVencimento.Text;
              if ComboBoxClassificacao.Text = 'Mensalidade' then
              begin
                 QrResumoBaixasPorBanco.QueryResumoPagtoBanco.sql[16] := ' and r.desdobramento = ''M''';
                 QrResumoBaixasPorBanco.QRLabeltpDoc.Caption := 'Mens';
                 end
              else
                 if ComboBoxClassificacao.Text = 'Or�amento' then
                 begin
                    QrResumoBaixasPorBanco.QueryResumoPagtoBanco.sql[16] := ' and r.desdobramento <> ''M''';
                    QrResumoBaixasPorBanco.QRLabeltpDoc.Caption := 'Or�';
                 end
                  else
                  begin
                     QrResumoBaixasPorBanco.QueryResumoPagtoBanco.sql[16] := ' ';
                     QrResumoBaixasPorBanco.QRLabeltpDoc.Caption := '';
                  end;


              QrResumoBaixasPorBanco.QueryResumoPagtoBanco.Open;
              QrResumoBaixasPorBanco.QRLabelVencto.Caption := MaskEditPrimeiroVencimento.text + ' A ' + MaskEditUltimoVencimento.Text;
              QrResumoBaixasPorBanco.QRLabelPagto.Caption := MaskEditPrimeiroPagamento.text + ' A ' + MaskEditUltimoPagamento.Text;
              QrResumoBaixasPorBanco.Preview;
              QrResumoBaixasPorBanco.Free;
           end;
     end;
end;

procedure TFormRelatoriosReceber.EditPrimeiroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case Key of

          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFormRelatoriosReceber.FormCreate(Sender: TObject);
begin
     Memo1.Visible := DebugHook <> 0;
     Top := 90;
     Left := 105;
     MaskEditPrimeiroVencimento.Text := '  /  /    ';
     MaskEditUltimoVencimento.Text := '  /  /    ';
     MaskEditPrimeiroPagamento.Text := '  /  /    ';
     MaskEditUltimoPagamento.Text := '  /  /    ';

     MontaTipoDoc;
     MontaTipoCob;
     MontaStatus;
     MontaGrupoContratante;
     MontaTipoPgto;
     ComboBoxTipoDoc.ItemIndex := 0;
     ComboBoxTipoCob.ItemIndex := 0;
     ComboBoxClassificacao.ItemIndex := 0;
     ComboBoxOrcamentos.ItemIndex := 0;
     ComboBoxStatus.ItemIndex := 0;
     ComboBoxTipoPgto.ItemIndex := 0;
     ComboBoxGrupoContratante.ItemIndex := 0;
     if dm.GetParam('HABFIL') = 'S' then
        ControleDeFiltros(false);
     // deixei por um tempo..
     HabilitatodososFiltros1.enabled := (dm.date <= StrToDate('31/05/2006'));
end;

procedure TFormRelatoriosReceber.MontaTipoDoc;
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

procedure TFormRelatoriosReceber.MontaTipoCob;
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

procedure TFormRelatoriosReceber.MontaStatus;
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

procedure TFormRelatoriosReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryTipoDocumento.Close;
     QueryTipoCobranca.Close;
     QueryStatus.Close;
     QueryContratante.close;
     QueryTipoDocumento2.Close;
     QueryGrupoContratante.Close;
     QueryReceber.Close;
end;

procedure TFormRelatoriosReceber.EditVencimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFormRelatoriosReceber.MontaGrupoContratante;
begin
     ComboBoxGrupoContratante.Items.Add('000' + ' - ' + 'Todos');
       with QueryGrupoContratante do
         begin
           Open;
           First;
           while not eof do
             begin
               Grupo := StrToInt(QueryGrupoContratanteCodigo.asString);
               if Grupo < 10 then
                  ComboBoxGrupoContratante.Items.Add('00' + QueryGrupoContratanteCodigo.asString + ' - '+ QueryGrupoContratanteDescricao.asString)
               else
                  if (Grupo < 100) then
                     ComboBoxGrupoContratante.Items.Add('0' + QueryGrupoContratanteCodigo.asString + ' - '+ QueryGrupoContratanteDescricao.asString)
                  else
                     ComboBoxGrupoContratante.Items.Add(QueryGrupoContratanteCodigo.asString + ' - '+ QueryGrupoContratanteDescricao.asString);
               Next;
             end;
         end;
end;

procedure TFormRelatoriosReceber.MontaTipoPgto;
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


procedure TFormRelatoriosReceber.FiltraDadosEtiqueta;
begin

   QueryTitulo.Close;
   QueryTitulo.ParamByName('Data1').asDateTime := StrToDate(MaskEditPrimeiroVencimento.Text);
   QueryTitulo.ParamByName('Data2').asDateTime := StrToDate(MaskEditUltimoVencimento.Text);

   if TipoDocumento <> 0 then
      QueryTitulo.SQL[5] := 'and D.Tipo_Documento = ' + IntToStr(TipoDocumento)
   else
      QueryTitulo.SQL[5] := '';

  if TipoCobranca <> 0 then
     QueryTitulo.SQL[6] := 'and D.Tipo_Cobranca = ' + IntToStr(TipoCobranca)
  else
     QueryTitulo.SQL[6] := '';

  if StrToInt(Copy(ComboBoxTipoPgto.Text , 1, 3)) <> 0 then
     QueryTitulo.SQL[7] :=  'and D.Tipo_Pagamento = ' + Copy(ComboBoxTipoPgto.Text , 1, 3)
   else
      QueryTitulo.SQL[7] := '';

  if Status <> 0 then
     QueryTitulo.SQL[8] := 'and Status_Orcamento = ' + IntToStr(RelatoReceber.Status)
  else
     QueryTitulo.SQL[8] := '';

   if ComboBoxOrcamentos.Text = 'Com Or�amentos' then
      QueryTitulo.SQL[10] := 'and exists (select * from orcamento where orcamento.contratante = D.codigo_contratante and Autorizado is not null)'
   else
   if ComboBoxOrcamentos.Text = 'Sem Or�amentos' then
      QueryTitulo.SQL[10] := 'and not exists (select * from orcamento where orcamento.contratante = D.codigo_contratante and Autorizado is not null)'
   else
      QueryTitulo.SQL[10] := '';

   if ComboBoxClassificacao.Text = 'Mensalidade' then
      QueryTitulo.SQL[11] := 'and D.desdobramento = ''M'''
   else
   if ComboBoxClassificacao.Text = 'Or�amento' then
      QueryTitulo.SQL[11] := 'and D.desdobramento <> ''M'''
   else
      QueryTitulo.SQL[11] := '';

   FmSelContrEtiqCobr := TFmSelContrEtiqCobr.Create(Self);
   FmSelContrEtiqCobr.QueryContratantes.Sql := QueryTitulo.sql;
   FmSelContrEtiqCobr.QueryContratantes.ParamByName('Data1').asDateTime := StrToDate(MaskEditPrimeiroVencimento.Text);
   FmSelContrEtiqCobr.QueryContratantes.ParamByName('Data2').asDateTime := StrToDate(MaskEditUltimoVencimento.Text);

   FmSelContrEtiqCobr.ShowModal;
   if FmSelContrEtiqCobr.tag = 1 then
      QueryTitulo.Sql[14] := ' and d.Codigo_Contratante in (' + FmSelContrEtiqCobr.VInstrucaoSql + ')'
   else
      Abort;
   QueryTitulo.Open;
end;



procedure TFormRelatoriosReceber.FormDblClick(Sender: TObject);
Var S : String;
begin
   S := InputBox('Comando DOS','comando de impress�o','c:\imprime.bat');
   showMessage('Prepare a impressora para imprimir as etiquetas');
   WinExec(Pchar(S),sw_show);
end;

procedure TFormRelatoriosReceber.ControleDeFiltros(Controle: Boolean);
begin
   Label3.visible                     := controle;
   ComboBoxTpUsuario.visible          := controle;
   Label1.enabled                     := Controle;
   Label2.enabled                     := Controle;
   Label8.enabled                     := Controle;
   Label9.enabled                     := Controle;
   //LabelDiaVecto.enabled              := Controle;
   //LabelEmpresa.enabled               := Controle;
   LabelTpDoc.enabled                 := Controle;
   LabelTpcobr.enabled                := Controle;
   LabelClassif.enabled               := Controle;
   LabelGrpContrat.enabled            := Controle;
   LabelCOrc.enabled                  := Controle;
   LabelStatus.enabled                := Controle;
   LabelPagto.enabled                 := Controle;
   MaskEditPrimeiroVencimento.enabled := Controle;
   MaskEditUltimoVencimento.enabled   := Controle;
   MaskEditPrimeiroPagamento.enabled  := Controle;
   MaskEditUltimoPagamento.enabled    := Controle;
   //EditVencimento.enabled             := Controle;
   //CheckBoxEmpresa.enabled            := Controle;
   RadioGroupTp.Enabled               := Controle;
   ComboBoxTipoDoc.enabled            := Controle;
   ComboBoxTipoCob.enabled            := Controle;
   ComboBoxClassificacao.enabled      := Controle;
   ComboBoxGrupoContratante.enabled   := Controle;
   ComboBoxOrcamentos.enabled         := Controle;
   ComboBoxStatus.enabled             := Controle;
   ComboBoxTipoPgto.enabled           := Controle;
   DBLookupComboBoxRegiao.Visible     := Controle;
   LabelRegiao.Visible := controle;
end;

procedure TFormRelatoriosReceber.HabilitaFiltros;
begin
   BitBtnVisualizar.enabled := true;
   case RadioGroupRelatorioReceber.ItemIndex of

      0 : begin
             Label1.enabled                     := true;
             Label2.enabled                     := true;
             MaskEditPrimeiroVencimento.enabled := true;
             MaskEditUltimoVencimento.enabled   := true;
             RadioGroupTp.Enabled               := true;
             //LabelEmpresa.enabled               := true;
             //CheckBoxEmpresa.enabled            := true;
             Label3.visible                     := true;
             ComboBoxTpUsuario.visible          := true;
          end;
      1 : begin
             RadioGroupTp.Enabled               := true;
             Label1.enabled                     := true;
             Label2.enabled                     := true;
             MaskEditPrimeiroVencimento.enabled := true;
             MaskEditUltimoVencimento.enabled   := true;
             LabelPagto.enabled                 := true;
             ComboBoxTipoPgto.enabled           := true;
             //LabelEmpresa.enabled               := true;
             //CheckBoxEmpresa.enabled            := true;
             ComboBoxClassificacao.enabled      := true;
             LabelClassif.enabled               := true;
             ComboBoxTipoDoc.enabled            := true;
             LabelTpDoc.enabled                 := true;
             ComboBoxTipoCob.enabled            := true;
             LabelTpcobr.enabled                := true;
             ComboBoxOrcamentos.enabled         := true;
             LabelCOrc.enabled                  := true;
             Label3.visible                     := true;
             ComboBoxTpUsuario.visible          := true;
             ComboBoxTpUsuario.ItemIndex        := 1; //mostra ativos por default
          end;
      2 : begin
             RadioGroupTp.Enabled               := true;
             Label1.enabled                     := true;
             Label2.enabled                     := true;
             MaskEditPrimeiroVencimento.enabled := true;
             MaskEditUltimoVencimento.enabled   := true;
             LabelPagto.enabled                 := true;
             ComboBoxTipoPgto.enabled           := true;
             LabelTpDoc.enabled                 := true;
             ComboBoxTipoDoc.enabled            := true;
             LabelTpcobr.enabled                := true;
             ComboBoxTipoCob.enabled            := true;
             Label3.visible                     := true;
             ComboBoxTpUsuario.visible          := true;
             DBLookupComboBoxRegiao.Visible     := true;
             LabelRegiao.Visible     := true;
             ComboBoxTpUsuario.ItemIndex        := 1; //mostra ativos por default

          end;
      3 : begin
             Label8.Enabled := true;
             Label8.Caption := 'Data Base';
             MaskEditUltimoPagamento.Visible := false;
             Label9.Visible := false;
             MaskEditPrimeiroPagamento.Enabled   := true;

             MaskEditPrimeiroPagamento.Text     := DateToStr(dm.Date);
             RadioGroupTp.Enabled               := true;
             ComboBoxTipoDoc.enabled            := true;
             LabelTpDoc.enabled                 := true;
             ComboBoxClassificacao.enabled      := true;
             LabelClassif.enabled               := true;
             ComboBoxTipoCob.enabled            := true;
             LabelTpcobr.enabled                := true;
             LabelStatus.enabled                := true;
             ComboBoxStatus.enabled             := true;
             LabelCOrc.enabled                  := true;
             ComboBoxOrcamentos.enabled         := true;



             Label1.enabled                     := true;
             Label2.enabled                     := true;
             MaskEditPrimeiroVencimento.enabled := true;
             MaskEditUltimoVencimento.enabled   := true;
             LabelPagto.enabled                 := true;
             ComboBoxTipoPgto.enabled           := true;
             LabelTpDoc.enabled                 := true;
             ComboBoxTipoDoc.enabled            := true;
             LabelClassif.enabled               := true;
             ComboBoxClassificacao.enabled      := true;
             LabelTpcobr.enabled                := true;
             ComboBoxTipoCob.enabled            := true;
          end;
      4 : begin
             Label1.enabled                     := true;
             Label2.enabled                     := true;
             MaskEditPrimeiroVencimento.enabled := true;
             MaskEditUltimoVencimento.enabled := true;
             ComboBoxGrupoContratante.enabled := true;
          end;

      5 : begin
             Label1.enabled                     := true;
             Label2.enabled                     := true;
             MaskEditPrimeiroVencimento.enabled := true;
             MaskEditUltimoVencimento.enabled := true;
             DBLookupComboBoxRegiao.Visible     := true;
             LabelRegiao.Visible     := true;
             
          end;

      6: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditUltimoVencimento.enabled   := true;
            Label8.enabled                     := true;
            Label9.enabled                     := true;
            MaskEditPrimeiroPagamento.enabled  := true;
            MaskEditUltimoPagamento.enabled    := true;
            LabelTpcobr.enabled                := true;
            ComboBoxTipoCob.enabled            := true;
         end;

      7: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditUltimoVencimento.enabled   := true;
            //LabelEmpresa.enabled               := true;
            RadioGroupTp.Enabled               := true;
            //CheckBoxEmpresa.enabled            := true;
            Label8.enabled                     := true;
            Label9.enabled                     := true;
            MaskEditPrimeiroPagamento.enabled  := true;
            MaskEditUltimoPagamento.enabled    := true;
            LabelTpcobr.enabled                := true;
            ComboBoxTipoCob.enabled            := true;
            LabelTpDoc.enabled                 := true;
            ComboBoxTipoDoc.enabled            := true;
            LabelPagto.enabled                 := true;
            ComboBoxTipoPgto.enabled           := true;
            LabelClassif.enabled               := true;
            ComboBoxClassificacao.enabled      := true;
         end;
      8: BitBtnVisualizar.enabled := false;
      9: begin
//            Label1.enabled                     := true;
//            Label2.enabled                     := true;
//            MaskEditPrimeiroVencimento.enabled := true;
//            MaskEditUltimoVencimento.enabled   := true;
            Label8.enabled                     := true;
            Label9.enabled                     := true;
            MaskEditPrimeiroPagamento.enabled  := true;
            MaskEditUltimoPagamento.enabled    := true;
            LabelTpDoc.enabled                 := true;
            ComboBoxTipoDoc.enabled            := true;
            LabelTpcobr.enabled                := true;
            ComboBoxTipoCob.enabled            := true;
         end;

     10: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            Label8.enabled                     := true;
            Label9.enabled                     := true;
            MaskEditPrimeiroPagamento.enabled  := true;
            MaskEditUltimoPagamento.enabled    := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditUltimoVencimento.enabled   := true;
          end;

     11: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            Label8.enabled                     := true;
            Label9.enabled                     := true;
            MaskEditPrimeiroPagamento.enabled  := true;
            MaskEditUltimoPagamento.enabled    := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditUltimoVencimento.enabled   := true;
            LabelPagto.enabled                 := true;
            ComboBoxTipoPgto.enabled           := true;
         end;

     12: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditUltimoVencimento.enabled   := true;
         end;

     13: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditPrimeiroVencimento.enabled := true;
            LabelTpDoc.enabled                 := true;
            ComboBoxTipoDoc.enabled            := true;
            LabelTpcobr.enabled                := true;
            ComboBoxTipoCob.enabled            := true;
          end;

     14: begin
            LabelTpcobr.enabled     := true;
            ComboBoxTipoCob.enabled := true;
         end;

     15: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditUltimoVencimento.enabled   := true;
            LabelTpDoc.enabled                 := true;
            ComboBoxTipoDoc.enabled            := true;
            LabelTpcobr.enabled                := true;
            ComboBoxTipoCob.enabled            := true;
            LabelPagto.enabled                 := true;
            ComboBoxTipoPgto.enabled           := true;
            LabelCOrc.enabled                  := true;
            ComboBoxOrcamentos.enabled         := true;
            LabelClassif.enabled               := true;
            ComboBoxClassificacao.enabled      := true;
            LabelStatus.enabled                := true;
            ComboBoxStatus.enabled             := true;
         end;


     16: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditUltimoVencimento.enabled   := true;
            //LabelClassif.enabled               := true;
            //ComboBoxClassificacao.enabled      := true;
          end;
     17: begin
            Label1.enabled                     := true;
            Label2.enabled                     := true;
            Label8.enabled                     := true;
            Label9.enabled                     := true;
            MaskEditPrimeiroPagamento.enabled  := true;
            MaskEditUltimoPagamento.enabled    := true;
            MaskEditPrimeiroVencimento.enabled := true;
            MaskEditUltimoVencimento.enabled   := true;
            ComboBoxClassificacao.enabled      := true;            
         end;
   end;
end;
procedure TFormRelatoriosReceber.HabilitatodososFiltros1Click(
  Sender: TObject);
begin
   ControleDeFiltros(true);
end;

procedure TFormRelatoriosReceber.FormShow(Sender: TObject);
begin
   ControleDeFiltros(False);
   ComboBoxTpUsuario.ItemIndex := 0;
   ADOQueryRegiao.close;
   ADOQueryRegiao.open;
end;

procedure TFormRelatoriosReceber.EditQtTitAbertoKeyPress(Sender: TObject;
  var Key: Char);
begin
   key := so_numero(key);
end;

procedure TFormRelatoriosReceber.ComboBoxTipoDocChange(Sender: TObject);
begin

      ComboBoxQtTitAbe.Visible := ((RadioGroupRelatorioReceber.ItemIndex = 2)) and (ComboBoxTipoDoc.ItemIndex > 0);
      Label4.Visible := ComboBoxQtTitAbe.Visible;
      Label5.Visible := ComboBoxQtTitAbe.Visible;
      if not ComboBoxQtTitAbe.Visible then
         ComboBoxQtTitAbe.ItemIndex := 3;
end;

end.
