unit tacio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls, DBCtrls, Mask, Menus, registry,
  ExtCtrls, ExtDlgs, jpeg, clipBrd, ComObj, ShellApi, ShlObj, ActiveX,
  WinSvc, DBGrids, Grids, IniFiles, IdHashMessageDigest, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdURI, WinInet, IdFTP,
  IdMessage,  IdMessageClient, IdIOHandler, IdIOHandlerSocket;

// procedures
    function DataValida(data: string): Boolean;
    procedure VirgulaPorPonto(Sender: TObject; var Key: Char);
    function InvertData(data: string): String;
    function ProcuraArquivo(Pasta, Arquivo, Extensao: string): string;
    function DownloadArquivo(const Origem, Destino: String): Boolean;
    procedure DataMenor(dataInicial, DataFinal: string);
    function DiaFinalDoMes(mes, ano: string): String;
    Function DataFinalMes(DataInicial_DDMMAAAA: string): string;
    procedure ToExcel(DataSet: TdataSet; NomeDaPlanilha: string);
    Function LeRegistro(NomeDoRegistro: string): String;
    procedure GravaRegistro(NomeDoRegistro, ValorDoRegistro: string);
    function GetAppUser: string;
    function TamanhoArquivo(const FileName: string): integer;
    procedure NaoDeleta(Sender: TObject; var Key: Word; Shift: TShiftState);
    Procedure Desativa(v_Label: tLabel);
    Procedure Ativa(v_Label: tLabel);
    Procedure ExecSQL(query: TADOQuery; memo: Tmemo);
    Function AcrecentaMes(dataInicial, Qtd_Parcelas: String): tDate;
    Procedure ShowText(texto: string);
    Procedure ShowFloat(texto: real);
    Procedure ShowInt(texto: integer);
    Procedure StatusDespesas(query: TADOQuery; LinhaAlterar: integer;
      Status_1_2_3: integer);
    Procedure Pesquisar(query: TADOQuery);
    function MudarTrueFalse_para_SimNao(Campo: TbooleanField): string;
    Function NomeComputador: String;
    Function Bkp(QualquerQuery: TADOQuery): Boolean;
    Procedure FazArquivoTexto(dados, caminho: string);
    Function ExecCMD_String(QualquerQuery: TADOQuery;
      Comando, CampoRetorno: String): String;
    Function ExecCMD_Integer(QualquerQuery: TADOQuery;
      Comando, CampoRetorno: String; MemoScript: Tmemo): integer;
    Function ExecCMD_Real(QualquerQuery: TADOQuery; Comando, CampoRetorno: String;
      MemoScript: Tmemo): real;
    Function ExecCMD_Currency(QualquerQuery: TADOQuery;
      Comando, CampoRetorno: String; MemoScript: Tmemo): currency;
    Procedure ExecutaSQL(QualquerQuery: TADOQuery; Comando: String);
    function UltimoDiaDoMes(data: tDate): string;
    Procedure AtivaB(Botao: Tbutton);
    Procedure DesativaB(Botao: Tbutton);
    Procedure Abortar(MsgMotivo: String);
    Procedure NormalB(Botao: Tbutton);
    Function PosicaoMouse: TPoint;
    Procedure MudarNavegador(Navigator: tDBNavigator; TextoExibido: String);
    Procedure AjustarForm(InicioDaTela_ou_ABaixoDoInicio: String; Form: TForm);
    Function AjustaDataFormatoDDMMAAAA(data: tDate): String;
    Procedure CompletarMaskEdits(MaskEditDataInicial, MaskEditDataFinal: TmaskEdit;
      DataReferenciaNOW: tDate);
    procedure CriarAtalho(ANomeArquivo, ADiretorioInicial, ANomedoAtalho,
      APastaDoAtalho: string);
    function AbrirQuery3Tentativas(query: TADOQuery; Modo: String): Boolean;
    Procedure CopiarArq(Arquivo, Destino: string);
    function ApagaPasta(Pasta: string): Boolean;
    function ToUpper(Text: String): String;
    function ToLower(Text: String): String;
    function ObtemVariavelAmbiente(const name: string): string;
    function DifHora(FIni, FFim: TDateTime): String;
    function DifDias(DataVenc: TDateTime; DataAtual: TDateTime): String;
    procedure Colorir_Grid(Sender: TObject; const Rect: TRect; DataCol: integer;
      Column: TColumn; State: TGridDrawState);
    procedure FormPersonalizado(Form: TForm);
    Procedure GravarArquivoINI(Parametro, Valor: String);
    function LerArquivoINI(Parametro: String): String;
    function TColorToHex(Color: TColor): string;
    function HexToTColor(sColor: string): TColor;
    function FileDate(Arquivo: String): String;
    function FloatToInt(Valor: Double): integer;
    procedure DosExecuta(Comando: string);
    Function VersaoExe(CaminhoArquivo: string): String;
    Function EhNumero(Caracter: String): Boolean;
    function VersaoToInteger(Versao: string): integer;
    function DataParaString(data: tDate): String;

    function RemoveCaracterEspecial(texto: string): string;
    function DataTimeParaString(data: tDate): String;
    function MontaMesAno(data:Tdate):String;
    function MontaMesAnoVarios(DataInicial,DataFinal:Tdate):string;

    /// <summary>
    /// Envia ou recebe um aruqivo pelo FTP
    /// </summary>
    /// <param name="ModoDownUp">
    /// Valor: 'Down'ï¿½ ou 'Up'
    /// </param>
    /// <param name="DiretorioFTP">
    /// ex /tmp
    /// </param>
    /// <param name="DiretorioPC">
    /// ex c:\
    /// </param>
    /// <param name="Arquivo">
    /// exï¿½ foto2.jpg
    /// </param>
    /// <returns>
    /// Retorna verdadeiro quando completar a sequencia.
    /// </returns>
    function FTP_Down_Up(ModoDownUp, DiretorioFTP, DiretorioPC, Arquivo: string;
      ObjetoFTP: TIdFTP): Boolean;
    Function TratarString(texto: String): String;
    function RemoveAcento(Str: string): string;
    function RemoveHifem(Str: string): string;
    Procedure LogTxt(Informacao: String);
    function SoNumeros(Const texto: String): String;
    function PrimeiraLetraMaiscula(Str: string): string;
    

    /// <summary>
    /// Retorna se a hora informada no campo ï¿½ ou nï¿½o uma hora util dentro da
    /// Multi-Bucal
    /// </summary>
    /// <param name="data">
    /// Informar data/hora para consulta
    /// </param>
    function EhHoraUtilMultibucal(data: TDateTime): Boolean;
    function CopiarParaClipboard(texto: string): Boolean;

    /// <summary>
    /// <para>
    /// Ordena uma query com base na ultima linha.
    /// </para>
    /// <para>
    /// A ultima linha deve sempre ser: "Order by campo asc"
    /// </para>
    /// </summary>
    procedure OrdenarGrid(DBGrid: TDbGrid; query: TADOQuery; Column: TColumn);


