unit enio;

interface
uses Forms,dbtables,Dialogs,db,classes,biblio,Adodb;
type
  TFlDbn = (DbIns,DbEd,DbDel,DbPost,DbCan,DbRef);
  TFlDbns = set of TFlDbn;
  procedure AtalhoDbNavigator(DataSet: TDataSet;key: Word);overload;
  procedure AtalhoDbNavigator(DataSet: TDataSet;key: Word;ButtonsFlags:TFlDbns);overload;
  Function Replace (Text,oldstring,newstring:string):string;
  Function PVAlinha(tipo: TFieldType): Char;
//  Function GeraTextoQuery(Query1: TQuery): TStrings; overload;
//  Function GeraTextoQuery(Query1: TAdoQuery): TStrings;overload;
  Function GeraTextoQuery(Query1: TDataSet;PtituloRel : String): TStrings;overload;
  Function TiraChar(Texto : String; ch : char):String;
  function FormatData(DataDMY:String;Formato:String):String;
  Function Trim(J:String):String;
  function TrocaStr(Str : String; Ch : Char; Trocar_para : String) : String;
  function TiraAcento ( str: String ): String;
  function printeronline(v_lpt: String): Boolean;
  Function Data_Ext(Dt : TDateTime) : String;
  Function So_Numero( Key : Char) : Char;
  Function So_inteiro( Key : Char) : Char;
  Function PadRight (S :ShortString; N : Byte; P : Char) : ShortString;
  procedure sound(mhz : integer);
  procedure nosound;
  procedure Delay(MSec: Cardinal);
  Function WindowsVersion : string;
  Function UserName : String;
  Function GetIp : String;
  Function GetNmMaquina : String;
  Function GetBuildInfo:string;
  Function Vnm(nm:string): Boolean;
  Procedure ValidaCampo(DataSet: TDataSet; Campo, DsCampo : String;Focaliza:Boolean);

  Procedure ExecQueryGravaLogErro(Tipo: char; Query: TQuery; NmForm,ArqLog: String);
  Function VrInteiro(Pvalor: String): Boolean;
  Function E_Numerico(PValor: String): Boolean;
  Function E_Data(PValor: String): Boolean;
  Function ValidaCPF(num: string): boolean;
  Function ValidaCGC(num: string): boolean;
  procedure MostraText(Text : String);
  Function Sonumero(Texto:String):String;

implementation

Uses SysUtils,windows,Winsock;

procedure AtalhoDbNavigator(DataSet: TDataSet;key: Word;ButtonsFlags:TFlDbns);
begin
  if (DbIns in ButtonsFlags) and (key = VK_F2) then
     KEY := VK_SPACE
  else
  if (DbPost in ButtonsFlags) and (key = VK_F3) then
     KEY := VK_SPACE
  else
  if (DbDel in ButtonsFlags) and (key = VK_F4) then
     KEY := VK_SPACE
  else
  if (DbCan in ButtonsFlags) and (key = VK_F5) then
     KEY := VK_SPACE
  else
  if (DbEd in ButtonsFlags) and (key = VK_F6) then
     KEY := VK_SPACE
  else
  if (DbRef in ButtonsFlags) and (key = VK_F7) then
     KEY := VK_SPACE;

  AtalhoDbNavigator(DataSet,key);
end;


procedure AtalhoDbNavigator(DataSet: TDataSet;key: Word);
Begin
   if not DataSet.Active then
      exit;

   case key of

     VK_F2 : Begin
                if DataSet.State = DsBrowse then
                   DataSet.Insert;
             end;
     VK_F3 : Begin
                if DataSet.State in [DsEdit,DsInsert] then
                   DataSet.post;
             end;
     VK_F4 : begin
                if (DataSet.State = DsBrowse) and not (DataSet.bof and DataSet.eof) then
                   DataSet.delete;
             end;
     VK_F5 : Begin
                if DataSet.State in [DsEdit,DsInsert] then
                   DataSet.Cancel;
             end;
     VK_F6 : begin
                if (DataSet.State = DsBrowse) and not (DataSet.bof and DataSet.eof) then
                   DataSet.Edit;
             end;
     VK_F7 : DataSet.Refresh;

   end;
End;
Function Sonumero(Texto:String):String;
var pos : Word;

