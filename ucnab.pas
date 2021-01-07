unit ucnab;

interface

type string30 = String[30];
type string10 = String[10];
type string01  = String[1];
type TCnab = class(TObject)
   private
      function DelPonto(ValorStr: String):String;
   public
      Function HeaderArq_cnab240(
                PBanco       : String10;
                PLote        : String10;
                PRegistro    : string01;
                Ptipo_insc   : string01;
                PNrInsc      : String30;
                PCd_cedente  : String30;
                Pagencia     : String10;
                PdgAgencia   : string01;
                Pconta       : String10;
                PNomeEmp     : String30;
                PNomeBanco   : String30;
                PCdRemRet    : string01;
                PdtGeracao   : String10;
                PHRgeracao   : String10;
                Pseq         : String10;
                PVersaoLayout: String10;
                PDensidade   : String10;
                PTpServico   : String10;
                PCdOcorr     : String10): String;

      Function HeaderLote_cnab240(
                  Pbanco     :String10;
                  Plote      :String10;
                  Pregistro  : string01;
                  Poperacao  :string01;
                  Pservico   :String10;
                  Pforma_lanc:String10;
                  PlayoutLote:String10;
                  Ptipo_insc :string01;
                  PNrInsc    :String30;
                  Pcd_cedente:String10;
                  Pagencia   :String10;
                  PdvAgencia : string01;
                  Pconta     :String10;
                  PcdModPers :String10;
                  PNmEmpresa :String30;
                  Pmsg1      :String;
                  Pmsg2      :String;
                  PNrRemRet  :String10;
                  PdtGravacao:String10;
                  PDtCredito:String10): String;

      Function SegmentoP_Cnab240(
                Pbanco         : String10;
                Plote          : String10;
                Pregistro      : string01;
                Pnrseq         : String10;
                Pseguimento    : string01;
                Pcd_movto      : String10;
                Pagencia       : String10;
                Pdgagencia     : string01;
                Pconta         : String10;
                Pnossonumero   : String30;
                Pcarteira      : string01;
                PFormEntrega   : string01;
                PTpDoc         : string01;
                Pemissbloqueto : string01;
                PDistrBloqueto : string01;
                PNrDocCobranca : String30;
                Pvencto        : String10;
                PvrTitulo      : String30;
                PAgCobradora   : String10;
                PDgAgCobradora : string01;
                PEspeciTT      : String10;
                Paceite        : string01;
                DtEmissTT      : String10;
                PCdJuros       : string01;
                PDtJuros       : String10;
                Pjuros         : String30;
                PcdDesc        : string01;
                PdtDesc        : String10;
                Pdesconto      : String30;
                PVrIOF         : String30;
                PVrAbatimento  : String30;
                PIdTitEmpresa  : String30;
                PcdProtesto    : string01;
                PPrazoProtesto : String10;
                pcdBaixaDev    : string01;
                PPrazoBaixaDev : String10;
                PcdMoeda       : String10): String;

      Function SegmentoQ1_Cnab240(
            Pbanco         : String10;
            Plote          : String10;
            Pregistro      : String01;
            Pnrseq         : String10;
            PcdSeg         : String01;
            PcdMov         : String10;
            PtpInscSac     : String01;
            PNrInsc        : String30;
            PnomeSacado    : String;
            Pendereco      : String;
            Pbairro        : String30;
            Pcep           : String10;
            PSufixoCEP     : String10;
            Pcidade        : String30;
            PUF            : String10;
            PTpInscAvalista: String01;
            PNrInscAvalista: String30;
            PNmSacAvalista : String;
            Cd_corresp_comp: String10;
            NN_bco_corresp : String30
      ): String;

      Function SegmentoQ2_Cnab240(
            Pbanco         : String10;
            Plote          : String10;
            Pregistro      : String01;
            Pnrseq         : String10;
            PcdSeg         : String01;
            PcdMov         : String10;
            PtpInscSac     : String01;
            PNrInsc        : String30;
            PnomeSacado    : String;
            Pendereco      : String;
            Pbairro        : String30;
            Pcep           : String10;
            PSufixoCEP     : String10;
            Pcidade        : String30;
            PUF            : String10;
            PNrBancoSac    : String10;
            PNmBancoSac    : String30;
            PAjustVencto   : String01;
            PAjustEmiss    : String01;
            PModBcoSac     : String10;
            PViaEntrega    : String01;
            Pespecie       : String10;
            Paceite        : String01;
            PDiaVencto     : String10;
            PDiaEmiss      : String10;
            PIdManut       : String01;
            PCOSacado      : String10;
            PBcoCorresp    : String10;
            PNNBcoCorresp  : String30

      ): String;