type
  NewTypeNav = class(tDBNavigator);

Const
  COLORGRID: TColor = clInactiveBorder;

  // variantes
var
  teste, nome_arq_log: string;
  I_log: integer;

var
  Cor: TColor;

implementation

uses DateUtils, Math;


function PrimeiraLetraMaiscula(Str: string): string;
var
  i: integer;
  esp: Boolean;
begin
  Str := LowerCase(Trim(Str));
  for i := 1 to Length(Str) do
  begin
    if i = 1 then
      Str[i] := UpCase(Str[i])
    else
    begin
      if i <> Length(Str) then
      begin
        esp := (Str[i] = ' ');
        if esp then
          Str[i + 1] := UpCase(Str[i + 1]);
      end;
    end;
  end;
  Result := Str;
end;


function MontaMesAnoVarios(DataInicial,DataFinal:Tdate):String;
var
  MesAno:String;
begin
  if DataFinal<DataInicial then
  begin
    ShowMessage('Data Final não pode ser menor que Data Inicial');
    Result:='';
    exit;
  end;

  repeat
    if MesAno='' then
      MesAno:=''''+MontaMesAno(DataInicial)+''''
    else
      MesAno:=MesAno+','''+MontaMesAno(DataInicial)+'''';
    DataInicial:=IncMonth(DataInicial,1);
  until (DataInicial>DataFinal);

  Result:=MesAno;
end;



function MontaMesAno(data:Tdate):String;
var
  d,m,a:word;
begin
  DecodeDate(data,a,m,d);
  If m<=9 then
    Result:='0'+IntToStr(m)+'/'+IntToStr(a)
  else
    Result:=IntToStr(m)+'/'+IntToStr(a)
end;

function RemoveCaracterEspecial(texto: string): string;
begin
  Result := StringReplace(texto, '/', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '\', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, ':', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '"', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '*', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '?', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '<', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '>', '', [rfReplaceAll, rfIgnoreCase]);
  Result := StringReplace(Result, '|', '', [rfReplaceAll, rfIgnoreCase]);
end;

function FTP_Down_Up(ModoDownUp, DiretorioFTP, DiretorioPC, Arquivo: string;
  ObjetoFTP: TIdFTP): Boolean;
// Declarar IdFTP na uses...
// Modo de usar
// --- FTP_Down_Up('Up', 'ftp.multibucal.com.br', '21', 'multiodonto', 'Multi90', '/tmp',  'c:\', 'foto2.jpg');
var
  saveDialog: TSaveDialog;

begin
  Result := false;
  saveDialog := TSaveDialog.Create(Application.Owner);

  try
    ObjetoFTP.Connect();
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;

  ObjetoFTP.ChangeDir(DiretorioFTP); // a pasta onde vc quer largar suas fotos.

  try
    if ModoDownUp = 'Up' then
    begin
      ObjetoFTP.Put(DiretorioPC + '\' + Arquivo);
    end;

    if ModoDownUp = 'Down' then
    begin
      repeat
        saveDialog.Execute();
      until (saveDialog.FileName <> '');
      ObjetoFTP.Get(Arquivo, saveDialog.FileName, false, false);
    end;
  except
    on E: Exception do
      ShowMessage('Erro: ' + E.Message);
  end;
  ObjetoFTP.Disconnect;
  saveDialog.Free;
  Result := true;
end;

function CopiarParaClipboard(texto: string): Boolean;
begin
  Result := false;

  clipboard.Open;
  clipboard.Clear;
  try
    clipboard.AsText := texto;
  finally
    begin
      clipboard.Close;
      Result := true;
      ShowMessage('Texto: "' + texto + '" Copiado para Area de Transferencia.');
    end;
  end;
end;

procedure OrdenarGrid(DBGrid: TDbGrid; query: TADOQuery; Column: TColumn);
/// Ultima linha da Query tem que ser "Order by campo asc"
var
  temp, linha, campoantigo, campoatual, complemento: string;
begin
  linha := query.SQL[query.SQL.Count - 1];
  temp := linha;

  campoantigo := Copy(linha, 10, Length(linha));
  campoantigo := Copy(campoantigo, 0, Pos(' ', campoantigo) - 1);
  campoatual := Column.FieldName;

  if campoantigo = campoatual then
  begin
    complemento := Copy(linha, Pos(campoantigo, linha) + Length(campoantigo),
      Length(linha));
    complemento := Trim(complemento);
    if complemento = 'asc' then
      complemento := ' desc'
    else
      complemento := ' asc';
  end
  else
    complemento := ' asc';
  linha := 'order by ' + campoatual + complemento;
  query.Close;
  query.SQL[query.SQL.Count - 1] := linha;
  try
    AbrirQuery3Tentativas(query, 'Abrir');
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao ordenar resultado.');
      query.SQL[query.SQL.Count - 1] := temp;
      try
        AbrirQuery3Tentativas(query, 'Abrir');
      finally
      end;
    end;
  end;

end;

function EhHoraUtilMultibucal(data: TDateTime): Boolean;
begin
  Result := false;
  if DayOfWeek(data) - 1 <> 0 then // se nao for domingo
    if DayOfWeek(data) - 1 = 6 then // se for sabado
    begin
      if (HourOfTheDay(data) >= 7) and (HourOfTheDay(data) <= 13) then
        Result := true;
    end
    else // se for de segunda a sexta
    begin
      if (HourOfTheDay(data) >= 7) and (HourOfTheDay(data) <= 20) then
        Result := true;
    end;

end;

function SoNumeros(Const texto: String): String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(texto) Do
  begin
    if (texto[I] in ['0' .. '9']) then
    begin
      S := S + Copy(texto, I, 1);
    end;
  end;
  S := Trim(S);
  if S = '' then
    S := '0';
  Result := S;
end;

Procedure LogTxt(Informacao: String);
var
  config: TIniFile;
begin
  I_log := I_log + 1;
  config := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'LgT.ini');
  config.WriteString('Logs', 'log' + IntToStr(I_log), DateTimeToStr(Now) + '-' +
    Informacao);
  config.Free;
end;

function EhDataTime(data: String): Boolean;
begin
  Result := true;
  try
    strtodatetime(data);
  except
    on E: Exception do
    begin
      Result := false;
    end;
  end;
end;

function RemoveHifem(Str: string): string;
begin
  Result := StringReplace(Str, '-', '', [rfReplaceAll, rfIgnoreCase]);
end;

function RemoveAcento(Str: string): string;
const
  ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
  SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
var
  x: integer;
begin;
  for x := 1 to Length(Str) do
    if Pos(Str[x], ComAcento) <> 0 then
      Str[x] := SemAcento[Pos(Str[x], ComAcento)];
  Result := Str;
end;

Function TratarString(texto: String): String;
var
  resultado: String;
begin
  resultado := StringReplace(texto, '''', '', [rfReplaceAll, rfIgnoreCase]);
  resultado := RemoveAcento(resultado);
  Result := resultado;