begin
   
   pos := 1;

   while pos <= length(Texto)  do
   begin
      if not (Texto[pos]  in ['0'..'9']) then
         delete(Texto,pos,1)
      else
         inc(pos);
   end;

{   for I := 1 to length(Texto) do
   begin
     showmessage(Texto[I]);
     if not (Texto[I]  in ['0'..'9']) then
     begin
        delete(Texto,I,1);
        dec(I);
     end
   end;
   }
   Result := Texto;

end;

Function TiraChar(Texto : String; ch : char):String;
var cont : integer;

begin
   cont := 0;
   while (Texto <> '') and (Cont <= length(Texto)) do
   begin
      inc(cont);
      if Texto[Cont] = ch then
      begin
         Delete(Texto,Cont,1);
         dec(cont);
      end;
   end;
   Result := Texto;
end;
procedure MostraText(Text : String);
begin
   inputBox('Mostra texto','Texto',Text);
end;
function FormatData(DataDMY:String;Formato:String):String;
begin
   // o formato da data passada deve ser DDMMYYYY

   if length(DataDMY) <> 10 then
   begin
      Showmessage('A data passada deve estar no formato DD/MM/AAAA(DIA,MES E ANO) > data informada = ' + DataDMY);
      exit;
   end;
   if uppercase(formato) = 'MDY' then
      Result := Copy(DataDMY,4,3) + Copy(DataDMY,1,3) + Copy(DataDMY,7,4)
   else
   if uppercase(formato) = 'YMD' then
      Result := Copy(DataDMY,7,4) + '/' + Copy(DataDMY,4,3) + Copy(DataDMY,1,2)
   else
   if uppercase(formato) = 'YDM' then
      Result := Copy(DataDMY,7,4) + '/' + Copy(DataDMY,1,3) + Copy(DataDMY,4,2)
   else
      ShowMessage('Os formatos aceitos são (MDY,YMD,YDM)');


end;
Function VrInteiro(Pvalor: String): Boolean;
begin
   Result := True;
   try
      StrToInt(Pvalor);
    except
       Result := False;
    end;
end;

function GetBuildInfo:string;
var
   VerInfoSize: DWORD;
   VerInfo: Pointer;
   VerValueSize: DWORD;
   VerValue: PVSFixedFileInfo;
   Dummy: DWORD;
   V1, V2, V3, V4: Word;
   Prog : string;
begin
  try
     Prog := Application.Exename;

     VerInfoSize := GetFileVersionInfoSize(PChar(prog), Dummy);
     GetMem(VerInfo, VerInfoSize);
     GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
     
     VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
     with VerValue^ do
       begin
         V1 := dwFileVersionMS shr 16;
         V2 := dwFileVersionMS and $FFFF;
         V3 := dwFileVersionLS shr 16;
         V4 := dwFileVersionLS and $FFFF;
       end;
     FreeMem(VerInfo, VerInfoSize);
     result := Copy (IntToStr (100 + v1), 3, 2) + '.' +
     Copy (IntToStr (100 + v2), 3, 2) + '.' +
     Copy (IntToStr (100 + v3), 3, 2) + '.' +
     Copy (IntToStr (100 + v4), 3, 2);
  except
     Result := '';
  end;
end;

Procedure ExecQueryGravaLogErro(Tipo: char; Query: TQuery; NmForm,ArqLog: String);
Var F : TextFile;
begin
   try
      Case Tipo of

        'O': Query.Open;
        'E': Query.execSql;
        'P': Query.Post;
        'D': Query.Delete;

      end;
   except
     on E: Exception do
     begin
        AssignFile(F,ArqLog);
        try
           Append(F);
        except
           Rewrite(F);
        end;
        Writeln(F,'');
        Writeln(F,'######################################################');
        Writeln(F,'');        
        Writeln(F,'Erro:');
        Writeln(F,'IP   = '  + GetIp);
        Writeln(F,'Data = '  + DatetimeToStr(now));
        Writeln(F,'Form  = ' + NmForm);
        Writeln(F,'Query = ' + Query.Name);
        Writeln(F,'Sql   = ' + Query.Text);
        Writeln(F,'Erro  = ' + E.Message);
        CloseFile(F);

        showMessage(E.Message);
        Abort;
    end;
 end;

