unit RetornoCnab240;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Padrao, Db, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons,FileCtrl,
  ComCtrls,enio, ADODB;

type
  TFmRetornoCnab = class(TFmPadrao)
    OpenDialog1: TOpenDialog;
    EditArq: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    QueryRetornoCNAB: TQuery;
    QueryRetornoCNABnumero_titulo: TIntegerField;
    QueryRetornoCNABvr_acrescimo: TFloatField;
    QueryRetornoCNABvr_desconto: TFloatField;
    QueryRetornoCNABvr_abatimento: TFloatField;
    QueryRetornoCNABvr_pago: TFloatField;
    QueryRetornoCNABvr_liquido: TFloatField;
    QueryRetornoCNABdt_pagto: TDateTimeField;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    BitBtn2: TBitBtn;
    spBaixaCnab: TStoredProc;
    QueryRetornoCNABindice: TSmallintField;
    QueryRetornoCNABflag: TBooleanField;
    QueryRetornoCNABobs: TStringField;
    QueryRetornoCNABData: TDateTimeField;
    BitBtn3: TBitBtn;
    QueryRetornoCNABcodigo: TIntegerField;
    QueryRetornoCNABContratante: TStringField;
    BitBtn4: TBitBtn;
    RichEdit1: TRichEdit;
    QueryRetornoCNABdesdobramento: TStringField;
    BitBtn5: TBitBtn;
    QueryRetornoCNABcd_retorno: TSmallintField;
    ADOQueryMotivoCNAB: TADOQuery;
    DataSource2: TDataSource;
    QueryRetornoCNABdsMotivoCNAB: TStringField;
    QueryRetornoCNABcd_liquidacao: TStringField;
    Memo1: TMemo;
    QueryRetornoCNABnrDocumento: TStringField;
    QueryRetornoCNABsacado: TStringField;
    Button1: TButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn4Click(Sender: TObject);
    procedure RichEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
     linha : String;
     Arq : TextFile;
     VNrIndice : string[6];

     function PValidaIntegCNAB240: Boolean;
     function getOcorrencia(cdMotivo : string):string;
     procedure CancelaOperacao;
  public
    { Public declarations }
  end;

var
  FmRetornoCnab: TFmRetornoCnab;

implementation

uses udm, Mensagem, Senha, TitBaixadosDifOrcMen, tacio;

{$R *.DFM}

procedure TFmRetornoCnab.BitBtn2Click(Sender: TObject);
var

    VNrTitulo : string[17];
    NrLinha : integer;
    VCdLiquid : string[10];
    nrBanco : integer;
    aux,ocorrencias,nrDocumentoAux,sacadoAux : string;