function TraillerLote_Cnab240(
                Pbanco              : String10;
                Plote               : String10;
                Pregistro           : String01;
                PQtRegistro         : String10;
                QtTTCobSimples     : String10;
                PVrTTCarteiraSimples: String30;
                PQtTTCobVendor      : String10;
                PVrTTCarteiraVendor : String30;
                PQtTTCobCaucionada  : String10;
                PVrTTCartCaucionada : String30;
                PQtTTCobDescont     : String10;
                PVrCartDescont      : String30
): String;

      function TraillerArq_Cnab240(
               PBanco      : String10;
               PLote       : String10;
               PRegistro   : String10;
               PQtLotes    : String10;
               PQtRegistros: String10): String;

  end;



var Cnab: TCnab;

implementation

uses Biblio,enio,sysutils,Dialogs;

{ TCnab }


{ TCnab }

Function TCnab.HeaderArq_cnab240(
                PBanco       : String10;
                PLote        : String10;
                PRegistro    : string01;
                Ptipo_insc   : string01;
                PNrInsc      : String30;
                PCd_cedente  : String30;
                Pagencia     : String10;
                PdgAgencia   : string01;
                Pconta       : String10;
                PNomeEmp     : String30;
                PNomeBanco   : String30;
                PCdRemRet    : string01;
                PdtGeracao   : String10;
                PHRgeracao   : String10;
                Pseq         : String10;
                PVersaoLayout: String10;
                PDensidade   : String10;
                PTpServico   : String10;
                PCdOcorr     : String10): String;
begin
        Result :=
{01}    Lpad(Copy(Trim(PBanco)    ,01,03),03,'0') +
{02}    Lpad(Copy(Trim(PLote)     ,01,04),04,'0') +
{03}    Lpad(copy(Trim(PRegistro) ,01,01),01,'0') +
{04}    StrAll                           (09,' ') +
{05}    Lpad(Copy(Trim(Ptipo_insc),01,01),01,'0') +
{06}    Lpad(Copy(Trim(PNrInsc)   ,01,14),14,'0') +
{07}    Lpad(Copy(Trim(PCd_cedente),1,20),20,' ') +
{08}    Lpad(Copy(Trim(Pagencia)  ,01,05),05,'0') +
{09}    Lpad(Copy(Trim(PdgAgencia),01,01),01,'0') +
{10}    Lpad(Copy(Trim(Pconta)    ,01,06),06,'0') +
{11}    StrAll                     (08,'0') +
        uppercase(
{12}    Rpad(Copy(Trim(PNomeEmp)  ,01,30),30,' ')) +
        Uppercase(
{13}    Rpad(Copy(Trim(PNomeBanco),01,30),30,' ')) +
{14}    StrAll                           (10,' ') +
{15}    Lpad(Copy(Trim(PCdRemRet) ,01,01),01,'0') +
{16}    Lpad(Copy(Trim(PdtGeracao),01,08),08,'0') +
{17}    Lpad(Copy(Trim(PHRgeracao),01,06),06,'0') +
{18}    Lpad(Copy(Trim(Pseq)      ,01,06),06,'0') +
{19}    Lpad(Copy(Trim(PVersaoLayout),1,3),3,'0') +
{20}    Lpad(Copy(Trim(PDensidade),01,05),05,'0') +
{21}    StrAll(20,' ') +
//{22}    StrAll(20,' ') +
{22}    Rpad('REMESSA-PRODUCAO',20,' ')           +
//{22}    Rpad(inputBox('Somente para teste Tirar isso','somente para teste de validação','REMESSA-TESTE'),20,' ') +

{23}    StrAll(11,' ') +
{24}    StrAll(03,' ') +
{25}    StrAll(03,'0') +
{26}    Lpad(Copy(Trim(PTpServico),01,02),02,' ') +
{27}    Lpad(Copy(Trim(PCdOcorr)  ,01,10),10,' ');