end;

function DifDias(DataVenc: TDateTime; DataAtual: TDateTime): String;
{ Retorna a diferenca de dias entre duas datas }
Var
  data: TDateTime;
  dia, mes, ano: Word;
begin
  if DataAtual < DataVenc then
  begin
    Result := '0';
  end
  else
  begin
    data := DataAtual - DataVenc;
    DecodeDate(data, ano, mes, dia);
    Result := FloatToStrF(data, ffNumber, 10, 0);
  end;
end;

function DifHora(FIni, FFim: TDateTime): String;
{ Retorna a diferenï¿½a entre duas horas }
begin
  If (FIni > FFim) then
  begin
    Result := TimeToStr((StrTotime('23:59:59') - FIni) + FFim)
  end
  else
  begin
    Result := TimeToStr(FFim - FIni);
  end;
end;


function DataTimeParaString(data: tDate): String;
var
  d, m, a, h, mm, S, ms: Word;
var
  Sd, Sm, Sa, Sh, Smm, Ss: String;
begin
  DecodeDateTime(data, a, m, d, h, mm, S, ms);

  if d <= 9 then
    Sd := '0' + IntToStr(d)
  else
    Sd := IntToStr(d);

  if m < 9 then
    Sm := '0' + IntToStr(m)
  else
    Sm := IntToStr(m);

  Sa := IntToStr(a);

  Sh := IntToStr(h);

  Smm := IntToStr(mm);

  Ss := IntToStr(S);

  Result := Sa + '/' + Sm + '/' + Sd + ' ' + Sh + ':' + Smm + ':' + Ss;
end;

function DataParaString(data: tDate): String;
var
  d, m, a: Word;
var
  Sd, Sm, Sa: String;
begin
  DecodeDate(data, a, m, d);

  if d <= 9 then
    Sd := '0' + IntToStr(d)
  else
    Sd := IntToStr(d);

  if m < 9 then
    Sm := '0' + IntToStr(m)
  else
    Sm := IntToStr(m);

  Sa := IntToStr(a);

  Result := Sa + '/' + Sm + '/' + Sd;
end;

function VersaoToInteger(Versao: string): integer;
var
  vers: string;
  I: integer;
begin
  vers := '';
  I := 1;
  while I < (Length(Versao) + 1) do
  begin
    if EhNumero(Copy(Versao, I, 1)) = true then
      vers := vers + Copy(Versao, I, 1);
    I := I + 1;
  end;
  Result := strtoint(vers);
end;

Function VersaoExe(CaminhoArquivo: string): String;
type
  PFFI = ^vs_FixedFileInfo;
var
  F: PFFI;
  Handle: Dword;
  Len: Longint;
  data: PChar;
  Buffer: Pointer;
  Tamanho: Dword;
  Parquivo: PChar;
  Arquivo: String;
  resultado: String;
