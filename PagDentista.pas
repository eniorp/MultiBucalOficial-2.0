{ Sistema .........: Controle Administrativo                                   }
{ Programa ........: Manuten��o de Or�amentos                                  }
{ Cliente .........: MultiOdonto                                               }
{ Programador .....: Renato Castanho Gosuen                                    }

unit PagDentista;
                                                                                                                  
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, Db, DBTables,
  Biblio, ADODB, Menus,DateUtils;

type
  TFormPagDentista = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEditNumero: TDBEdit;
    DBEditData: TDBEdit;
    DBEditUsuario: TDBEdit;
    DBEditDentista: TDBEdit;
    Label6: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    BitBtnSair: TBitBtn;
    BitBtnPesquisar: TBitBtn;
    QueryItensPagDentista: TQuery;
    DataSourceOrcamento: TDataSource;
    DataSourceItensPagDentista: TDataSource;
    QueryUsuarios: TQuery;
    QueryServicos: TQuery;
    QueryServicosCodigo: TIntegerField;
    QueryServicosDescricao: TStringField;
    QueryServicosCategoria: TIntegerField;
    QueryUsuariosCodigo: TIntegerField;
    QueryUsuariosDigito: TIntegerField;
    QueryUsuariosNome: TStringField;
    QueryUsuariosData_Exclusao: TDateTimeField;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    QueryDentistaData_Exclusao: TDateTimeField;
    EditNomeUsuario: TEdit;
    EditNomeDentista: TEdit;
    QueryContratante: TQuery;
    QueryContratanteCodigo: TIntegerField;
    QueryContratantePlano: TIntegerField;
    QueryContratanteGrupo_Contratante: TIntegerField;
    Label8: TLabel;
    DBEditTipo: TDBEdit;
    BitBtnPesquisaTipo: TBitBtn;
    EditTipo: TEdit;
    QueryTipoOrcamento: TQuery;
    QueryTipoOrcamentoTipo: TSmallintField;
    QueryTipoOrcamentoTipo_Documento: TSmallintField;
    QueryTipoOrcamentoTipo_Cobranca: TSmallintField;
    QueryTipoOrcamentoDescricao: TStringField;
    GroupBoxProcura: TGroupBox;
    Label7: TLabel;
    EditProcura: TEdit;
    QueryUsuariosData_Inclusao: TDateTimeField;
    QueryContratanteNome: TStringField;
    Panel8: TPanel;
    DBGridItens: TDBGrid;
    QueryUsuariosContratante_Titular: TIntegerField;
    DataSourceUsuarios: TDataSource;
    DataSourceContratante: TDataSource;
    QueryItensOrcamentos: TQuery;
    QueryItensOrcamentosOrcamento: TIntegerField;
    QueryItensOrcamentosIncremento: TIntegerField;
    QueryItensOrcamentosServico: TIntegerField;
    QueryItensOrcamentosQuantidade: TSmallintField;
    QueryItensOrcamentosValor: TFloatField;
    QueryItensOrcamentosValor_Bruto: TFloatField;
    QueryItensOrcamentosValor_Dentista: TFloatField;
    QueryItensOrcamentosValor_Protetico: TFloatField;
    QueryItensPagDentistaDescricao_Servico: TStringField;
    QueryItensPagDentistaOrcamento: TIntegerField;
    QueryItensPagDentistaIncremento: TIntegerField;
    QueryItensPagDentistaServico: TIntegerField;
    QueryItensPagDentistaQuantidade: TIntegerField;
    QueryItensPagDentistaQuantidade_Paga: TIntegerField;
    QueryItensPagDentistaValor: TFloatField;
    EditTotal: TEdit;
    QueryItensPagDentistaMesAno: TStringField;
    QueryItensPagDentistaObservacao: TStringField;
    BitBtnTitulos: TBitBtn;
    BitBtnPgTotal: TBitBtn;
    QueryStatus_Pagto: TQuery;
    DataSourceStatus: TDataSource;
    DBLookupComboBoxStatus: TDBLookupComboBox;
    Label9: TLabel;
    QueryObservacoes: TQuery;
    QueryObservacoesOrcamento: TIntegerField;
    QueryObservacoesTexto: TMemoField;
    QueryStatus_PagtoCodigo: TIntegerField;
    QueryStatus_PagtoDescricao: TStringField;
    BitBtnPgParcial: TBitBtn;
    QueryVerifica: TQuery;
    QueryItensPagDentistaid_pagto: TIntegerField;
    BitBtnCancelar: TBitBtn;
    QueryItensPagDentistastatus: TStringField;
    QueryItensOrcamentosstatus: TStringField;
    QueryOrcamentos: TADOQuery;
    QueryOrcamentosdias: TIntegerField;
    QueryOrcamentosNumero: TAutoIncField;
    QueryOrcamentosData_Hora: TDateTimeField;
    QueryOrcamentosOperador_Cadastro: TSmallintField;
    QueryOrcamentosUsuario: TIntegerField;
    QueryOrcamentosContratante_Titular: TIntegerField;
    QueryOrcamentosContratante: TIntegerField;
    QueryOrcamentosData: TDateTimeField;
    QueryOrcamentosDentista: TIntegerField;
    QueryOrcamentosTotal: TBCDField;
    QueryOrcamentosTotal_Bruto: TBCDField;
    QueryOrcamentosTotal_Desconto: TBCDField;
    QueryOrcamentosStatus: TSmallintField;
    QueryOrcamentosStatus_Pagamento: TSmallintField;
    QueryOrcamentosNumero_Parcelas: TSmallintField;
    QueryOrcamentosData_Conferencia: TDateTimeField;
    QueryOrcamentosTotal_Dentista: TBCDField;
    QueryOrcamentosTotal_Protetico: TBCDField;
    QueryOrcamentosTotal_Contas: TBCDField;
    QueryOrcamentosAutorizado: TBooleanField;
    QueryOrcamentosOperador_Aprovacao: TSmallintField;
    QueryOrcamentosTipo: TSmallintField;
    QueryOrcamentosDesconto: TFloatField;
    QueryOrcamentosnro_urgencia: TIntegerField;
    QueryOrcamentosData_Status: TDateTimeField;
    QueryOrcamentosOperador_Status: TIntegerField;
    QueryOrcamentosPericiaFinal: TBooleanField;
    QueryOrcamentoscd_tabela: TSmallintField;
    Label5: TLabel;
    Edit1: TEdit;
    QueryItensOrcamentosDenteFace: TStringField;
    QueryItensPagDentistaDenteFace: TStringField;
    BitBtnGlosar: TBitBtn;
    PopupMenu1: TPopupMenu;
    Glosar1: TMenuItem;
    BitBtnGlosaTudo: TBitBtn;
    GlosarTodososservios1: TMenuItem;
    QueryItensPagDentistaupdated: TDateTimeField;
    BitBtnDesfazPagto: TBitBtn;
    PesquisarNovoOramento1: TMenuItem;
    QueryItensPagDentistarecurso: TBooleanField;
    IndicarprocedimentocomoRecursodeGlosa1: TMenuItem;
    QueryOrcamentoslg_ir: TBooleanField;
    QueryOrcamentostp_cobranca: TIntegerField;
    QueryOrcamentosupdated: TDateTimeField;
    QueryOrcamentosPericiaInicial: TBooleanField;
    QueryOrcamentosdata_validade: TDateTimeField;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEditDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridItensExit(Sender: TObject);
    procedure QueryItensPagDentistaAfterPost(DataSet: TDataSet);
    procedure DataSourceOrcamentoDataChange(Sender: TObject;
      Field: TField);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure EditProcuraExit(Sender: TObject);
    procedure EditProcuraKeyPress(Sender: TObject; var Key: Char);
    procedure QueryItensPagDentistaAfterInsert(DataSet: TDataSet);
    procedure QueryItensPagDentistaQuantidade_PagaValidate(Sender: TField);
    procedure QueryItensPagDentistaBeforePost(DataSet: TDataSet);
    procedure BitBtnTitulosClick(Sender: TObject);
    procedure BitBtnPgTotalClick(Sender: TObject);
    procedure BitBtnPgParcialClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QueryOrcamentosBeforePost(DataSet: TDataSet);
    procedure QueryStatus_PagtoBeforePost(DataSet: TDataSet);
    procedure QueryObservacoesBeforePost(DataSet: TDataSet);
    procedure BitBtnCancelarClick(Sender: TObject);
    procedure QueryItensPagDentistaAfterScroll(DataSet: TDataSet);
    procedure DOQueryOrcamentosBeforePost(DataSet: TDataSet);
    procedure DBGridItensDblClick(Sender: TObject);
    procedure BitBtnGlosaTudoClick(Sender: TObject);
    procedure QueryItensPagDentistaNewRecord(DataSet: TDataSet);
    procedure QueryItensPagDentistaBeforeDelete(DataSet: TDataSet);
    procedure BitBtnDesfazPagtoClick(Sender: TObject);
    procedure DBGridItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure IndicarprocedimentocomoRecursodeGlosa1Click(Sender: TObject);
  private
    { Private declarations }
    efetuandoGlosa,cargaInicial,lgAutorizadoAux : boolean;
    procedure iniciaProcessoGlosa(glosatudo: Boolean);
    function VerificaQuantidade : Boolean;
    function verificaPermissao : Boolean;
    procedure MontaTotal;
    procedure Monta_Itens;
    procedure AtualizaStOrcamento;
    procedure VerificarOrcVencido;


  public
     ReadOnly : boolean;
     Vencido  : Boolean;
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
  FormPagDentista: TFormPagDentista;
  Numero_Orcamento, VUsuario, Digito : Integer;
  Valor_Bruto, Valor_Dentista, Valor_Protetico, Valor_Total, Valor_TotalBruto, Valor_Servico, Valor_TotalDentista, Valor_TotalProtetico : Real;
  Data_Base, Data_Atual : TDate;
  Linha, Pagina, Numero_ViasProtetico, I, Incremento, Status : Integer;
  Ano, Mes, Dia : Word;
  Pg_total : Boolean;
  
