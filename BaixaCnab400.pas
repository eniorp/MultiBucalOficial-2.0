unit BaixaCnab400;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao, DB, DBTables, Grids, DBGrids, ExtCtrls, StdCtrls,
  Buttons, ComCtrls,enio, ADODB;

type
  TFmBaixaCnab400 = class(TFmPadrao)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EditArq: TEdit;
    Edit1: TEdit;
    OpenDialog1: TOpenDialog;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtnCarregar: TBitBtn;
    BitBtn1: TBitBtn;
    QueryRetornoCNAB: TQuery;
    QueryRetornoCNABdesdobramento: TStringField;
    QueryRetornoCNABnumero_titulo: TIntegerField;
    QueryRetornoCNABcodigo: TIntegerField;
    QueryRetornoCNABContratante: TStringField;
    QueryRetornoCNABvr_pago: TFloatField;
    QueryRetornoCNABvr_liquido: TFloatField;
    QueryRetornoCNABobs: TStringField;
    QueryRetornoCNABvr_acrescimo: TFloatField;
    QueryRetornoCNABvr_desconto: TFloatField;
    QueryRetornoCNABvr_abatimento: TFloatField;
    QueryRetornoCNABdt_pagto: TDateTimeField;
    QueryRetornoCNABindice: TSmallintField;
    QueryRetornoCNABflag: TBooleanField;
    QueryRetornoCNABData: TDateTimeField;
    RichEdit1: TRichEdit;
    spBaixaCnab: TStoredProc;
    QueryRetornoCNABcd_liquidacao: TStringField;
    QueryRetornoCNABcd_retorno: TSmallintField;
    procedure BitBtnCarregarClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    Arq : TextFile;
    linha : string;
    VNrIndice : string[4];
    function PValidaIntegCNAB400: Boolean;
    Procedure CancelaOperacao;
  public
    { Public declarations }
  end;

var
  FmBaixaCnab400: TFmBaixaCnab400;

implementation

uses Mensagem, udm, Senha;

{$R *.dfm}