end;

function TCnab.HeaderLote_cnab240(
                  Pbanco     :String10;
                  Plote      :String10;
                  Pregistro  : string01;
                  Poperacao  :string01;
                  Pservico   :String10;
                  Pforma_lanc:String10;
                  PlayoutLote:String10;
                  Ptipo_insc :string01;
                  PNrInsc    :String30;
                  Pcd_cedente:String10;
                  Pagencia   :String10;
                  PdvAgencia : string01;
                  Pconta     :String10;
                  PcdModPers :String10;
                  PNmEmpresa :String30;
                  Pmsg1      :String;
                  Pmsg2      :String;
                  PNrRemRet  :String10;
                  PdtGravacao:String10;
                  PDtCredito:String10) : String;


begin
      Result :=
{01}  Lpad(Copy(Trim(Pbanco)      ,01,03),03,'0') +
{02}  Lpad(Copy(Trim(Plote)       ,01,04),04,'0') +
{03}  Lpad(Copy(Trim(Pregistro)   ,01,01),01,'0') +
{04}  rpad(Copy(Trim(Poperacao)   ,01,01),01,' ') +
{05}  Lpad(Copy(Trim(Pservico)    ,01,02),02,'0') +
{06}  Lpad(Copy(Trim(Pforma_lanc) ,01,02),02,'0') +
{07}  Lpad(Copy(Trim(PlayoutLote) ,01,03),03,'0') +
{08}                                         ' '  +
{09}  Lpad(Copy(Trim(Ptipo_insc)  ,01,01),01,'0') +
{10}  Lpad(Copy(Trim(PNrInsc)     ,01,15),15,'0') +
{11}  Lpad(Copy(Trim(Pcd_cedente) ,01,06),06,'0') +
{12}  StrAll                       (14,'0') +
{13}  Lpad(Copy(Trim(Pagencia)    ,01,05),05,'0') +
{14}  rpad(Copy(Trim(PdvAgencia)  ,01,01),01,' ') +
{15}  Lpad(Copy(Trim(Pconta)      ,01,06),06,'0') +
{16}  Lpad(Copy(Trim(PcdModPers)  ,01,07),07,'0') +
{17}                                         '0'  +
{17}  Rpad(Copy(Trim(PNmEmpresa)  ,01,30),30,' ') +
{18}  Rpad(Copy(Trim(Pmsg1)       ,01,40),40,' ') +
{19}  Rpad(Copy(Trim(Pmsg2)       ,01,40),40,' ') +
{20}  Lpad(Copy(Trim(PNrRemRet)   ,01,08),08,'0') +
{21}  Lpad(Copy(Trim(PdtGravacao) ,01,08),08,'0') +
{22}  Lpad(Copy(Trim(PDtCredito)  ,01,08),08,'0') +
{23}  StrAll                             (33,' ');

end;

Function TCnab.SegmentoP_Cnab240(
                Pbanco         : String10;
                Plote          : String10;
                Pregistro      : string01;
                Pnrseq         : String10;
                Pseguimento    : string01;
                Pcd_movto      : String10;
                Pagencia       : String10;
                Pdgagencia     : string01;
                Pconta         : String10;
                Pnossonumero   : String30;
                Pcarteira      : string01;
                PFormEntrega   : string01;
                PTpDoc         : string01;
                Pemissbloqueto : string01;
                PDistrBloqueto : string01;
                PNrDocCobranca : String30;
                Pvencto        : String10;
                PvrTitulo      : String30;
                PAgCobradora   : String10;
                PDgAgCobradora : string01;
                PEspeciTT      : String10;
                Paceite        : string01;
                DtEmissTT      : String10;
                PCdJuros       : string01;
                PDtJuros       : String10;
                Pjuros         : String30;
                PcdDesc        : string01;
                PdtDesc        : String10;
                Pdesconto      : String30;
                PVrIOF         : String30;
                PVrAbatimento  : String30;
                PIdTitEmpresa  : String30;
                PcdProtesto    : string01;
                PPrazoProtesto : String10;
                pcdBaixaDev    : string01;
                PPrazoBaixaDev : String10;
                PcdMoeda       : String10): String;
