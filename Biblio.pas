unit Biblio;

interface

uses
     Sysutils, Windows, graphics, printers, DB, DBTables, Controls, Dialogs, Forms, ShellAPI, Classes, Gutenberg;

function AbrirTabela(Tabela: TTable): Boolean;
Procedure GravaAlteracao(Tabela: TTable);
function StrAll(Quantidade: Integer; Caracter: Char): String;
Function Lpad(Campo:String;Tam:Integer;Caracter:char): String;
Function Rpad(Campo:String;Tam:Integer;Caracter: char): String;
function StrFixo(const Texto: String; const Tamanho: Integer): String;
function PosicaoBranco(const Texto: String): Integer;
function StrVar(const Texto: String): String;
function FieldTxt(const Campo: TField): String;
function RecordTxt(Tabela: TDataSet): String;
function V99(const Valor: Currency): Currency;
function Tab(const Coluna: Integer): Integer;
procedure ImprimirCabecalho(const Sistema, Cliente, Titulo1, Titulo2, Cabecalho1, Cabecalho2: String;
          var AlturaTotal, Recuo1, Recuo2: Integer);
procedure AbrirImpressora(const Fonte, Tipo: String; const Cpi: Integer);
function DefineDecimal(const Texto: String; Casas: Word): String;
function ExecuteFile(const FileName, Params, DefaultDir: string;
  ShowCmd: Integer): THandle;
function DiretorioAliases(const NomeAliases: String): String;
function DiretorioAliasesAccess(const NomeAliases: String): String;
procedure ConverteNome(var Nome: String);
procedure ImprimeBoleta(const Local, Documento, EspecieDoc, Aceite, Especie, Instrucoes1, Instrucoes2,
          Instrucoes3, Instrucoes4, Instrucoes5, Instrucoes6, Instrucoes7, Instrucoes8, Sacado1, Sacado2, Sacado3,
          Sacado4: String;
          Emissao, Processamento, Vencimento: TDateTime;
          Valor: Currency;
          ColEsquerda, LinLocal, ColVencimento, LinData, ColDocumento, ColEspecieDoc, ColAceite, ColProcessamento,
          LinEspecie, ColEspecie, ColValor, LinInstrucoes, ColSacado, LinSacado, NumeroLinhas: Integer;
          UmOitavo: Boolean;
          Impressora: TGutenberg);
procedure ImprimeCheque(const Nominal, Cidade: String;
          Valor: Currency;
          Emissao: TDatetime;
          NumeroLinhas, LinValor, ColValor, LinExtenso1, ColExtenso1, TamExtenso1, LinExtenso2, ColExtenso2, TamExtenso2,
          LinNominal, ColNominal, TamNominal, LinCidade, ColCidade, ColDia, ColMes, ColAno: Integer;
          UmOitavo, ano4: Boolean;
          Impressora: TGutenberg);

implementation

{Rotina para Abertura de Tabelas}
function AbrirTabela(Tabela: TTable): Boolean;
begin
     try
        Result := True;
        Tabela.Open;
     except
           Screen.Cursor := CrDefault;
           ShowMessage('Não Foi Possível abrir a tabela "' + Tabela.TableName + '"');
           Result := False;
           Screen.Cursor := CrHourglass;
     end;
end;

