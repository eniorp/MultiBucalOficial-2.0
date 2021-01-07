using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    private XmlDocument doc;
    private string xmlPrefix = "ansSIP";
    private string nmArq = @"c:\temp\sip.xml";
    private string nmUrl = "http://www.ans.gov.br/padroes/sip/schemas";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            txtAno.Text = DateTime.Now.Year.ToString();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       // geraSIP("ENVIO_SIP", "100", DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss"),"351351","03.589.068/0001-46","01.306.081/0001-15","V1.01","Multiodonto","2.3.3.6","Proprio");
        gera_sip();
    }
    private void gera_sip()
    {
        dbClass db = new dbClass();
        string NrRegANS = db.execmd("select vl_parametro from parametro where cd_parametro = 'CDRANS'", true);
        nmArq = @"c:\temp\";
        nmArq += NrRegANS;
        string dtTrimestre = getTrimestre(txtAno.Text, cboTrimestre.SelectedIndex + 1);
        nmArq += "_" + dtTrimestre.Substring(0, 2) + dtTrimestre.Substring(3, 2) + dtTrimestre.Substring(6);
        nmArq += "_" + DateTime.Now.ToString("ddMMyyyyHHmmss");
        nmArq += ".xsip";
        
        doc = new XmlDocument();
        XmlElement xmlMensagemSIP = doc.CreateElement(xmlPrefix, "mensagemSIP", nmUrl);
        doc.AppendChild(xmlMensagemSIP);
        geraCabecalhoSIP(xmlMensagemSIP, "ENVIO_SIP", "100", DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss"), NrRegANS, "03.589.068/0001-46", "01.306.081/0001-15", "V1.01", "Multiodonto", "2.3.3.6", "Proprio");
        geraMensagemSIP(xmlMensagemSIP, txtAno.Text, (cboTrimestre.SelectedIndex + 1).ToString(),"SP","1");        
        doc.Save(nmArq);
        geraEpilogo(xmlMensagemSIP);
    }

    private void geraEpilogo(XmlElement xmlMensagemSIP)
    {
        XmlElement epilogo = doc.CreateElement(xmlPrefix, "epilogo", nmUrl);
        xmlMensagemSIP.AppendChild(epilogo);
        XmlElement hashMd5 = doc.CreateElement(xmlPrefix, "hash", nmUrl);        
        epilogo.AppendChild(hashMd5);
        doc.Save(nmArq);
        hashMd5.InnerText = GetHash(doc.InnerText);
        doc.Save(nmArq);
    }

/*    private void CalculaHashTiss(XmlDataDocument arqXml)
    {
        XmlNamespaceManager man = new XmlNamespaceManager(arqXml.NameTable);
        string url = "http://www.ans.gov.br/padroes/tiss/schemas";
        man.AddNamespace("ans", url);

        XmlNode hash = arqXml.SelectSingleNode("./ans:mensagemTISS/ans:epilogo/ans:hash", man);
        hash.InnerText = "";
        arqXml.Save(NmArqxml);

        hash.InnerText = GetHash(arqXml.InnerText);
        arqXml.Save(NmArqxml);
    }

    */
    public static string GetHash(string pKeyEncode)
    {
        MD5CryptoServiceProvider _cs = new MD5CryptoServiceProvider();
        byte[] _bs = Encoding.GetEncoding("ISO-8859-1").GetBytes(pKeyEncode);
        _bs = _cs.ComputeHash(_bs);
        StringBuilder _s = new System.Text.StringBuilder();
        foreach (byte _b in _bs)
        {
            _s.Append(_b.ToString("x2").ToLower());
        }
        return _s.ToString();
    }


    private void geraCabecalhoSIP(XmlElement xmlMensagemSIP, string tpTransacao, string sequencial, string dataHora, string NrregistroANS, string cnpjANS, string cnpjOperadora,
        string versaoPadrao, string nomeAplicativo, string versaoAplicativo, string fabricanteAplicativo)
        
    {

        XmlProcessingInstruction pi = doc.CreateProcessingInstruction("xml", "version=\"1.0\" encoding=\"ISO-8859-1\"");
        doc.InsertBefore(pi, xmlMensagemSIP);

        XmlElement cabecalho = doc.CreateElement(xmlPrefix, "cabecalho", nmUrl);
        xmlMensagemSIP.AppendChild(cabecalho);

        XmlElement IdentificacaoTransacao = doc.CreateElement(xmlPrefix, "IdentificacaoTransacao", nmUrl);
        cabecalho.AppendChild(IdentificacaoTransacao);

        XmlElement tipoTransacao = doc.CreateElement(xmlPrefix, "tipoTransacao", nmUrl);
        tipoTransacao.InnerText = tpTransacao;
        IdentificacaoTransacao.AppendChild(tipoTransacao);

        XmlElement sequencialTransacao = doc.CreateElement(xmlPrefix, "sequencialTransacao", nmUrl);
        sequencialTransacao.InnerText = sequencial;
        IdentificacaoTransacao.AppendChild(sequencialTransacao);

        XmlElement dataHoraRegistroTransacao = doc.CreateElement(xmlPrefix, "dataHoraRegistroTransacao", nmUrl);
        dataHoraRegistroTransacao.InnerText = dataHora;
        IdentificacaoTransacao.AppendChild(dataHoraRegistroTransacao);

        XmlElement xmlOrigem = doc.CreateElement(xmlPrefix, "origem", nmUrl);
        cabecalho.AppendChild(xmlOrigem);

        XmlElement xmlRegistroANS = doc.CreateElement(xmlPrefix, "registroANS", nmUrl);
        xmlRegistroANS.InnerText = NrregistroANS;
        xmlOrigem.AppendChild(xmlRegistroANS);

        XmlElement xmlCnpjOrig = doc.CreateElement(xmlPrefix, "cnpj", nmUrl);
        xmlCnpjOrig.InnerText = cnpjOperadora;
        xmlOrigem.AppendChild(xmlCnpjOrig);

        XmlElement xmlDestino = doc.CreateElement(xmlPrefix, "destino", nmUrl);
        cabecalho.AppendChild(xmlDestino);

        xmlDestino.AppendChild(xmlRegistroANS);

        XmlElement xmlCnpjAns = doc.CreateElement(xmlPrefix, "cnpj", nmUrl);
        xmlCnpjAns.InnerText = cnpjANS;

        xmlDestino.AppendChild(xmlCnpjAns);

        XmlElement xmlVersaoPadrao = doc.CreateElement(xmlPrefix, "versaoPadrao");
        xmlVersaoPadrao.InnerText = versaoPadrao;

        XmlElement xmlIdentificacaoSoftwareGerador = doc.CreateElement(xmlPrefix, "identificacaoSoftwareGerador",nmUrl);

        cabecalho.AppendChild(xmlIdentificacaoSoftwareGerador);

        XmlElement xmlnomeAplicativo = doc.CreateElement(xmlPrefix, "nomeAplicativo", nmUrl);
        xmlnomeAplicativo.InnerText = nomeAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlnomeAplicativo);

        XmlElement xmlVersaoAplicativo = doc.CreateElement(xmlPrefix, "versaoAplicativo", nmUrl);
        xmlVersaoAplicativo.InnerText = versaoAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlVersaoAplicativo);

        XmlElement xmlfabricanteAplicativo = doc.CreateElement(xmlPrefix, "fabricanteAplicativo", nmUrl);
        xmlfabricanteAplicativo.InnerText = fabricanteAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlfabricanteAplicativo);

    }
    private void  geraMensagemSIP(XmlElement xmlMensagemSIP, string ano, string trimestre, string uf, string empresa)
    {
        XmlElement xmlMensagem = doc.CreateElement(xmlPrefix, "mensagem", nmUrl);
        xmlMensagemSIP.AppendChild(xmlMensagem);

        string dtTrimestre = getTrimestre(ano,int.Parse(trimestre));
        XmlElement xmlOperadoraParaANS = doc.CreateElement(xmlPrefix, "operadoraParaANS", nmUrl);
        xmlMensagem.AppendChild(xmlOperadoraParaANS);

        XmlElement xmlSipOperadoreParaAns = doc.CreateElement(xmlPrefix, "sipOperadoraParaAns", nmUrl);
        xmlOperadoraParaANS.AppendChild(xmlSipOperadoreParaAns);

        XmlElement xmlEnvioSip = doc.CreateElement(xmlPrefix, "envioSip", nmUrl);
        xmlSipOperadoreParaAns.AppendChild(xmlEnvioSip);

        XmlElement xmlDataTrimestreReconchecimento = doc.CreateElement(xmlPrefix, "dataTrimestreReconhecimento", nmUrl);
        xmlEnvioSip.AppendChild(xmlDataTrimestreReconchecimento);
        

        XmlElement xmlDia = doc.CreateElement(xmlPrefix, "dia", nmUrl);
        xmlDia.InnerText = dtTrimestre.Substring(0, 2);
        xmlDataTrimestreReconchecimento.AppendChild(xmlDia);

        XmlElement xmlMes = doc.CreateElement(xmlPrefix, "mes", nmUrl);
        xmlMes.InnerText = dtTrimestre.Substring(3, 2);
        xmlDataTrimestreReconchecimento.AppendChild(xmlMes);

        XmlElement xmlAno = doc.CreateElement(xmlPrefix, "ano", nmUrl);
        xmlAno.InnerText = dtTrimestre.Substring(6);
        xmlDataTrimestreReconchecimento.AppendChild(xmlAno);
        
        dbClass db = new dbClass();

        SqlDataReader drFormContrat =  db.DataReader("select distinct formaContratacao from sipXtrimestre where cd_empresa = " + empresa + " and ano = " + ano + " and trimestre = " + trimestre );
        while(drFormContrat.Read())
        {

           XmlElement xmlFormaContratacao = doc.CreateElement(xmlPrefix, drFormContrat["formaContratacao"].ToString(), nmUrl);
           xmlEnvioSip.AppendChild(xmlFormaContratacao);

           XmlElement xmlIndividualFamiliar = doc.CreateElement(xmlPrefix, "individualFamiliar", nmUrl);
           xmlFormaContratacao.AppendChild(xmlIndividualFamiliar);

           XmlElement xmlSegmentacao = doc.CreateElement(xmlPrefix, "segmentacao", nmUrl);
           xmlIndividualFamiliar.AppendChild(xmlSegmentacao);

           XmlElement xmlOdontologico = doc.CreateElement(xmlPrefix, "odontologico", nmUrl);
           xmlSegmentacao.AppendChild(xmlOdontologico);

           XmlElement xmlQuadro = doc.CreateElement(xmlPrefix, "quadro", nmUrl);
           xmlOdontologico.AppendChild(xmlQuadro);

           // em entendimento com Gabi, ficou acordado que mandariamos a data trimestre de ocorrencia, igual data trimentes do reconhecimento
           XmlElement xmlDataTrimestreOcorrencia = doc.CreateElement(xmlPrefix, "dataTrimestreOcorrencia", nmUrl);
           xmlQuadro.AppendChild(xmlDataTrimestreOcorrencia);

           xmlDataTrimestreOcorrencia.AppendChild(xmlDia);
           xmlDataTrimestreOcorrencia.AppendChild(xmlMes);
           xmlDataTrimestreOcorrencia.AppendChild(xmlAno);

           XmlElement xmlUf = doc.CreateElement(xmlPrefix, "uf", nmUrl);
           xmlUf.InnerText = uf; // manda somente para um uf
           xmlQuadro.AppendChild(xmlUf);

           XmlElement xmlProcOdonto = doc.CreateElement(xmlPrefix, "procOdonto", nmUrl);
           xmlQuadro.AppendChild(xmlProcOdonto);
           dbClass db1 = new dbClass();
           SqlDataReader dr = db1.DataReader("select * from sipXtrimestre a, sip b where b.codigo = a.cd_sip and cd_empresa = " + empresa + " and ano = " + ano + " and trimestre = " + trimestre + " and uf = 'SP' and formaContratacao = '" + drFormContrat["formaContratacao"].ToString() + "' order by b.id");
        

           while (dr.Read())
           {
               //preencher a tabela sip o nome das tabas
                 //  criar campo na tabela sip para ordernar conforme schema
               XmlElement xmlEventos = doc.CreateElement(xmlPrefix, "eventos", nmUrl);
               XmlElement xmlBeneficiarios = doc.CreateElement(xmlPrefix, "benenficiarios", nmUrl);
               XmlElement xmlDespesas = doc.CreateElement(xmlPrefix, "despesas", nmUrl);

               string localName = dr["tagXml"].ToString();
               XmlElement xmlProcedimento = doc.CreateElement(xmlPrefix,localName, nmUrl);
               xmlProcOdonto.AppendChild(xmlProcedimento);
               xmlEventos.InnerText = dr["qt_evento"].ToString();
               xmlBeneficiarios.InnerText = dr["qt_benef_fora_per_carencia"].ToString();
               xmlDespesas.InnerText = double.Parse(dr["tt_despesa_liq"].ToString()).ToString("F");

               xmlProcedimento.AppendChild(xmlEventos);
               xmlProcedimento.AppendChild(xmlBeneficiarios);
               xmlProcedimento.AppendChild(xmlDespesas);                

           }
           dr.Close();
           db1.closeConn();
        }
        drFormContrat.Close();
        db.closeConn();

    }
    private string getTrimestre(string ano, int trimestre)
    {
        string aux = "";
        if (trimestre == 1)
            aux = "01/01/" + ano;
        else
            if (trimestre == 2)
                aux = "01/04/" + ano;
            else

                if (trimestre == 3)
                    aux = "01/07/" + ano;
                else

                    if (trimestre == 4)
                        aux = "01/10/" + ano;
        return aux;
        // tem um script que tenho que dar continuidade c:\enio\fontes\mt\alteracoes_sip_xml.sql

    }
}