begin
      result :=
{01}  Lpad(Copy(Trim(Pbanco)          ,01,03),03,'0') +//104
{02}  Lpad(Copy(Trim(Plote)           ,01,04),04,'0') +//NUMÉRICO
{03}  Lpad(Copy(Trim(Pregistro)       ,01,01),01,'0') +//'3'
{04}  Lpad(Copy(Trim(Pnrseq)          ,01,05),05,'0') +//NUMÉRICO
      Uppercase(
{05}  Rpad(Copy(Trim(Pseguimento)     ,01,01),01,' ')) +//'P'
{06}                                        ' ' +//BRANCOS
{07}  Lpad(Copy(Trim(Pcd_movto)       ,01,02),02,'0') +//NUMÉRICO
{08}  lpad(Copy(Trim(Pagencia)        ,01,05),05,'0') +//NUMÉRICO
      Uppercase(
{09}  Rpad(Copy(Trim(Pdgagencia)      ,01,01),01,' ')) +//ALFANUMÉRICO
{10}  Lpad(Copy(Trim(Pconta)          ,01,06),06,'0') +//COD CEDENTE
{11}                             StrAll(06,'0') +//’0’
{12}                                     '   '  +//BRANCOS
{13}  Lpad(Copy(Trim(Pnossonumero)    ,01,19),19,'0') +//NUMÉRICO
{14}  Lpad(Copy(Trim(Pcarteira)       ,01,01),01,'0') +//NUMÉRICO
{15}  Lpad(Copy(Trim(PFormEntrega)    ,01,01),01,'0') +//NUMÉRICO
{16}  Lpad(Copy(Trim(PTpDoc)          ,01,01),01,'0') +//2 - ESCRITURAL
{17}  Lpad(Copy(Trim(Pemissbloqueto)  ,01,01),01,'0') +//NUMÉRICO
{18}  Lpad(Copy(Trim(PDistrBloqueto)  ,01,01),01,'0') +//1 - BANCO DISTRIBUI
      Uppercase(
{19}  Rpad(Copy(Trim(PNrDocCobranca)  ,01,15),15,' ')) +//ALFANUMÉRICO
{20}  Lpad(Copy(Trim(Pvencto)         ,01,08),08,'0')  +//NUMÉRICO (DDMMAAAA)
      Lpad(
{21}  DelPonto(Copy(Trim(PvrTitulo)  ,01,15)),15,'0') +//NUMÉRICO
{22}  Lpad(Copy(Trim(PAgCobradora)    ,01,05),05,'0') +//NUMÉRICO
      Uppercase(
{23}  Rpad(Copy(Trim(PDgAgCobradora)  ,01,01),01,' ')) +//ALFANUMÉRICO
{24}  Lpad(Copy(Trim(PEspeciTT)       ,01,02),02,'0') +//NUMÉRICO
      Uppercase(
{25}  Rpad(Copy(Trim(Paceite)         ,01,01),01,' ')) +//A - ACEITE
{26}  Lpad(Copy(Trim(DtEmissTT)       ,01,08),08,'0') +//NUMÉRICO (DDMMAAAA)
{27}  Lpad(Copy(Trim(PCdJuros)        ,01,01),01,'0') +//NUMÉRICO
{28}  Lpad(Copy(Trim(PDtJuros)        ,01,08),08,'0') +//NUMÉRICO (DDMMAAAA)
      Lpad(
{29}  DelPonto(Copy(Trim(Pjuros)      ,01,15)),15,'0') +//NUMÉRICO
{30}  Lpad(Copy(Trim(PcdDesc)         ,01,01),01,'0') +//NUMÉRICO
{31}  Lpad(Copy(Trim(PdtDesc)         ,01,08),08,'0') +//NUMÉRICO (DDMMAAAA)
      Lpad(
{32}  DelPonto(Copy(Trim(Pdesconto)   ,01,15)),15,'0') +//NUMÉRICO
      Lpad(
{33}  DelPonto(Copy(Trim(PVrIOF)      ,01,15)),15,'0') +//NUMÉRICO
      Lpad(
{34}  DelPonto(Copy(Trim(PVrAbatimento),01,15)),15,'0') +//NUMÉRICO
{35}  rpad(Copy(Trim(PIdTitEmpresa)   ,01,25),25,' ') +//ALFANUMÉRICO
{36}  Lpad(Copy(Trim(PcdProtesto)     ,01,01),01,'0') +//1 - PROTESTAR DIAS CORRIDOS
{37}  Lpad(Copy(Trim(PPrazoProtesto)  ,01,02),02,'0') +//NUMÉRICO (DE 02 A 90 DIAS)
{38}  Lpad(Copy(Trim(pcdBaixaDev)     ,01,01),01,'0') +//1 - BAIXAR/DEVOLVER
{39}  Lpad(Copy(Trim(PPrazoBaixaDev)  ,01,03),03,'0') +//DIAS CORRIDOS (DE 5 A 90 DIAS
{40}  Lpad(Copy(Trim(PcdMoeda)        ,01,02),02,'0') +//NUMÉRICO
{41}                                   StrAll(10,' ') + //BRANCOS SEGUNDO EVANDO..
{42}                                       ' ';
end;

