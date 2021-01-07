unit U_frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComObj, ActiveX, CAPICOM_TLB, MSXML2_TLB, XPMan;

type
  TfrmMain = class(TForm)
    btnExecutar: TButton;
    edtXML: TEdit;
    btnSelectFile: TButton;
    mmXML: TMemo;
    Label1: TLabel;
    btnSalvar: TButton;
    OpenDialog: TOpenDialog;
    btnValidar: TButton;
    XPManifest1: TXPManifest;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExecutarClick(Sender: TObject);
    procedure btnSelectFileClick(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
  private
    { Private declarations }
    FXMLDoc: IXMLDOMDocument3;
    FInitialized: Boolean;

  public
    { Public declarations }
    MainDir: String;

    procedure CleanObjects();
    function InitObjects(): Boolean;
    function LoadXML(sFile: String): Boolean;
    function SignXML(Doc: IXMLDOMDocument3): Boolean;
    function ValidateXML(SchemaPath : String; Load: Boolean = False): Boolean;
  end;

var
  frmMain: TfrmMain;

implementation

uses VarUtils;

{$R *.dfm}

const
  DS  = 'xmlns:ds="http://www.w3.org/2000/09/xmldsig#"';

//*****************************************************
// RemoveSignatures:
//  - Remover os tags Signature do XML
//*****************************************************
function RemoveSignatures(D: IXMLDOMDocument3): Boolean;
var
  oSigs: IXMLDOMNodeList;
begin
  try
    D.setProperty('SelectionNamespaces', DS);
    oSigs := D.selectNodes('.//ds:Signature');
    while (oSigs.length <> 0) do
      begin
        oSigs[0].parentNode.removeChild(oSigs[0]);
        oSigs := D.selectNodes('.//ds:Signature');
      end;
    oSigs := D.selectNodes('.//Signature');
    while (oSigs.length <> 0) do
      begin
        oSigs[0].parentNode.removeChild(oSigs[0]);
        oSigs := D.selectNodes('.//Signature');
      end;
    Result := (oSigs.length = 0);
  except
    Result := False;
  end;
end;

//*****************************************************
// AddDSig:
//  - Adiciona o TAG Signature no formato DSig ao NODE
//*****************************************************
function AddDSig(D: IXMLDOMDocument; N: IXMLDOMNode): Boolean;
const
  sDSig = #$D#$A+
          '<ds:Signature Id="Sig" xmlns:ds="http://www.w3.org/2000/09/xmldsig#">'+#$D#$A+
          ' <ds:SignedInfo>'+#$D#$A+
          '  <ds:CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315" />'+#$D#$A+
          '  <ds:SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1" />'+#$D#$A+
          '  <ds:Reference URI="#data">'+#$D#$A+
          '   <ds:Transforms>'+#$D#$A+
          '    <ds:Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature" />'+#$D#$A+
          '   </ds:Transforms>'+#$D#$A+
          '   <ds:DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1" />'+#$D#$A+
          '   <ds:DigestValue />'+#$D#$A+
          '  </ds:Reference>'+#$D#$A+
          ' </ds:SignedInfo>'+#$D#$A+
          ' <ds:SignatureValue />'+#$D#$A+
          ' <ds:KeyInfo>'+#$D#$A+
          '  <ds:X509Data>'+#$D#$A+
          '   <ds:X509Certificate/>'+#$D#$A+
          '  </ds:X509Data>'+#$D#$A+
          ' </ds:KeyInfo>'+#$D#$A+
          '</ds:Signature>'+#$D#$A+
          #$D#$A;

var
  oDoc: IXMLDOMDocument3;
  oRef,
  oSig: IXMLDOMNode;
  oId1,
  oId2: IXMLDOMAttribute;
begin
  Result := False;
  oId1 := nil;
  oDoc := (CoDOMDocument50.Create as IXMLDOMDocument3);
  oDoc.async := False;
  oDoc.validateOnParse := True;
  oDoc.preserveWhiteSpace := True;
  oDoc.resolveExternals := False;

  Try
    //Carrega XMLDsig
    oDoc.loadXML(sDSig);
    oDoc.setProperty('SelectionNamespaces', DS);
    oSig := oDoc.documentElement.selectSingleNode('//ds:Signature');;

    //Define Id da TAG Signature
    if (N.attributes<>nil) then
      oId1 := (N.attributes.getNamedItem('Id') as IXMLDOMAttribute);
    if (oId1=nil) then
      raise Exception.Create('Um Tag '+N.nodeName+' está sem o atributo Id.');
    oId2 := oDoc.createAttribute('Id');
    oId2.nodeValue := 'Ass_'+oId1.nodeValue;
    oSig.attributes.setNamedItem(oId2);

    //Define URI da TAG Reference
    oRef := oDoc.documentElement.selectSingleNode('//ds:Reference');;
    oId2 := (oRef.attributes.getNamedItem('URI') as IXMLDOMAttribute);
    oId2.nodeValue := '#'+oId1.nodeValue;

    //Append
    N.parentNode.appendChild(oSig);
    Result := True;
  finally
    oDoc := nil;
    oSig := nil;
    oId1 := nil;
  end;
end;

//*****************************************************
// AddSign:
//  - Computa e adiciona a assinature ao NODE no XML
//*****************************************************
function AddSign(D: IXMLDOMDocument; N: IXMLDOMNode; Cert, Store: OleVariant): Boolean;
var
  h: LongWord;
  X: IXMLDOMNode;
  sProvider, sContainer: String;
  oDoc: IXMLDOMDocument;
  pKey, pKeyOut: IXMLDSigKey;
  PrivateKey: OleVariant;
  oDSig: IXMLDigitalSignatureEx;
  oX509: IXMLDOMNodeList;
begin
  Try
    //Cria TAG Signature
    oDoc := D;
    oDSig := (CoMXDigitalSignature50.Create as IXMLDigitalSignatureEx);
    oDSig.signature := N;

    //Chave Privada
    try
      //OBS: Usar OleVariant para corrigir erro de TLB no Delphi
      PrivateKey := (Cert.PrivateKey);
    except
      h := EOleException(ExceptObject).ErrorCode;
      if  h <> $12F008 then
        Raise;
      if (PrivateKey = null) then
        Raise Exception.Create('Problema ao acessar Chave privada de Certificado.');
    end;

    //Para criar uma KEY deve ser informado o Provider e o Container
    sProvider := PrivateKey.ProviderName;
    sContainer:= PrivateKey.ContainerName;
    pKey := oDSig.createKeyFromCSP(CAPICOM_PROV_RSA_FULL, sProvider, sContainer, 0);

    if (pKey = nil) then
      Exception.Create('Invalid key.');
    try
      oDSig.signature := N;
      //Deve ser informado após a Signature para
      //que os Certificados X509 sejam anexados!
      oDSig.store := Store;
      pKeyOut := oDSig.sign(pKey, CERTIFICATES or PURGE);

      //Assinando com a propriedade store atribuida
      //faz com que todos os certificados do store
      //sejam anexados, por isso tem que remover os
      //desnecessários
      oX509 := N.selectNodes('.//ds:X509Data');
      while (oX509.length > 1) do
        begin
          X := oX509[pred(oX509.length)];
          X.parentNode.removeChild(X);
          oX509 := N.selectNodes('.//ds:X509Data');
        end;

    except
      h := EOleException(ExceptObject).ErrorCode;
      if  h <> $80004005 then
        raise;
    end;

    Result := True;
  except
    Result := False;
    oDSig := nil;
  end;
  oDSig := nil;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  MainDir:=ExtractFilePath(Application.ExeName);
  edtXML.Text:=MainDir+'RPS.xml';
  FXMLDoc:= nil;
  FInitialized:= False;
end;

procedure TfrmMain.CleanObjects();
begin
   //Release automatico
   FInitialized := False;
   FXMLDoc := nil;
end;

function TfrmMain.InitObjects(): Boolean;
begin
  if (not FInitialized) then
  begin
    FXMLDoc := (CoDOMDocument50.Create as IXMLDOMDocument3);
    if (FXMLDoc = nil) then
       Exception.Create('A DLL MSXML5 não foi encontrada.');

    FXMLDoc.async := False;
    FXMLDoc.validateOnParse := True;
    FXMLDoc.preserveWhiteSpace := True;
    FXMLDoc.resolveExternals := False;

    FInitialized :=  True;
  end;
  Result := FInitialized;
end;

function TfrmMain.LoadXML(sFile: String): Boolean;
var P: IXMLDOMParseError;
begin
   if (not FileExists(sFile)) then
      Exception.CreateFmt('O arquivo %s não pode ser lido.', [sFile]);

   InitObjects();
   Result := FXMLDoc.Load(sFile);
   if not Result then
   begin
     P := FXMLDoc.parseError;
     ShowMessage(P.reason +
                 'Linha: '+IntToStr(P.line) + #$D#$A +
                 'Posição: '+IntToStr(P.linepos));
   end;
end;

function TfrmMain.SignXML(Doc: IXMLDOMDocument3): Boolean;
const
  sCert: array [Boolean] of string = ('s',  '');
  sDisp: array [Boolean] of string = ('is', 'l');
var
  i: Cardinal;
  oNode: IXMLDOMNode;
  Sett, Certs, StoreSrc, StoreDst, Cert: OleVariant;
  oRps, oLote, oSigs: IXMLDOMNodeList;
  s1, s2: String;
begin
   Try
     Sett := CoSettings.Create;
     Sett.EnablePromptForCertificateUI := True;
     StoreSrc := CoStore.Create;
     StoreSrc.Open(CAPICOM_CURRENT_USER_STORE, 'MY', CAPICOM_STORE_OPEN_EXISTING_ONLY);
     StoreDst := CoStore.Create;
     StoreDst.Open(CAPICOM_CURRENT_USER_STORE, 'TMP', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);
     Certs  := StoreSrc.Certificates;

     //Remove certificados sem a private key.
     If Certs.Count > 0 then
       Certs := Certs.Find(CAPICOM_CERTIFICATE_FIND_EXTENDED_PROPERTY, CAPICOM_PROPID_KEY_PROV_INFO);

     //Somente certificados com data válida.
     If Certs.Count > 0 Then
       Certs := Certs.Find(CAPICOM_CERTIFICATE_FIND_TIME_VALID);

     //Filtra
     case Certs.Count of
         0: Raise Exception.Create('Erro: Nenhum certificado vãlido pode ser encontrado.');
         1: Cert := IInterface(Certs.Item[1]) as ICertificate2;
       else begin
              Try
                Cert := null;
                s1 := sCert[Certs.Count = 0];
                s2 := sDisp[Certs.Count = 0];
                Certs := Certs.Select(Format('Certificado%s disponíve%s', [s1, s2]),
                                      'Selecione o Certificado Digital para uso', FALSE);
                Cert := IInterface(Certs.Item[1]) as ICertificate2;
              Except
                on E: EOleException do
                  begin
                    i := e.ErrorCode;
                    //Usuário abortou a seleção
                    if i = CAPICOM_E_CANCELLED then
                      Abort()
                    else
                      Raise;
                  end;
              End;
            end;
     end;

     if not VarIsNull(Cert) then
     begin
       //Limpa do Store os Outros Certificados deixando só o selecionado
       //OBS: Importante só haver 1 certificado no Store Destino
       //     senão o XML ficará com vários X509DATA
       StoreDst.Certificates.Clear;
       StoreDst.Add(Cert);

       // Exclui todas nodes <Signature>.
       RemoveSignatures(Doc);

       // Encontra o node <LoteRps>.
       oLote:= FXMLDoc.selectNodes('.//LoteRps');
       if (oLote.length = 0) then
          raise Exception.Create('Nenhuma Tag LoteRps foi encontrada no XML.');
       //Adiciona Tag de Assinatura para Lote
       AddDSig(Doc, oLote[0]);

       // Encontra os nodes <InfRps>.
       oRps := Doc.selectNodes('.//Rps/InfRps');
       if (oRps.length = 0) then
          raise Exception.Create('Nenhuma Tag InfRps foi encontrada no XML.');
       //Adiciona Tag de Assinatura para CADA RPS
       for i := 0 to pred(oRps.length) do
         AddDSig(Doc, oRps[i]);

       //Assina cada Tag de Assinatura
       Doc.setProperty('SelectionNamespaces', DS);
       oSigs := Doc.selectNodes('.//ds:Signature');
       if oSigs.length > 0 then
         for i := (oSigs.length-1) downto 0 do
         begin
           oNode := oSigs.item[i];
           AddSign(Doc, oNode, Cert, StoreDst);
         end;

       //Assina Tag de Assinatura do LoteRps
       //oSigs := Doc.selectNodes('.//ds:Signature');
       //if oSigs.length > 0 then
       //  AddSign(Doc, oSigs.item[pred(oSigs.length)], Cert, Store);
     end;

     //if (pKeyOut = nil) then
     //  Exception.Create('Falha durante assinatura.\n');
   except
     Sett := null;
     StoreDst := null;
     StoreSrc := null;
     raise;
   end;
   //Fechar Store
   Sett := null;
   StoreDst := null;
   StoreSrc := null;
   Result := true;
end;

Function TfrmMain.ValidateXML(SchemaPath : String; Load: Boolean = False): Boolean;
var
  ParseError  : IXMLDOMParseError;
  Schema      : XMLSchemaCache;

begin
  Try
    InitObjects();

    Load := mmXML.Lines.Count=0;
    if Load then
      LoadXML(edtXML.Text)
    else
      begin
        FXMLDoc.validateOnParse := True;
        if not FXMLDoc.loadXML(mmXML.Lines.Text) then
          begin
            ParseError:= FXMLDoc.parseError;
            ShowMessage('Erro:  '+ParseError.reason+#$D#$A+
                        'Linha: '+IntToStr(ParseError.line)+#$D#$A+
                        'Pos:   '+IntToStr(ParseError.linepos));
          end;
      end;

    Schema := CoXMLSchemaCache50.Create;

    //OBS: Adicione os Schemas para serem validados
    Schema.add('http://www.ginfes.com.br/servico_enviar_lote_rps_envio_v03.xsd', SchemaPath+'servico_enviar_lote_rps_envio_v03.xsd');

    FXMLDoc.schemas:= Schema;
    ParseError:= FXMLDoc.validate;

    Result:= (ParseError.errorCode = 0) or
             (ParseError.errorCode = -1072897500);

    if (Not Result and (ParseError.errorCode <> S_OK)) then
      ShowMessage('Erro:  '+ParseError.reason+#$D#$A+
                  'Linha: '+IntToStr(ParseError.line)+#$D#$A+
                  'Pos:   '+IntToStr(ParseError.linepos));
  finally
    ParseError:=Nil;
    Schema:=Nil;
  end;
end;

procedure TfrmMain.btnSalvarClick(Sender: TObject);
var
  S: string;
begin
  If Trim(mmXML.Lines.Text)<>'' Then
    begin
      // Workaroud: arquivo com extensões xxx.xml
      S := ExtractFileName(edtXML.Text);
      S := StringReplace(S, '.sig.xml', '.xml', []);
      S := ExtractFilePath(edtXML.Text)+S;
      mmXML.Lines.SaveToFile(ChangeFileExt(S, '.sig.xml'));
    end;
end;

procedure TfrmMain.btnExecutarClick(Sender: TObject);
begin
   if ( CoInitialize(nil) = E_FAIL) then
   begin
     MessageDlg('Nao foi possivel inicializar a COM LIB!', mtError, [mbOk], 0);
     Abort();
   end;

   Try
     if (not initObjects()) then
     begin
        cleanObjects();
        Abort();
     end;

     mmXML.Lines.Clear;
     if (LoadXML(edtXML.Text)) then
       begin
         if (SignXML(FXMLDoc)) then
           mmXML.Lines.Text := FXMLDoc.xml
         else
           MessageDlg('Falha na Assinatura!', mtError, [mbOk], 0);

         if ValidateXML(ExtractFilePath(Application.ExeName)+'Schemas\') then
           MessageDlg('XML Validado com sucesso!', mtInformation, [mbOk], 0);
       end;

   finally
     cleanObjects();
   end;
end;

procedure TfrmMain.btnSelectFileClick(Sender: TObject);
begin
  OPenDialog.Filter:='Arquivos XML|*.xml';
  If OpenDialog.Execute then
    edtXML.Text:=OpenDialog.FileName;
end;

procedure TfrmMain.btnValidarClick(Sender: TObject);
begin
  if ValidateXML(ExtractFilePath(Application.ExeName)+'Schemas\', False) then
    MessageDlg('XML Validado com sucesso!', mtInformation, [mbOk], 0);
end;

end.