end;

Function GetIp : String;
var
  wVersionRequested : WORD;
  wsaData : TWSAData;

  p : PHostEnt;
  s : array[0..128] of char;
  p2 : pchar;
begin
  wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);
  GetHostName(@s, 128);
  p := GetHostByName(@s);
  p2 := iNet_ntoa(PInAddr(p^.h_addr_list^)^);
  Result := p2;
  WSACleanup;
end;

Function GetNmMaquina : String;
var
  wVersionRequested : WORD;
  wsaData : TWSAData;

  p : PHostEnt;
  s : array[0..128] of char;
//  p2 : pchar;
begin
  wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);
  GetHostName(@s, 128);
  p := GetHostByName(@s);
  Result := p^.h_Name;
  WSACleanup;
end;


Function UserName : String;
var
   lpBuffer : Array[0..20] of Char;
   nSize    : dWord;
begin
   nSize := 120;
   if GetUserName(lpBuffer,nSize) then
     result   := lpBuffer
   else
      result := '';

end;

Function Trim(J:String):String;
var i: integer;
Begin
   if (J <> '')then
   begin
      for i := length(J) downto 1 do
         if J[i] in [#32,#0] then
            delete(J,length(J),1)
         else
            break;

      If Length(J) > 1 then
         While (J[1] = ' ') do
            Delete(J,1,1);

    end;
   Result:=J;

end;

function TrocaStr(Str : String; Ch : Char; Trocar_para : String) : String;
  Var i : Integer;
     Aux : String;
begin
     Aux := '';
     For i := 1 to length(Str) do
        if Str[i] = ch then
           aux := aux + Trocar_para
        else
           Aux := Aux + Str[i];
     Result := Aux;
end;
procedure Delay(MSec: Cardinal);
var
  Start: Cardinal;
begin
  Start := GetTickCount;
  repeat
    Application.ProcessMessages;
  until (GetTickCount - Start) >= MSec;
end;

Function PadRight (S :ShortString; N : Byte; P : Char) : ShortString;

{Prenche uma String de tamanho "N" com o caractere "Ch"}
Function Copies (Ch : Char; N : Byte) : ShortString;
begin
  if N < 1 Then
    Result := ''
  else begin
    FillChar (Result[1], N, Ch);
    Result[0] := Char(N);
  end;
end;


begin
     if N < 1 Then
        Result := ''
        else
           if N > Length(S) Then
              Result := Copies (P, N - Length(S)) + S
              else
                 Result := Copy (S, Length(S) - N + 1, N);
end;

Function So_Numero( Key : Char) : Char;

Begin
   // #27 Esc #8 backspace #13 enter #46 Delete #45 Insert #36 Home #35 end
   If Key In ['1','2','3','4','5','6','7','8','9','0',#8,#27,#13,#46,#45,#36,#35] then
      Result := Key
   Else
      Result := #0;
end;

Function So_inteiro( Key : Char) : Char;
begin
   If Key In ['1','2','3','4','5','6','7','8','9','0',#8,#27,#13] then
      Result := Key
   Else
      Result := #0;
end;
Function Data_Ext(Dt : TDateTime) : String;
   var
       nrdia: Integer;
       diasemana: array[1..7] of String;
       meses: array[1..12] of String;
       dia, mes, ano: Word;
begin
     diasemana[1]:= 'Domingo      ';
     diasemana[2]:= 'Segunda-feira';
     diasemana[3]:= 'Terça-feira  ';
     diasemana[4]:= 'Quarta-feira ';
     diasemana[5]:= 'Quinta-feira ';
     diasemana[6]:= 'Sexta-feira  ';
     diasemana[7]:= 'Sábado       ';
     meses[1]:= 'Janeiro';
     meses[2]:= 'Fevereiro';
     meses[3]:= 'Março';
     meses[4]:= 'Abril';
     meses[5]:= 'Maio';
     meses[6]:= 'Junho';
     meses[7]:= 'Julho';
     meses[8]:= 'Agosto';
     meses[9]:= 'Setembro';
     meses[10]:= 'Outubro';
     meses[11]:= 'Novembro';
     meses[12]:= 'Dezembro';
     DecodeDate(DT,ano,mes,dia);
     nrdia:= DayOfWeek(DT);
     Result := diasemana[nrdia]+', '+INTTOSTR(dia)+' de '+meses[mes]+' de '+INTTOSTR(ano);
End;
  function TiraAcento ( str: String ): String;
   var i: Integer;
begin
   for i := 1 to Length ( str ) do
   case str[i] of
   'á': str[i] := 'a';'é': str[i] := 'e';'í': str[i] := 'i';'ó': str[i] := 'o';
   'ú': str[i] := 'u';'à': str[i] := 'a';'è': str[i] := 'e';'ì': str[i] := 'i';
   'ò': str[i] := 'o';'ù': str[i] := 'u';'â': str[i] := 'a';'ê': str[i] := 'e';
   'î': str[i] := 'i';'ô': str[i] := 'o';'û': str[i] := 'u';'ä': str[i] := 'a';
   'ë': str[i] := 'e';'ï': str[i] := 'i';'ö': str[i] := 'o';'ü': str[i] := 'u';
   'ã': str[i] := 'a';'õ': str[i] := 'o';'ñ': str[i] := 'n';'ç': str[i] := 'c';
   'Á': str[i] := 'A';'É': str[i] := 'E';'Í': str[i] := 'I';'Ó': str[i] := 'O';
   'Ú': str[i] := 'U';'À': str[i] := 'A';'È': str[i] := 'E';'Ì': str[i] := 'I';
   'Ò': str[i] := 'O';'Ù': str[i] := 'U';'Â': str[i] := 'A';'Ê': str[i] := 'E';
   'Î': str[i] := 'I';'Ô': str[i] := 'O';'Û': str[i] := 'U';'Ä': str[i] := 'A';
   'Ë': str[i] := 'E';'Ï': str[i] := 'I';'Ö': str[i] := 'O';'Ü': str[i] := 'U';
   'Ã': str[i] := 'A';'Õ': str[i] := 'O';'Ñ': str[i] := 'N';'Ç': str[i] := 'C';
   'º': str[i] := ' ';'ª': str[i] := ' ';
  end;
  Result := str;
 end;

 function printeronline(v_lpt: String): Boolean;
var
   nResult: Byte;
   v_lp: Word;
begin
   if v_lpt = 'LPT1' then
      v_lp:=0
   else if v_lpt = 'LPT2' then
      v_lp:=1
   else if v_lpt = 'LPT3' then
      v_lp:=2;
   asm
      mov ah, $02;
      mov dx, v_lp;
      int $17;
      mov nResult, ah;
   end;
   result:=(nresult and $80) = $80;
end;
procedure sound(mhz : integer);
{mhz = the frequency of the pc speaker}
 var
   count    : word;
  begin
    try
       count := 1193280 div mhz;
       asm
          mov al,$b6
          out $43,al
          mov ax,count
          out $42,al
          mov al,ah
          out $42,al
          mov al,3
          out $61,al
       end;
    except
    end;
  end;


procedure nosound;
{turn off the pc speaker}
  begin
    try
       asm
         mov al,0
         out $61,al
       end;
    except
    end;
  end;

Procedure ValidaCampo(DataSet: TDataSet; Campo, DsCampo : String;Focaliza:Boolean);
begin
   if (DataSet.FieldByName(Campo).IsNull or (DataSet.FieldByName(Campo).AsString = '')) then
   Begin
      ShowMessage('Campo obrigatório não preenchido("' + DsCampo + '")');
      if Focaliza then
         DataSet.FieldByName(Campo).FocusControl;
      Abort;
   end;
end;

Function WindowsVersion : string;
const
  sWindowsVersion = 'Windows %s %d.%.2d.%.3d %s';
var
  Ver: TOsVersionInfo;
  Platform: string[4];
begin
     Ver.dwOSVersionInfoSize := SizeOf(Ver);
     GetVersionEx(Ver);
     with Ver do
     begin
          case dwPlatformId of
               VER_PLATFORM_WIN32s: Platform := '32s';
               VER_PLATFORM_WIN32_WINDOWS:
               begin
                    dwBuildNumber := dwBuildNumber and $0000FFFF;
                    if (dwMajorVersion > 4) or ((dwMajorVersion = 4) and
                       (dwMinorVersion >= 10)) then Platform := '98'
                    else Platform := '95';
               end;
               VER_PLATFORM_WIN32_NT:
               begin
                    if dwMajorVersion <= 4 then Platform := 'NT'
                    Else Platform :='2000';
               end;
          end;
          Result := Trim(Format(sWindowsVersion, [Platform,
          dwMajorVersion,
          dwMinorVersion, dwBuildNumber, szCSDVersion]));
     end;
end;

function E_Numerico(PValor: String): Boolean;
 var Ind : Word;
begin
   if PValor = '' then
   begin
      Result := false;
      exit;
   end;
   Result:= True;
   for Ind := 1 to Length(PValor) do
      if not (PValor[Ind] in ['0'..'9']) then
      begin
         Result:= False;
         break;
      end;
end;

function E_Data(PValor: String): Boolean;
begin
    Result := True;
    try
       StrToDate(PValor);
    except
       Result:= False;
    end;
end;

function ValidaCPF(num: string): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9: integer;
   d1,d2: integer;
   digitado, calculado: string;

begin
   Result := false;
   if length(num) <> 11 then
     exit;
   n1 := StrToInt(num[1]);
   n2 := StrToInt(num[2]);
   n3 := StrToInt(num[3]);
   n4 := StrToInt(num[4]);
   n5 := StrToInt(num[5]);
   n6 := StrToInt(num[6]);
   n7 := StrToInt(num[7]);
   n8 := StrToInt(num[8]);
   n9 := StrToInt(num[9]);
   d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
   d1 := 11-(d1 mod 11);
      if d1>=10 then d1 := 0;
   d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
   d2 := 11-(d2 mod 11);
   if d2>=10 then d2 := 0;
      calculado := inttostr(d1) + inttostr(d2);
   digitado := num[10] + num[11];

   if calculado=digitado then
      Result := true;
end;


function ValidaCGC(num: string): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
   try
     n1 := StrToInt(num[1]);
     n2 := StrToInt(num[2]);
     n3 := StrToInt(num[3]);
     n4 := StrToInt(num[4]);
     n5 := StrToInt(num[5]);
     n6 := StrToInt(num[6]);
     n7 := StrToInt(num[7]);
     n8 := StrToInt(num[8]);
     n9 := StrToInt(num[9]);
     n10 := StrToInt(num[10]);
     n11 := StrToInt(num[11]);
     n12 := StrToInt(num[12]);
     d1 := n12 * 2 + n11 * 3 + n10 * 4 + n9 * 5 + n8 * 6 + n7 * 7 + n6 * 8 + n5 * 9 + n4 * 2 + n3 * 3 + n2 * 4 + n1 * 5;
     d1 := 11 - (d1 mod 11);
     if d1 >= 10 then d1 := 0;
        d2 := d1 * 2 + n12 * 3 + n11 * 4 + n10 * 5 + n9 * 6 + n8 * 7 + n7 * 8 + n6 * 9 + n5 * 2 + n4 * 3 + n3 * 4 + n2 * 5 + n1 * 6;
     d2 := 11 - (d2 mod 11);
     if d2 >= 10 then d2 := 0;
        calculado := inttostr(d1) + inttostr(d2);
     digitado := num[13] + num[14];
     if calculado=digitado then
       Result := true
     else
        Result := false;
   except
     result := false;
   end;

end;


Function GeraTextoQuery(Query1: TDataSet;PtituloRel : String): TStrings;
var QtCampos, Indice,Tam : Integer;
    Linha,LinhaAux : string;

begin
   DecimalSeparator := ',';
   Query1.First;
   Result := TStringList.Create;
   if PtituloRel <> '' then
   begin
      Result.add(PtituloRel);
      Result.add('');
   end;
   QtCampos := Query1.FieldCount - 1;
   Linha := '';
   linhaAux := '';
   For Indice := 0 to QtCampos do
   begin
      Tam := Query1.Fields[Indice].DataSize;

      if Tam < length(Query1.Fields[indice].DisplayName) then
         Tam := length(Query1.Fields[indice].DisplayName);

      if Tam < Length(Query1.Fields[Indice].AsString) then
         Tam := Length(Query1.Fields[Indice].AsString);

      Linha := Linha + Rpad(Query1.Fields[indice].DisplayName,Tam,' ') + ' ';
      LinhaAux := LinhaAux + StrAll(Tam,'-') + ' ';
   end;

   Result.add(Linha);
   Result.add(LinhaAux);
   While not Query1.Eof do
   begin
      Linha := '';
      LinhaAux := '';
      For Indice := 0 to QtCampos do
      begin
         Tam := Query1.Fields[Indice].DataSize;
         if Tam < length(Query1.Fields[indice].DisplayName) then
            Tam := length(Query1.Fields[indice].DisplayName);

         if Tam < Length(Query1.Fields[Indice].AsString) then
            Tam := Length(Query1.Fields[Indice].AsString);

         LinhaAux := LinhaAux + Query1.Fields[Indice].AsString + '|';

         if PValinha(Query1.Fields[Indice].DataType) = 'E' then
            Linha := Linha + Rpad(Query1.Fields[Indice].AsString,Tam,' ') + ' '
         else
            Linha := Linha + Lpad(Query1.Fields[Indice].AsString,Tam,' ') + ' ';

      end;
      Result.Add(Linha);

      Query1.next;

   end;
end;

Function PVAlinha(tipo: TFieldType): Char;
begin
   if Tipo in [ftSmallint,ftInteger,ftWord,ftFloat,ftCurrency,ftBCD] then
      Result := 'D' //Alinha a direita
   else
      Result := 'E' // alinha a esquerda
end;
Function Vnm(Nm:String): Boolean;
begin
  Result := (nm = 'R');
end;
function Replace (Text,oldstring,newstring:string):string;
var atual, strtofind, originalstr:pchar;
NewText:string;
lenoldstring,lennewstring,m,index:integer;
begin //ReplaceStr
  NewText:=Text;
  originalstr:=pchar(Text);
  strtofind:=pchar(oldstring);
  lenoldstring:=length(oldstring);
  lennewstring:=length(newstring);
  Atual:=StrPos(OriginalStr,StrtoFind);
  index:=0;
  while Atual<>nil do
  begin //Atual<>nil
     m:=Atual - OriginalStr - index + 1;
     Delete(NewText,m,lenoldstring);
     Insert(newstring,NewText,m);
     inc(index,lenoldstring-lennewstring);
     Atual:=StrPos(Atual+lenoldstring,StrtoFind);
  end; //Atual<>nil
  Result:=NewText;
end; //Replace
{Function GeraTextoQuery(Query1: TAdoquery): TStrings;
var QtCampos, Indice,Tam : Integer;
    Linha,LinhaAux : string;

begin
   DecimalSeparator := ',';
   Query1.First;
   Result := TStringList.Create;

   QtCampos := Query1.FieldCount - 1;
   Linha := '';
   linhaAux := '';
   For Indice := 0 to QtCampos do
   begin
      Tam := Query1.Fields[Indice].DataSize;

      if Tam < length(Query1.Fields[indice].DisplayName) then
         Tam := length(Query1.Fields[indice].DisplayName);

      if Tam < Length(Query1.Fields[Indice].AsString) then
         Tam := Length(Query1.Fields[Indice].AsString);

      Linha := Linha + Rpad(Query1.Fields[indice].DisplayName,Tam,' ') + ' ';
      LinhaAux := LinhaAux + StrAll(Tam,'-') + ' ';
   end;

   Result.add(Linha);
   Result.add(LinhaAux);
   While not Query1.Eof do
   begin
      Linha := '';
      LinhaAux := '';
      For Indice := 0 to QtCampos do
      begin
         Tam := Query1.Fields[Indice].DataSize;
         if Tam < length(Query1.Fields[indice].DisplayName) then
            Tam := length(Query1.Fields[indice].DisplayName);

         if Tam < Length(Query1.Fields[Indice].AsString) then
            Tam := Length(Query1.Fields[Indice].AsString);

         LinhaAux := LinhaAux + Query1.Fields[Indice].AsString + '|';

         if PValinha(Query1.Fields[Indice].DataType) = 'E' then
            Linha := Linha + Rpad(Query1.Fields[Indice].AsString,Tam,' ') + ' '
         else
            Linha := Linha + Lpad(Query1.Fields[Indice].AsString,Tam,' ') + ' ';

      end;
      Result.Add(Linha);

      Query1.next;

   end;
end;}

end.
