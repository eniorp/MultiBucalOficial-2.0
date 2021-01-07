unit Prestacoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, Db, DBTables, DBCtrls, StdCtrls, ADODB;

type
  TFormPrestacoes = class(TForm)
    Panel1: TPanel;
    QueryPrestacoes: TQuery;
    DataSourcePrestacoes: TDataSource;
    QueryPrestacoesOrcamento: TIntegerField;
    QueryPrestacoesParcela: TSmallintField;
    QueryPrestacoesVencimento: TDateTimeField;
    QueryPrestacoesValor: TFloatField;
    DBGridPrestacoes: TDBGrid;
    QueryPrestacoesNro_Cheque: TStringField;
    QueryPrestacoesBanco_Cheque: TStringField;
    QueryPrestacoesNro_ContaCheque: TStringField;
    QueryPrestacoesAgencia_Cheque: TStringField;
    QueryPrestacoesTipo_Pagamento: TIntegerField;
    QueryTiposPagamento: TQuery;
    QueryTiposPagamentoId_TipoPgto: TIntegerField;
    QueryTiposPagamentoDescricao_TipoPgto: TStringField;
    QueryPrestacoesDescricaoPagamento: TStringField;
    Panel2: TPanel;
    DBNavigatorPrestacoes: TDBNavigator;
    Panel3: TPanel;
    Button1: TButton;
    QueryPrestacoesper_ref_des_folha: TStringField;
    sp_ajustaVenctoValorPrestacoes: TADOStoredProc;
    QueryPrestacoesStatus_Cheque: TStringField;
    QueryPrestacoestipoCobranca: TIntegerField;
    QueryTipoCobranca: TQuery;
    QueryPrestacoesDescTipoCobranca: TStringField;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QueryPrestacoesAfterPost(DataSet: TDataSet);
    procedure DBGridPrestacoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryPrestacoesAfterInsert(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure QueryPrestacoesBeforePost(DataSet: TDataSet);
    procedure QueryPrestacoesBeforeEdit(DataSet: TDataSet);
    procedure Button2Click(Sender: TObject);
  private
     tpPagto : integer;
     dtPagto : TDatetime;
     function validaDescEmfolhaEmpresa(TpPagto: integer): boolean;

  public
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
  FormPrestacoes: TFormPrestacoes;
  Ano, Mes, Dia : Word;
  Data : TDate;

implementation

{$R *.DFM}

uses Orcamentos, Unit1, DadosBancarios, udm, senha;

procedure TFormPrestacoes.FormCreate(Sender: TObject);
var I : Short;
Valor : Real;
begin
{    if Orcamentos.FormOrcamentos.QueryOrcamentosTotal_Desconto.AsString = '0' then
      begin
//        showmessage('Orçamento com valor total zerado não gera parcelas !');
        exit;
      end;}

     Caption := 'Prestações do Orçamento Nº ' + Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asString;
     Valor := 0;
     with QueryPrestacoes do
       begin
         Close;
         ParamByName('Numero_Orcamento').asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asInteger;
         Open;
         if RecordCount > 0 then exit;
       end;

     with Orcamentos.FormOrcamentos.QueryOrcamentos do
       begin
         Data := Orcamentos.FormOrcamentos.QueryOrcamentosData.asDateTime;
         DecodeDate(Data, Ano, Mes, Dia);
         if dia = 31 then
            dia := 30;

         for I := 1 to Orcamentos.FormOrcamentos.QueryOrcamentosNumero_Parcelas.asInteger do
            with QueryPrestacoes do
               begin
                 Insert;
                 QueryPrestacoesOrcamento.asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asInteger;
                 QueryPrestacoesParcela.asInteger := I;

                 if Mes > 12 then
                    begin
                      Mes := 1;
                      Ano := Ano + 1;
                    end;

                 if Mes = 2 then // Verificar posteriormente Ano Bissexto
                   if Dia = 29 then
                      QueryPrestacoesVencimento.asDateTime := EncodeDate(Ano, Mes, (28))
                   else
                      QueryPrestacoesVencimento.asDateTime := EncodeDate(Ano, Mes, Dia);

                 if Mes <> 2 then
                    QueryPrestacoesVencimento.asDateTime := EncodeDate(Ano, Mes, Dia);

                 Mes := Mes + 1;
                 if I <> Orcamentos.FormOrcamentos.QueryOrcamentosNumero_Parcelas.asInteger then
                    begin
                       QueryPrestacoesValor.asCurrency :=
                         int(Orcamentos.FormOrcamentos.QueryOrcamentosTotal_Desconto.asCurrency / Orcamentos.FormOrcamentos.QueryOrcamentosNumero_Parcelas.asInteger * 100) / 100;
                       Valor := Valor + (Orcamentos.FormOrcamentos.QueryOrcamentosTotal_Desconto.asCurrency / Orcamentos.FormOrcamentos.QueryOrcamentosNumero_Parcelas.asInteger);
                    end
                 else
                    QueryPrestacoesValor.asCurrency := Orcamentos.FormOrcamentos.QueryOrcamentosTotal_Desconto.asCurrency - (int(Valor * 100) / 100) ;
                 QueryPrestacoesTipo_Pagamento.AsInteger := 1;

                 try
                   Post;
                 except
                   begin
                     ShowMessage('Erro de Gravação da Tabela de Prestações !!!');
                     Cancel;
                   end;
                 end;
               end;
       end;
       QueryTipoCobranca.open;
end;

procedure TFormPrestacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QueryPrestacoes.Close;
end;

procedure TFormPrestacoes.QueryPrestacoesAfterPost(DataSet: TDataSet);
var Parcela : Integer;
begin
     Parcela := QueryPrestacoesParcela.asInteger;
     with QueryPrestacoes do
       begin
         Close;
         Open;
         Locate('Parcela', Parcela, []);
       end;  
end;

{ TIEInplaceEdit }

procedure TIEInplaceEdit.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
end;

procedure TFormPrestacoes.DBGridPrestacoesKeyDown(Sender: TObject;
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
            if QueryPrestacoes.State in [dsInsert, dsEdit] then
               if QueryPrestacoesParcela.asString = '' then
                  QueryPrestacoes.Cancel;
             Close;
          end;
     end;
end;

procedure TFormPrestacoes.QueryPrestacoesAfterInsert(DataSet: TDataSet);
begin
     QueryPrestacoesOrcamento.asInteger := Orcamentos.FormOrcamentos.QueryOrcamentosNumero.asInteger;
end;

procedure TFormPrestacoes.Button1Click(Sender: TObject);
var cdPagtoDesFolha : integer;
var DataCorte : String;
begin


   FmDadosBancario := TFmDadosBancario.create(self);
   QueryPrestacoes.First;
   if QueryPrestacoesTipo_Pagamento.AsInteger in [1,2,5,14,24] then
   begin
      FmDadosBancario.EditVrVista.Text := QueryPrestacoesValor.AsString;
      FmDadosBancario.EditParcela.Text := '2';
   end;
   FmDadosBancario.showModal;
   if  FmDadosBancario.tag = 10 then
   begin
        if FmDadosBancario.DBLookupComboBox1.Text = '' then
        begin
           ShowMessage('Informe o tipo de pagamento');
           exit;
        end;
        if not validaDescEmfolhaEmpresa(FmDadosBancario.ADOQueryTpPagto.fieldByName('Id_TipoPgto').AsInteger) then
        begin
            ShowMessage('Operação cancelada, Opção débito em folha somente pode ser utilizado para contratantes pessoa Jurídica');
            exit;
        end;

        // quando for desconto em folha muda a data de vencimento  para a data de vencimento da empresa

        cdPagtoDesFolha := StrToInt(dm.getParam('CPDEF'));

        if cdPagtoDesFolha = FmDadosBancario.ADOQueryTpPagto.fieldByName('Id_TipoPgto').AsInteger then
        begin
           DataCorte := dm.getParam('DIACF');
           dm.execmd('set dateformat dmy update Prestacoes set vencimento = dateadd(day,-1,''' + DataCorte + ''' + substring(convert(char(10),vencimento,103),3,8))  where  orcamento = ' + QueryPrestacoesOrcamento.AsString);
        end;

        if FmDadosBancario.ADOQueryTpPagto.fieldByName('Id_TipoPgto').AsInteger = 2 then  // quando for cheque, coloca a 1ª parc como cheque e as restatnes como cheque pré
        begin
           dm.execmd('update Prestacoes set tipocobranca = ' + FmDadosBancario.ADOQuery1.fieldByName('codigo').AsString + ', tipo_pagamento = 2 , nro_cheque = ' + FmDadosBancario.Edit4.Text  +                ', banco_cheque = ''' + FmDadosBancario.edit1.text + ''',agencia_cheque = ''' + FmDadosBancario.edit2.text + ''',nro_contacheque = ''' + FmDadosBancario.edit3.text + ''' where parcela = 1 and orcamento = ' + QueryPrestacoesOrcamento.AsString);
           dm.execmd('update Prestacoes set tipocobranca = ' + FmDadosBancario.ADOQuery1.fieldByName('codigo').AsString + ', tipo_pagamento = 4 , nro_cheque = ' + FmDadosBancario.Edit4.Text + ' + (parcela - 1),  banco_cheque = ''' + FmDadosBancario.edit1.text + ''',agencia_cheque = ''' + FmDadosBancario.edit2.text + ''',nro_contacheque = ''' + FmDadosBancario.edit3.text + '''  where parcela > 1 and  orcamento = ' + QueryPrestacoesOrcamento.AsString);

        end
        else
           dm.execmd('update Prestacoes set tipocobranca = ' + FmDadosBancario.ADOQuery1.fieldByName('codigo').AsString + ', tipo_pagamento = ' + FmDadosBancario.ADOQueryTpPagto.fieldByName('Id_TipoPgto').AsString + ' where  orcamento = ' + QueryPrestacoesOrcamento.AsString);

        if (FmDadosBancario.MaskEditIniVencto.Text <> '  /  /    ') and (FmDadosBancario.EditParcela.Text <> '') then
        begin
           sp_ajustaVenctoValorPrestacoes.Parameters[1].Value := QueryPrestacoesOrcamento.AsString;
           sp_ajustaVenctoValorPrestacoes.Parameters[2].Value := FmDadosBancario.EditParcela.Text;
           sp_ajustaVenctoValorPrestacoes.Parameters[3].Value := FmDadosBancario.MaskEditIniVencto.Text;
           sp_ajustaVenctoValorPrestacoes.Parameters[4].Value := FmDadosBancario.EditVrVista.Text;
           sp_ajustaVenctoValorPrestacoes.Parameters[5].Value := QueryPrestacoesTipo_Pagamento.AsString;
           sp_ajustaVenctoValorPrestacoes.ExecProc;
           QueryPrestacoes.Close;
           QueryPrestacoes.Open;
        end;


        QueryPrestacoes.close;
        QueryPrestacoes.Open;
        //testar isso
     end;
   FmDadosBancario.free;
end;

procedure TFormPrestacoes.QueryPrestacoesBeforePost(DataSet: TDataSet);
var cdDescFolha : integer;
begin

   cdDescFolha := StrToInt(dm.getParam('CPDEF'));
  if QueryPrestacoesTipo_Pagamento.Asinteger = cdDescFolha then
  begin
     if (tpPagto <> QueryPrestacoesTipo_Pagamento.AsInteger) then
     begin
        ShowMessage('ATENÇÂO, para selecionar a forma de pagamento "DESCONTO EM FOLHA", escolha a opção "DADOS PAGTO" abaixo');
        abort;
     end;

     if dtPagto <> QueryPrestacoesVencimento.AsDateTime  then
     begin
        ShowMessage('ATENÇÂO, você não pode alterar vencimentos de parcelas "DESCONTO EM FOLHA"!');
        abort;
     end;
  end;
  if not validaDescEmfolhaEmpresa(QueryPrestacoesTipo_Pagamento.AsInteger) then
  begin
     ShowMessage('Operação cancelada, Opção débito em folha somente pode ser utilizado para contratantes pessoa Jurídica');
     QueryPrestacoes.Cancel;
     abort;
  end;

end;

function TFormPrestacoes.validaDescEmfolhaEmpresa(TpPagto: integer): boolean;

var cdPagtoDesFolha : integer;

begin
    cdPagtoDesFolha := StrToInt(dm.getParam('CPDEF'));
    result := true;
    if cdPagtoDesFolha = TpPagto then
    begin
       if dm.execmd('select empresa from contratante c, orcamento o where o.contratante_titular = c.codigo and o.numero = ' + QueryPrestacoesOrcamento.AsString,'empresa') = 'False' then
          result := false;
    end;

end;
procedure TFormPrestacoes.QueryPrestacoesBeforeEdit(DataSet: TDataSet);
begin
   tpPagto := QueryPrestacoesTipo_Pagamento.AsInteger;
   dtPagto := QueryPrestacoesVencimento.AsDateTime;
end;

procedure TFormPrestacoes.Button2Click(Sender: TObject);
begin

    if  Application.MessageBox('Confirma baixa de todos os títulos desse orçamento?','Contatos agendados',MB_YesNo + MB_DEFBUTTON2) = IdYes then
    begin
       if QueryPrestacoes.State <> dsBrowse then
          QueryPrestacoes.post;
//       sp_baixaTitulosOrcamento.Parameters[1].Value := QueryPrestacoesOrcamento.AsString;
//       sp_baixaTitulosOrcamento.Parameters[2].Value := Senha.Codigo_Operador;
//       sp_baixaTitulosOrcamento.Parameters[3].Value := 0; // nr da Parcela ainda nao implementado caso seja necessario baixar apenas uma parcela
//       sp_baixaTitulosOrcamento.ExecProc;
//       ShowMessage('Baixa realizada com sucesso');
    end;
end;

end.