begin
  Arquivo := CaminhoArquivo;
  Parquivo := StrAlloc(Length(Arquivo) + 1);
  StrPcopy(Parquivo, Arquivo);
  Len := GetFileVersionInfoSize(Parquivo, Handle);
  Result := '';
  if Len > 0 then
  begin
    data := StrAlloc(Len + 1);
    if GetFileVersionInfo(Parquivo, Handle, Len, data) then
    begin
      VerQueryValue(data, '\', Buffer, Tamanho);
      F := PFFI(Buffer);
      resultado := Format('%d.%d.%d.%d', [HiWord(F^.dwFileVersionMs),
        LoWord(F^.dwFileVersionMs), HiWord(F^.dwFileVersionLs),
        LoWord(F^.dwFileVersionLs)]);
      Result := resultado;
    end;
    StrDispose(data);
  end;
  StrDispose(Parquivo);
end;

procedure DosExecuta(Comando: string);
var
  SI: TStartupInfo;
  PI: TProcessInformation;
begin
  FillChar(SI, SizeOf(SI), 0);
  SI.cb := SizeOf(StartupInfo);
  SI.dwFlags := STARTF_USESHOWWINDOW;
  SI.wShowWindow := SW_HIDE;
  if CreateProcess(nil, PChar(Comando), nil, nil, false, NORMAL_PRIORITY_CLASS,
    nil, nil, SI, PI) then
    WaitForSingleObject(PI.hProcess, INFINITE);
end;

function FloatToInt(Valor: Double): integer;
begin
  Result := Trunc(Valor);
end;

function FileDate(Arquivo: String): String;
{ Retorna a data e a hora de um arquivo }
var
  FHandle: integer;
begin
  if not FileExists(Arquivo) then
  begin
    ShowMessage('Erro 1355');
    abort;
  end
  else
  begin
    FHandle := FileOpen(Arquivo, 0);
    try
      Result := DateToStr(FileDateToDateTime(FileGetDate(FHandle)));
    finally
      FileClose(FHandle);
    end;
  end;
end;

function TColorToHex(Color: TColor): string;
begin
  Result := IntToHex(GetRValue(Color), 2) + IntToHex(GetGValue(Color), 2) +
    IntToHex(GetBValue(Color), 2);
end;

function HexToTColor(sColor: string): TColor;
begin
  Result := RGB(strtoint('$' + Copy(sColor, 1, 2)),
    strtoint('$' + Copy(sColor, 3, 2)), strtoint('$' + Copy(sColor, 5, 2)));
end;

function LerArquivoINI(Parametro: String): String;
var
  config: TIniFile;
  param: string;
begin
  config := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'Config.ini');
  param := config.readstring('PARAMETROS', Parametro, '');
  Result := param;
  config.Free;
end;

Procedure GravarArquivoINI(Parametro, Valor: String);
var
  config: TIniFile;
begin
  config := TIniFile.Create(ExtractFilePath(Application.ExeName) +
    'Config.ini');
  config.WriteString('PARAMETROS', Parametro, Valor);
  config.Free;
end;

procedure FormPersonalizado(Form: TForm);
begin
  Form.Color := HexToTColor(LerArquivoINI('CorFormulario'));
  Form.Top := 3;
  Form.Left := 3;
end;

procedure Colorir_Grid(Sender: TObject; const Rect: TRect; DataCol: integer;
  Column: TColumn; State: TGridDrawState);
begin
  If not Odd((Sender as TDbGrid).DataSource.DataSet.RecNo) then
    If not(gdselected in State) then
    begin
      (Sender as TDbGrid).canvas.brush.Color := COLORGRID;
      (Sender as TDbGrid).canvas.FillRect(Rect);
      (Sender as TDbGrid).DefaultDrawDataCell(Rect, Column.field, State);
    end;
end;

function ObtemVariavelAmbiente(const name: string): string;
begin
  with TRegistry.Create do
    try
      RootKey := HKEY_LOCAL_MACHINE;
      OpenKey('SYSTEM\ControlSet002\Control\Session Manager\Environment',
        false);
      Result := readstring(name);
    finally
      Free
    end
end;

function ToUpper(Text: String): String;
var
  Ind: integer;

const
  LW = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½';
  UP = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½';

begin
  Result := '';
  for Ind := 1 to Length(Text) do
    if Pos(Copy(Text, Ind, 1), LW) > 0 then
      Result := Result + Copy(UP, Pos(Copy(Text, Ind, 1), LW), 1)
    else
      Result := Result + UpperCase(Copy(Text, Ind, 1));
end;

function ToLower(Text: String): String;

var
  Ind: integer;

const
  LW = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½';
  UP = 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½';

begin
  Result := '';
  for Ind := 1 to Length(Text) do
    if Pos(Copy(Text, Ind, 1), UP) > 0 then
      Result := Result + Copy(LW, Pos(Copy(Text, Ind, 1), UP), 1)
    else
      Result := Result + LowerCase(Copy(Text, Ind, 1));
end;

function ApagaPasta(Pasta: string): Boolean;
var
  fos: TSHFileOpStruct;