Function TCnab.SegmentoQ1_Cnab240(
            Pbanco         : String10;
            Plote          : String10;
            Pregistro      : String01;
            Pnrseq         : String10;
            PcdSeg         : String01;
            PcdMov         : String10;
            PtpInscSac     : String01;
            PNrInsc        : String30;
            PnomeSacado    : String;
            Pendereco      : String;
            Pbairro        : String30;
            Pcep           : String10;
            PSufixoCEP     : String10;
            Pcidade        : String30;
            PUF            : String10;
            PTpInscAvalista: String01;
            PNrInscAvalista: String30;
            PNmSacAvalista : String;
            Cd_corresp_comp: String10;
            NN_bco_corresp : String30

): String;
begin
   Result :=
{01}  Lpad(Copy(Trim(Pbanco)         ,01,03),03,'0') +//NUMÉRICO
{02}  Lpad(Copy(Trim(Plote)          ,01,04),04,'0') +//NUMÉRICO
{03}  Lpad(Copy(Trim(Pregistro)      ,01,01),01,'0') +//'3'
{04}  Lpad(Copy(Trim(Pnrseq)         ,01,05),05,'0') +//NUMÉRICO
      Uppercase(
{05}  Rpad(Copy(Trim(PcdSeg)         ,01,01),01,' ')) +//'Q'
{06}                                     ' '  +//BRANCOS
{07}  Lpad(Copy(Trim(PcdMov)         ,01,02),02,'0') +//NUMÉRICO
{08}  Lpad(Copy(Trim(PtpInscSac)     ,01,01),01,'0') +//NUMÉRICO
{09}  Lpad(Copy(Trim(PNrInsc)        ,01,15),15,'0') +//NUMÉRICO
      Uppercase(
{10}  Rpad(Copy(Trim(PnomeSacado)    ,01,40),40,' ')) +//ALFANUMÉRICO
      Uppercase(
{11}  Rpad(Copy(Trim(Pendereco)      ,01,40),40,' ')) +//ALFANUMÉRICO
      Uppercase(
{12}  Rpad(Copy(Trim(Pbairro)        ,01,15),15,' ')) +//ALFANUMÉRICO
{13}  Lpad(Copy(Trim(Pcep)           ,01,05),05,'0') +//NUMÉRICO
{14}  Lpad(Copy(Trim(PSufixoCEP)     ,01,03),03,'0') +//NUMÉRICO
      Uppercase(
{15}  Rpad(Copy(Trim(Pcidade)        ,01,15),15,' ')) +//ALFANUMÉRICO
      Uppercase(
{16}  Rpad(Copy(Trim(PUF)            ,01,02),02,' ')) +//ALFANUMÉRICO
{17}  Lpad(Copy(Trim(PTpInscAvalista),01,01),01,'0') +//NUMÉRICO
{18}  Lpad(Copy(Trim(PNrInscAvalista),01,15),15,'0') +//NUMÉRICO
      Uppercase(
{19}  Rpad(Copy(Trim(PNmSacAvalista) ,01,40),40,' ')) +//ALFANUMÉRICO
{20}  rpad(Copy(Trim(Cd_corresp_comp),01,03),03,' ') +//NUMÉRICO
      Uppercase(
{21}  Rpad(Copy(Trim(NN_bco_corresp) ,01,20),20,' ')) +//ALFANUMÉRICO
{22}                            StrAll(8,' ');//BRANCOS

