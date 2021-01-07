unit BoletoBancoob;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, DB, SqlExpr, Mask,enio, DBTables,
  uFreeBoleto, uFreeBoletoImage, DBCtrls,biblio;

type
  TFmBoletoBancoob = class(TForm)
    Label8: TLabel;
    ComboBoxTipoCobranca: TComboBox;
    LabelContratante: TLabel;
    EditCodigo: TEdit;
    BitBtnPesquisar: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    MaskEditDtIni: TMaskEdit;
    Label3: TLabel;
    MaskEditDtFim: TMaskEdit;
    Button2: TButton;
    BitBtnSair: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TQuery;
    chkSomenteEmpresas: TCheckBox;
    btnSalvar: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtnPesquisarClick(Sender: TObject);
    procedure EditCodigoExit(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
     Vagencia,Vconta,VNmCedente,Msg1,Msg2 : string;
     VrCobranca : Real;
     listaDeBoletos : TstringList;
     //procedure Clonaboleto;
     //procedure AlimentaDados;
     //procedure CloneProperties(SourceComp, DestComp: TObject);
  public
    VBanco  : string[10];
  end;

var
  FmBoletoBancoob: TFmBoletoBancoob;

implementation

uses udm,TypInfo, PesquisaUsuario, PesquisaContratante, senha;

{$R *.dfm}

procedure TFmBoletoBancoob.Button1Click(Sender: TObject);
var EnderecoAux, BairroAux, CepAux, EstadoAux, Cidadeaux : string;
begin


   listaDeBoletos.Clear;
   if ((DBLookupComboBox1.text = '') and DBLookupComboBox1.visible) or (ComboBoxTipoCobranca.text = '') or (MaskEditDtIni.text = '  /  /    ') or (MaskEditDtIni.text = '  /  /    ') then
   begin
      ShowMessage('É necessário preencher todos os campos !');
      exit;
   end;
   if  (Query1.FieldByName('banco').AsInteger <> 104) and
        (Query1.FieldByName('banco').AsInteger <>  756) then
   begin
     ShowMessage('Impressão elaborada apenas para o Banco BANCOOB e CEF');
     exit;
   end;
   if Application.MessageBox('Valor do boleto','Cobra valor do boleto?',MB_YesNo  ) = idNo then
      VrCobranca := 0;
   
   if FmBoletoBancoob.Tag <> 10 then
      VBanco := dm.QueryContasBanco.FieldByname('banco').AsString;

   VAgencia := dm.execmd('select * from Contas_Banco where Banco = ' + VBanco + ' and Boleto = 1','agencia');

   if VBanco = '104' then
      Vconta   := dm.QueryGlobal.FieldByName('convenio').AsString
   else
      Vconta   := dm.QueryGlobal.FieldByName('Numero_Conta').AsString;

   Msg1     := dm.QueryGlobal.FieldByName('msg1').AsString;
   Msg1     := Msg1 + '. ' + dm.QueryGlobal.FieldByName('msg2').AsString;
   if senha.cod_Empresa = 2 then // mensgem somente para seato
      Msg2     := 'reajuste anual de 9,65% autorizado pela ANS conforme aniversário do contrato'
   else
     Msg2     := dm.QueryGlobal.FieldByName('msg2').AsString;
   VNmCedente := dm.execmd('select  razao_social  r from empresa','r');

   Dm.QueryTitulos.Close;
   Dm.QueryTitulos.sql[3] := '''' + FormatData(MaskEditDtIni.Text,'MDY') + ''' AND ''' + FormatData(MaskEditDtFim.Text,'MDY') + '''';
   if EditCodigo.text <> '' then
      Dm.QueryTitulos.sql[3] := Dm.QueryTitulos.sql[3]  + ' and c.codigo = ' + EditCodigo.text;

   if chkSomenteEmpresas.Checked then
      Dm.QueryTitulos.sql[3] := Dm.QueryTitulos.sql[3]  + ' and c.empresa = 1 ';

   case ComboBoxTipoCobranca.ItemIndex of
      0 : Dm.QueryTitulos.sql[5] := '''T''';
      1 : Dm.QueryTitulos.sql[5] := '''M''';
      2 : Dm.QueryTitulos.sql[5] := '''O''';
      3 : Dm.QueryTitulos.sql[5] := '''A''';
   end;
   //memo1.lines.add(Dm.QueryTitulos.text);
   Dm.QueryTitulos.open;
   if Dm.QueryTitulos.bof and Dm.QueryTitulos.eof then
   begin
      ShowMessage('Nenhum registro com os parâmetros informado !');
      exit;
   end;
   if Application.MessageBox(Pchar('Confirma ageração dos boletos?(' + IntToStr(Dm.QueryTitulos.recordCount) + ')'),'ATENÇÃO',MB_YesNo + MB_DEFBUTTON2) = IdNo then
      Exit;
   While not Dm.QueryTitulos.eof do
   begin

      listaDeBoletos.Add(replace(enio.replace(copy(Dm.QueryTitulos.fieldByName('nome').AsString,1,20),'\',''),'/','') + '_' + biblio.Lpad(Dm.QueryTitulos.fieldByName('cdContratante').AsString,10,'0') + '_' + copy(MaskEditDtIni.Text,4,2) + '_' + copy(MaskEditDtIni.Text,7,4) + '.jpg');
      dm.pGeraSeqFaturamento.UnPrepare;
      dm.pGeraSeqFaturamento.Prepare;
      dm.pGeraSeqFaturamento.ParamByName('@tit').AsInteger   := Dm.QueryTitulos.FieldByName('numero_titulo').AsInteger;
      dm.pGeraSeqFaturamento.ParamByName('@Desd').AsString   := Dm.QueryTitulos.FieldByName('desdobramento').AsString;
      dm.pGeraSeqFaturamento.ParamByName('@vencto').AsString := Dm.QueryTitulos.FieldByName('data_vencimento').AsString;
      dm.pGeraSeqFaturamento.ExecProc;
      //AlimentaDados;

      if Dm.QueryTitulos.FieldByName('tipo_correspondencia').AsString = 'Residêncial' then
      begin
        EnderecoAux    := Dm.QueryTitulos.FieldByName('endereco_residencial').AsString + ' ' +
                                      Dm.QueryTitulos.FieldByName('Numero_Res').AsString + ' ' +
                                      Dm.QueryTitulos.FieldByName('Complemento_Res').AsString;

        BairroAux      := Dm.QueryTitulos.FieldByName('bairro_residencial').AsString;
        CepAux         := Dm.QueryTitulos.FieldByName('cep_residencial').AsString;
        EstadoAux      := Dm.QueryTitulos.FieldByName('estado_residencial').AsString;
        CidadeAux      := Dm.QueryTitulos.FieldByName('cidade_residencial').AsString;
      end
      else
      begin
        EnderecoAux   := Dm.QueryTitulos.FieldByName('endereco_comercial').AsString + ' ' +
                                     Dm.QueryTitulos.FieldByName('Numero_com').AsString + ' ' +
                                      Dm.QueryTitulos.FieldByName('Complemento_com').AsString;

        BairroAux     := Dm.QueryTitulos.FieldByName('bairro_comercial').AsString;
        CepAux        := Dm.QueryTitulos.FieldByName('cep_comercial').AsString;
        EstadoAux     := Dm.QueryTitulos.FieldByName('estado_comercial').AsString;
        CidadeAux     := Dm.QueryTitulos.FieldByName('cidade_comercial').AsString;
     end;


      dm.AlimentaDados(VBanco,Vagencia,Vconta,VNmCedente,Msg1,Msg2,
                       Dm.QueryTitulos.FieldByName('Numero_Titulo').AsString,
                       dm.pGeraSeqFaturamento.ParamByName('@seq').AsString,
                       Dm.QueryTitulos.FieldByName('nome').AsString,
                       EnderecoAux,
                       BairroAux,
                       CepAux,
                       EstadoAux,
                       Cidadeaux,
                       Dm.QueryTitulos.FieldByName('cgc_cpf').AsString,
                       Dm.QueryTitulos.FieldByName('Data_Emissao').AsDateTime,
                       Dm.QueryTitulos.FieldByName('data_vencimento').AsDateTime,
                       Dm.QueryTitulos.FieldByName('valor').AsFloat,
                       VrCobranca);


      dm.Clonaboleto;
      Dm.QueryTitulos.next;
   end;
   ShowMessage('Boletos gerado com sucesso !');
end;
{
procedure TfmBoletoBancoob.Clonaboleto;
var CloneBoleto:TFreeBoleto;
begin
   CloneBoleto := TFreeBoleto.create(nil);
   CloneProperties(FreeBoleto,CloneBoleto);
   FreeBoletoImagem.ListaBoletos.Add(CloneBoleto);
//   CloneBoleto.free;
end;

procedure TFmBoletoBancoob.AlimentaDados;
begin
  FreeBoleto.LimparTudo;
  FreeBoleto.Cedente.CodigoBanco   := VBanco;
  FreeBoleto.LocalPagamento := dm.GetParam('LCP756');// LCP756 Local Pagto banco 756
  FreeBoleto.Cedente.Agencia       := VAgencia;
  FreeBoleto.Cedente.CodigoCedente := VConta;
  FreeBoleto.Cedente.Nome          := VNmCedente;
  FreeBoleto.Moeda                 := '9';
  FreeBoleto.Carteira := '1';
  FreeBoleto.Instrucoes.Add(Msg1);
  FreeBoleto.Instrucoes.Add(Msg2);

  FreeBoleto.DataDocumento         := Trunc(QueryTitulos.FieldByName('Data_Emissao').AsDateTime);
  FreeBoleto.Documento             := QueryTitulos.FieldByName('Numero_Titulo').AsString;
  FreeBoleto.Vencimento            := QueryTitulos.FieldByName('data_vencimento').AsDateTime;

  FreeBoleto.Valor                 := QueryTitulos.FieldByName('valor').AsFloat + VrCobranca;
  if FreeBoleto.Cedente.CodigoBanco = '104' then
     FreeBoleto.NossoNumero := FreeBoleto.Documento
  else
  FreeBoleto.NossoNumero           := pGeraSeqFaturamento.ParamByName('@seq').AsString;
  FreeBoleto.Cedente.ContaCorrente := VConta;
  FreeBoleto.sacado.Nome           := QueryTitulos.FieldByName('nome').AsString;
  if QueryTitulos.FieldByName('tipo_correspondencia').AsString = 'Residêncial' then
  begin
     FreeBoleto.sacado.Endereco    := QueryTitulos.FieldByName('endereco_residencial').AsString + ' ' +
                                      QueryTitulos.FieldByName('Numero_Res').AsString + ' ' +
                                      QueryTitulos.FieldByName('Complemento_Res').AsString;

     FreeBoleto.sacado.Bairro      := QueryTitulos.FieldByName('bairro_residencial').AsString;
     FreeBoleto.sacado.Cep         := QueryTitulos.FieldByName('cep_residencial').AsString;
     FreeBoleto.sacado.Estado      := QueryTitulos.FieldByName('estado_residencial').AsString;
     FreeBoleto.sacado.Cidade      := QueryTitulos.FieldByName('cidade_residencial').AsString;
  end
  else
  begin
     FreeBoleto.sacado.Endereco   := QueryTitulos.FieldByName('endereco_comercial').AsString + ' ' +
                                     QueryTitulos.FieldByName('Numero_com').AsString + ' ' +
                                      QueryTitulos.FieldByName('Complemento_com').AsString;

     FreeBoleto.sacado.Bairro     := QueryTitulos.FieldByName('bairro_comercial').AsString;
     FreeBoleto.sacado.Cep        := QueryTitulos.FieldByName('cep_comercial').AsString;
     FreeBoleto.sacado.Estado     := QueryTitulos.FieldByName('estado_comercial').AsString;
     FreeBoleto.sacado.Cidade     := QueryTitulos.FieldByName('cidade_comercial').AsString;
  end;
  FreeBoleto.sacado.CNPJ_CPF      := QueryTitulos.FieldByName('cgc_cpf').AsString;
  FreeBoleto.preparar;
end;



procedure TFmBoletoBancoob.CloneProperties(SourceComp, DestComp: TObject);
var
  Propinfo: PPropInfo;
  Properties: PPropList;
  FCount: Integer;
  FSize: Integer;
  i: Integer;
  PropName: String;
  SourcePropObject: TObject;
  DestPropObject: TObject;
begin
  FCount := GetPropList(SourceComp.ClassInfo, tkAny, nil);
  FSize := FCount * SizeOf(Pointer);
  GetMem(Properties, FSize);
  GetPropList(SourceComp.ClassInfo, tkAny, Properties);
  for i := 0 to FCount-1 do
  begin
    PropName := Properties^[i].Name;
    PropInfo := GetPropInfo(DestComp.ClassInfo, PropName);
    if (PropInfo = nil) or (UpperCase(PropName) = 'NAME') then
      Continue;
    case PropType(SourceComp, PropName) of
      tkInteger,
      tkWChar,
      tkSet,
      tkChar        : SetOrdProp(DestComp,PropName,GetOrdProp(SourceComp,PropName));
      tkString,
      tkLString,
      tkWString     : SetStrProp(DestComp,PropName,GetStrProp(SourceComp,PropName));
      tkEnumeration : SetEnumProp(DestComp,PropName,GetEnumProp(SourceComp,PropName));
      tkFloat       : SetFloatProp(DestComp,PropName,GetFloatProp(SourceComp,PropName));
      tkClass       : begin
                        SourcePropObject := GetObjectProp(SourceComp,PropName);
                        DestPropObject := GetObjectProp(DestComp,PropName);
                        if (SourcePropObject<>nil) and (DestPropObject<>nil)
                        and (SourcePropObject.ClassType.ClassParent.ClassName='TPersistent') then
                          CloneProperties(SourcePropObject,DestPropObject)
                        else
                          SetObjectProp(DestComp,PropName,GetObjectProp(SourceComp,PropName));
                      end;
    end;
  end;
  if Properties <> nil then
    FreeMem(Properties, FSize);
end;
 }

 procedure TFmBoletoBancoob.FormShow(Sender: TObject);
begin
   ShortDateFormat := 'dd/MM/yyyy';
   ComboBoxTipoCobranca.Enabled := tag <> 10;
   MaskEditDtIni.Enabled := ComboBoxTipoCobranca.Enabled;
   MaskEditDtFim.Enabled := ComboBoxTipoCobranca.Enabled;
   EditCodigo.Enabled := ComboBoxTipoCobranca.Enabled;
   Edit1.Enabled := ComboBoxTipoCobranca.Enabled;
   BitBtnPesquisar.Enabled := ComboBoxTipoCobranca.Enabled;
   Label4.visible :=  ComboBoxTipoCobranca.Enabled;
   DBLookupComboBox1.visible := Label4.visible;
   Query1.open;
   dm.QueryContasBanco.open;
   if Tag <> 10 then
      Dm.QueryTitulos.SQL[6] := ' ';

   VrCobranca := StrtoFloat(dm.execmd('select valor_cobranca v from preferencia','v'));
   listaDeBoletos := TStringList.create;
end;

procedure TFmBoletoBancoob.Button2Click(Sender: TObject);
begin
  dm.FreeBoletoImagem.ShowPreview;


end;


procedure TFmBoletoBancoob.BitBtnPesquisarClick(Sender: TObject);
begin
   case ComboBoxTipoCobranca.ItemIndex of
      0,2 : begin
              Application.CreateForm(TFormPesquisaUsuarios, FormPesquisaUsuarios);
              FormPesquisaUsuarios.ShowModal;
              EditCodigo.Text := PesquisaUsuario.FormPesquisaUsuarios.QueryUsuariosCodigo_Completo.asString;
              FormPesquisaUsuarios.Free;
            end;
      1   : begin
              Application.CreateForm(TFormPesquisaContratante, FormPesquisaContratante);
              FormPesquisaContratante.ShowModal;
              EditCodigo.Text := PesquisaContratante.FormPesquisaContratante.QueryContratanteCodigo.asString;

              FormPesquisaContratante.Free;
          end;
   end;

end;

procedure TFmBoletoBancoob.EditCodigoExit(Sender: TObject);
begin
   Edit1.text := dm.execmd('select nome from contratante where codigo = ''' + EditCodigo.text + '''','nome');
end;

procedure TFmBoletoBancoob.btnSalvarClick(Sender: TObject);
var dirSalvaBoleto : string;
var i : integer;
begin
  if listaDeBoletos.Count = 0 then
  begin
     ShowMessage('Nenhum boleto gerado para salvar');
     exit;
  end;
  btnSalvar.enabled := false;
  dirSalvaBoleto := dm.GetParam('DSBE');
  ShowMessage('os arquivos de boletos serão salvos em ' + dirSalvaBoleto + '(conforme parametro DSBE)');
  for i:= 0 to listaDeBoletos.Count - 1 do
  begin
     dm.FreeBoletoImagem.SaveBoletoImagem(dirSalvaBoleto + listaDeBoletos.Strings[i],i);
  end;

  ShowMessage('Arquivos de boletos salvos com sucesso em ' +   dirSalvaBoleto);
  btnSalvar.enabled := true;
end;


end.