begin
  if Pasta[Length(Pasta)] = '\' then
    Delete(Pasta, Length(Pasta), 1);

  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc := FO_DELETE;
    fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
    pFrom := PChar(Pasta + #0);
  end;
  Result := (0 = ShFileOperation(fos));
end;

Procedure CopiarArq(Arquivo, Destino: string);
var
  /// ShellApi
  dados: TSHFileOpStruct;
begin
  if FileExists(Arquivo) = false then
  begin
    ShowMessage('Arquivo para cï¿½pia nï¿½o foi encontrado');
    abort;
  end;
  if DirectoryExists(Destino) = false then
  begin
    ShowMessage('Destino nï¿½o encontrado');
    abort;
  end;
  if Destino = Arquivo then
  begin
    ShowMessage('O Destino ï¿½ igual ao Caminho do arquivo. Operaï¿½ï¿½o Cancelada');
    abort;
  end;
  FillChar(dados, SizeOf(dados), 0);
  with dados do
  begin
    wFunc := FO_COPY;
    pFrom := PChar(Arquivo);
    pTo := PChar(Destino);
    fFlags := FOF_ALLOWUNDO;
  end;
  ShFileOperation(dados);
end;

procedure CriarAtalho(ANomeArquivo, ADiretorioInicial, ANomedoAtalho,
  APastaDoAtalho: string);
// DECLARAR   ShellApi, ShlObj, ActiveX, ComObj, Registry
// ex.:CriarAtalho(Application.ExeName,ExtractFilePath(Application.ExeName),'$',PastaSystem32DoWindows);
var
  MeuObjeto: IUnknown;
  MeuSLink: IShellLink;
  MeuPFile: IPersistFile;
  wNomeArquivo: WideString;
begin
  // Cria e instancia os objetos usados para criar o atalho
  MeuObjeto := CreateComObject(CLSID_ShellLink);
  MeuSLink := MeuObjeto as IShellLink;
  MeuPFile := MeuObjeto as IPersistFile;
  with MeuSLink do
  begin
    SetPath(PChar(ANomeArquivo));
    SetWorkingDirectory(PChar(ADiretorioInicial));
  end;
  wNomeArquivo := APastaDoAtalho + '\' + ANomedoAtalho + '.lnk';
  // Cria de fato o atalho na tela
  MeuPFile.Save(PWChar(wNomeArquivo), false);
end;

Procedure CompletarMaskEdits(MaskEditDataInicial, MaskEditDataFinal: TmaskEdit;
  DataReferenciaNOW: tDate);
var
  d2, d1, m, a: String;
begin
  d1 := '01';
  m := IntToStr(MonthOf(DataReferenciaNOW));
  a := IntToStr(YearOf(DataReferenciaNOW));
  d2 := DiaFinalDoMes(m, a);
  MaskEditDataInicial.Text := AjustaDataFormatoDDMMAAAA
    (StrToDate(d1 + '/' + m + '/' + a));
  MaskEditDataFinal.Text := AjustaDataFormatoDDMMAAAA
    (StrToDate(d2 + '/' + m + '/' + a));
end;

Function AjustaDataFormatoDDMMAAAA(data: tDate): String;
var
  d, m, a: String;
begin
  d := IntToStr(DayOf(data));
  m := IntToStr(MonthOf(data));
  a := IntToStr(YearOf(data));
  if DayOf(data) < 10 then
    d := '0' + IntToStr(DayOf(data));
  if MonthOf(data) < 10 then
    m := '0' + IntToStr(MonthOf(data));
  Result := d + '/' + m + '/' + a;
end;

Procedure AjustarForm(InicioDaTela_ou_ABaixoDoInicio: String; Form: TForm);
begin
  Form.Color := Cor;
  Form.Icon.LoadFromFile(ExtractFilePath(Application.ExeName) + 'b.ico');
  if InicioDaTela_ou_ABaixoDoInicio = 'InicioDaTela' then
  begin
    Form.Left := 1;
    Form.Top := 1;
  end;
  if InicioDaTela_ou_ABaixoDoInicio = 'ABaixoDoInicio' then
  begin
    Form.Left := 10;
    Form.Top := 10;
  end;

end;

Procedure MudarNavegador(Navigator: tDBNavigator; TextoExibido: String);
var
  vExeName: string;
  bmpFirst: TBitmap;
  bmpPrior: TBitmap;
  bmpNext: TBitmap;
  bmpLast: TBitmap;
  bmpInsert: TBitmap;
  bmpDelete: TBitmap;
  bmpEdit: TBitmap;
  bmpPost: TBitmap;
  bmpCancel: TBitmap;
  bmpRefresh: TBitmap;

begin
  vExeName := ExtractFilePath(Application.ExeName);
  bmpFirst := TBitmap.Create;
  bmpPrior := TBitmap.Create;
  bmpNext := TBitmap.Create;
  bmpLast := TBitmap.Create;
  bmpInsert := TBitmap.Create;
  bmpDelete := TBitmap.Create;
  bmpEdit := TBitmap.Create;
  bmpPost := TBitmap.Create;
  bmpCancel := TBitmap.Create;
  bmpRefresh := TBitmap.Create;

  NewTypeNav(Navigator).Buttons[nbFirst].Caption := 'Primeiro(a)' +
    TextoExibido;
  NewTypeNav(Navigator).Buttons[nbPrior].Caption := TextoExibido + 'Anterior';
  NewTypeNav(Navigator).Buttons[nbNext].Caption := 'Proximo(a)' + TextoExibido;
  NewTypeNav(Navigator).Buttons[nbLast].Caption := 'Ultimo(a)' + TextoExibido;
  NewTypeNav(Navigator).Buttons[nbInsert].Caption := 'Novo(a)' + TextoExibido;
  NewTypeNav(Navigator).Buttons[nbDelete].Caption := 'Deletar' + TextoExibido;
  NewTypeNav(Navigator).Buttons[nbEdit].Caption := 'Editar' + TextoExibido;
  NewTypeNav(Navigator).Buttons[nbPost].Caption := 'Salvar' + TextoExibido;
  NewTypeNav(Navigator).Buttons[nbCancel].Caption := 'CancelarAlteracao';
  NewTypeNav(Navigator).Buttons[nbRefresh].Caption := 'Atualizar';

  try
    bmpFirst.LoadFromFile(vExeName + 'Icon\First.BMP');
    bmpPrior.LoadFromFile(vExeName + 'Icon\Prior.BMP');
    bmpNext.LoadFromFile(vExeName + 'Icon\Next.BMP');
    bmpLast.LoadFromFile(vExeName + 'Icon\Last.BMP');
    bmpInsert.LoadFromFile(vExeName + 'Icon\Insert.BMP');
    bmpDelete.LoadFromFile(vExeName + 'Icon\Delete.BMP');
    bmpEdit.LoadFromFile(vExeName + 'Icon\Edit.BMP');
    bmpPost.LoadFromFile(vExeName + 'Icon\Post.BMP');
    bmpCancel.LoadFromFile(vExeName + 'Icon\Cancel.BMP');
    bmpRefresh.LoadFromFile(vExeName + 'Icon\Refresh.BMP');
  except
    Navigator.Visible := false;
    Navigator.Visible := true;
    exit;
  end;
  // imagens
  NewTypeNav(Navigator).Buttons[nbFirst].Glyph := bmpFirst;
  NewTypeNav(Navigator).Buttons[nbPrior].Glyph := bmpPrior;
  NewTypeNav(Navigator).Buttons[nbNext].Glyph := bmpNext;
  NewTypeNav(Navigator).Buttons[nbLast].Glyph := bmpLast;
  NewTypeNav(Navigator).Buttons[nbInsert].Glyph := bmpInsert;
  NewTypeNav(Navigator).Buttons[nbDelete].Glyph := bmpDelete;
  NewTypeNav(Navigator).Buttons[nbEdit].Glyph := bmpEdit;
  NewTypeNav(Navigator).Buttons[nbPost].Glyph := bmpPost;
  NewTypeNav(Navigator).Buttons[nbCancel].Glyph := bmpCancel;
  NewTypeNav(Navigator).Buttons[nbRefresh].Glyph := bmpRefresh;

  Navigator.Visible := false;
  Navigator.Visible := true;

  bmpFirst.Free;
  bmpPrior.Free;
  bmpNext.Free;
  bmpLast.Free;
  bmpInsert.Free;
  bmpDelete.Free;
  bmpEdit.Free;
  bmpPost.Free;
  bmpCancel.Free;
  bmpRefresh.Free;
end;

Function PosicaoMouse: TPoint;
var
  pt: TPoint;
begin
  GetCursorPos(pt);
  Result := pt;
  // Mostra os valores   IntToStr(pt.x)   IntToStr(pt.y);
end;

Function EhNumero(Caracter: String): Boolean;
Begin
  Result := true;
  try
    StrToInt64(Caracter);
  except
    begin
      Result := false;
      exit;
    end;
  end;
end;

Procedure NormalB(Botao: Tbutton);
begin
  Botao.Enabled := true;
  Botao.Font.Style := [];
end;

Procedure AtivaB(Botao: Tbutton);
begin
  Botao.Enabled := true;
  Botao.Font.Style := [fsItalic];
end;

Procedure DesativaB(Botao: Tbutton);
begin
  Botao.Enabled := false;
  Botao.Font.Style := [];
end;

Procedure Abortar(MsgMotivo: String);
begin
  ShowMessage(MsgMotivo);
  abort;
end;



Function ExecCMD_String(QualquerQuery: TADOQuery;
  Comando, CampoRetorno: String): String;
var
  vOriginal: Tstrings;
begin
  vOriginal := QualquerQuery.SQL;
  with QualquerQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Comando);
    Open;
  end;
  Result := QualquerQuery.FieldByName(CampoRetorno).asString;
  QualquerQuery.Close;
  QualquerQuery.SQL := vOriginal;