begin
  inherited;
   ocorrencias := '';
   if not OpenDialog1.execute then
     exit;
   EditArq.Text := OpenDialog1.FileName;
   if not PValidaIntegCNAB240 then
     exit;
   AssignFile(Arq,EditArq.Text);
   Reset(Arq);
   Readln(Arq,linha);
   if (Copy(linha,8,1)   <> '0') or // indica Header do arquivo.
      (Copy(linha,143,1) <> '2') then // indica que � arquivo de retorno.
   begin
      ShowMessage('ATEN��O !!! Opera��o cancelada, este arquivo n�o � um arquivo de retorno ou n�o � um arquivo no padr�o CNAB 240');
      CloseFile(Arq);
      exit;
   end;

   Readln(Arq,linha);

   if (copy(linha,8,1) <> '1') or //indica que � um registro header de lote
      (copy(linha,9,1) <> 'T') then // indica retorno
   begin
      ShowMessage('ATEN��O !!! Opera��o cancelada, este arquivo n�o � um arquivo de retorno ou n�o � um arquivo no padr�o CNAB 240');
      CloseFile(Arq);
      exit;
   end;

   Edit1.text := dm.ExecutaComando(' select banco +  '' - '' + nome_banco a from contas_banco where banco = ''' + copy(linha,1,3) + '''','a');

   Query1.Close;
   Query1.Open;
   NrLinha := 2;
   FmMensagem := TFmMensagem.create(self);
   VNrIndice := dm.ExecutaComando('select isnull(max(indice) + 1,0) a from RetornoCNAB','a');
   dm.BeginTran;
   While not Eof(arq) do
   begin
      Readln(Arq,linha);
      inc(NrLinha);
      if (copy(linha,08,1) =  '3') and // sig registro 3
         (copy(linha,14,1) =  'T') then // seg segmento T
      begin
         //if copy(linha,16,2) = '06' then // significa liquida��o
         //begin
            nrDocumentoAux := Copy(linha,59,15);
            sacadoAux      := Copy(linha,149,40);

            nrBanco := StrToInt(copy(linha,1,3));
            if copy(linha,1,3) = '756' then
            begin
               VNrTitulo := copy(linha,038,10);
               //if StrToInt(copy(VNrTitulo,1,9)) < 2199 then // at� o n�mero 2199 estava gerando sem o digito, entao procura na base sem o digito, apos esse numero gerou com d�gito.
                 // VNrTitulo := copy(VNrTitulo,1,9);
               aux := dm.execmd('select desdobramento + cast(numero_titulo as varchar(15)) n from faturamento where nnBoleto = ' + VNrTitulo,'n');
               if aux = '' then
                 aux := '99999999';
               VNrTitulo := copy(aux,2,15);
               VCdLiquid := Trim(Copy(linha,214,10));
               if VCdLiquid = '' then
                 VCdLiquid := '0';
            end
            else
            begin
               VNrTitulo := copy(linha,40,17);
               VCdLiquid := Copy(linha,214,02);
            end;
            ocorrencias := Ocorrencias + ' ' + getOcorrencia(trim(copy(linha,214,10)));
            Readln(Arq,linha);
            inc(NrLinha);
            if (copy(linha,08,1) =  '3') and // sig registro 3
               (copy(linha,14,1) =  'U') then // seg segmento U
            begin
                  try
                     Query1.Insert;
                     Query1.FieldByName('indice'       ).AsSTring   := VNrIndice;
                     Query1.FieldByName('numero_titulo').AsSTring   := VNrTitulo;
                     Query1.FieldByName('vr_acrescimo' ).AsCurrency := StrToFloat(Copy(linha,18,15)) / 100;
                     Query1.FieldByName('vr_desconto'  ).AsCurrency := StrToFloat(Copy(linha,33,15)) / 100;
                     Query1.FieldByName('vr_abatimento').AsCurrency := StrToFloat(Copy(linha,48,15)) / 100;
                     Query1.FieldByName('vr_pago'      ).AsCurrency := StrToFloat(Copy(linha,78,15)) / 100;
                     Query1.FieldByName('vr_liquido'   ).AsCurrency := StrToFloat(Copy(linha,93,15)) / 100;
                     Query1.FieldByName('dt_pagto'     ).AsString   := Copy(linha,138,02) + '/' +  Copy(linha,140,02) + '/' + Copy(linha,142,04);
                     Query1.FieldByName('Data'         ).AsDatetime := dm.now;
                     Query1.FieldByName('cd_liquidacao').AsString   := VCdLiquid;
                     Query1.FieldByName('cd_retorno').AsString   := copy(linha,16,2); // = '06' then //significa liquida�ao
                     Query1.FieldByName('obs').AsString   := ocorrencias;
                     Query1.FieldByName('nrdocumento').AsString   := nrDocumentoAux;
                     Query1.FieldByName('sacado').AsString   := sacadoAux;

                     ocorrencias := '';


                     if nrBanco <> 756 then
                        Query1.FieldByName('desdobramento').AsString   := Copy(linha,106,01)
                     else
                        Query1.FieldByName('desdobramento').AsString   := Copy(aux,1,01);

                     //criado tabela receber_formaLiqCNAB falta mexer na procedure  spBaixaCnab
                     Query1.Post;
                  except
                     on E: exception do
                     begin
                        FmMensagem.Memo1.Text := 'Erro ao tentar gravar o registro do t�tulo ' + VNrTitulo + ', Opera��o Cancelada. Verifique o arquivo ' + EditArq.Text + ', linha ' + IntToStr(NrLinha);
                        FmMensagem.Memo1.lines.add('E R R O : ' + E.message);
                        FmMensagem.ShowModal;
                        CancelaOperacao;
                     end;
                  end;
            end
            else
            begin
               FmMensagem.Memo1.Text := 'Arquivo CNAB faltando o segmento U para o titulo, Opera��o Cancelada. Verifique o arquivo ' + EditArq.Text + ', linha ' + IntToStr(NrLinha);
               FmMensagem.ShowModal;
               CancelaOperacao;
            end;
         //end;
      end;
   end;
   dm.Commit;
   Closefile(arq);
   QueryRetornoCNAB.close;
   QueryRetornoCNAB.sql[4] := ' b.numero_titulo = a.numero_titulo and b.desdobramento = a.desdobramento ';

   QueryRetornoCNAB.sql[8] := ' where indice = ' + VNrIndice;
   Memo1.Text := QueryRetornoCNAB.SQL.Text;
   QueryRetornoCNAB.Open;
   label2.caption := 'Qtde Registros : ' + IntToStr(QueryRetornoCNAB.recordCount);
   if QueryRetornoCNAB.recordCount > 0 then
   begin
      BitBtn1.Enabled := True;
      BitBtn3.enabled := true;
      ShowMessage('Carga efetua da com sucesso !');
   end
end;

procedure TFmRetornoCnab.CancelaOperacao;
begin
   dm.Rollback;
   Query1.Cancel;
   CloseFile(Arq);
   FmMensagem.free;
   Abort;
end;
function TFmRetornoCnab.getOcorrencia(cdMotivo : string):string;
var cd_motivo : integer;
begin
  result := '';
  if not enio.E_Numerico(cdMotivo) then
  begin
     result := cdMotivo;
     exit;
  end;
  cd_motivo := strToInt(cdMotivo);
case cd_motivo of
    01:  result :='C�digo do Banco Inv�lido ';
    02:  result :='C�digo do Registro Detalhe Inv�lido ';
    03:  result :='C�digo do Segmento Inv�lido ';
    04:  result :='C�digo de Movimento N�o Permitido para Carteira ';
    05:  result :='C�digo de Movimento Inv�lido ';
    06:  result :='Tipo/N�mero de Inscri��o do Cedente Inv�lidos ';
    07:  result :='Ag�ncia/Conta/DV Inv�lido ';
    08:  result :='Nosso N�mero Inv�lido ';
    09:  result :='Nosso N�mero Duplicado ';
    10:  result :='Carteira Inv�lida ';
    11:  result :='Forma de Cadastramento do T�tulo Inv�lido ';
    12:  result :='Tipo de Documento Inv�lido ';
    13:  result :='Identifica��o da Emiss�o do Bloqueto Inv�lida ';
    14:  result :='Identifica��o da Distribui��o do Bloqueto Inv�lida ';
    15:  result :='Caracter�sticas da Cobran�a Incompat�veis ';
    16:  result :='Data de Vencimento Inv�lida ';
    17:  result :='Data de Vencimento Anterior a  Data de Emiss�o ';
    18:  result :='Vencimento Fora do Prazo de Opera��o ';
    19:  result :='T�tulo a Cargo de Bancos Correspondentes com Vencimento Inferior a XX Dias ';
    20:  result :='Valor do T�tulo Inv�lido ';
    21:  result :='Esp�cie do T�tulo Inv�lida ';
    22:  result :='Esp�cie do T�tulo N�o Permitida para a Carteira ';
    23:  result :='Aceite Inv�lido ';
    24:  result :='Data da Emiss�o Inv�lida ';
    25:  result :='Data da Emiss�o Posterior a Data de Entrada ';
    26:  result :='C�digo de Juros de Mora Inv�lido ';
    27:  result :='Valor/Taxa de Juros de Mora Inv�lido ';
    28:  result :='C�digo do Desconto Inv�lido ';
    29:  result :='Valor do Desconto Maior ou Igual ao Valor do T�tulo ';
    30:  result :='Desconto a Conceder N�o Confere ';
    31:  result :='Concess�o de Desconto - J� Existe Desconto Anterior ';
    32:  result :='Valor do IOF Inv�lido ';
    33:  result :='Valor do Abatimento Inv�lido ';
    34:  result :='Valor do Abatimento Maior ou Igual ao Valor do T�tulo ';
    35:  result :='Valor a Conceder N�o Confere ';
    36:  result :='Concess�o de Abatimento - J� Existe Abatimento Anterior ';
    37:  result :='C�digo para Protesto Inv�lido ';
    38:  result :='Prazo para Protesto Inv�lido ';
    39:  result :='Pedido de Protesto N�o Permitido para o T�tulo ';
    40:  result :='T�tulo com Ordem de Protesto Emitida ';
    41:  result :='Pedido de Cancelamento/Susta��o para T�tulos sem Instru��o de Protesto ';
    42:  result :='C�digo para Baixa/Devolu��o Inv�lido ';
    43:  result :='Prazo para Baixa/Devolu��o Inv�lido';
    44 : result := 'C�digo da Moeda Inv�lido';
    45 : result := 'Nome do Sacado N�o Informado';
    46 : result := 'Tipo/N�mero de Inscri��o do Sacado Inv�lidos';
    47 : result := 'Endere�o do Sacado N�o Informado';
    48 : result := 'CEP Inv�lido';
    49 : result := 'CEP Sem Pra�a de Cobran�a (N�o Localizado)';
    50 : result := 'CEP Referente a um Banco  Correspondente';
    51 : result := 'CEP incompat�vel com a Unidade da Federa��o';
    52 : result := 'Unidade da Federa��o Inv�lida';
    53 : result := 'Tipo/N�mero de Inscri��o do Sacador/Avalista Inv�lidos';
    54 : result := 'Sacador/Avalista N�o Informado';
    55 : result := 'Nosso n�mero no Banco Correspondente N�o Informado';
    56 : result := 'C�digo do Banco Correspondente N�o Informado';
    57 : result := 'C�digo da Multa Inv�lido';
    58 : result := 'Data da Multa Inv�lida';
    59 : result := 'Valor/Percentual da Multa Inv�lido';
    60 : result := 'Movimento para T�tulo N�o Cadastrado';
    61 : result := 'Altera��o da Ag�ncia Cobradora/DV Inv�lida';
    62 : result := 'Tipo de Impress�o Inv�lido';
    63 : result := 'Entrada para T�tulo j� Cadastrado';
    64 : result := 'N�mero da Linha Inv�lido';
    65 : result := 'C�digo do Banco para D�bito Inv�lido';
    66 : result := 'Ag�ncia/Conta/DV para D�bito Inv�lido';
    67 : result := 'Dados para D�bito incompat�vel com a Identifica��o da Emiss�o do Bloqueto';
    68 : result := 'D�bito Autom�tico Agendado';
    69 : result := 'D�bito N�o Agendado - Erro nos Dados da Remessa';
    70 : result := 'D�bito N�o Agendado - Sacado N�o Consta do Cadastro de Autorizante';
    71 : result := 'D�bito N�o Agendado - Cedente N�o Autorizado pelo Sacado';
    72 : result := 'D�bito N�o Agendado - Cedente N�o Participa da Modalidade D�bito Autom�tico';
    73 : result := 'D�bito N�o Agendado - C�digo de Moeda Diferente de Real (R$)';
    74 : result := 'D�bito N�o Agendado - Data Vencimento Inv�lida';
    75 : result := 'D�bito N�o Agendado, Conforme seu Pedido, T�tulo N�o Registrado';
    76 : result := 'D�bito N�o Agendado, Tipo/Num. Inscri��o do Debitado, Inv�lido';
    77 : result := 'Transfer�ncia para Desconto N�o Permitida para a Carteira do T�tulo';
    78 : result := 'Data Inferior ou Igual ao Vencimento para D�bito Autom�tico';
    79 : result := 'Data Juros de Mora Inv�lido';
    80 : result := 'Data do Desconto Inv�lida';
    81 : result := 'Tentativas de D�bito Esgotadas - Baixado';
    82 : result := 'Tentativas de D�bito Esgotadas - Pendente';
    83 : result := 'Limite Excedido';
    84 : result := 'N�mero Autoriza��o Inexistente';
    85 : result := 'T�tulo com Pagamento Vinculado ';
    86 : result := 'Seu N�mero Inv�lid';
    87 : result := 'e-mail/SMS enviad';
    88 : result := 'e-mail Lid';
    89 : result := 'e-mail/SMS devolvido - endere�o de e-mail ou n�mero do celular incorreto             ';
    90 : result := 'e-mail devolvido - caixa postal chei';
    91 : result := 'e-mail/n�mero do celular do sacado n�o informad';
    92 : result := 'Sacado optante por Bloqueto Eletr�nico - e-mail n�o enviad';
    93 : result := 'C�digo para emiss�o de bloqueto  n�o permite envio de e-mai';
    94 : result := 'C�digo da Carteira inv�lido para envio e-mail';
    95 : result := 'Contrato n�o permite o envio de e-mai';
    96 : result := 'N�mero de contrato inv�lido';
    97 : result := 'Rejei��o da altera��o do prazo limite de recebimento (a data deve ser informada no campo 28.3.p)';
    98 : result := 'Rejei��o de dispensa de prazo limite de recebimento';
    99 : result := 'Rejei��o da altera��o do n�mero do t�tulo dado pelo cedente';
end;
end;
function TFmRetornoCnab.PValidaIntegCNAB240: Boolean;
var VContLinha : smallint;
begin
   VContLinha := 0;
   AssignFile(Arq,EditArq.Text);
   Reset(Arq);
   Result := true;
   While not Eof(arq) do
   begin
      Readln(Arq,linha);
      inc(VContLinha);
   end;
   try
     if StrToInt(Copy(linha,24,6)) <> VContLinha then
     begin
        ShowMessage('A Quantidade de linhas no arquivo (' +IntToStr(VContLinha) + ' linhas) n�o confere com a quantidade de linhas informada no trailler do arquivo('+ IntToStr(StrToInt(Copy(linha,24,6))) + ' linhas), processamento cancelado !');
        Result := false;
     end;
   except
      on E: Exception do
      begin
         ShowMessage('Ocorreu um erro ao validar o Arquivo CNAB240, verifique o arquivo � realmente um arquivo padr�o CNAB 240 ' + #13 + 'ERRO : ' + E.message);
         Result := false;
      end;
   end;
   CloseFile(Arq);
end;
procedure TFmRetornoCnab.BitBtn1Click(Sender: TObject);
begin
  inherited;
     if dm.execmd('select count(*) q from RetornoCNAB where indice = ' + VNrIndice,'q') = '' then
     begin
        ShowMessage('Nao h� titulos a serem baixados');
        exit;
     end;
     if MessageDlg('Confirma o Processamento das Baixas no Arquivo ? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     begin
        spBaixaCnab.ParamByName('@indice').AsString := VNrIndice;
        spBaixaCnab.ParamByName('@operador').AsInteger := senha.Codigo_Operador;
        
        spBaixaCnab.ExecProc;
        BitBtn1.Enabled := false;
        QueryRetornoCNAB.close;
        QueryRetornoCNAB.Open;
        if not DirectoryExists(ExtractFilePath(EditArq.Text) + '\Baixados') then
           CreateDir(ExtractFilePath(EditArq.Text) + '\Baixados');
        if Application.MessageBox(Pchar('Deseja mover arquivo ' + EditArq.Text + ' para o diret�rio '+ ExtractFilePath(EditArq.Text) + 'Baixados\'),'Mover arquivo',MB_YesNo) = IdYes then
           if not MoveFile(Pchar(EditArq.Text),Pchar(ExtractFilePath(EditArq.Text) + 'Baixados\' + ExtractFileName(EditArq.Text))) then
              ShowMessage('N�o foi poss�vel mover o arquivo ' + EditArq.Text + 'para o diret�rio '+ ExtractFilePath(EditArq.Text) + 'Baixados\');
         FmTitBaixadosDifOrcMen := TFmTitBaixadosDifOrcMen.create(self);
         FmTitBaixadosDifOrcMen.ADOQueryH.SQL[10] := VNrIndice;
         FmTitBaixadosDifOrcMen.ADOQueryH.Open;
         if(FmTitBaixadosDifOrcMen.ADOQueryH.RecordCount > 0) then
            FmTitBaixadosDifOrcMen.ShowModal;
         FmTitBaixadosDifOrcMen.ADOQueryH.Close;
         FmTitBaixadosDifOrcMen.Free;

        ShowMessage('Fim de processamento !');
        BitBtn3.enabled := true;
     end;
end;

procedure TFmRetornoCnab.FormShow(Sender: TObject);
begin
  inherited;
  VNrIndice := '-1';
  QueryRetornoCNAB.close;
  QueryRetornoCNAB.Open;
  BitBtn3.enabled := (QueryRetornoCNAB.recordCount > 0);
end;

procedure TFmRetornoCnab.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Este processo ir� limpar a tabela tempor�ria de baixa CNAB, certifique-se de que n�o h� ningu�m executando este mesmo processo', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     dm.ExecutaComando('delete retornoCnab');
     QueryRetornoCNAB.close;
     QueryRetornoCNAB.Open;
     BitBtn3.enabled := false;
  end
end;

procedure TFmRetornoCnab.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
     if QueryRetornoCNAB.FieldByName('flag').Isnull then
       exit;
     if QueryRetornoCNAB.FieldByName('flag').AsBoolean then
        Dbgrid1.Canvas.Font.Color:= ClGreen
     else
        Dbgrid1.Canvas.Font.Color:= ClRed;

   Dbgrid1.DefaultDrawDataCell(Rect, dbgrid1.columns[datacol].field, State);
end;

procedure TFmRetornoCnab.BitBtn4Click(Sender: TObject);
begin
  inherited;
      dm.QueryGlobal.close;
      dm.QueryGlobal.sql.clear;
      dm.QueryGlobal.sql := QueryRetornoCNAB.sql;
      dm.QueryGlobal.sql[0] := ' select a.numero_titulo,c.codigo, c.nome as Contratante, str(vr_pago,10,2) as ''Valor Pago'', substring(a.obs,1,40) as Observacao from RetornoCNAB a ';
      dm.QueryGlobal.Open;
      RichEdit1.Clear;
      RichEdit1.lines := GeraTextoQuery(dm.QueryGlobal,'BANCO : ' + Edit1.text + ' ARQUIVO : ' + EditArq.Text + 'DATA : ' + Dm.GetDataSrv );
      dm.QueryGlobal.close;
      dm.QueryGlobal.sql[0] := ' select str(sum(vr_pago),10,2) as vrtotal , count(*) as qt from RetornoCNAB a ';
      dm.QueryGlobal.sql[9]  := ' ';
      dm.QueryGlobal.Open;
      RichEdit1.Lines.Add('');
      RichEdit1.Lines.Add('{ ' + dm.QueryGlobal.FieldByName('qt').AsString + ' Registro(s) / Valor : ' + Dm.QueryGlobal.FieldByName('VrTotal').AsString + '}');
      //RichEdit1.BringToFront;
      dm.QueryGlobal.Close;
      If (Sender as TBitBtn).Tag = 0 then
         RichEdit1.Print('')
      else
        RichEdit1.BringToFront;
end;

procedure TFmRetornoCnab.RichEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key  = VK_ESCAPE then
      RichEdit1.SendToBack;
end;

procedure TFmRetornoCnab.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = Vk_escape then
      DBGrid1.SendToBack;
end;

procedure TFmRetornoCnab.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
   memo1.Visible := not memo1.Visible;
end;

procedure TFmRetornoCnab.Button1Click(Sender: TObject);
begin
  inherited;
  ToExcel(QueryRetornoCNAB,'Titulos Baixados');
end;

end.
