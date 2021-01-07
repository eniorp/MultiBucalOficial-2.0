unit udm;

interface

uses



  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables,enio, DBXpress, SqlExpr, FMTBcd,IniFiles, ADODB,
  uFreeBoletoImage, uFreeBoleto,TypInfo, IdIOHandler, IdIOHandlerSocket,
  IdSSLOpenSSL, IdMessage, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,IdMultipartFormData,
  IdHTTP;

  const
            MultKey   = 12674;   {Mult default key}
            AddKey    = 35891;   {Add default key}

type

  String10 = String[10];
  TDM = class(TDataModule)
    QueryGenerica: TQuery;
    QueryGlobal: TQuery;
    QueryStatus: TQuery;
    SQLconn: TSQLConnection;
    ADOConn: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQueryMontaMenu: TADOQuery;
    ADOQueryVrPagto: TADOQuery;
    sp_gera_nr_titulo: TADOStoredProc;
    FreeBoleto: TFreeBoleto;
    QueryContasBanco: TQuery;
    QueryTitulos: TQuery;
    pGeraSeqFaturamento: TStoredProc;
    sp_relMensalidadeContrat: TStoredProc;
    sp_lastDayMonth: TStoredProc;
    sp_baixaTitulosOrcamento: TADOStoredProc;
    QueryDentista: TQuery;
    QueryDentistaCodigo: TIntegerField;
    QueryDentistaNome: TStringField;
    IdSMTP1: TIdSMTP;
    IdAntiFreeze1: TIdAntiFreeze;
    IdMessage1: TIdMessage;
    IdSSLIOHandlerSocket1: TIdSSLIOHandlerSocket;
    ADOQueryEmpresa: TADOQuery;
    IdHTTP1: TIdHTTP;
    FreeBoletoImagem: TFreeBoletoImagem;
    Qy_Aux: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
     StartKey : integer;
     function VerificVrRecibo(NrRecibo:string):Boolean;
     procedure CloneProperties(SourceComp, DestComp: TObject);
  public

     Function PValidaFace(PDenteFaces: String;cdServico: String;denteInformado: Boolean): Boolean;
     Function PValidaDente(VDente: String) : Boolean;

    function buscaCep(url:string; tp_file:string;path:string): String;
    function ValidarEMail(aStr: string): Boolean;
    function enviaEmail(assunto : string; mensagem: string; destinatario: string ): string;
    function execKNUreceitaCPFCNPJ(cpfCnpj : string; tipo: string ): string;


    procedure AlimentaDados(VBanco,VAgencia,VConta,VNmCedente,Msg1,Msg2,Numero_Titulo, seqFaturamento,nomeTitulo,endereco, bairro,cep,estado,cidade,cgc_cpf : string; data_emissao,data_vencimento : Tdate;valor, VrCobranca : real);
    procedure Clonaboleto;

    procedure AvisaSobreTrocaDeTabelasProtetico;
    procedure AvisaSobreTrocaDeTabelasDentisa;
    procedure ZeraDescontoVencidoBoleto(Plogin:string);
    procedure VerificaMsg(Codigo: String; Tela: char);
    procedure AlteraStatusOrc(NrOr:string);
    function GetTabPagtoProtetico(NrOrc,CdProt:string):string;
    procedure ColocaPSenhaProto(NmBancoProto:string);
    function VerifPermissao(PGrupo,Pproc,PsubProc,PcdMenuNovo: string):Boolean;overload;
    function VerifPermissao(NmComponente: string): Boolean;overload;
    function GetLasDayMonth(PData:TDate):String;
    Function Encrypt(const InString: string): string;
    Function Decrypt(const InString: string): string;
    procedure GravaLog(PForm,Etapa,MsgErro:string);
    procedure VerifNmMaquina;
    procedure IncluiItemRecibo(PNrRecibo,PNrTitulo, Pdesdobramento : string);
    Procedure ImprimeRecibo(NrRecibo:string);
    Function EmiteRecibo(Pfuncionario : string): String;
    procedure BeginTran;
    procedure Commit;
    procedure Rollback;
    function GetParam(P_param: String): String;
    function ExecutaComando(Sql: String):String; overload;
    function ExecutaComando(Sql: String;Campo:String):String;overload;
    function execmd(Sql: String):String; overload;
    function execmd(Sql: String;Campo:String):String; overload;


    procedure ExecutaQuery(Instrucao : String;Tipo: char);
    Function GetDataSrv : String10;
    Function now : TDatetime;
    Function Date : TDatetime;
    function PlanoAtivo(PcdPlano: String10): Boolean;
    function SoNum(Numero:String):String;
    function Tira_acento ( str: String ): String;
    Function So_letra(S : String): String;
    Function So_numero(S: String): String;
    Function So_alfa(S: String): String;
    Function RetiraTracoCPF(CpfStr: String):String;
    function getNrtituloFaturamento(cdContrat : String):String;

  end;

var
  DM: TDM;

implementation

uses Fundo,ReciboBaixa,Senha, Seletor, Orcamentos, PesquisaServicos,
  PesquisaDentista, Mensagem,tacio;

{$R *.DFM}

{ TDM }

function TDM.buscaCep(url:string; tp_file:string;path:string): String;
var
  Response: TStringStream;
  Arquivo: TIdMultipartFormDataStream;
  idHTTP1 : TidHTTP;

begin
    Response := TStringStream.Create('');
    Arquivo := TIdMultiPartFormDataStream.Create;
    Arquivo.AddFile(tp_file, path, tp_file+'/text');
    //criando objeto http
    idHTTP1 := TIdHTTP.Create(nil);
    idHTTP1.Request.CustomHeaders.Clear;
    idHTTP1.Request.Clear;
    idHTTP1.Request.ContentType := 'application/x-www-form-urlencoded';
    idHTTP1.Request.ContentEncoding := 'multipart/form-data';
    idHTTP1.Request.Referer := url;
    idHTTP1.Post(url, Arquivo, Response);

  //retorno da requisicao
   Result := Response.DataString;
   idHTTP1.Disconnect;

end;

function TDM.GetLasDayMonth(PData:TDate):String;