end;

Function ExecCMD_Integer(QualquerQuery: TADOQuery;
  Comando, CampoRetorno: String; MemoScript: Tmemo): integer;
var
  vOriginal: Tstrings;
begin
  vOriginal := QualquerQuery.SQL;
  if MemoScript <> nil then
    MemoScript.Lines.Add(Comando);
  with QualquerQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Comando);
    Open;
  end;
  Result := QualquerQuery.FieldByName(CampoRetorno).AsInteger;
  QualquerQuery.Close;
  QualquerQuery.SQL := vOriginal;
end;

Function ExecCMD_Real(QualquerQuery: TADOQuery; Comando, CampoRetorno: String;
  MemoScript: Tmemo): real;
var
  vOriginal: Tstrings;
  ResultadoTemp: string;
begin
  vOriginal := QualquerQuery.SQL;
  if MemoScript <> nil then
    MemoScript.Lines.Add(Comando);
  with QualquerQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Comando);
    Open;
  end;
  Result := QualquerQuery.FieldByName(CampoRetorno).AsFloat;
  QualquerQuery.Close;
  QualquerQuery.SQL := vOriginal;
end;

Function ExecCMD_Currency(QualquerQuery: TADOQuery;
  Comando, CampoRetorno: String; MemoScript: Tmemo): currency;
var
  vOriginal: Tstrings;
begin
  vOriginal := QualquerQuery.SQL;
  if MemoScript <> nil then
    MemoScript.Lines.Add(Comando);
  with QualquerQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Comando);
    Open;
  end;
  Result := QualquerQuery.FieldByName(CampoRetorno).AsCurrency;
  QualquerQuery.Close;
  QualquerQuery.SQL := vOriginal;
end;

function UltimoDiaDoMes(data: tDate): string;
var
  sMes: string;
  sAno: string;
  m, a, d: Word;
  ultimoDia: string;
begin
  DecodeDate(data, a, m, d);
  if m < 10 then
    sMes := '0' + IntToStr(m)
  else
    sMes := IntToStr(m);
  sAno := IntToStr(a);

  if Pos(sMes, '01 03 05 07 08 10 12') > 0 then
    ultimoDia := '31'
  else if sMes <> '02' then
    ultimoDia := '30'
  else if (strtoint(sAno) mod 4) = 0 then
    ultimoDia := '29'
  else
    ultimoDia := '28';

  Result := ultimoDia + '/' + sMes + '/' + sAno;
end;

Procedure ExecutaSQL(QualquerQuery: TADOQuery; Comando: String);
var
  vOriginal: Tstrings;
begin
  vOriginal := QualquerQuery.SQL;
  with QualquerQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Add(Comando);
    ExecSQL;
    Close;
    SQL := vOriginal;
  end;
end;

Procedure FazArquivoTexto(dados, caminho: string);
var
  t: textfile;
begin
  try
    begin
      AssignFile(t, caminho);
      try
        Reset(t);
      except
        on E: Exception do
          Rewrite(t);
      end;
      Writeln(t, dados);
    end;
  except
    on E: Exception do
    begin
      Close(t);
      CloseFile(t);
    end;
  end;
  Close(t);
  CloseFile(t);
end;

Function Bkp(QualquerQuery: TADOQuery): Boolean;
var
  Original: Tstrings;
var
  vCD, vData, vCaminhoOrigem, vCaminhoDestino, vComputador: string;
var
  d, m, y: Word;