{Rotina para Atualização automática com confirmação}
Procedure GravaAlteracao(Tabela: TTable);
begin
     Case Tabela.State of
          dsInsert : If MessageDlg(('Grava Registro ?'), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     Tabela.Post else Tabela.Cancel;
          dsEdit : If MessageDlg(('Regrava Registro ?'), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                     Tabela.Post else Tabela.Cancel;
     end;
end;

{Funcao que gera um string com Quantidade de Caracter
        Quantidade: Numero de ocorrencias do caracter
        Caracter: Caracter utilizado}

function StrAll(Quantidade: Integer; Caracter: Char): String;
var
   I: Integer;
begin
     Result := '';
     For I := 1 to Quantidade do
         Result := Result + Caracter;
end;

function StrFixo(const Texto: String; const Tamanho: Integer): String;
begin
     If Tamanho <= Length(Texto) then Result := Texto else
        Result := Texto + StrAll(Tamanho - Length(Texto), ' ');
end;

function PosicaoBranco(const Texto: String): Integer;
var
   i: Integer;
begin
     Result := 0;
     For i := Length(Texto) downto 1 do
        If Texto[i] <> ' ' then
           begin
                Result := i;
                exit;
           end;
end;

function StrVar(const Texto: String): String;
var
   Posicao: Integer;
begin
     Result := '';
     If Texto <> '' then
       begin
            Posicao := PosicaoBranco(Texto);
            If Posicao = 0 then Result := '' else
               Result := Copy(Texto, 1, Posicao);
       end;

end;

// Os campos inteiros serão gravados com 10 digitos e os
// campos moeda com 10 digitos e multiplicados por 10
function FieldTxt(const Campo: TField): String;
begin
     With Campo do
          Case DataType of
          ftString: Result := StrFixo(Text, Size);
          ftSmallInt, ftInteger, ftAutoInc:
                      begin
                           If Text = '' then Result := '0000000000' else
                           Result := FormatFloat('0000000000', Value);
                      end;
          ftBoolean: If Value then Result := 'S' else Result := 'N';
          ftCurrency:
                      begin
                           If Text = '' then Result := '00000000,00' else
                           Result := FormatFloat('00000000.00', Value);
                      end;
          ftDate:
                      begin
                           If Text = '' then Result := '00000000' else
                           Result := FormatDateTime('ddmmyyyy', Value);
                      end;
          ftDateTime:
                      begin
                           If Text = '' then Result := '00000000000000' else
                           Result := FormatDateTime('ddmmyyyyhhmmss', Value);
                      end;
          ftFloat:
                      begin
                           If Text = '' then Result := '00000000,00000000' else
                           Result := FormatFloat('00000000.00000000', Value);
                      end;
          else
              Result := 'Erro';
          end;
end;

function RecordTxt(Tabela: TDataSet): String;
var
   i: Integer;
begin
     Result := '';
     for i := 0 to Tabela.FieldCount - 1 do
         begin
              Result := Result + FieldTxt(Tabela.Fields[i]);
              If i <> (Tabela.FieldCount - 1) then Result := Result + '#';
         end;
end;

function V99(const Valor: Currency): Currency;
begin
     Result := Round(Valor * 100) / 100;
end;

{Cabeçalho de Impressão
           Cliente: Nome do Usuário da Licença
           Título1: Primeiro Título do Relatório (Segunda Linha)
           Título2: Segundo Título do Relatório (Terceira Linha)
           Cabeçalho1: Primeira Linha do Cabeçalho externo ao quadro
           Cabeçalho2: Segunda Linha do Cabeçalho externo ao quadro
           AlturaTotal: Numero de Pontos do Cabeçalho completo
           Recuo1: Distância da margem do Cabeçalho1
           Recuo2: Distância da margem do Cabeçalho2}

procedure ImprimirCabecalho(const Sistema, Cliente, Titulo1, Titulo2, Cabecalho1, Cabecalho2: String;
          var AlturaTotal, Recuo1, Recuo2: Integer);

var
   Sdil, DataAtual, HoraAtual, Pagina: String;
   RecuoLinha, RecuoLinha2, RecuoLinha3, RecuoColuna, Tamanho1, Tamanho2, NumeroDeCabecalhos: Integer;
   AlturaLinha, TamanhoLinha, TamanhoCaracter: Integer;

begin
     Sdil := 'DataFile Informática';
     DataAtual := DateToStr(Date);
     HoraAtual := Copy(TimeToStr(Time), 1, 5) + 'h ';
     NumeroDeCabecalhos := 0;
     If Cabecalho1 <> '' then Inc(NumeroDeCabecalhos);
     If Cabecalho2 <> '' then Inc(NumeroDeCabecalhos);
     with Printer do
          Begin
               AlturaLinha := Canvas.TextHeight('A');
               TamanhoCaracter := Canvas.TextWidth('A');
               Pagina := 'Pág: ' + FormatFloat('000', PageNumber);
               RecuoLinha := AlturaLinha div 4;
               RecuoLinha2 := AlturaLinha div 2;
               RecuoLinha3 := RecuoLinha + RecuoLinha2;
               RecuoColuna := TamanhoCaracter div 2;
               TamanhoLinha := PageWidth - RecuoColuna;
    {Início desenho do quadro do cabeçalho}
               Canvas.rectangle(RecuoColuna, AlturaLinha, TamanhoLinha, (AlturaLinha * 4) + RecuoLinha2);
               If Canvas.TextWidth(Cliente) > Canvas.TextWidth(Sdil) then
                  Tamanho1 := Canvas.TextWidth(Cliente) + TamanhoCaracter + RecuoColuna
                  else Tamanho1 := Canvas.TextWidth(Sdil) + TamanhoCaracter + RecuoColuna;
               Canvas.MoveTo(Tamanho1, AlturaLinha);
               Canvas.LineTo(Tamanho1, (AlturaLinha * 4 + RecuoLinha2));
               If Canvas.TextWidth(Pagina) > Canvas.TextWidth(HoraAtual) then
                  Tamanho2 := Canvas.TextWidth(Pagina) + TamanhoCaracter
                  else Tamanho2 := Canvas.TextWidth(DataAtual) + TamanhoCaracter;
               Canvas.MoveTo(TamanhoLinha - Tamanho2, AlturaLinha);
               Canvas.LineTo(TamanhoLinha - Tamanho2, (AlturaLinha * 4 + RecuoLinha2));
    {Fim do desenho do quadro do cabeçalho, Início do texto dentro de quadro}
    {  Primeira Linha}
               Canvas.TextOut(TamanhoCaracter, RecuoLinha + AlturaLinha, Sdil);
               Canvas.TextOut((TamanhoLinha - Tamanho1 - Tamanho2 - Canvas.TextWidth(Sistema)) div 2 + Tamanho1,
                                            RecuoLinha + AlturaLinha, Sistema);
               Canvas.TextOut((TamanhoLinha - Canvas.TextWidth(Pagina) - RecuoColuna), RecuoLinha + AlturaLinha, Pagina);
    {  Segunda Linha}
               Canvas.TextOut((TamanhoLinha - Tamanho1 - Tamanho2 - Canvas.TextWidth(Titulo1)) div 2 + Tamanho1,
                                            RecuoLinha + AlturaLinha * 2, Titulo1);
               Canvas.TextOut((TamanhoLinha - Canvas.TextWidth(HoraAtual) - RecuoColuna), RecuoLinha + AlturaLinha * 2,
                                            HoraAtual);
    {  Terceira Linha}
               Canvas.TextOut(TamanhoCaracter, RecuoLinha + AlturaLinha * 3, Cliente);
               Canvas.TextOut((TamanhoLinha - Tamanho1 - Tamanho2 - Canvas.TextWidth(Titulo2)) div 2 + Tamanho1,
                                            RecuoLinha + AlturaLinha * 3, Titulo2);
               Canvas.TextOut((TamanhoLinha - Canvas.TextWidth(DataAtual) - RecuoColuna), RecuoLinha + AlturaLinha * 3,
                                            DataAtual);
    {Fim do texto dentro do quadro do cabeçalho, Início do cabeçalho externo}
               AlturaTotal := AlturaLinha * (NumeroDeCabecalhos + 5) + RecuoLinha3;
               If Cabecalho1 <> '' then
                  Recuo1 := RecuoColuna + ((TamanhoLinha - Canvas.TextWidth(Cabecalho1)) div 2);
                  Canvas.TextOut(Recuo1, AlturaLinha * 5, Cabecalho1);
               If Cabecalho2 <> '' then
                  Recuo2 := RecuoColuna + ((TamanhoLinha - Canvas.TextWidth(Cabecalho2)) div 2);
                  Canvas.TextOut(Recuo2, AlturaLinha * (4 + NumeroDeCabecalhos), Cabecalho2);
               If NumeroDeCabecalhos <> 0 then
                  Begin
                       Canvas.MoveTo(RecuoColuna, AlturaTotal);
                       Canvas.LineTo(TamanhoLinha, AlturaTotal);
                  end;
          end;
end;

{Abertura e Inicialização da Impressora
          Fonte: Nome do Fonte a ser utilizado
          Cpi: Caracteres por polegada}

procedure AbrirImpressora(const Fonte, Tipo: String; const Cpi: Integer);

begin
     with Printer do
          begin
               BeginDoc;
               Canvas.TextOut(0, 0, '');
               Canvas.Font.Name := Fonte;
               Canvas.Font.Color := ClBlack;
               If Tipo = 'H' then Canvas.Font.Height := Canvas.Font.PixelsPerInch div Cpi else
                  Canvas.Font.Size := Cpi;
          end;
end;

{Função Tab - Posicionar coluna de impressão
        Coluna: Coluna para posicionar impressão}

function Tab(const Coluna: Integer): Integer;
var
   TamanhoCaracter: Integer;
begin
     TamanhoCaracter := Printer.Canvas.TextWidth('A');
     Result := TamanhoCaracter div 2 + TamanhoCaracter * (Coluna - 1);
end;

{ Função que formata uma string numérica com "Casas" casas decimais e corrige o número }
function DefineDecimal(const Texto: String; Casas: Word): String;
var
   Inicio, ContaCasas, i, j: Word;
   FlagDecimal: Boolean;
begin
     If Texto <> '' then
     begin
          FlagDecimal := False;
          Result := '';
          ContaCasas := 0;
          Inicio := 1;
          If Texto[1] = '-' then
             begin
                  Result := '-';
                  Inicio := 2;
             end;
          j := Length(Texto);
          For i := Inicio to j do
              begin
                   If FlagDecimal then
                      begin
                           If Texto[i] in ['0'..'9'] then
                              begin
                                   ContaCasas := ContaCasas + 1;
                                   Result := Result + Texto[i];
{                                  If ContaCasas = Casas then i := Length(Texto);}
                                   If ContaCasas = Casas then j := i;
                              end;
                      end
                   else
                       begin
                            If Texto[i] = DecimalSeparator then
                               begin
                                    Result := Result + Texto[i];
                                    FlagDecimal := True;
                               end
                            else
                                If Texto[i] in ['0'..'9'] then Result := Result + Texto[i];
                       end;
              end;
     end
     else Result := '';
end;

{Função para execução de comandos dentro do programa}
function ExecuteFile(const FileName, Params, DefaultDir: string;
  ShowCmd: Integer): THandle;
var
  zFileName, zParams, zDir: array[0..79] of Char;
begin
  Result := ShellExecute(Application.MainForm.Handle, nil,
    StrPCopy(zFileName, FileName), StrPCopy(zParams, Params),
    StrPCopy(zDir, DefaultDir), ShowCmd);
end;

{Função que obtem o diretório de um ALIASES
 retorna '' se não existir o aliases}
function DiretorioAliases(const NomeAliases: String): String;
var
   TempLista: Tstrings;
begin
     TempLista := TStringList.Create;
     try
        Session.GetAliasParams(NomeAliases, TempLista);
        Result := Copy(TempLista.Strings[0], 6, Length(TempLista.Strings[0]) - 5);
     except
           Result := '';
     end;
     TempLista.free;
end;

{Função que obtem o diretório de um ALIASES de um base ACCESS
 retorna '' se não existir o aliases}
function DiretorioAliasesAccess(const NomeAliases: String): String;
var
   TempLista: Tstrings;
   Posicao: Integer;
begin
     TempLista := TStringList.Create;
     try
        Session.GetAliasParams(NomeAliases, TempLista);
        Result := Copy(TempLista.Strings[0], 15, Length(TempLista.Strings[0]) - 14);
        Posicao := Pos('.mdb', Result);
        While (Posicao > 0) and (Result[Posicao] <> '\') and (Result[Posicao] <> ':') do Dec(Posicao);
        If Posicao = 0 then Result := '' else
           Result := Copy(Result, 1, Posicao-1);
     except
           Result := '';
     end;
     TempLista.free;
end;

{Procedure que converte um nome de for a obter minúsculas com
 maiúsculas no início de cada palavra}

procedure ConverteNome(var Nome: String);
const
     Meio: Array[0..4] of String[5] = (' De ',' Da ',' Das ',' Do ',' Dos ');
var
   i, Tamanho: byte;
begin
     If Nome = '' then exit;
     Nome := AnsiLowerCase(Nome);
     Tamanho := Length(Nome);
     Nome[1] := AnsiUpperCase(Nome[1])[1];
     for i := 1 to Tamanho do
         begin
              If Nome[i] = ' ' then
                 If i < Tamanho then
                    Nome[i+1] := AnsiUpperCase(Nome[i+1])[1];
         end;
     for i := 0 to 4 do
         While Pos(Meio[i], Nome) > 0 do
               Nome[Pos(Meio[i], Nome) + 1] := 'd';
end;

{Rotina para emissão de boletas}
procedure ImprimeBoleta(const Local, Documento, EspecieDoc, Aceite, Especie, Instrucoes1, Instrucoes2,
          Instrucoes3, Instrucoes4, Instrucoes5, Instrucoes6, Instrucoes7, Instrucoes8, Sacado1, Sacado2, Sacado3,
          Sacado4: String;
          Emissao, Processamento, Vencimento: TDateTime;
          Valor: Currency;
          ColEsquerda, LinLocal, ColVencimento, LinData, ColDocumento, ColEspecieDoc, ColAceite, ColProcessamento,
          LinEspecie, ColEspecie, ColValor, LinInstrucoes, ColSacado, LinSacado, NumeroLinhas: Integer;
          UmOitavo: Boolean;
          Impressora: TGutenberg);
var
   Linha :Integer;
begin
        try
           Impressora.SendControls(#18);
           If UmOitavo then Impressora.SendControls(#27#48);
           Impressora.Filter:=gfConvert;
           Impressora.SetFilterMasks ('áéíóúãõâôÃÂÁÉÊÍÓÔÕÚçÇ²³ªº°','aeiouaoaoAAAEEIOOOUcC23aoo');
           Linha := Impressora.Row - 1;
           Impressora.GWritePos(Linha + LinLocal, ColEsquerda, Local);
           Impressora.GWritePos(Linha + LinLocal, ColVencimento, FormatDateTime('dd/mm/yyyy', Vencimento));
           Impressora.GWritePos(Linha + LinData, ColEsquerda, FormatDateTime('dd/mm/yy', Emissao));
           Impressora.GWritePos(Linha + LinData, ColDocumento, Documento);
           Impressora.GWritePos(Linha + LinData, ColEspecieDoc, EspecieDoc);
           Impressora.GWritePos(Linha + LinData, ColAceite, Aceite);
           Impressora.GWritePos(Linha + LinData, ColProcessamento, FormatDateTime('dd/mm/yy', Processamento));
           Impressora.GWritePos(Linha + LinEspecie, ColEspecie, Especie);
           Impressora.GWritePos(Linha + LinEspecie, ColValor, FormatFloat('###,###,##0.00', Valor));
           Impressora.GWritePos(Linha + LinInstrucoes, ColEsquerda, Instrucoes1);
           Impressora.GWritePos(Linha + LinInstrucoes + 1, ColEsquerda, Instrucoes2);
           Impressora.GWritePos(Linha + LinInstrucoes + 2, ColEsquerda, Instrucoes3);
           Impressora.GWritePos(Linha + LinInstrucoes + 3, ColEsquerda, Instrucoes4);
           Impressora.GWritePos(Linha + LinInstrucoes + 4, ColEsquerda, Instrucoes5);
           Impressora.GWritePos(Linha + LinInstrucoes + 5, ColEsquerda, Instrucoes6);
           Impressora.GWritePos(Linha + LinInstrucoes + 6, ColEsquerda, Instrucoes7);
           Impressora.GWritePos(Linha + LinInstrucoes + 7, ColEsquerda, Instrucoes8);
           Impressora.GWritePos(Linha + LinSacado, ColSacado, Sacado1);
           Impressora.GWritePos(Linha + LinSacado + 1, ColSacado, Sacado2);
           Impressora.GWritePos(Linha + LinSacado + 2, ColSacado, Sacado3);
           Impressora.GWritePos(Linha + LinSacado + 3, ColSacado, Sacado4);
           Impressora.GWritePos(Linha + NumeroLinhas - 1, 1, ' ');
           If UmOitavo then Impressora.SendControls(#27#50);
        except
              ShowMessage('Erro durante a impressão !');
        end;
end;

{Rotina para emissão de cheques}
procedure ImprimeCheque(const Nominal, Cidade: String;
          Valor: Currency;
          Emissao: TDatetime;
          NumeroLinhas, LinValor, ColValor, LinExtenso1, ColExtenso1, TamExtenso1, LinExtenso2, ColExtenso2, TamExtenso2,
          LinNominal, ColNominal, TamNominal, LinCidade, ColCidade, ColDia, ColMes, ColAno: Integer;
          UmOitavo, ano4: Boolean;
          Impressora: TGutenberg);
var
   Linha, Tamanho :Integer;
   Extenso: string;
begin
        try
           Impressora.SendControls(#18);
           If UmOitavo then Impressora.SendControls(#27#48);
           Impressora.Filter:=gfConvert;
           Impressora.SetFilterMasks ('áéíóúãõâôÃÂÁÉÊÍÓÔÕÚçÇ²³ªº°','aeiouaoaoAAAEEIOOOUcC23aoo');
//           Extenso := ValorExtenso(Valor) + ' ';
           Tamanho := TamExtenso1 + TamExtenso2;
           If Length(Extenso) < Tamanho then
              Extenso := Extenso + StrAll(Tamanho - Length(Extenso), 'x');
           Linha := Impressora.Row - 1;
           Impressora.GWritePos(Linha + LinValor, ColValor, FormatFloat('###,###,##0.00', Valor));
           Impressora.GWritePos(Linha + LinExtenso1, ColExtenso1, Copy(Extenso, 1, TamExtenso1));
           Impressora.GWritePos(Linha + LinExtenso2, ColExtenso2, Copy(Extenso, TamExtenso1 + 1, TamExtenso2));
           Impressora.GWritePos(Linha + LinNominal, ColNominal, Copy(Nominal, 1, TamNominal));
           Impressora.GWritePos(Linha + LinCidade, ColCidade, Cidade);
           Impressora.GWritePos(Linha + LinCidade, ColDia, FormatDateTime('dd', Emissao));
           Impressora.GWritePos(Linha + LinCidade, ColMes, FormatDateTime('mmmm', Emissao));
           IF Ano4 then
              Impressora.GWritePos(Linha + LinCidade, ColAno, FormatDateTime('yyyy', Emissao))
           else
               Impressora.GWritePos(Linha + LinCidade, ColAno, FormatDateTime('yy', Emissao));
           Impressora.GWritePos(Linha + NumeroLinhas - 1, 1, ' ');
           If UmOitavo then Impressora.SendControls(#27#50);
        except
              ShowMessage('Erro durante a impressão !');
        end;
end;

Function Lpad(Campo:String;Tam:Integer;Caracter: char): String;
begin
   Result := StrAll(Tam - Length(Campo),Caracter) + Campo;
end;

Function Rpad(Campo:String;Tam:Integer;Caracter: char): String;
begin
   Result := Campo + StrAll(Tam - Length(Campo),Caracter);

end;

end.