implementation

uses Senha, Observacoes, udm, Mensagem, GlosaDentista,tacio, LiberaOdonto;

{$R *.DFM}

procedure TFormPagDentista.FormCreate(Sender: TObject);
begin
     Left := 0;
     Top := 0;
     //Height := 572;
     //Width := 800;
     QueryServicos.Open;
     QueryStatus_Pagto.Open;
     Pg_total := False;
     FormPagDentista.ReadOnly := false;
     cargaInicial := false;
     lgAutorizadoAux := false;
end;

procedure TFormPagDentista.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryOrcamentos.Close;
     QueryItensPagDentista.Close;
     QueryUsuarios.Close;
     QueryServicos.Close;
     QueryDentista.Close;
     QueryStatus_Pagto.Close;
     QueryContratante.close;
     //QueryItensOrcamento.Close;
     QueryTipoOrcamento.close;
end;

procedure TFormPagDentista.DBEditDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     case Key of
          VK_RETURN, VK_DOWN: Perform(WM_NEXTDLGCTL, 0, 0);
          VK_UP: Perform(WM_NEXTDLGCTL, 1, 0);
          vk_f1:
            begin
              BitBtnPesquisarClick(Sender);
              EditProcura.SetFocus;
            end;
     end;
end;

procedure TFormPagDentista.DBGridItensKeyDown(Sender: TObject;
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
            if QueryItensPagDentistaServico.asString = '' then
               QueryItensPagDentista.Cancel;
            BitBtnPesquisar.SetFocus;
          end;
        vk_f1:
          begin
            BitBtnPesquisarClick(Sender);
            EditProcura.SetFocus;
          end;
     end;
end;

{ TIEInplaceEdit }

procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TFormPagDentista.DBGridItensExit(Sender: TObject);
begin
//   MontaTotal;
end;

procedure TFormPagDentista.MontaTotal;
begin
     Valor_Total := 0;
     Valor_TotalBruto := 0;
     Valor_TotalDentista := 0;
     Valor_TotalProtetico := 0;

     with QueryItensPagDentista do
       begin
         First;
         while not eof do
           begin
             Valor_Total := Valor_Total + QueryItensPagDentistaValor.asCurrency;
             if QueryItensPagDentistaQuantidade_Paga.asInteger <> 0 then
                Valor_TotalDentista := Valor_TotalDentista + QueryItensPagDentistaValor.asCurrency;
             Next;
           end;
         First;
       end;

     EditTotal.Text := FormatFloat( 'R$' + '###,##0.00', Valor_TotalDentista);

end;

procedure TFormPagDentista.QueryItensPagDentistaAfterPost(DataSet: TDataSet);
var Ponteiro : Integer;
begin
    AtualizaStOrcamento; // se tiver pago tudo atualiza status para pago total
     Ponteiro := QueryItensPagDentistaIncremento.asInteger;
     with QueryItensPagDentista do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         Open;
         Locate('Incremento', Ponteiro, [loCaseInsensitive]);
       end;
end;

procedure TFormPagDentista.DataSourceOrcamentoDataChange(Sender: TObject;
  Field: TField);
begin
     if QueryOrcamentos.RecordCount = 0 then exit;

     if DBEditUsuario.Text <> '' then
        begin
          VUsuario := StrToInt(Copy(DBEditUsuario.Text,1, (Length(DBEditUsuario.Text)) - 1));
          Digito := StrToInt(Copy(DBEditUsuario.Text, Length(DBEditUsuario.Text), 1));

          with QueryUsuarios do
            begin
              Close;
              ParamByName('Usuario').asInteger := VUsuario;
              ParamByName('Digito_Usuario').asInteger := Digito;
              Open;
              if RecordCount = 0 then
                 begin
                   MessageDlg('Usu�rio N�o Cadastrado !!!!', mtError, [mbOk], 0);
                 end
              else
                  EditNomeUsuario.Text := QueryUsuariosNome.asString;

              if QueryUsuariosData_Exclusao.asString <> '' then
                 begin
                   MessageDlg('Usu�rio Exclu�do em ' + DateToStr(QueryUsuariosData_Exclusao.asDateTime) + ' !!!', mtError, [mbOk], 0);
                end;

              with QueryContratante do
                begin
                  Close;
                  ParamByName('Codigo_Contrantante').asInteger := VUsuario;
                  Open;
                end;
            end;
        end;

     with QueryDentista do
       begin
         Close;
         ParamByName('Dentista').asInteger := QueryOrcamentosDentista.asInteger;
         Open;
         EditNomeDentista.Text := QueryDentistaNome.asString;
       end;

     with QueryTipoOrcamento do
       begin
         Close;
         ParamByName('Tipo_Orcamento').asInteger := QueryOrcamentosTipo.asInteger;
         Open;
         EditTipo.Text := QueryTipoOrcamentoDescricao.AsString;
       end;

     with QueryItensPagDentista do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         Open;
         if RecordCount = 0 then
            Monta_Itens;
//         MontaTotal;
       end;
       if VerificaQuantidade then
          ShowMessage('Quantidade de servi�os a pagar diferente da quantidade de itens no or�amento, verifique')
end;

function TFormPagDentista.verificaPermissao: Boolean;
begin
   lgAutorizadoAux := false;
   if  dm.VerifPermissao('','90','11','') then
   begin
      FmSenhaOdonto := TFmSenhaOdonto.Create(self);
      FmSenhaOdonto.showModal;
      if FmSenhaOdonto.tag <> 0 then
      begin
         dm.execmd('insert into eventosPagDentista (nr_orcamento,ds_evento,cd_operador,dt_evento) values (' + QueryOrcamentos.FieldByName('numero').AsString + ',''Autorizado pagamento ap�s vencimento'',' + intTostr(Senha.Codigo_Operador) + ',getdate())');
         lgAutorizadoAux := true;
         result := true;
      end
      else
      begin
         QueryOrcamentos.Close;
         QueryOrcamentos.SQL[1] := 'where Numero = ' + EditProcura.Text;
         QueryOrcamentos.SQL[2] := 'order by Numero';
         QueryOrcamentos.SQL[3] := '';
         QueryOrcamentos.Open;
         QueryItensPagDentista.Close;
         result := false;
     end;
   end
   else
      result := false;
end;
function TFormPagDentista.VerificaQuantidade: Boolean;
begin
   if FormPagDentista.ReadOnly then

   begin
      Result := false;
      exit;
   end;
   QueryVerifica.close;
   QueryVerifica.sql[01] := QueryOrcamentosNumero.AsString;
   QueryVerifica.sql[03] := QueryOrcamentosNumero.AsString;
   QueryVerifica.Open;
   result := QueryVerifica.FieldByName('qtde').AsInteger <> 0;
   // Significa que t� diferente as quantidade de itesn no orcamento e no itens pagto dentista
end;

procedure TFormPagDentista.Monta_Itens;
begin

   if FormPagDentista.ReadOnly then
      exit;
   Incremento := 0;
   cargaInicial := true;
     with QueryItensOrcamentos do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         SQL[2] := 'order by Orcamento, Incremento, Servico';
         SQL[3] := '';
         Open;

         while not eof do
           begin
             //for i := 1 to QueryItensOrcamentosQuantidade.asInteger do
               //begin
                 QueryItensPagDentista.Insert;
                 Incremento := Incremento + 1;

                 QueryItensPagDentistaOrcamento.asInteger := QueryOrcamentosNumero.asInteger;
                 //QueryItensPagDentistaIncremento.asInteger := Incremento;
                 QueryItensPagDentistaIncremento.asInteger := QueryItensOrcamentosIncremento.AsInteger;
                 QueryItensPagDentistaServico.asInteger := QueryItensOrcamentosServico.asInteger;
                 QueryItensPagDentistaQuantidade.asInteger := QueryItensOrcamentosQuantidade.asInteger;
                 QueryItensPagDentistaQuantidade_Paga.asInteger := 0;
                 QueryItensPagDentistaDenteFace.AsString := QueryItensOrcamentosDenteFace.AsString;
                 QueryItensPagDentistaMesAno.asString := '';
                 if QueryItensOrcamentosstatus.AsString = 'C' then
                    QueryItensPagDentistastatus.AsString := 'C';
                 try
                    QueryItensPagDentista.Post;
                 except
                   on E: Exception do
                   begin
                     QueryItensPagDentista.Cancel;
                     ShowMessage('Erro de Grava��o da Tabela Pagamento Dentista !!!' + E.Message);
                     exit;
                   end;
                 end;
               //end;
            Next;
           end;
         First;
       end;
    cargaInicial := false;
end;

procedure TFormPagDentista.BitBtnPesquisarClick(Sender: TObject);
begin
     GroupBoxProcura.Visible := True;
     GroupBoxProcura.Left := 541;
     GroupBoxProcura.Top := 3;
     EditProcura.Text := '';
     EditProcura.SetFocus;
     pg_total := False;
end;

procedure TFormPagDentista.EditProcuraExit(Sender: TObject);
begin

         QueryOrcamentos.Close;
         QueryOrcamentos.SQL[1] := 'where Numero = ' + EditProcura.Text;
         QueryOrcamentos.SQL[2] := 'order by Numero';
         QueryOrcamentos.SQL[3] := '';
         QueryOrcamentos.Open;
         BitBtnPgTotal.Enabled := not FormPagDentista.ReadOnly;
         BitBtnPgParcial.Enabled := not FormPagDentista.ReadOnly;
         BitBtnCancelar.Enabled := not FormPagDentista.ReadOnly;
         BitBtnGlosar.Enabled := not FormPagDentista.ReadOnly;
         BitBtnGlosaTudo.Enabled := BitBtnGlosar.Enabled;
         if(BitBtnGlosar.Enabled) then
         begin
            BitBtnGlosar.Enabled := dm.GetParam('UGLO') = 'S';
             BitBtnGlosaTudo.Enabled := BitBtnGlosar.Enabled;
         end;

         Status := QueryOrcamentosStatus.AsInteger;
         if Status = 4 then
           begin
              messagedlg('Este or�amento est� Paralisado desde ' +
                 QueryOrcamentosData_Status.asString + '.', mtWarning,[mbOk], 0);
           end;
         if QueryOrcamentos.RecordCount = 0 then begin
            ShowMessage('Or�amento N�o Encontrado !!!!');
            BitBtnPesquisar.SetFocus;
            exit;
         end;

      Vencido:=False;
     //tacio 31/10  alterado para ribeir�o preto: retirada do padrao de 180 dias para a data de validade da guia (calculada por parametro)
       if FormSenha.ComboBoxBanco.Text='Ribeir�o Preto' then
         if not QueryOrcamentosdata_validade.IsNull then
         begin
           if QueryOrcamentosdata_validade.AsDateTime < strtodate('01/'+MontaMesAno(now)) then
           begin
              Vencido:=True;
              FmMensagem := TFmMensagem.create(self);
              FmMensagem.Memo1.lines.add('Este or�amentos VENCEU em '+DateToStr(QueryOrcamentosdata_validade.AsDateTime)+' !');
              FmMensagem.Memo1.lines.add('');
              FmMensagem.Memo1.lines.add('Obs.: A considerado vencido o or�amento que tem data de validade menor que o primeiro dia do m�s atual');
              FmMensagem.ShowModal;
              FmMensagem.FREE;
              if not verificaPermissao() then
              begin
                 exit;
              end;
           end;
         end
         else
         begin
           if DaysBetween(QueryOrcamentosData_Conferencia.AsDateTime, strtodate('01/'+MontaMesAno(now)))>ExecCMD_Integer(DM.Qy_Aux,'select vl_parametro from parametro where cd_parametro like ''QTVCTO''','vl_parametro',nil) then
           begin
              Vencido:=True;
              FmMensagem := TFmMensagem.create(self);
              FmMensagem.Memo1.lines.add('Este or�amentos est� autorizado a mais de '+ExecCMD_String(DM.Qy_Aux,'select vl_parametro from parametro where cd_parametro like ''QTVCTO''','vl_parametro')+' dias!!  Portanto � considerado VENCIDO.');
              FmMensagem.Memo1.lines.add('');
              FmMensagem.Memo1.lines.add('Obs.: Este or�amento n�o est� com data de validade preenchido, por esse motivo foi verificado com o parametro atual de validade de or�amento.');
              FmMensagem.ShowModal;
              FmMensagem.FREE;
              if not verificaPermissao() then
              begin
                 exit;
              end;
              
           end;
         end;
       //tacio: para serrana continua padrao 180 dias
      if FormSenha.ComboBoxBanco.Text='Serrana' then
        if DaysBetween(QueryOrcamentosData_Conferencia.AsDateTime, Now)>180 then
           begin
              FmMensagem := TFmMensagem.create(self);
              FmMensagem.Memo1.lines.add('Este or�amentos est� autorizado a mais de 180 dias !!');
              FmMensagem.ShowModal;
              FmMensagem.FREE;
           end;


     GroupBoxProcura.Visible := False;
     with QueryObservacoes do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := QueryOrcamentosNumero.asInteger;
         Open;
         if RecordCount <> 0 then
            Showmessage('Or�amento com Observa��o !');
       end;
     Edit1.text := dm.execmd(' select round(SUM(Valor_Dentista),2) vr from itens_orcamento where orcamento = ' + EditProcura.text,'vr');
     MontaTotal;
     DBGridItens.SetFocus;
end;

procedure TFormPagDentista.EditProcuraKeyPress(Sender: TObject;
  var Key: Char);
begin
     if not (key in ['0'..'9', #13, #8]) then
        key := #0;
end;

procedure TFormPagDentista.QueryItensPagDentistaAfterInsert(
  DataSet: TDataSet);
begin
     QueryItensPagDentistaIncremento.asInteger := QueryItensPagDentista.RecordCount + 1;
end;

procedure TFormPagDentista.VerificarOrcVencido();
begin

  if lgAutorizadoAux then
    exit;
  IF DM.GetParam( 'PGORVD' ) ='N' then
    if Vencido then
    begin
      //if lgAutorizadoAux then
       //  ShowMessage('Or�amento est� vencido. Por�m voc� conecedeu permiss�o para efetuar o pagamento')
      //else
      //begin
         ShowMessage('Or�amento est� vencido. N�o � poss�vel efetuar o pagamento');
         abort;
      //end;
    end;
end;

procedure TFormPagDentista.QueryItensPagDentistaQuantidade_PagaValidate(
  Sender: TField);
begin
     Data_Base := dm.Date;
     DecodeDate(Data_Base, Ano, Mes, Dia);
     if QueryItensPagDentistaQuantidade_Paga.asInteger = 0 then
        begin
          //QueryItensPagDentistaMesAno.asString := '';
          QueryItensPagDentistaValor.asString := '';
        end
     else
       begin
         VerificarOrcVencido;
         if Mes < 10 then
            QueryItensPagDentistaMesAno.asString := '0' + IntToStr(Mes) + '/' + IntToStr(Ano)
         else
            QueryItensPagDentistaMesAno.asString := IntToStr(Mes) + '/' + IntToStr(Ano);
         with QueryItensOrcamentos do
           begin
             Close;
             SQL[1] := ('where Orcamento = :Numero_Orcamento');
             SQL[2] := ('and Servico = :Codigo_Servico');
             SQL[3] := 'order by Orcamento, Incremento, Servico';
             Params[0].DataType := ftInteger;
             Params[0].ParamType := ptInput;
             Params[1].DataType := ftInteger;
             Params[1].ParamType := ptInput;
             ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
             ParamByName('Codigo_Servico').asInteger := QueryItensPagDentistaServico.asInteger;
             Open;
           end;
         QueryItensPagDentistaValor.asCurrency := (QueryItensOrcamentosValor_Dentista.asCurrency / QueryItensOrcamentosQuantidade.asInteger) * QueryItensPagDentistaQuantidade_Paga.asInteger;

       end;
end;

procedure TFormPagDentista.QueryItensPagDentistaBeforePost(
  DataSet: TDataSet);
begin
  if QueryItensPagDentistaOrcamento.isnull then
  begin
     QueryItensPagDentista.cancel;
     abort;
  end;
    if FormPagDentista.ReadOnly then
    begin
       ShowMessage('N�o � poss�vel realizar altera��es no modo consulta ! (QueryItensPagDentista)');
       Abort;
    end;
    if not QueryItensPagDentistaid_pagto.IsNull then
    begin
       ShowMessage('N�o � poss�vel realizar altera��es neste registro, j� foi efetivado o pagamento deste procedimento!');
       Abort;
    end;
    if dm.ExecutaComando('select count(*) qt from EfetivaPagto where tp_pagto = ''D'' and periodo = ''' +  QueryItensPagDentistamesAno.AsString + '''','qt') <> '0' then
    begin
       ShowMessage('Opera��o Cancela, o per�odo informado j� foi efetivado o pagamento, n�o pode ser lan�ado registro para Este Mes/Ano');
       Abort;
    end;

    if dm.GetParam('UGLO') = 'S' then
    begin

       if not efetuandoGlosa and (dm.execmd('select count(*) q from glosaDentista where cd_orcamento = ' + QueryItensPagDentistaOrcamento.AsString + ' and incremento = ' + QueryItensPagDentistaIncremento.AsString + ' and MesAno = ''' + QueryItensPagDentistaMesAno.AsString + '''' ,'q') <> '0') then
       begin
          ShowMessage('Esse item possui glosa, n�o � poss�vel altera-lo nesse per�odo');
          abort;
       end
       else
       if not efetuandoGlosa and (dm.execmd('select count(*) q from Itens_PagDentista where orcamento = ' +  QueryItensPagDentistaOrcamento.AsString + ' and incremento = ' + QueryItensPagDentistaIncremento.AsString + ' and quantidade >  ' + QueryItensPagDentistaQuantidade_Paga.AsString,'q') <> '0') then
       begin
          iniciaProcessoGlosa(false);
          if FmGlosaDentista.tag = 10 then
             QueryItensPagDentistaMesAno.AsString := ''
          else
          begin
             ShowMessage('Voc� est� zerando a quantidade paga ,ent�o deve informar o motivo da glosa');
             Abort;
          end;
       end;
   end
   else
   begin
       if QueryItensPagDentistaQuantidade_Paga.AsInteger = 0 then
          QueryItensPagDentistaMesAno.AsString := '';
   end;

    if QueryItensPagDentistaIncremento.isnull then
      Abort;
     if QueryItensPagDentistaOrcamento.asString = '' then
        QueryItensPagDentista.Cancel;
   if (QueryItensPagDentistaMesAno.AsString <> '') and
      (QueryItensPagDentistaQuantidade_Paga.AsInteger > 0) then
   begin
      if (dm.ExecutaComando('select count(*) q from itens_orcamento where orcamento = ' +
                         QueryItensPagDentistaOrcamento.asString + ' and servico = ' +
                         QueryItensPagDentistaServico.asString + ' and Valor_Protetico > 0 ','q') <> '0') then
      begin
         if dm.ExecutaComando(' select count(*) q from Itens_PagProtetico where orcamento = ' +
                            QueryItensPagDentistaOrcamento.asString + ' and servico = ' +
                            QueryItensPagDentistaServico.asString + ' and Quantidade_Paga > 0 ' +
                            ' and MesAno is not null ','q') = '0' then
         begin
            FmMensagem := TFmMensagem.create(self);
            FmMensagem.Memo1.Lines.Add('A T E N � � O ainda n�o foi efetuado o pagamento para o prot�tico do servi�o ' +
                                       QueryItensPagDentistaServico.asString + '. Verifique se o pagamento do dentista poder� ser mesmo realizado ');
            FmMensagem.Memo1.Lines.Add('Pressione [ESC] para sair');
            FmMensagem.ShowModal;
            FmMensagem.Free;
         end

      end
   end;
   if not QueryOrcamentosAutorizado.AsBoolean then
   begin
     Showmessage('Or�amento n�o autorizado, n�o � poss�vel realizar o pagamento desse or�amento');
     abort;
   end;

   //tacio 17/10/2020: Instru��o que vai atualizar o campo recurso de glosa para mostrar se � um recurso ou n�o
   if dm.execmd('select count(*) qt from glosaDentista where cd_orcamento = ' + QueryItensPagDentistaOrcamento.AsString + ' and incremento = ' + QueryItensPagDentistaIncremento.AsString,'qt') <> '0' then
     begin
      QueryItensPagDentistarecurso.AsBoolean:=True;
     end;

end;

procedure TFormPagDentista.BitBtnTitulosClick(Sender: TObject);
begin
     Application.CreateForm(TFormObservacoes, FormObservacoes);
     FormObservacoes.DBMemoObservacoes.ReadOnly :=  DBGridItens.ReadOnly;
     FormObservacoes.ShowModal;
     FormObservacoes.Free;
end;

procedure TFormPagDentista.BitBtnPgTotalClick(Sender: TObject);
begin
    VerificarOrcVencido;
   if MessageDlg('Deseja efetuar o Pagamento Total ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;
   pg_total  := True;
   Data_Base := dm.Date;
   DecodeDate(Data_Base, Ano, Mes, Dia);
   with QueryItensPagDentista do
      begin
         first;
         while not eof do begin
            // se tiver preenchido � pq j� foi pago.
            if (copy(QueryItensPagDentistaMesAno.asString,3,1) = '/') or (QueryItensPagDentistaStatus.AsString = 'C') then
            begin
               next;
               continue;
            end;
            edit;
            QueryItensPagDentistaQuantidade_Paga.AsInteger := QueryItensPagDentistaQuantidade.AsInteger;

            if Mes < 10 then
               QueryItensPagDentistaMesAno.asString := '0' + IntToStr(Mes) + '/' + IntToStr(Ano)
            else
               QueryItensPagDentistaMesAno.asString := IntToStr(Mes) + '/' + IntToStr(Ano);
            with QueryItensOrcamentos do
              begin
                Close;
                SQL[1] := ('where Orcamento = :Numero_Orcamento');
                SQL[2] := ('and Servico = :Codigo_Servico');
                SQL[3] := '';
                Params[0].DataType := ftInteger;
                Params[0].ParamType := ptInput;
                Params[1].DataType := ftInteger;
                Params[1].ParamType := ptInput;
                ParamByName('Numero_Orcamento').asInteger := StrToInt(EditProcura.Text);
                ParamByName('Codigo_Servico').asInteger := QueryItensPagDentistaServico.asInteger;
                Open;
              end;
            QueryItensPagDentistaValor.asCurrency := (QueryItensOrcamentosValor_Dentista.asCurrency / QueryItensOrcamentosQuantidade.asInteger) * QueryItensPagDentistaQuantidade_Paga.asInteger;

            post;
            next;
         end;
      end;

   QueryOrcamentos.Close;
   QueryOrcamentos.SQL[1] := 'where Numero = ' + EditProcura.Text;
   QueryOrcamentos.SQL[2] := '';
   QueryOrcamentos.SQL[3] := '';
   QueryOrcamentos.Open;
   QueryOrcamentos.edit;
   QueryOrcamentosStatus_Pagamento.Value := 1;
   QueryOrcamentos.post;
   MontaTotal;
end;
procedure TFormPagDentista.AtualizaStOrcamento; // se ja tiver pagotodos entao atualiza status para pago total
var aux: string;
begin
   aux := dm.execmd('select count(*) qt from Itens_PagDentista where orcamento = ' + QueryOrcamentosNumero.AsString + ' and MesAno =  '''' and status <> ''C''','qt');
   if aux  = '0' then
   begin
      if QueryOrcamentosStatus_Pagamento.Value <> 1 then
      begin
         QueryOrcamentos.edit;
         QueryOrcamentosStatus_Pagamento.Value := 1;
         QueryOrcamentos.post;
         MontaTotal;
      end;
   end
   else
   begin
      aux := dm.execmd('select count(*) qt from Itens_PagDentista where orcamento = ' + QueryOrcamentosNumero.AsString + ' and MesAno <>  '''' and status <> ''C''','qt');
      if aux  <> '0' then //existes item pago enta�o coloca status para pago parcial
      begin
         if QueryOrcamentosStatus_Pagamento.Value <> 2 then
         begin
            QueryOrcamentos.edit;
            QueryOrcamentosStatus_Pagamento.Value := 2;
            QueryOrcamentos.post;
            MontaTotal;
         end;
      end
      else
      begin
         if QueryOrcamentosStatus_Pagamento.Value <> 3 then // nao tem nenhum item pago entao coloca como tratamento
         begin
            QueryOrcamentos.edit;
            QueryOrcamentosStatus_Pagamento.Value := 3;
            QueryOrcamentos.post;
            MontaTotal;
         end;
      end;
   end;

end;

procedure TFormPagDentista.BitBtnPgParcialClick(Sender: TObject);
begin
   VerificarOrcVencido;
   MontaTotal;
   if MessageDlg('Efetuado Pagamento Parcial ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   begin
       QueryOrcamentos.Close;
       QueryOrcamentos.SQL[1] := 'where Numero = ' + EditProcura.Text;
       QueryOrcamentos.SQL[2] := '';
       QueryOrcamentos.SQL[3] := '';
       QueryOrcamentos.Open;
       QueryOrcamentos.edit;
       QueryOrcamentosStatus_Pagamento.Value := 2;
       QueryOrcamentos.post;
   end;

end;

procedure TFormPagDentista.FormShow(Sender: TObject);
begin
   BitBtnDesfazPagto.Enabled := dm.VerifPermissao('0','0','0','160');

   DBGridItens.ReadOnly := FormPagDentista.ReadOnly;
   BitBtnPgParcial.Enabled := not FormPagDentista.ReadOnly;
   BitBtnPgTotal.Enabled := BitBtnPgParcial.Enabled;
   BitBtnGlosar.Enabled := BitBtnPgParcial.Enabled;
   DBLookupComboBoxStatus.Enabled := BitBtnPgParcial.Enabled;

   if(BitBtnGlosar.Enabled) then
   begin
      BitBtnGlosar.Enabled := dm.GetParam('UGLO') = 'S';
      BitBtnGlosaTudo.Enabled := BitBtnGlosar.Enabled;

   end;

   if FormPagDentista.tag > 1 then
   begin
      BitBtnPesquisarClick(Sender);
      EditProcura.Text := IntToStr(FormPagDentista.tag);
      BitBtnPesquisar.SetFocus;
   end
end;

procedure TFormPagDentista.QueryOrcamentosBeforePost(DataSet: TDataSet);
begin
    if FormPagDentista.ReadOnly then
    begin
       ShowMessage('N�o � poss�vel realizar altera��es no modo consulta ! (QueryOrcamentos)');
       Abort;
    end;
end;

procedure TFormPagDentista.QueryStatus_PagtoBeforePost(DataSet: TDataSet);
begin
    if FormPagDentista.ReadOnly then
    begin
       ShowMessage('N�o � poss�vel realizar altera��es no modo consulta (QueryStatus_Pagto)!');
       Abort;
    end;

end;

procedure TFormPagDentista.QueryObservacoesBeforePost(DataSet: TDataSet);
begin
    if FormPagDentista.ReadOnly then
    begin
       ShowMessage('N�o � poss�vel realizar altera��es no modo consulta ! (QueryObservacoes)');
       Abort;
    end;

end;

procedure TFormPagDentista.BitBtnCancelarClick(Sender: TObject);
begin
   if QueryItensPagDentistastatus.AsString = 'N' then
   begin
      if QueryItensPagDentistaMesAno.AsSTring <> '' then
         ShowMessage('N�o � poss�vel alterar o status desse servi�o, ele j� foi pago')
      else
      begin
         QueryItensPagDentista.Edit;
         QueryItensPagDentistastatus.AsString := 'C';
         QueryItensPagDentista.Post;
         QueryItensPagDentista.Next;
      end;
   end
   else
   begin
      QueryItensPagDentista.Edit;
      QueryItensPagDentistastatus.AsString := 'N';
      QueryItensPagDentista.Post;
      QueryItensPagDentista.Next;
   end;

end;

procedure TFormPagDentista.QueryItensPagDentistaAfterScroll(
  DataSet: TDataSet);
begin
   if QueryItensPagDentistastatus.AsString = 'C' then
      BitBtnCancelar.caption := 'Ativar'
   else
      BitBtnCancelar.caption := 'Cancelar';
end;

procedure TFormPagDentista.DOQueryOrcamentosBeforePost(DataSet: TDataSet);
begin
    if FormPagDentista.ReadOnly then
    begin
       ShowMessage('N�o � poss�vel realizar altera��es no modo consulta ! (QueryOrcamentos)');
       Abort;
    end;
end;

procedure TFormPagDentista.DBGridItensDblClick(Sender: TObject);
begin
   if QueryItensPagDentistaOrcamento.isnull then
      exit;
   if dm.GetParam('UGLO') = 'N' then
     exit;
   iniciaProcessoGlosa(false);
   if FmGlosaDentista.tag = 10 then
   begin
      
      efetuandoGlosa := true;
      QueryItensPagDentista.Edit;
      QueryItensPagDentistaMesAno.AsString := '';
      QueryItensPagDentistaQuantidade_Paga.AsInteger := 0;
      QueryItensPagDentista.post;
      if(dm.execmd('SELECT count(*) qt FROM Itens_Orcamento io where not exists(select * from  glosaDentista ip where  ip.cd_Orcamento = io.Orcamento and ip.Incremento = io.Incremento)' +
                ' and io.Orcamento = ' + QueryItensPagDentistaOrcamento.AsString,'qt') = '0') then
      begin
         QueryOrcamentos.Close;
         QueryOrcamentos.SQL[1] := 'where Numero = ' + QueryItensPagDentistaOrcamento.AsString;
         QueryOrcamentos.SQL[2] := '';
         QueryOrcamentos.SQL[3] := '';
         QueryOrcamentos.Open;
         QueryOrcamentos.edit;
         QueryOrcamentosStatus_Pagamento.Value := 4;
         QueryOrcamentos.post;
         QueryItensPagDentista.Close;
         QueryItensPagDentista.open;
      end;
      efetuandoGlosa := false;
   end
   else if FmGlosaDentista.tag = 20 then // cancelou a glosa;
   begin
      QueryItensPagDentista.Edit;
      QueryItensPagDentistaQuantidade_Paga.AsInteger := QueryItensPagDentistaQuantidade.AsInteger;
      QueryItensPagDentista.Post;

   end;

   FmGlosaDentista.Free;

end;
procedure TFormPagDentista.iniciaProcessoGlosa(Glosatudo:Boolean);
begin
   FmGlosaDentista := TFmGlosaDentista.create(FormPagDentista);
   FmGlosaDentista.ADOQueryGlosa.Close;
   FmGlosaDentista.ADOQueryGlosa.Open;
   FmGlosaDentista.ADOQueryGlosaDentista.Close;
   FmGlosaDentista.ADOQueryGlosaDentista.sql[1] := QueryItensPagDentistaOrcamento.AsString;
   FmGlosaDentista.ADOQueryGlosaDentista.sql[3] := QueryItensPagDentistaIncremento.AsString;
   FmGlosaDentista.ADOQueryGlosaDentista.Open;

   if(FmGlosaDentista.ADOQueryGlosaDentista.RecordCount > 0) then
      if Application.MessageBox('Registro j� possui glosa, deseja registrar nova glosa ?','Confirma��o', MB_YESNO + MB_DEFBUTTON2) = IdNo then
      begin
         FmGlosaDentista.ShowModal;
         exit;
      end;
   FmGlosaDentista.ADOQueryGlosaDentista.Insert;
   FmGlosaDentista.ADOQueryGlosaDentista.FieldByName('Data').AsDateTime        := dm.now;
   FmGlosaDentista.ADOQueryGlosaDentista.FieldByName('nmOperador').AsString    := Apelido;
   FmGlosaDentista.ADOQueryGlosaDentista.FieldByName('cd_orcamento').AsInteger := QueryItensPagDentistaOrcamento.AsInteger;
   FmGlosaDentista.ADOQueryGlosaDentista.FieldByName('incremento').AsInteger   := QueryItensPagDentistaIncremento.AsInteger;
   FmGlosaDentista.ADOQueryGlosaDentista.FieldByName('MesAno').AsString        := QueryItensPagDentistaMesAno.AsString;
   if Glosatudo then
   begin
      FmGlosaDentista.tag := 20;
      FmGlosaDentista.btnCancelar.enabled := false;
      FmGlosaDentista.Caption := 'Glosar todos os servi�os do or�amento';
      FmGlosaDentista.btnGravar.Caption := 'Glosar Todos';
   end;
   FmGlosaDentista.ShowModal;

end;

procedure TFormPagDentista.BitBtnGlosaTudoClick(Sender: TObject);
begin
   if QueryItensPagDentistaOrcamento.isnull then
      exit;
   iniciaProcessoGlosa(true);
   if (FmGlosaDentista.tag = 10) and  (Application.MessageBox('Confirma glosar todos os servi�oes desse or�amento?','Confirma��o', MB_YESNO + MB_DEFBUTTON2) = IdYes) then
   begin
    dm.execmd('update Itens_PagDentista set MesAno = '''' , quantidade_paga = 0 where id_pagto is null and Orcamento = ' + QueryItensPagDentistaOrcamento.AsString +
               ' and mesano = ''' + FmGlosaDentista.ADOQueryGlosaDentistaMesAno.AsString + '''' +
               ' and not exists (select * from glosaDentista gd where Itens_PagDentista.orcamento = gd.cd_orcamento and Itens_PagDentista.incremento = gd.incremento and gd.cd_glosa = ' +
               FmGlosaDentista.ADOQueryGlosaDentistacd_glosa.AsString + ' and gd.MesAno = ''' + FmGlosaDentista.ADOQueryGlosaDentistaMesAno.AsString + ''')');
    dm.execmd('insert into glosaDentista (obs,cd_orcamento,incremento,cd_glosa,Mesano,data,nmOperador) ' +
               ' select ''' + FmGlosaDentista.ADOQueryGlosaDentistaobs.AsString + ''', orcamento,incremento, ' + FmGlosaDentista.ADOQueryGlosaDentistacd_glosa.AsString + ',''' +
               FmGlosaDentista.ADOQueryGlosaDentistaMesAno.AsString + ''',getdate(),''' +
               FmGlosaDentista.ADOQueryGlosaDentistanmOperador.AsString + ''' from Itens_PagDentista i where id_pagto is null and Orcamento  = ' + QueryItensPagDentistaOrcamento.AsString +
               ' and not exists (select * from glosaDentista gd where i.orcamento = gd.cd_orcamento and i.incremento = gd.incremento and gd.cd_glosa = ' +
               FmGlosaDentista.ADOQueryGlosaDentistacd_glosa.AsString + ' and gd.MesAno = ''' + FmGlosaDentista.ADOQueryGlosaDentistaMesAno.AsString + ''')');
     FmGlosaDentista.ADOQueryGlosaDentista.Cancel;
   QueryOrcamentos.Close;
   QueryOrcamentos.SQL[1] := 'where Numero = ' + QueryItensPagDentistaOrcamento.AsString;
   QueryOrcamentos.SQL[2] := '';
   QueryOrcamentos.SQL[3] := '';
   QueryOrcamentos.Open;
   QueryOrcamentos.edit;
   QueryOrcamentosStatus_Pagamento.Value := 4;
   QueryOrcamentos.post;

     QueryItensPagDentista.Close;
     QueryItensPagDentista.open;

   end;

end;

procedure TFormPagDentista.QueryItensPagDentistaNewRecord(
  DataSet: TDataSet);
begin
  if not cargaInicial then
     Abort;
end;

procedure TFormPagDentista.QueryItensPagDentistaBeforeDelete(
  DataSet: TDataSet);
begin
       if not QueryItensPagDentistaid_pagto.IsNull then
       begin
          ShowMessage('N�o � poss�vel excluir esse registro, j� foi efetivado o pagamento deste procedimento!');
          Abort;
       end;
end;

procedure TFormPagDentista.BitBtnDesfazPagtoClick(Sender: TObject);
begin
   if (QueryItensPagDentista.RecordCount > 0) and (QueryItensPagDentistaMesAno.AsString = '') then
   begin
      showMessage('Registro n�o foi pago ainda!');
       exit;
   end;
   efetuandoGlosa := true;
   QueryItensPagDentista.Edit;
   QueryItensPagDentistaQuantidade_Paga.AsInteger := 0;
   QueryItensPagDentistaMesAno.AsString := '';
   QueryItensPagDentista.post;
   efetuandoGlosa := false;
end;

procedure TFormPagDentista.DBGridItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if dm.execmd('select count(*) qt from glosaDentista where cd_orcamento = ' + QueryItensPagDentistaOrcamento.AsString + ' and incremento = ' + QueryItensPagDentistaIncremento.AsString,'qt') <> '0' then
     DBGridItens.Canvas.Brush.Color:=clRed;

  DBGridItens.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormPagDentista.IndicarprocedimentocomoRecursodeGlosa1Click(
  Sender: TObject);
begin
  if QueryItensPagDentista.Active=True then
    if QueryItensPagDentista.RecordCount>0 then
      if QueryItensPagDentistaMesAno.AsString<>'' then
        begin
          QueryItensPagDentista.Edit;
          if QueryItensPagDentistarecurso.AsBoolean=True then
            QueryItensPagDentistarecurso.AsBoolean:=False
          else
            QueryItensPagDentistarecurso.AsBoolean:=True;
          QueryItensPagDentista.Post;
        end
      else
        showmessage('Primeiro efetue o pagamento do procedimento');
end;

end.