begin
  vData := InvertData(DateToStr(Now));
  vCaminhoOrigem := LeRegistro('Banco');
  vCaminhoDestino := ExtractFilePath(Application.ExeName) + 'Backup';
  vComputador := NomeComputador;

  if Not DirectoryExists(vCaminhoDestino) then
    CreateDir(vCaminhoDestino);
  QualquerQuery.Close;
  Original := QualquerQuery.SQL;
  QualquerQuery.SQL.Clear;
  QualquerQuery.SQL.Add('Insert Into TbBKP(Data,Caminho,Computador)');
  QualquerQuery.SQL.Add('VALUES(#' + vData + '#,''' + vCaminhoDestino + ''','''
    + vComputador + ''')');
  QualquerQuery.ExecSQL;
  QualquerQuery.Close;
  QualquerQuery.SQL.Clear;
  QualquerQuery.SQL.Add('select codigo from tbBKP order by codigo desc');
  QualquerQuery.Open;
  vCD := QualquerQuery.FieldByName('codigo').asString;

  DecodeDate(Now, y, m, d);
  vCaminhoDestino := vCaminhoDestino + '\' + vCD + '_' + FloatToStr(d) + '-' +
    FloatToStr(m) + '-' + FloatToStr(y);
  If CopyFile(PChar(vCaminhoOrigem), PChar(vCaminhoDestino), true) then
    Result := true
  else
    Result := false;
  QualquerQuery.SQL := Original;
end;

{ Function NomeComputador: String;
  var
  ipbuffer: string;
  nsize: Dword;
  begin
  nsize := 50;
  SetLength(ipbuffer, nsize);
  if GetComputerName(PChar(ipbuffer), nsize) then
  Result := ipbuffer;
  end; }

Function NomeComputador: String;
var
  Buffer: array [0 .. MAX_COMPUTERNAME_LENGTH + 1] of Char;
  Size: Cardinal;
begin
  Size := MAX_COMPUTERNAME_LENGTH + 1;
  Windows.GetComputerName(@Buffer, Size);
  Result := StrPas(Buffer);
end;

function MudarTrueFalse_para_SimNao(Campo: TbooleanField): string;
// usar funï¿½ï¿½o no OnGetText do field boolean
// ex.: text:=MudarTrueFalse_para_SimNao(TabelaCampo);
begin
  if Campo.asboolean = true then
    Result := 'Sim'
  else if Campo.asboolean = false then
    Result := 'Nï¿½o'
  else
    Result := '';
end;

Procedure Pesquisar(query: TADOQuery);
var
  a, b: string;
begin
  a := InputBox('Campo', 'Digite o campo que deseja efetuar a Pesquisa', '');
  b := InputBox('Valor', 'Digite o valor que deseja Localizar', '');
  query.Locate(a, b, [loCaseInsensitive, loPartialKey]);
end;

Procedure StatusDespesas(query: TADOQuery; LinhaAlterar: integer;
  Status_1_2_3: integer);
begin
  if Status_1_2_3 = 1 then // todas
    query.SQL[LinhaAlterar] := '';
  if Status_1_2_3 = 2 then // pagas
    query.SQL[LinhaAlterar] := 'and pago = -1';
  if Status_1_2_3 = 3 then // em aberto
    query.SQL[LinhaAlterar] := 'and pago = 0';

end;

Procedure ShowInt(texto: integer);
begin
  ShowMessage(IntToStr(texto));
end;

Procedure ShowFloat(texto: real);
begin
  ShowMessage(FloatToStr(texto));
end;

Procedure ShowText(texto: string);
begin
  ShowMessage(texto);
end;

Function AcrecentaMes(dataInicial, Qtd_Parcelas: String): tDate;
var
  vData_Inicial: tDate;
var
  vQtd_Parcelas: integer;
var
  vAno, vMes, vDia: Word;
begin
  vData_Inicial := StrToDate(dataInicial);
  vQtd_Parcelas := strtoint(Qtd_Parcelas) - 1;
  DecodeDate(vData_Inicial, vAno, vMes, vDia);
  IncAMonth(vAno, vMes, vDia, vQtd_Parcelas);
  Result := StrToDate(IntToStr(vDia) + '/' + IntToStr(vMes) + '/' +
    IntToStr(vAno));
end;

Procedure ExecSQL(query: TADOQuery; memo: Tmemo);
begin
  query.Close;
  query.SQL.Clear;
  if memo.SelText <> '' then
    query.SQL.Add(memo.SelText)
  else
    query.SQL := memo.Lines;
  // ..................................
  try
    begin
      try
        query.Open;
      except
        query.ExecSQL;
      end;
    end;
  except
    ShowMessage('Algum Erro Aconteceu. Verifique o Script!');
  end;
end;

Procedure Ativa(v_Label: tLabel);
begin
  v_Label.Font.Color := clRed;
  v_Label.Font.Style := [fsBold];

end;

Procedure Desativa(v_Label: tLabel);
begin
  v_Label.Font.Color := clBlack;
  v_Label.Font.Style := [];

end;

procedure NaoDeleta(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 46) then
    Key := 0;
end;

function TamanhoArquivo(const FileName: string): integer;
Var
  Figura: file of Byte;
begin
  AssignFile(Figura, FileName);
  Reset(Figura);
  try
    Result := FileSize(Figura);
  finally
    CloseFile(Figura);
  end;
end;

function GetAppUser: string;
var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_CURRENT_USER;
  Registro.OpenKey
    ('Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders', false);
  Result := Registro.readstring('AppData');
end;

procedure GravaRegistro(NomeDoRegistro, ValorDoRegistro: string);
var
  Registro: TRegistry;
begin
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_CURRENT_USER;
  Registro.OpenKey('Software\Tacio90\GTO', true);
  try
    Registro.WriteString(NomeDoRegistro, ValorDoRegistro);
  except
    on E: Exception do
  end;

end;


Function LeRegistro(NomeDoRegistro: string): String;
var
  Registro: TRegistry;
begin
  Result := 'Error';
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_CURRENT_USER;
  Registro.OpenKey('Software\Tacio90\GTO', false);
  Result := Registro.readstring(NomeDoRegistro);
end;

procedure ToExcel(DataSet: TdataSet; NomeDaPlanilha: string);
// declarar ComObj na uses da Unit
var
  linha, coluna: integer;
var
  planilha: variant;
var
  valorcampo: variant;
begin
  planilha := CreateoleObject('Excel.Application');
  planilha.WorkBooks.Add(1);
  planilha.Caption := NomeDaPlanilha;
  planilha.Visible := true;

  DataSet.First;
  for linha := 0 to DataSet.RecordCount - 1 do
  begin
    for coluna := 1 to DataSet.FieldCount do
    begin
      valorcampo := DataSet.Fields[coluna - 1].AsVariant;
      planilha.cells[linha + 2, coluna] := valorcampo;
    end;
    DataSet.Next;
  end;
  for coluna := 1 to DataSet.FieldCount do
  begin
    valorcampo := DataSet.Fields[coluna - 1].DisplayLabel;
    planilha.cells[1, coluna] := valorcampo;
  end;
  planilha.columns.Autofit;
end;

function DiaFinalDoMes(mes, ano: string): String;
var
  Imes, Iano: integer;
begin
  Result := '';
  Imes := strtoint(mes);
  Iano := strtoint(ano);
  if Imes = 1 then
    Result := '31';
  // fevereiro
  if Imes = 2 then
  begin
    if IsLeapYear(Iano) = true then
      Result := '29'
    else
      Result := '28';
  end;
  if Imes = 3 then
    Result := '31';
  if Imes = 4 then
    Result := '30';
  if Imes = 5 then
    Result := '31';
  if Imes = 6 then
    Result := '30';
  if Imes = 7 then
    Result := '31';
  if Imes = 8 then
    Result := '31';
  if Imes = 9 then
    Result := '30';
  if Imes = 10 then
    Result := '31';
  if Imes = 11 then
    Result := '30';
  if Imes = 12 then
    Result := '31';
end;

Function DataFinalMes(DataInicial_DDMMAAAA: string): string;
var
  vData: tDate;
var
  d, m, a: Word;
var
  vDia: string;
var
  vMes: string;
begin
  vData := StrToDate(DataInicial_DDMMAAAA);
  DecodeDate(vData, a, m, d);
  vDia := DiaFinalDoMes(IntToStr(m), IntToStr(a));
  vMes := IntToStr(m);
  if strtoint(vDia) < 10 then
    vDia := '0' + vDia;
  if strtoint(vMes) < 10 then
    vMes := '0' + vMes;
  Result := vDia + '/' + vMes + '/' + IntToStr(a);
end;

procedure DataMenor(dataInicial, DataFinal: string);
begin
  if StrToDate(DataFinal) < StrToDate(dataInicial) then
  begin
    ShowMessage('A data final nï¿½o pode ser menor que a data inicial!');
    abort;
  end;
end;

procedure VirgulaPorPonto(Sender: TObject; var Key: Char);
begin
  if Key = #44 then
  begin
    ShowMessage('Nï¿½o ï¿½ aceito Virgula, serï¿½ substituido por Ponto');
    Key := #46
  end;
end;

function InvertData(data: string): String;
var
  y, m, d: Word;
begin
  DecodeDate(strtodatetime(data), y, m, d);
  Result := IntToStr(y) + '-' + IntToStr(m) + '-' + IntToStr(d);
end;

function ProcuraArquivo(Pasta, Arquivo, Extensao: string): string;
var
  SR: TSearchRec;
  I, posicao: integer;
  NomeArq: string;
begin
  Result := '';
  posicao := 0;

  Pasta := Trim(Pasta);
  if Copy(Pasta, Length(Pasta), 1) <> '\' then
    Pasta := Pasta + '\';
  Extensao := Trim(Extensao);

  if Copy(Extensao, 0, 1) <> '.' then
    Extensao := '.' + Extensao;

  I := FindFirst(Pasta + '*' + Arquivo + '*' + Extensao, faAnyFile, SR);
  while I = 0 do
  begin
    if (SR.Attr and faDirectory) <> faDirectory then
    begin
      try
        NomeArq := SR.name;
      except
      end;
    end;
    I := FindNext(SR);
    posicao := posicao + 1;
  end;

  if posicao = 1 then
    Result := Pasta + NomeArq
  else
  begin
    Result := '';
  end;
end;

function DownloadArquivo(const Origem, Destino: String): Boolean;
const
  BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array [1 .. BufferSize] of Byte;
  BufferLen: Dword;
  F: File;
  sAppName: string;
begin
  Result := false;
  sAppName := ExtractFileName(Application.ExeName);
  hSession := InternetOpen(PChar(sAppName), INTERNET_OPEN_TYPE_PRECONFIG,
    nil, nil, 0);
  try
    hURL := InternetOpenURL(hSession, PChar(Origem), nil, 0, 0, 0);
    try
      AssignFile(F, Destino);
      Rewrite(F, 1);
      repeat
        InternetReadFile(hURL, @Buffer, SizeOf(Buffer), BufferLen);
        BlockWrite(F, Buffer, BufferLen)
      until BufferLen = 0;
      CloseFile(F);
      Result := true;
    finally
      InternetCloseHandle(hURL)
    end
  finally
    InternetCloseHandle(hSession)
  end
end;

function AbrirQuery3Tentativas(query: TADOQuery; Modo: String): Boolean;
// funcï¿½ï¿½o para abrir a query varias vezes.. devido a erro no banco do site
// modo tem que ser:   Executar    ou     Abrir    ou Salvar
begin
  Result := false;
  if (Modo <> 'Executar') and (Modo <> 'Abrir') and (Modo <> 'Salvar') then
  begin
    ShowMessage('Erro no processo inicial de abertura da Query.' + #13 +
      'Query: ' + query.name + #13 + 'Modo: ' + Modo);
    exit;
  end;

  try
    if Modo = 'Executar' then
      query.ExecSQL;
    if Modo = 'Abrir' then
      query.Open;
    if Modo = 'Salvar' then
      query.Post;
    Result := true;
  except
    on E: Exception do
    begin
      Result := false;
      try
        if Modo = 'Executar' then
          query.ExecSQL;
        if Modo = 'Abrir' then
          query.Open;
        if Modo = 'Salvar' then
          query.Post;
        Result := true;
      except
        on E: Exception do
        begin
          Result := false;
          try
            if Modo = 'Executar' then
              query.ExecSQL;
            if Modo = 'Abrir' then
              query.Open;
            if Modo = 'Salvar' then
              query.Post;
            Result := true;
          except
            on E: Exception do
            begin

              begin
                Result := false;
                // DM.Log(E.Message, 'SQL ERROR: ' + query.SQL.Text);
              end;
            end;
          end;
        end;
      end;
    end;
  end;

end;

function DataValida(data: string): Boolean;
begin
  Result := true;
  try
    StrToDate(data);
  except
    on EConvertError do
      Result := false;
  end;
end;

end.