var dd,mm,yy : word;
begin
   decodedate(Pdata,yy,mm,dd);
   if mm <> 12 then
      inc(mm)
   else
   begin
      mm := 1;
      inc(yy);
   end;

   PData := encodedate(yy,mm,01);
   Pdata := Pdata - 1;
   Result := DateToStr(Pdata);

//   PData := Pdata +
end;

function TDM.ExecutaComando(Sql: String;Campo:String):String;
begin
   QueryGlobal.Close;
   QueryGlobal.sql.clear;
   QueryGlobal.sql.add(sql);
   Result := '';
   QueryGlobal.Open;
   if Campo <> '' then
      Result := QueryGlobal.FieldByName(Campo).AsString
   else
      Result := '';
end;

function TDM.execmd(Sql: String;Campo:String):String;
begin
    result := ExecutaComando(sql,campo);
end;

procedure TDM.IncluiItemRecibo(PNrRecibo,PNrTitulo, Pdesdobramento : string);
begin
   try
      dm.ExecutaComando('insert into i_recibo values (' + PNrRecibo + ',' +  PNrTitulo + ',''' + Pdesdobramento + ''')');
      dm.ExecutaComando('update recibo set vr_recibo = (select sum(valor_pago) from i_recibo i, receber r where r.numero_titulo = i.numero_titulo and r.desdobramento = i.desdobramento and recibo.nr_recibo = i.nr_recibo) where recibo.nr_recibo = ' + PNrRecibo );
   except
     on E: Exception do
        ShowMessage('Transa��o n�o conclu�da o t�tulo ' + PNrTitulo + ' n�o foi inclu�do ao recibo ' + PNrRecibo + ' Erro : ' + e.message);
   end;

end;

Function TDM.EmiteRecibo(Pfuncionario : string): String;
Var NrRecibo : string[10];
begin
   try
      dm.ExecutaComando('insert into recibo select isnull(max(nr_recibo),0) + 1,getdate(),0,''' + Pfuncionario + ''',''A'',NULL from recibo');
      NrRecibo := dm.ExecutaComando('select max(nr_recibo) m from recibo','m');
   except
     on E: Exception do
     begin
          ShowMessage('Ocorreu um erro ao tentar gravar o recibo!' + e.message);
        Result := '';
        exit;
     end;
   end;
   Result := NrRecibo;
end;

Procedure TDM.ImprimeRecibo(NrRecibo:string);
begin
   try
      if not VerificVrRecibo(NrRecibo) then
      begin
         ShowMessage('ATEN��O, n�o foi poss�vel imprimir o recibo o valor total difere da soma das baixas');
         exit;
      end;
      QrReciboBaixa := TQrReciboBaixa.create(self);
      QrReciboBaixa.QueryReceber.close;
      QrReciboBaixa.QueryReceber.sql[35] := NrRecibo;
      QrReciboBaixa.QueryReceber.sql[76] := NrRecibo;
      QrReciboBaixa.QueryReceber.open;
      QrReciboBaixa.QueryEmpresa.open;
      if (uppercase(GetNmMaquina) <> 'NETSERVER') and
         (GetIp <> '192.168.0.25') and
         (GetIp <> '10.1.0.203') then //uppercase(GetNmMaquina) <> 'ANALISTA_02') then
         QrReciboBaixa.print
      else
         QrReciboBaixa.Preview;
      QrReciboBaixa.Free;
   except
    on E: Exception do
       ShowMessage('O Recibo foi gravado com n�mero ' + NrRecibo + ' mas n�o foi poss�vel imprim�-lo, se o problema persistir feche o programa e abra-o novamente. Erro : ' + e.message)
   end;
end;
function TDM.VerificVrRecibo(NrRecibo:string):Boolean;
begin
   result := dm.execmd('select count(*) as qt from recibo re ,i_recibo i , receber r where re.nr_recibo = i.nr_recibo and i.numero_titulo = r.numero_titulo and i.desdobramento = r.desdobramento ' +
                       'and re.nr_recibo = ' + NrRecibo + ' group by re.nr_recibo,re.vr_recibo having re.vr_recibo - sum(r.valor_pago) not between -0.01 and 0.01','qt') = '';
end;
function TDM.ExecutaComando(Sql: String): String;
begin
   QueryGlobal.Close;
   QueryGlobal.sql.clear;
   QueryGlobal.sql.add(sql);
   QueryGlobal.ExecSQL;
end;
function TDM.execmd(Sql: String):String;
begin
  ExecutaComando(sql);
end;

procedure TDM.ExecutaQuery(Instrucao : String;Tipo: char);
begin
   QueryGenerica.Close;
   QueryGenerica.Sql.Clear;
   QueryGenerica.sql.Add(Instrucao);
   try
      if tipo = 'A' then
         QueryGenerica.Open
      else
         QueryGenerica.ExecSQL;
   except on E: Exception do
       ShowMessage('Erro ao executar o comando sql, erro : ' + e.Message);
   end;
end;

function TDM.GetDataSrv: String10;
begin
    QueryGenerica.Close;
    QueryGenerica.Sql.clear;
    QueryGenerica.Sql.Add('select convert(char(10),getdate(),103) as DtAtual');
    QueryGenerica.Open;
    Result := QueryGenerica.FieldByName('DtAtual').AsString;
end;

function TDM.PlanoAtivo(PcdPlano: String10): Boolean;
begin
    QueryGenerica.Close;
    QueryGenerica.Sql.clear;
    QueryGenerica.Sql.Add('select ativo from plano where codigo = ' + PcdPlano);
    QueryGenerica.Open;
    Result := QueryGenerica.FieldByName('Ativo').AsBoolean;
end;
procedure TDM.VerifNmMaquina;
var VNmMaquina : string[60];
begin
   try
      Formfundo.StatusBarFundo.Panels[3].Text := uppercase(GetNmMaquina);
      if Formfundo.Timer3.Enabled then
        exit;
      VNmMaquina := UpperCase(ExecutaComando('select estacaoTrab a from operador where codigo = ' + IntToStr(Senha.Codigo_Operador),'a'));
      if VNmMaquina = '' then
         exit;
      if Formfundo.StatusBarFundo.Panels[3].Text <> VNmMaquina then
      begin
         Formfundo.Timer3.Interval := StrToInt(dm.GetParam('TEMPLG')) * 60000;
         Formfundo.Timer3.Enabled := true;
      end;
   except;
   end;
end;

function TDM.now: TDatetime;
begin
   QueryGenerica.close;
   QueryGenerica.sql.clear;
   QueryGenerica.sql.add(' select getdate() as DataHora ');
   QueryGenerica.Open;
   Result := QueryGenerica.FieldbyName('DataHora').AsDatetime;
end;

function TDM.Date: TDatetime;
begin
   QueryGenerica.close;
   QueryGenerica.sql.clear;
   QueryGenerica.sql.add(' select convert(char(10),getdate(),103) as DataHora ');
   QueryGenerica.Open;
   Result := QueryGenerica.FieldbyName('DataHora').AsDatetime;
end;

function TDM.GetParam(P_param: String): String;
begin
   Result := ExecutaComando('select vl_parametro a from parametro where cd_parametro = ''' + P_param + '''','a');
   if QueryGlobal.bof and QueryGlobal.Eof then
   begin
      ShowMessage('ATEN��O!!! Parametro (' + P_param + ') n�o encontrado, Opera��o cancelada !');
      Abort;
   end;
end;

function TDM.SoNum(Numero:String):String;
var i : integer;
    aux: string;
begin
   aux:= '';
   for i := 1 to length(Numero) do
     if numero[i] in ['0'..'9'] then
       Aux := Aux + numero[i];
   result := aux;
end;

function TDM.Tira_acento ( str: String ): String;
var
i: Integer;
begin
   for i := 1 to Length ( str ) do
      case str[i] of

         '�': str[i] := 'a';
         '�': str[i] := 'e';
         '�': str[i] := 'i';
         '�': str[i] := 'o';
         '�': str[i] := 'u';
         '�': str[i] := 'a';
         '�': str[i] := 'e';
         '�': str[i] := 'i';
         '�': str[i] := 'o';
         '�': str[i] := 'u';
         '�': str[i] := 'a';
         '�': str[i] := 'e';
         '�': str[i] := 'i';
         '�': str[i] := 'o';
         '�': str[i] := 'u';
         '�': str[i] := 'a';
         '�': str[i] := 'e';
         '�': str[i] := 'i';
         '�': str[i] := 'o';
         '�': str[i] := 'u';
         '�': str[i] := 'a';
         '�': str[i] := 'o';
         '�': str[i] := 'n';
         '�': str[i] := 'c';
         '�': str[i] := 'A';
         '�': str[i] := 'E';
         '�': str[i] := 'I';
         '�': str[i] := 'O';
         '�': str[i] := 'U';
         '�': str[i] := 'A';
         '�': str[i] := 'E';
         '�': str[i] := 'I';
         '�': str[i] := 'O';
         '�': str[i] := 'U';
         '�': str[i] := 'A';
         '�': str[i] := 'E';
         '�': str[i] := 'I';
         '�': str[i] := 'O';
         '�': str[i] := 'U';
         '�': str[i] := 'A';
         '�': str[i] := 'E';
         '�': str[i] := 'I';
         '�': str[i] := 'O';
         '�': str[i] := 'U';
         '�': str[i] := 'A';
         '�': str[i] := 'O';
         '�': str[i] := 'N';
         '�': str[i] := 'C';
   end;
   Result := str;
end;

function Tdm.So_letra(S: String): String;
Var I : Byte;
   aux : String;
begin
   For I := 1 to Length(S) do
      if S[I] in ['a'..'z','A'..'Z',' '] then
        Aux := Aux + S[I];
   Result := Aux;
end;

function Tdm.So_numero(S: String): String;
Var I : Byte;
   aux : String;
begin
   For I := 1 to Length(S) do
      if S[I] in ['0'..'9'] then
        Aux := Aux + S[I];
   Result := Aux;
end;

function Tdm.So_alfa(S: String): String;
Var I : Byte;
   aux : String;
begin
   For I := 1 to Length(S) do
      if S[I] in ['a'..'z','A'..'Z','0'..'9',' '] then
        Aux := Aux + S[I];
   Result := Aux;
end;

function Tdm.RetiraTracoCPF(CpfStr: String):String;
var  Posicao : integer;
begin

     Posicao:=pos('.', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('.', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos('-', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('-', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos(' ', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos(' ', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     Posicao:=pos('/', CpfStr);
     while Posicao <> 0 do
           begin
             Posicao := pos('/', CpfStr);
             delete(CpfStr,Posicao,1);
           end;

     RetiraTracoCPF := CpfStr;
end;

procedure TDM.BeginTran;
begin
   FormFundo.DatabaseMultiOdonto.StartTransaction;
end;

procedure TDM.Commit;
begin
   FormFundo.DatabaseMultiOdonto.Commit;
end;

procedure TDM.Rollback;
begin
   FormFundo.DatabaseMultiOdonto.Rollback;
end;

procedure TDM.GravaLog(PForm, Etapa, MsgErro: string);
begin
    try
       ExecutaComando('insert into log_erro values (getdate(),''' + PForm + ''',''' + Etapa + ''',''' + TiraChar(MsgErro,'''') + ''')');
    except
    on E: Exception do
       showMessage('ATEN��O N�O FOI POSS�VEL GRAVAR O LOG DO ERRO, D� UM PRINT NESSA MENSAGEM DE ERRO SALVE NO APLICATIVO WORD E ENVIE PARA O RESPONS�VEL PELO SISTEMA' + #13 +
       e.message + #13 +
       msgErro);
    end;
end;

function TDM.Decrypt(const InString: string): string;
var
 I: Byte;
begin
  Result := '';
  StartKey := 981;  {Start default key}
  for I := 1 to Length(InString) do
  begin
     Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
     StartKey := (Byte(InString[I]) + StartKey) * MultKey + AddKey;
  end;
end;

function TDM.Encrypt(const InString: string): string;
var
   I: Byte;
begin
   StartKey := 981;  {Start default key}
   Result := '';
   for I := 1 to Length(InString) do
   begin
       Result := Result + CHAR(Byte(InString[I]) xor (StartKey shr 8));
       StartKey := (Byte(Result[I]) + StartKey) * MultKey + AddKey;
   end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
  var IniDBex: TIniFile;
      chave : string[15];
      aux : string;
begin


   if ADOConn.Connected then
      showMessage('Desconectar o ADOConn !');
   IniDBex := TInifile.Create(ExtractFilePath(Application.Exename) +  'paramMt.ini');
      ADOConn.ConnectionString := 'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ID=sa;';
      //ADOConn.ConnectionString := 'Provider=SQLNCLI.1;Password=sa;Persist Security Info=True;User ID=sa;';
      ADOConn.ConnectionString := ADOConn.ConnectionString + 'Data Source='     + IniDBex.ReadString('DBEXPRESS', 'HostName', '') + ';';
      ADOConn.ConnectionString := ADOConn.ConnectionString + 'Initial Catalog=' + IniDBex.ReadString('ALIAS', LowerCase(FormFundo.DatabaseMultiOdonto.AliasName), '');

      try
         ADOConn.Open;
      except
         ADOConn.ConnectionString := 'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ID=sa;';
         ADOConn.ConnectionString := ADOConn.ConnectionString + 'Data Source='     + IniDBex.ReadString('DBEXPRESS', 'Hostpadrao', '') + ';';
         ADOConn.ConnectionString := ADOConn.ConnectionString + 'Initial Catalog=' + IniDBex.ReadString('DBEXPRESS', 'databasePadrao', '');
         ADOConn.Open;
      end;
      

    if dm.execmd('select count(*) q  from parametro where cd_parametro = ''DBEXP''','q') = '0' then
      exit;
   IniDBex := TInifile.Create(ExtractFilePath(Application.Exename) +  'paramMt.ini');

   dm.SQLconn.Close;
   dm.SQLconn.Params.values['HostName'] := IniDBex.ReadString('DBEXPRESS', 'HostName', '');
   dm.SQLconn.Params.values['DataBase'] := IniDBex.ReadString('ALIAS', LowerCase(FormFundo.DatabaseMultiOdonto.AliasName), '');
   dm.SQLconn.Params.values['User_Name'] := 'sa';
   dm.SQLconn.Params.values['Password'] := 'sa';
 //  ShowMessage(dm.SQLconn.Params.values['HostName']);
//   ShowMessage(dm.SQLconn.Params.values['DataBase']);
   try
      try
        dm.SQLconn.Open;
      except
         if IniDBex.ReadString('DBEXPRESS', 'Hostpadrao', '') = '' then
         begin
            IniDBex.WriteString('DBEXPRESS', 'Hostpadrao', 'srv01\sql2000');
            IniDBex.WriteString('DBEXPRESS', 'databasePadrao', 'multiodonto');
         end;
         dm.SQLconn.Params.values['HostName'] := IniDBex.ReadString('DBEXPRESS', 'Hostpadrao', '');
         dm.SQLconn.Params.values['DataBase'] := IniDBex.ReadString('DBEXPRESS', 'databasePadrao', '');
         dm.SQLconn.Open;
      end;
      chave := dm.execmd('select datepart(ms,getdate()) + datepart(ss,getdate()) + datepart(mi,getdate()) + datepart(hh,getdate()) + datepart(dd,getdate()) + datepart(mm,getdate()) + datepart(yy,getdate()) as chave','chave');
      dm.execmd('update parametro set vl_parametro = ''' + chave + ''' where cd_parametro = ''DBEXP''');
//      dm.SQLQuery1.Close;
//      dm.SQLQuery1.SQL.Clear;
//      dm.SQLQuery1.sql.add('select vl_parametro from parametro where cd_parametro = ''DBEXP''');
//      dm.SQLQuery1.open;
//      if dm.SQLQuery1.FieldByName('vl_parametro').AsString <> Chave then
//      begin
//         ShowMessage('ATEN��O A BASE DE DADOS DO COMPONETE DBEXPRES N�O � A MESMA DO ALIAS ODBC CONFIGURADO, N�O � POSS�VEL ABRIR O SISTEMA');
//         application.Terminate;
//      end;
      ADOConn.Close;

      ADOConn.ConnectionString := 'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ID=sa;';
      //ADOConn.ConnectionString := 'Provider=SQLNCLI.1;Password=sa;Persist Security Info=True;User ID=sa;';
      ADOConn.ConnectionString := ADOConn.ConnectionString + 'Data Source='     + IniDBex.ReadString('DBEXPRESS', 'HostName', '') + ';';
      ADOConn.ConnectionString := ADOConn.ConnectionString + 'Initial Catalog=' + IniDBex.ReadString('ALIAS', LowerCase(FormFundo.DatabaseMultiOdonto.AliasName), '');

      try
         ADOConn.Open;
      except
         ADOConn.ConnectionString := 'Provider=SQLOLEDB.1;Password=sa;Persist Security Info=True;User ID=sa;';
         ADOConn.ConnectionString := ADOConn.ConnectionString + 'Data Source='     + IniDBex.ReadString('DBEXPRESS', 'Hostpadrao', '') + ';';
         ADOConn.ConnectionString := ADOConn.ConnectionString + 'Initial Catalog=' + IniDBex.ReadString('DBEXPRESS', 'databasePadrao', '');
         ADOConn.Open;
      end;
      ADOQuery1.Close;
      ADOQuery1.SQL.Clear;
      ADOQuery1.sql.add('select vl_parametro from parametro where cd_parametro = ''DBEXP''');
      ADOQuery1.open;
      if ADOQuery1.FieldByName('vl_parametro').AsString <> Chave then
      begin
         ShowMessage('ATEN��O A BASE DE DADOS DO COMPONETE ADO N�O � A MESMA DO ALIAS ODBC CONFIGURADO, N�O � POSS�VEL ABRIR O SISTEMA');
         application.Terminate;
      end


   except
      on E: exception do
      begin
        ShowMessage('N�o foi poss�vel se conectar ao banco de dados atraves da tecnologia DBEXPRESS, n�o � poss�vel abrir o sistema, verifique se a vari�vel HostName do arquivo PARAMMT.INI est� configurada para o servidor sql correto. ERRO : ' + E.Message);
        application.Terminate;
      end;
   end;
   IniDBex.free;
     aux := uppercase(GetNmMaquina);
     if dm.execmd('select count(*) qt where ''' + aux + ''' like ''%WINXP%%''','qt') <> '0' then
        showMessage('mensagem somente para winxp alterar free boleto em casa');

end;

function TDM.VerifPermissao(PGrupo,Pproc,PsubProc,PcdMenuNovo: string): Boolean;
begin
    if FormSeletor.Menu = FormSeletor.MainMenu2 then
    begin
      if PcdMenuNovo <> '0' then
      begin
         result := (dm.ExecutaComando('select count(*) q from permissao_grupo pg, operador o where pg.cd_menu = ' + PcdMenuNovo + ' and  pg.cd_grupo = o.cd_grupo and o.codigo = ' + IntToStr(Senha.Codigo_Operador),'q') = '1');
    
         if not result then
            result := (dm.ExecutaComando('select count(*) q from permissao_funcionario pf where pf.cd_menu = ' + PcdMenuNovo + ' and pf.cd_funcionario = ' + IntToStr(Senha.Codigo_Operador),'q') = '1');
      end
      else
      if (Pproc <> '0') and (PsubProc <> '0') then
      begin
         result := (dm.ExecutaComando('select count(*) q from permissao_grupo pg, operador o,menu_disponivel md where md.cd_menu = pg.cd_menu and md.seq_menu = ' + Pproc + ' and md.Subseq_menu = ' + PsubProc + ' and  pg.cd_grupo = o.cd_grupo and o.codigo = ' + IntToStr(Senha.Codigo_Operador),'q') = '1');
         if not result then
            result := (dm.ExecutaComando('select count(*) q from permissao_funcionario pf,menu_disponivel md where md.cd_menu = pf.cd_menu and md.seq_menu = ' + Pproc + ' and md.Subseq_menu = ' + PsubProc +  ' and pf.cd_funcionario = ' + IntToStr(Senha.Codigo_Operador),'q') = '1');
      end;
    end
    else
       result := (dm.ExecutaComando('select count(*) q from permissoes where codigo_operador = ' + IntToStr(Senha.Codigo_Operador) +
                        ' and codigo_grupo = ' + PGrupo  + ' and Codigo_Procedimento = ' + Pproc + ' and Codigo_SubProcedimento = ' + PsubProc,'q') = '1');

end;

function TDM.ValidarEmail(aStr: string): Boolean;
begin
 if aStr = '' then
 begin
  Result := False;
  exit;
 end;
 if (aStr[1] in ['0'..'9']) or (aStr[1] = ' ') then
 begin
    Result := False;
    exit;
 end ;
 aStr := Trim(UpperCase(aStr));
 if Pos('@', aStr) > 1 then
 begin
   Delete(aStr, 1, pos('@', aStr));
   Result := (Length(aStr) > 0) and (Pos('.', aStr) > 2);
 end
 else
   Result := False;
end;

function TDM.VerifPermissao(NmComponente: string): Boolean;
begin
    if FormSeletor.Menu = FormSeletor.MainMenu2 then
    begin
      result := (dm.ExecutaComando('select count(*) q from permissao_grupo pg, operador o,menu_disponivel md where md.cd_menu = pg.cd_menu and md.nm_menu = ''' + NmComponente + ''' and  pg.cd_grupo = o.cd_grupo and o.codigo = ' + IntToStr(Senha.Codigo_Operador),'q') = '1');

      if not result then
         result := (dm.ExecutaComando('select count(*) q from permissao_funcionario pf, menu_disponivel md where md.cd_menu = pf.cd_menu and md.nm_menu = ''' + NmComponente + ''' and pf.cd_funcionario = ' + IntToStr(Senha.Codigo_Operador),'q') = '1');
    end
    else
    ShowMessage('Rotina n�o pode ser usada com o Menu antigo');

end;

procedure TDM.ColocaPSenhaProto(NmBancoProto:string);
var NovaSenha:string;
begin
   QueryGlobal.close;
   QueryGlobal.SQL.Clear;
   QueryGlobal.SQL.Add('select codigo,senha from operador');
   QueryGlobal.open;
   AdoQuery1.close;
   AdoQuery1.SQL.Clear;
   AdoQuery1.sql.Add('select * from  ' + NmBancoProto + '..operador where codigo =');
   AdoQuery1.sql.Add('0');

   while not QueryGlobal.eof do
   begin
      NovaSenha := DM.Decrypt(QueryGlobal.FieldByName('senha').AsString) + 'p';
      NovaSenha := DM.Encrypt(NOvaSenha);
//      try
         AdoQuery1.Close;
         AdoQuery1.sql[1] := QueryGlobal.fieldByName('codigo').AsString;
         AdoQuery1.open;
         AdoQuery1.edit;
         AdoQuery1.FieldByName('senha').AsString := NovaSenha;
         AdoQuery1.post;
         //dm.execmd('update ' + NmBancoProto + '..operador set senha = ''' + NovaSenha +  ''' where codigo = ' + QueryGlobal.fieldByName('codigo').AsString);
  //    except
      //  beep;
    //  end;
      QueryGlobal.next;
   end;

end;


function TDM.GetTabPagtoProtetico(NrOrc, CdProt: string): string;
var CdTab : string;
    DtOrc : string[10];
begin
   Result := '';
   DtOrc := execmd('select convert(char(10),data_conferencia,103) dt from orcamento where numero = ' + NrOrc,'dt');
   if DtOrc <> '' then
   begin
      CdTab := execmd('set dateformat dmy select cd_tabela from TabPagXProtetico where cd_protetico = ' + cdProt + ' and ''' + DtOrc  + ''' between DtIni and dtFim','cd_tabela');
      if CdTab <> '' then
          Result := CdTab
      else
         ShowMessage('Tabela n�o encontrada, verifique se h� tabela de pagamento para este prot�tico para a data de aprova��o do or�amento = ' + DtOrc);
   end
   else
      ShowMessage('Orcamento n�o aprovado ou nr de or�amento n�o encontrado !');

end;

procedure TDM.AlteraStatusOrc(NrOr:string);
begin
   Application.CreateForm(TFormOrcamentos, FormOrcamentos);
     if NrOr <> '' then
     begin
        FormOrcamentos.GroupBoxProcura.Visible := true;
        FormOrcamentos.EditProcura.Text := NrOr;
        FormOrcamentos.EditProcuraExit(FormOrcamentos);
        FormOrcamentos.GroupBoxProcura.Visible := false;
     end;

   //FormOrcamentos.BitBtnPgDentista.enabled := ConsultaPagamentoDentista1.Enabled;
   FormOrcamentos.Tag := 1;
   FormOrcamentos.ShowModal;
   FormOrcamentos.Free;
end;

procedure TDM.AvisaSobreTrocaDeTabelasDentisa();
   //verifica se esta na data de avisar sobre a troca de tabelas do dentista e se o usuario logado deve ser avisado conforme paramatro UATT

var DtAvisoTroca : TDate;
begin
    if dm.execmd('select count(*) q from parametro where cd_parametro = ''UATT'' and vl_parametro like ''%' + senha.Apelido + '%''','q') <> '0' then
    begin
       DtAvisoTroca := StrToDate(dm.GetParam('DATT'));
       if DtAvisoTroca <= dm.Date then
       begin
          if dm.execmd('set dateformat dmy select count(*) q from  dentista where month(dt_inclusao) = month(getdate())','q') <> '0' then
             if Application.MessageBox('Deseja visualizar os Dentistas Aniversariantes do m�s? ? ','Aviso',MB_YesNo + MB_DEFBUTTON2) = MrYes then
             begin
                try
                   dm.execmd('set dateformat dmy update parametro set vl_parametro = convert(char(10),dateadd(month,1,vl_parametro),103) where cd_parametro = ''DATT''');
                   FormSeletor.AniversariantesportempodeEmpresaClick(FormFundo);
                except
                end;
             end;
       end;
    end;
end;


procedure TDM.AvisaSobreTrocaDeTabelasProtetico();
   //verifica se esta na data de avisar sobre a troca de tabelas do protetico e se o usuario logado deve ser avisado conforme paramatro UATTP

var DtAvisoTroca : TDate;
begin
    if dm.execmd('select count(*) q from parametro where cd_parametro = ''UATTP'' and vl_parametro like ''%' + senha.Apelido + '%''','q') <> '0' then
    begin
       DtAvisoTroca := StrToDate(dm.GetParam('DATTP'));
       if DtAvisoTroca <= dm.Date then
       begin
          if dm.execmd('set dateformat dmy select count(*) q from  protetico where month(dt_inclusao) = month(getdate())','q') <> '0' then
             if Application.MessageBox('Deseja visualizar os Prot�ticos Aniversariantes do m�s? ? ','Aviso',MB_YesNo + MB_DEFBUTTON2) = MrYes then
             begin
                try
                   dm.execmd('set dateformat dmy update parametro set vl_parametro = convert(char(10),dateadd(month,1,vl_parametro),103) where cd_parametro = ''DATTP''');
                   FormSeletor.ProtticosAniversariantesportempodeempresa1Click(FormFundo);
                except
                end;
             end;
       end;
    end;
end;


procedure TDM.ZeraDescontoVencidoBoleto(Plogin: string);
var msg : string;
begin
     // se usuario do grupo gerencia ou administracao executa comando grupo 2 e 6 gerencia e administracao
    if execmd('select count(*) q from operador where cd_grupo in(2,6) and apelido = ''' + PLogin + '''','q') <> '0' then
       // tira o desconto caso o mesmo esteja vencido..
       try
          execmd('update contratante set desc_boleto = 0, dt_termino_desconto = null where desc_boleto > 0 and dt_termino_desconto + 1 < getdate()');

       except on E: Exception do
          begin

           execmd('select codigo,nome from contratante where desc_boleto > 0 and dt_termino_desconto + 1 < getdate()','codigo');
           msg := 'Ocorreu erro ao tentar processar a procedure "ZeraDescontoVencidoBoleto" : ' + #13+
                  ' E R R O : ' + #13 + #13 + e.Message + #13 + #13 + 'CONTRATANTES COM DESCONTO DE BOLETO VENCIDO : '  + #13 + #13;

           while not QueryGlobal.Eof do
           begin
               msg := msg + QueryGlobal.FieldByName('nome').AsString  + #13;
               QueryGlobal.Next;
           end;
           showMessage(msg);
         end;
       end;

end;

procedure TDM.VerificaMsg(Codigo: String; Tela: char);
var Vmsg : String;
    VCodAux : String;
begin
   if codigo = '' then
      exit;
   FmMensagem := TFmMensagem.create(self);
   // Verif. se h� msg para o usu�rio
   VMsg := dm.executacomando('select cast(permite_desabilitar as varchar(1)) + ds_mensagem a,cd_tipo,cd_codigo,dtcriacao from mensagem where dtvalidade > getdate() -1 and cd_tipo = ''US'' and tipo_aviso in(''' + Tela + ''',''T'') and cd_codigo = ''' + codigo + '''','a');
   if VMsg = '' then // Verif. se h� msg para o contratante
   begin
      //Codigo := dm.executacomando('select codigo c from usuario where codigo_completo = ' + codigo,'c');
      VCodAux := dm.executacomando('select codigo c from usuario where codigo_completo = ''' + codigo + '''','c');
      VMsg := dm.executacomando('select cast(permite_desabilitar as varchar(1)) +  ds_mensagem a,cd_tipo,cd_codigo,dtcriacao from mensagem where dtvalidade > getdate() -1 and  cd_tipo = ''CO'' and tipo_aviso in(''' + Tela + ''',''T'') and cd_codigo = ''' + VCodAux + '''','a');
      if VMsg = '' then // Verif. se h� msg para o contratante titular
      begin
         Codigo := dm.executacomando('select contratante_titular c from usuario where codigo_completo = ''' + codigo + '''','c');
         VMsg := dm.executacomando('select cast(permite_desabilitar as varchar(1)) +  ds_mensagem a,cd_tipo,cd_codigo,dtcriacao from mensagem where dtvalidade > getdate() -1 and  cd_tipo = ''CT'' and tipo_aviso in(''' + Tela + ''',''T'') and cd_codigo = ''' + codigo + '''','a');
         if VMsg = '' then // Verif. se h� msg para o grupo de contratante
         begin
            codigo := dm.executacomando('select Grupo_Contratante g from contratante where codigo = ''' + VCodAux + '''','g');
            VMsg := dm.executacomando('select cast(permite_desabilitar as varchar(1)) +  ds_mensagem a,cd_tipo,cd_codigo,dtcriacao from mensagem where dtvalidade > getdate() -1 and  cd_tipo = ''GC'' and tipo_aviso in(''' + Tela + ''',''T'') and cd_codigo = ''' + codigo + '''','a')
         end;
      end;
   end;
   if VMsg <> '' then
   begin

      FmMensagem.CheckBoxNMostrar.Visible := copy(Vmsg,1,1) = '1';
      FmMensagem.Label2.Visible := FmMensagem.CheckBoxNMostrar.Visible;

      FmMensagem.Memo1.Lines.add(Copy(VMsg,2,length(Vmsg)));
      FmMensagem.ShowModal;
      if FmMensagem.CheckBoxNMostrar.Visible and FmMensagem.CheckBoxNMostrar.checked then
        dm.execmd('set dateformat dmy update mensagem set dtValidade = getdate() -1 where cd_tipo = ''' + QueryGlobal.FieldByName('cd_tipo').AsString +
                  ''' and cd_codigo = ' + QueryGlobal.FieldByName('cd_codigo').AsString + ' and dtcriacao = ''' + QueryGlobal.FieldByName('dtcriacao').AsString + '''');

   end;
   FmMensagem.Free;
end;

function TDM.getNrtituloFaturamento(cdContrat: String): String;
begin
   sp_gera_nr_titulo.close;
   sp_gera_nr_titulo.Parameters[1].Value := cdContrat;
   sp_gera_nr_titulo.ExecProc;
   result := sp_gera_nr_titulo.Parameters[2].Value;
end;

procedure TDM.AlimentaDados(VBanco,VAgencia,VConta,VNmCedente,Msg1,Msg2,Numero_Titulo, seqFaturamento,nomeTitulo,endereco, bairro,cep,estado,cidade,cgc_cpf : string; data_emissao,data_vencimento : Tdate;valor, VrCobranca : real);

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

//  FreeBoleto.DataDocumento         := Trunc(QueryTitulos.FieldByName('Data_Emissao').AsDateTime);
//  FreeBoleto.Documento             := QueryTitulos.FieldByName('Numero_Titulo').AsString;
//  FreeBoleto.Vencimento            := QueryTitulos.FieldByName('data_vencimento').AsDateTime;

//  FreeBoleto.Valor                 := QueryTitulos.FieldByName('valor').AsFloat + VrCobranca;
  FreeBoleto.DataDocumento         := Trunc(data_emissao);
  FreeBoleto.Documento             := Numero_Titulo;
  FreeBoleto.Vencimento            := data_vencimento;

  FreeBoleto.Valor                 := valor + VrCobranca;

  if FreeBoleto.Cedente.CodigoBanco = '104' then
     FreeBoleto.NossoNumero := FreeBoleto.Documento
  else
//  FreeBoleto.NossoNumero           := pGeraSeqFaturamento.ParamByName('@seq').AsString;
  FreeBoleto.NossoNumero := seqFaturamento;

  FreeBoleto.Cedente.ContaCorrente := VConta;
  //FreeBoleto.sacado.Nome           := QueryTitulos.FieldByName('nome').AsString;
  FreeBoleto.sacado.Nome           := nomeTitulo;

  FreeBoleto.sacado.Endereco    := endereco;

  FreeBoleto.sacado.Bairro      := bairro;
  FreeBoleto.sacado.Cep         := cep;
  FreeBoleto.sacado.Estado      := estado;
  FreeBoleto.sacado.Cidade      := cidade;

  {if QueryTitulos.FieldByName('tipo_correspondencia').AsString = 'Resid�ncial' then
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
  }
  //FreeBoleto.sacado.CNPJ_CPF      := QueryTitulos.FieldByName('cgc_cpf').AsString;
  FreeBoleto.sacado.CNPJ_CPF      := cgc_cpf;
  FreeBoleto.preparar;
end;

procedure TDM.Clonaboleto;
var CloneBoleto:TFreeBoleto;
begin
   CloneBoleto := TFreeBoleto.create(nil);
   CloneProperties(FreeBoleto,CloneBoleto);

   FreeBoletoImagem.ListaBoletos.Add(CloneBoleto);

end;

procedure TDM.CloneProperties(SourceComp, DestComp: TObject);
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

function TDM.enviaEmail(assunto : string; mensagem: string; destinatario: string ): string;
begin
   result := '';
   IdSMTP1.Host := GetParam('HOSTEM'); // 'email-ssl.com.br';
   IdSMTP1.IOHandler := IdSSLIOHandlerSocket1;
   IdSMTP1.Password := GetParam('PWDEMA'); //'Mltbcl*967258';
   IdSMTP1.Port := strToint(GetParam('PORTMA')); //465;
   IdSMTP1.Username := GetParam('EMPADR');//'sistema@multibucal.com.br';
   IdSMTP1.AuthenticationType:= atLogin;
   IdSSLIOHandlerSocket1.SSLOptions.Method := sslvSSLv23;
   IdSSLIOHandlerSocket1.SSLOptions.Mode := sslmClient;

   IdMessage1.MessageParts.Clear;
   IdMessage1.From.Address:= 'sistema@multibucal.com.br';
   IdMessage1.Subject:= assunto;
   IdMessage1.ContentType:='text/html';
   IdMessage1.Body.clear;
   IdMessage1.Body.Add(mensagem);
   IdMessage1.Recipients.EMailAddresses := destinatario;
   try
      if not IdSMTP1.Connected then
         IdSMTP1.Connect;
      IdSMTP1.Authenticate;
      IdSMTP1.Send(IdMessage1);
   except on E : exception do
      result := e.Message;

   end;
   IdSMTP1.Disconnect;
end;

function TDM.execKNUreceitaCPFCNPJ(cpfCnpj : string; tipo: string ): string;
const
   ReadBuffer = 2400;
var

   DosApp:String;
   Security	      : TSecurityAttributes;
   ReadPipe,WritePipe : THandle;
   start	      : TStartUpInfo;
   ProcessInfo	      : TProcessInformation;
   Buffer	      : Pchar;
   BytesRead	      : DWord;
   Apprunning	      : DWord;
   resultado : string;
   indice,Qtde : integer;
begin
   execKNUreceitaCPFCNPJ := 'ERRO';
   DosApp := dm.GetParam('KNU');
   if tipo = 'CPF' then
      DosApp := DosApp + ' receitaCPF ' + cpfCnpj
   else
     DosApp := DosApp + ' receitaCNPJ ' + cpfCnpj;

   indice := 0;
   qtde := 0;
   resultado := '';
//   memo1.lines.add('log 1');
   With Security do begin
      nlength := SizeOf(TSecurityAttributes) ;
      binherithandle := true;
      lpsecuritydescriptor := nil;
   end;
//   memo1.lines.add('log 2');
   if Createpipe (ReadPipe, WritePipe, @Security, 0) then
   begin
//      memo1.lines.add('log 3 entrou no if Createpipe (ReadPipe, WritePipe, @Security, 0) then');
      Buffer := AllocMem(ReadBuffer + 1) ;
//      memo1.lines.add('log 4 buffer : ' + String(Buffer));
      FillChar(Start,Sizeof(Start),#0) ;
      start.cb := SizeOf(start) ;
      start.hStdOutput := WritePipe;
      start.hStdInput := ReadPipe;
      start.dwFlags := STARTF_USESTDHANDLES +
      STARTF_USESHOWWINDOW;
      start.wShowWindow := SW_HIDE;
      if CreateProcess(nil,
		       PChar(DosApp),
		       @Security,
		       @Security,
		       true,
		       NORMAL_PRIORITY_CLASS,
		       nil,
		       nil,
		       start,
		       ProcessInfo)	 then
      begin
//         memo1.lines.add('log 5 : entrou no       if CreateProcess(nil, antes do repeat Apprunning <> WAIT_TIMEOUT , Apprunning = ' + IntTostr(Apprunning) + ' WAIT_TIMEOUT = ' + intToStr(WAIT_TIMEOUT)  );
	      // repeat
    	    Apprunning := WaitForSingleObject(ProcessInfo.hProcess,100) ;
	        Application.ProcessMessages;
//      	 until (Apprunning <> WAIT_TIMEOUT) ;
//         memo1.lines.add('log 6 : antes do repeat until (BytesRead < ReadBuffer) ; BytesRead = ' + IntToStr(BytesRead) + 'ReadBuffer = ' + IntToStr(ReadBuffer));
      	 Repeat
   	       BytesRead := 0;
   	       ReadFile(ReadPipe,Buffer[0],ReadBuffer,BytesRead,nil) ;
	         Buffer[BytesRead]:= #0;
     	     OemToAnsi(Buffer,Buffer) ;
	         resultado := resultado + String(Buffer) ;
     	  until (BytesRead < ReadBuffer) ;
      end;

      indice := pos('nome: ',resultado);

      Qtde := pos('situacao: ',resultado);
//            showmessage(inttostr(indice) + ' ' + inttostr(qtde));
      Qtde := Qtde - (indice + 6); // 6 pra descontar a string 'nome: '(pra nao copia-la
      if (indice <> 0) and (Qtde <> 0) then
      begin
         resultado := trim(copy(resultado,indice + 6,Qtde));

      end;

      FreeMem(Buffer) ;
      CloseHandle(ProcessInfo.hProcess) ;
      CloseHandle(ProcessInfo.hThread) ;
      CloseHandle(ReadPipe) ;
      CloseHandle(WritePipe) ;
      result := resultado;
   end;



end;

Function TDM.PValidaDente(VDente: String) : Boolean;
var rs : boolean;
begin
   rs := true;
   if Copy(VDente,1,2) = '' then
   begin
      rs := false;
      ShowMessage('Para este servi�o � necess�rio informar o Dente !');
   end;
   if dm.ExecutaComando('select count(*) a from dente where cd_dente = ' + Copy(VDente,1,2),'a') = '0' then
   begin
      rs := false;
      ShowMessage('C�digo de dente n�o encontrado(' + VDente + ') !');
   end;
   result := rs;
end;

Function TDM.PValidaFace(PDenteFaces: String;cdServico: String;denteInformado: Boolean): Boolean;
Var VFace: String[5];
    I,Tam: byte;
    VErro: Boolean;
    rs : boolean;
begin
   rs := true;
   if denteInformado then
      PValidaDente(Copy(PDenteFaces,1,2)); // as 2 prim posicoes eh o dente

   VFace := copy(PDenteFaces,3,5);
   Tam   := Length(copy(PDenteFaces,3,5));
   VErro := False;

   if Tam = 0 then // face n�o informada
   begin
      rs := false;
      ShowMessage('Para este servi�o � necess�rio informar o dente e a face!');
   end;

   if denteInformado then
   begin
      for i := 1 to Tam do
      begin
          if dm.ExecutaComando('select count(*) a from denteXface where cd_dente = ' +
          Copy(PDenteFaces,1,2) + ' and cd_face = ''' + VFace[i] + '''','a') = '0' then
          VErro := True;
       end;

       if VErro then
       begin
          rs := false;
          ShowMessage('A(s) face(s) informada(s) (' + VFace + ') est�(�o) inconsistente(s), ou h� face que n�o pertence ao dentes, opera��o cancelada !');
       end;
   end;

   // Verifica se a qtde de faces informada � igual a qtde definida no servico

   I := StrToInt(dm.executacomando('select qt_face q from servicos where codigo = ' + cdServico,'q'));

   if I <> Tam then // I contem a qt de faces do servico e Tam contem a qt de faces digitada
   begin
      rs := false;
      ShowMessage('Este servi�o est� parametrizado para ser executado em ' + IntToStr(I) + ' faces, por�m foram informadas ' + IntToStr(Tam) + ' faces, verifique !');
   end;
   if dm.executacomando('select count(*) qt from servicoXface where cd_servico = ''' + cdServico + '''','qt') <> '0' then
   begin
      for i := 1 to Tam do
      begin
         if dm.ExecutaComando('select count(*) a from ServicoXface where cd_servico = ' +
            cdServico + ' and cd_face = ''' + VFace[i] + '''','a') = '0' then
         begin
            rs := false;
            ShowMessage('Este servi�o possui delimita��o de faces. A face ' + VFace[i] + ' n�o est� na rela��o de faces permitidas para este servi�o, d�vidas consultar o cadastro deste servi�o(Op��o Delimitar Face)');
         end;
      end;
   end;
   result := rs;
end;


end.