function TFmBaixaCnab400.PValidaIntegCNAB400: Boolean;
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
     if StrToInt(Copy(linha,164,8)) <> VContLinha - 2 then
     begin
        ShowMessage('A Quantidade de linhas no arquivo (' +IntToStr(VContLinha) + ' linhas) não confere com a quantidade de linhas informada no trailler do arquivo('+ IntToStr(StrToInt(Copy(linha,24,6))) + ' linhas), processamento cancelado !');
        Result := false;
     end;
   except
      on E: Exception do
      begin
         ShowMessage('Ocorreu um erro ao validar o Arquivo CNAB400, verifique o arquivo é realmente um arquivo padrão CNAB 400 ' + #13 + 'ERRO : ' + E.message);
         Result := false;
      end;

   end;

   CloseFile(Arq);

end;
procedure TFmBaixaCnab400.BitBtnCarregarClick(Sender: TObject);
var

    VNrTitulo : string[17];
    Desdob    : string[1];
    NrLinha : integer;
    VCdLiquid : string[02];
begin
  inherited;
   if not OpenDialog1.execute then
     exit;
   EditArq.Text := OpenDialog1.FileName;
   if not PValidaIntegCNAB400 then
     exit;
   AssignFile(Arq,EditArq.Text);
   Reset(Arq);
   Readln(Arq,linha);
   if (Copy(linha,1,1)   <> '0') or // indica Header do arquivo.
      (Copy(linha,2,1) <> '2') then // indica que é arquivo de retorno.
   begin
      ShowMessage('ATENÇÃO !!! Operação cancelada, este arquivo não é um arquivo de retorno ou não é um arquivo no padrão CNAB 400');
      CloseFile(Arq);
      exit;
   end;

   Edit1.text := Copy(linha,77,18);

   Query1.Close;
   Query1.Open;

   NrLinha := 2;
   FmMensagem := TFmMensagem.create(self);
   VNrIndice := dm.ExecutaComando('select isnull(max(indice) + 1,0) a from RetornoCNAB','a');
   dm.BeginTran;
   VCdLiquid := inputbox('código liquidação(usado no cnab 240, achar um valor fixo para colocar aqui(verificar tabela receber_formaLiqCNAB','código liquidação(usado no cnab 240, achar um valor fixo para colocar aqui(verificar tabela receber_formaLiqCNAB','');
   While not Eof(arq) do
   begin
      Readln(Arq,linha);
      inc(NrLinha);
      //ShowMessage('Confirmar com Moisés os possíveis códigos que possam vir na posição 81..82 no registro detalhe (Código de baixa/Recusa)');
      if copy(linha,1,1) = '1' then // indica registro detalhe
      begin
         if copy(linha,81,02) = '00' then // precisa saber a tabela de códigos que vem nessa posição
         begin
            VNrTitulo := dm.execmd('select numero_titulo n, desdobramento from seq_faturamento where indice = ' + copy(linha,63,11),'n');
            Desdob := dm.QueryGlobal.fieldByName('desdobramento').AsString;

            try
               Query1.Insert;
               Query1.FieldByName('indice'       ).AsSTring   := VNrIndice;
               Query1.FieldByName('numero_titulo').AsSTring   := VNrTitulo;
               Query1.FieldByName('vr_acrescimo' ).AsCurrency := StrToFloat(Copy(linha,267,13)) / 100;
               Query1.FieldByName('vr_desconto'  ).AsCurrency := StrToFloat(Copy(linha,241,13)) / 100;
               Query1.FieldByName('vr_abatimento').AsCurrency := StrToFloat(Copy(linha,228,13)) / 100;
               Query1.FieldByName('vr_pago'      ).AsCurrency := StrToFloat(Copy(linha,254,13)) / 100;
               Query1.FieldByName('vr_liquido'   ).AsCurrency := StrToFloat(Copy(linha,254,13)) / 100;
               //showMessage('confirmar se data da entrada ou liquidação é a data que o cliente pagou, e confirmar também qual data considerar como data pagamento , se é a data do crédito ou a data que o cliente pagou');
               // Data Entrada ou Liquidação
               Query1.FieldByName('dt_pagto'     ).AsString   := Copy(linha,111,02) + '/' +  Copy(linha,113,02) + '/20' + Copy(linha,115,2);
               // Data do crédito
               //Query1.FieldByName('dt_pagto'     ).AsString   := Copy(linha,176,02) + '/' +  Copy(linha,178,02) + '/20' + Copy(linha,180,2);
               Query1.FieldByName('Data'         ).AsDatetime := dm.now;
               Query1.FieldByName('cd_liquidacao').AsString   := VCdLiquid;
               Query1.FieldByName('desdobramento').AsString   := Desdob;
               Query1.FieldByName('cd_retorno').AsString      := Copy(linha,109,02);
               Query1.Post;
            except
               on E: exception do
               begin
                  FmMensagem.Memo1.Text := 'Erro ao tentar gravar o registro do título ' + VNrTitulo + ', Operação Cancelada. Verifique o arquivo ' + EditArq.Text + ', linha ' + IntToStr(NrLinha);
                  FmMensagem.Memo1.lines.add('E R R O : ' + E.message);
                  FmMensagem.ShowModal;
                  CancelaOperacao;
               end;
            end;
         end;
      end;
   end;
   dm.Commit;
   Closefile(arq);
   QueryRetornoCNAB.close;
   QueryRetornoCNAB.sql[4] := ' b.numero_titulo = a.numero_titulo and b.desdobramento = a.desdobramento ';

   QueryRetornoCNAB.sql[8] := ' where indice = ' + VNrIndice;
   QueryRetornoCNAB.Open;
   label2.caption := 'Qtde Registros : ' + IntToStr(QueryRetornoCNAB.recordCount);
   if QueryRetornoCNAB.recordCount > 0 then
   begin
      BitBtn1.Enabled := True;
      BitBtn3.enabled := true;
      ShowMessage('Carga efetua da com sucesso !');
   end
end;
procedure TFmBaixaCnab400.CancelaOperacao;
begin
   dm.Rollback;
   Query1.Cancel;
   CloseFile(Arq);
   FmMensagem.free;
   Abort;

end;

procedure TFmBaixaCnab400.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if MessageDlg('Este processo irá limpar a tabela temporária de baixa CNAB, certifique-se de que não há ninguém executando este mesmo processo', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     dm.ExecutaComando('delete retornoCnab');
     QueryRetornoCNAB.close;
     QueryRetornoCNAB.Open;
     BitBtn3.enabled := false;
  end

end;

procedure TFmBaixaCnab400.BitBtn4Click(Sender: TObject);
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

procedure TFmBaixaCnab400.BitBtn1Click(Sender: TObject);
begin
  inherited;
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
        if Application.MessageBox(Pchar('Deseja mover arquivo ' + EditArq.Text + ' para o diretório '+ ExtractFilePath(EditArq.Text) + 'Baixados\'),'Mover arquivo',MB_YesNo) = IdYes then
           if not MoveFile(Pchar(EditArq.Text),Pchar(ExtractFilePath(EditArq.Text) + 'Baixados\' + ExtractFileName(EditArq.Text))) then
              ShowMessage('Não foi possível mover o arquivo ' + EditArq.Text + 'para o diretório '+ ExtractFilePath(EditArq.Text) + 'Baixados\');
        ShowMessage('Fim de processamento !');
        BitBtn3.enabled := true;
     end;

end;

end.