end;

Function TCnab.SegmentoQ2_Cnab240(
            Pbanco         : String10;
            Plote          : String10;
            Pregistro      : String01;
            Pnrseq         : String10;
            PcdSeg         : String01;
            PcdMov         : String10;
            PtpInscSac     : String01;
            PNrInsc        : String30;
            PnomeSacado    : String;
            Pendereco      : String;
            Pbairro        : String30;
            Pcep           : String10;
            PSufixoCEP     : String10;
            Pcidade        : String30;
            PUF            : String10;
            PNrBancoSac    : String10;
            PNmBancoSac    : String30;
            PAjustVencto   : String01;
            PAjustEmiss    : String01;
            PModBcoSac     : String10;
            PViaEntrega    : String01;
            Pespecie       : String10;
            Paceite        : String01;
            PDiaVencto     : String10;
            PDiaEmiss      : String10;
            PIdManut       : String01;
            PCOSacado      : String10;
            PBcoCorresp    : String10;
            PNNBcoCorresp  : String30

): String;
begin
   Result :=
{01}  Lpad(Copy(Trim(Pbanco)         ,01,03),03,'0') +//NUMÉRICO
{02}  Lpad(Copy(Trim(Plote)          ,01,04),04,'0') +//NUMÉRICO
{03}  Lpad(Copy(Trim(Pregistro)      ,01,01),01,'0') +//'3'
{04}  Lpad(Copy(Trim(Pnrseq)         ,01,05),05,'0') +//NUMÉRICO
      Uppercase(
{05}  Rpad(Copy(Trim(PcdSeg)         ,01,01),01,' ') +//'Q'
{06}                                     ' '  +//BRANCOS
{07}  Lpad(Copy(Trim(PcdMov)         ,01,02),02,'0') +//NUMÉRICO
{08}  Lpad(Copy(Trim(PtpInscSac)     ,01,01),01,'0') +//NUMÉRICO
{09}  Lpad(Copy(Trim(PNrInsc)        ,01,15),15,'0') +//NUMÉRICO
      Uppercase(
{10}  Rpad(Copy(Trim(PnomeSacado)   ,01,40),40,' ')) +//ALFANUMÉRICO
      Uppercase(
{11}  Rpad(Copy(Trim(Pendereco)     ,01,40),40,' ')) +//ALFANUMÉRICO
      Uppercase(
{12}  Rpad(Copy(Trim(Pbairro)       ,01,15),15,' ')) +//ALFANUMÉRICO
{13}  Lpad(Copy(Trim(Pcep)           ,01,05),05,'0') +//NUMÉRICO
{14}  Lpad(Copy(Trim(PSufixoCEP)     ,01,03),03,'0') +//NUMÉRICO
      Uppercase(
{15}  Rpad(Copy(Trim(Pcidade)       ,01,15),15,' ')) +//ALFANUMÉRICO
      Uppercase(
{16}  Rpad(Copy(Trim(PUF)           ,01,02),02,' ')) +//ALFANUMÉRICO

{17}  Lpad(Copy(Trim(PNrBancoSac)   ,01,03),03,'0')) +//NUMÉRICO
      Uppercase(
{18}  Rpad(Copy(Trim(PNmBancoSac)   ,01,20),20,' ')) +//ALFANUMÉRICO
      Uppercase(
{19}  Rpad(Copy(Trim(PAjustVencto)  ,01,01),01,' ')) +//ALFANUMÉRICO
      Uppercase(
{20}  Rpad(Copy(Trim(PAjustEmiss)   ,01,01),01,' ')) +//ALFANUMÉRICO
{21}  Lpad(Copy(Trim(PModBcoSac)     ,01,02),02,'0') +//NUMÉRICO
{22}  Lpad(Copy(Trim(PViaEntrega)    ,01,01),01,'0') +//NUMÉRICO
{23}  Lpad(Copy(Trim(Pespecie)       ,01,02),02,'0') +//NUMÉRICO
      Uppercase(
{24}  Rpad(Copy(Trim(Paceite)       ,01,01),01,'0')) +//A-ACEITO  / N-NÃO ACEITO
{25}  Lpad(Copy(Trim(PDiaVencto)     ,01,02),02,'0') +//NUMERICO DD_VENCTO > DD_EMIS
{26}  Lpad(Copy(Trim(PDiaEmiss)      ,01,02),02,'0') +//NUMERICO
{27}  Lpad(Copy(Trim(PIdManut)       ,01,01),01,'0') +//1-BCO SACADO / 2-SACADO
      Uppercase(
{28}  Rpad(Copy(Trim(PCOSacado)     ,01,05),05,' ')) +//LFANUMERICO                |
{29}                             StrAll(5,' ') +//BRANCOS
{30}  Lpad(Copy(Trim(PBcoCorresp)    ,01,03),03,'0') +//NUMÉRICO
      Uppercase(
{31}  Rpad(Copy(Trim(PNNBcoCorresp) ,01,20),20,' ')) +//ALFANUMÉRICO
{32}                            StrAll(08,' ');//BRANCOS


end;


function TCnab.TraillerLote_Cnab240(
                Pbanco              : String10;
                Plote               : String10;
                Pregistro           : String01;
                PQtRegistro         : String10;
                QtTTCobSimples     : String10;
                PVrTTCarteiraSimples: String30;
                PQtTTCobVendor      : String10;
                PVrTTCarteiraVendor : String30;
                PQtTTCobCaucionada  : String10;
                PVrTTCartCaucionada : String30;
                PQtTTCobDescont     : String10;
                PVrCartDescont      : String30
): String;

begin
      Result :=
{01}  Lpad(Copy(Trim(Pbanco)                 ,01,03),03,'0') +//NUMÉRICO
{02}  Lpad(Copy(Trim(Plote)                  ,01,04),04,'0') +//NUMÉRICO
{03}  Lpad(Copy(Trim(Pregistro)              ,01,01),01,'0') +//'5'
{04}                                          StrAll(09,' ') +//BRANCOS
{05}  Lpad(Copy(Trim(PQtRegistro)            ,01,06),06,'0') +//NUMÉRICO
{06}  Lpad(Copy(Trim(QTTTCobSimples)         ,01,06),06,'0') +//NUMÉRICO
      Lpad(
{07}  DelPonto(Copy(Trim(PVrTTCarteiraSimples)  ,01,17)),17,'0') +//NUMÉRICO
{08}  Lpad(Copy(Trim(PQtTTCobVendor)         ,01,06),06,'0') +//NUMÉRICO
      Lpad(
{09}  DelPonto(Copy(Trim(PVrTTCarteiraVendor),01,17)),17,'0') +//NUMÉRICO
{10}  Lpad(Copy(Trim(PQtTTCobCaucionada)     ,01,06),06,'0') +//NUMÉRICO
      Lpad(
{11}  Delponto(Copy(Trim(PVrTTCartCaucionada),01,17)),17,'0') +//NUMÉRICO
{12}  Lpad(Copy(Trim(PQtTTCobDescont)        ,01,06),06,'0') +//NUMÉRICO
      Lpad(
{13}  DelPonto(Copy(Trim(PVrCartDescont)     ,01,17)),17,'0') +//NUMÉRICO
{14}                                          StrAll(08,' ')  +//BRANCOS
{15}                                         StrAll(117,' '); //BRANCOS

end;

function TCnab.TraillerArq_Cnab240(
 PBanco      : String10;
 PLote       : String10;
 PRegistro   : String10;
 PQtLotes    : String10;
 PQtRegistros: String10): String;

begin
     Result :=
     Lpad(Copy(Trim(PBanco      ),01,03),03,'0') +
     Lpad(Copy(Trim(PLote       ),01,04),04,'0') +
     Lpad(Copy(Trim(PRegistro   ),01,01),01,'0') +
                                  StrAll(09,' ') +
     Lpad(Copy(Trim(PQtLotes    ),01,06),06,'0') +
     Lpad(Copy(Trim(PQtRegistros),01,06),06,'0') +
                                  StrAll(06,' ') +
                                 StrAll(205,' ');
end;

function TCnab.DelPonto(ValorStr: String):String;
begin
   Result := IntToStr(trunc(StrToCurr(ValorStr) * 100));

//   delete(ValorStr,pos(ThousandSeparator,ValorStr),1);          // elimina separador das centenas
//   Result := ValorStr;
end;

end.
