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
    //private string xmlPrefix = "ansSIP";
    private string nmArq = @"c:\temp\sip.xml";
    //private string nmUrl = "http://www.ans.gov.br/padroes/sip/schemas";

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
        string NrRegANS = "";
        if(cboEmpresa.SelectedValue == "1")
           NrRegANS = db.execmd("select vl_parametro from parametro where cd_parametro = 'CDRANS'", true);
        else
            if (cboEmpresa.SelectedValue == "2")
            NrRegANS = db.execmd("select vl_parametro from parametro where cd_parametro = 'CDANS2'", true);
        nmArq = NrRegANS;
        string dtTrimestre = getTrimestre(txtAno.Text, cboTrimestre.SelectedIndex + 1);
        nmArq += "_" + dtTrimestre.Substring(0, 2) + dtTrimestre.Substring(3, 2) + dtTrimestre.Substring(6);
        nmArq += "_" + DateTime.Now.ToString("ddMMyyyyHHmmss");
        nmArq  = nmArq + ".xsip";
        string nmSoarq = nmArq;
        nmArq = @"c:\temp\" + nmArq + ".xsip";                        
        
        doc = new XmlDocument();
        XmlElement xmlMensagemSIP = doc.CreateElement( "mensagemSIP");
        doc.AppendChild(xmlMensagemSIP);

        string Sequencial = "1";
        string Cnpj = "01306081000115";

        if (cboEmpresa.SelectedValue == "2") //seato
        {            
            Cnpj = "00844669000160";           
        }

        geraCabecalhoSIP(xmlMensagemSIP, "ENVIO_SIP", Sequencial, DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss"), NrRegANS, "03589068000146", Cnpj, "1.02", "Multiodonto", "2.3.3.6", "Proprio");
        geraMensagemSIP(xmlMensagemSIP, txtAno.Text, (cboTrimestre.SelectedIndex + 1).ToString(),"SP",cboEmpresa.SelectedValue);
        doc.PreserveWhitespace = false;
        doc.Save(nmArq);
        geraEpilogo(xmlMensagemSIP);
        DownloadArq(nmArq, nmSoarq);
    }

    private void geraEpilogo(XmlElement xmlMensagemSIP)
    {
        doc.PreserveWhitespace = true;
        string aux = xmlMensagemSIP.SelectSingleNode("cabecalho").OuterXml;
        aux += xmlMensagemSIP.SelectSingleNode("mensagem").OuterXml;

        XmlElement epilogo = doc.CreateElement( "epilogo");
        xmlMensagemSIP.AppendChild(epilogo); 
        XmlElement hashMd5 = doc.CreateElement("hash");    
        epilogo.AppendChild(hashMd5);
        
        doc.Save(nmArq);
        hashMd5.InnerText = GetHash(aux);        

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

        XmlElement cabecalho = doc.CreateElement("cabecalho");
        xmlMensagemSIP.AppendChild(cabecalho);        

        XmlElement IdentificacaoTransacao = doc.CreateElement("identificacaoTransacao");
        cabecalho.AppendChild(IdentificacaoTransacao);

        XmlElement tipoTransacao = doc.CreateElement("tipoTransacao");
        tipoTransacao.InnerText = tpTransacao;
        IdentificacaoTransacao.AppendChild(tipoTransacao);

        XmlElement sequencialTransacao = doc.CreateElement("sequencialTransacao");
        sequencialTransacao.InnerText = sequencial;
        IdentificacaoTransacao.AppendChild(sequencialTransacao);

        XmlElement dataHoraRegistroTransacao = doc.CreateElement("dataHoraRegistroTransacao");
        dataHoraRegistroTransacao.InnerText = dataHora;
        IdentificacaoTransacao.AppendChild(dataHoraRegistroTransacao);

        XmlElement xmlOrigem = doc.CreateElement("origem");
        cabecalho.AppendChild(xmlOrigem);

        XmlElement xmlRegistroANS = doc.CreateElement("registroANS");
        xmlRegistroANS.InnerText = NrregistroANS;
        xmlOrigem.AppendChild(xmlRegistroANS);

        //XmlElement xmlCnpjOrig = doc.CreateElement("cnpj");
        //xmlCnpjOrig.InnerText = cnpjOperadora;
        //xmlOrigem.AppendChild(xmlCnpjOrig);

        XmlElement xmlDestino = doc.CreateElement("destino");
        cabecalho.AppendChild(xmlDestino);

        XmlElement xmlVersaoPadrao = doc.CreateElement("versaoPadrao");
        xmlVersaoPadrao.InnerText = versaoPadrao;
        cabecalho.AppendChild(xmlVersaoPadrao);

        //xmlDestino.AppendChild(xmlRegistroANS);

        XmlElement xmlCnpjAns = doc.CreateElement("cnpj");
        xmlCnpjAns.InnerText = cnpjANS;

        xmlDestino.AppendChild(xmlCnpjAns);


        XmlElement xmlIdentificacaoSoftwareGerador = doc.CreateElement("identificacaoSoftwareGerador");

        cabecalho.AppendChild(xmlIdentificacaoSoftwareGerador);

        XmlElement xmlnomeAplicativo = doc.CreateElement("nomeAplicativo");
        xmlnomeAplicativo.InnerText = nomeAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlnomeAplicativo);

        XmlElement xmlVersaoAplicativo = doc.CreateElement("versaoAplicativo");
        xmlVersaoAplicativo.InnerText = versaoAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlVersaoAplicativo);

        XmlElement xmlfabricanteAplicativo = doc.CreateElement("fabricanteAplicativo");
        xmlfabricanteAplicativo.InnerText = fabricanteAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlfabricanteAplicativo);

    }
    private void  geraMensagemSIP(XmlElement xmlMensagemSIP, string ano, string trimestre, string uf, string empresa)
    {
        XmlElement xmlMensagem = doc.CreateElement("mensagem");
        xmlMensagemSIP.AppendChild(xmlMensagem);

        string dtTrimestre = getTrimestre(ano,int.Parse(trimestre));
        XmlElement xmlOperadoraParaANS = doc.CreateElement("operadoraParaANS");
        xmlMensagem.AppendChild(xmlOperadoraParaANS);

        XmlElement xmlSipOperadoreParaAns = doc.CreateElement("sipOperadoraParaAns");
        xmlOperadoraParaANS.AppendChild(xmlSipOperadoreParaAns);

        XmlElement xmlEnvioSip = doc.CreateElement("envioSip");
        xmlSipOperadoreParaAns.AppendChild(xmlEnvioSip);

        XmlElement xmlDataTrimestreReconchecimento = doc.CreateElement("dataTrimestreReconhecimento");
        xmlEnvioSip.AppendChild(xmlDataTrimestreReconchecimento);
        

        XmlElement xmlDia = doc.CreateElement("dia");
        xmlDia.InnerText = dtTrimestre.Substring(0, 2);
        xmlDataTrimestreReconchecimento.AppendChild(xmlDia);

        XmlElement xmlMes = doc.CreateElement("mes");
        xmlMes.InnerText = dtTrimestre.Substring(3, 2);
        xmlDataTrimestreReconchecimento.AppendChild(xmlMes);

        XmlElement xmlAno = doc.CreateElement("ano");
        xmlAno.InnerText = dtTrimestre.Substring(6);
        xmlDataTrimestreReconchecimento.AppendChild(xmlAno);

        XmlElement xmlTagFormaContratacao = doc.CreateElement("formaContratacao");
        xmlEnvioSip.AppendChild(xmlTagFormaContratacao);

        dbClass db = new dbClass();

        SqlDataReader drFormContrat =  db.DataReader("select distinct formaContratacao from sipXtrimestre where cd_empresa = " + empresa + " and ano = " + ano + " and trimestre = " + trimestre + " order by formaContratacao desc" );
        while(drFormContrat.Read())
        {

           XmlElement xmlFormaContratacao = doc.CreateElement(drFormContrat["formaContratacao"].ToString());
           xmlTagFormaContratacao.AppendChild(xmlFormaContratacao);


           XmlElement xmlSegmentacao = doc.CreateElement("segmentacao");
           xmlFormaContratacao.AppendChild(xmlSegmentacao);

           XmlElement xmlOdontologico = doc.CreateElement("odontologico");
           xmlSegmentacao.AppendChild(xmlOdontologico);

           XmlElement xmlQuadro = doc.CreateElement("quadro");
           xmlOdontologico.AppendChild(xmlQuadro);

           // em entendimento com Gabi, ficou acordado que mandariamos a data trimestre de ocorrencia, igual data trimentes do reconhecimento
           XmlElement xmlDataTrimestreOcorrencia = doc.CreateElement("dataTrimestreOcorrencia");
           xmlQuadro.AppendChild(xmlDataTrimestreOcorrencia);

           XmlElement xmlDiaRec = doc.CreateElement("dia");
           xmlDiaRec.InnerText = dtTrimestre.Substring(0, 2);
           

           XmlElement xmlMesRec = doc.CreateElement("mes");
           xmlMesRec.InnerText = dtTrimestre.Substring(3, 2);
           
           XmlElement xmlAnoRec = doc.CreateElement("ano");
           xmlAnoRec.InnerText = dtTrimestre.Substring(6);
           

           xmlDataTrimestreOcorrencia.AppendChild(xmlDiaRec);
           xmlDataTrimestreOcorrencia.AppendChild(xmlMesRec);
           xmlDataTrimestreOcorrencia.AppendChild(xmlAnoRec);

           XmlElement xmlUf = doc.CreateElement("uf");
           xmlUf.InnerText = uf; // manda somente para um uf
           xmlQuadro.AppendChild(xmlUf);

           XmlElement xmlProcOdonto = doc.CreateElement("procOdonto");
           xmlQuadro.AppendChild(xmlProcOdonto);

           XmlElement xmlprocedimentosOdonto = doc.CreateElement("procedimentosOdonto");
           xmlProcOdonto.AppendChild(xmlprocedimentosOdonto);

           XmlElement xmlEventosTT = doc.CreateElement("eventos");
           XmlElement xmlBeneficiariosTT = doc.CreateElement("beneficiarios");
           XmlElement xmlDespesasTT = doc.CreateElement("despesas");
           xmlprocedimentosOdonto.AppendChild(xmlEventosTT);
           xmlprocedimentosOdonto.AppendChild(xmlBeneficiariosTT);
           xmlprocedimentosOdonto.AppendChild(xmlDespesasTT);


            dbClass db1 = new dbClass();
            

           //int ttEventos = 0;
           //int ttbenef = 0;
           //double ttDespesa = 0;


           
           // ta passando esse select como parametro para os subitens
           string select = " select * from sipXtrimestre a, sip b where b.codigo = a.cd_sip and cd_empresa = " + empresa + " and ano = " + ano + " and trimestre = " + trimestre + " and uf = 'SP' and formaContratacao = '" + drFormContrat["formaContratacao"].ToString() + "'";
           SqlDataReader dr = db1.DataReader(select + " and b.subItemDe is null  order by b.id");

           if (dr.Read())
           {

               if (dr["codigo"].ToString() == "I") // por segurança verifica se o primeiro item eh a letra I
               {
                   xmlEventosTT.InnerText = dr["qt_evento"].ToString();
                   xmlBeneficiariosTT.InnerText = dr["qt_benef_fora_per_carencia"].ToString();
                   xmlDespesasTT.InnerText = double.Parse(dr["tt_despesa_liq"].ToString()).ToString("F");
               }
               else
                   {
                       Label1.Text = "Não há a opção I PROCEDIMENTOS ODONTOLÓGICOS";
                       return;
               }

           }
       

           while (dr.Read())
           {

               string localName = dr["tagXml"].ToString();
               XmlElement xmlProcedimento = doc.CreateElement(localName);
               xmlprocedimentosOdonto.AppendChild(xmlProcedimento);
               if (String.Compare(dr["lg_evento"].ToString(), "S") == 0)
               {
                   XmlElement xmlEventos = doc.CreateElement("eventos");
                   xmlEventos.InnerText = dr["qt_evento"].ToString();
                   xmlProcedimento.AppendChild(xmlEventos);

               }

               if (String.Compare(dr["lg_beneficiario"].ToString(), "S") == 0)
               {

                   XmlElement xmlBeneficiarios = doc.CreateElement("beneficiarios");
                   xmlBeneficiarios.InnerText = dr["qt_benef_fora_per_carencia"].ToString();
                   xmlProcedimento.AppendChild(xmlBeneficiarios);
               }


               if (String.Compare(dr["lg_despesa"].ToString(), "S") == 0)
               {
                   XmlElement xmlDespesas = doc.CreateElement("despesas");
                   xmlDespesas.InnerText = double.Parse(dr["tt_despesa_liq"].ToString()).ToString("F");
                   xmlProcedimento.AppendChild(xmlDespesas);
               }

               carregaSubItens(xmlProcedimento, select, dr["codigo"].ToString());

               // tem que ser aqui por no carregeSubItens pode estar alimentando esses dados
               /*if (xmlProcedimento.SelectSingleNode("eventos") != null)
               {
                   int qtEventos = int.Parse(xmlProcedimento.SelectSingleNode("eventos").InnerText);
                   ttEventos += qtEventos;
               }

               if (xmlProcedimento.SelectSingleNode("beneficiarios") != null)
               {
                   int qtBenef = int.Parse(xmlProcedimento.SelectSingleNode("beneficiarios").InnerText);
                   ttbenef += qtBenef;
               }

               if (xmlProcedimento.SelectSingleNode("despesas") != null)
               {
                   double vrDesp = double.Parse(xmlProcedimento.SelectSingleNode("despesas").InnerText);
                   ttDespesa += vrDesp;
               }*/

           }
          // xmlprocedimentosOdonto.SelectSingleNode("eventos").InnerText = ttEventos.ToString();
          // xmlprocedimentosOdonto.SelectSingleNode("beneficiarios").InnerText = ttbenef.ToString();
          // xmlprocedimentosOdonto.SelectSingleNode("despesas").InnerText = ttDespesa.ToString("F");

            
           dr.Close();
           db1.closeConn();
        }
        drFormContrat.Close();
        db.closeConn();

    }

    private void carregaSubItens(XmlElement item, string select, string codigo)
    {
        //int ttEventos = 0;
        //int ttbenef = 0;
        //double ttDespesa = 0;

        dbClass db1 = new dbClass();
        SqlDataReader dr = db1.DataReader(select + " and b.subItemDe = " + codigo + " order by b.id");
        while (dr.Read())
        {
            string localName = dr["tagXml"].ToString();
            XmlElement xmlProcedimento = doc.CreateElement(localName);
            item.AppendChild(xmlProcedimento);


            if (String.Compare(dr["lg_evento"].ToString(), "S") == 0)
            {
                XmlElement xmlEventos = doc.CreateElement("eventos");
                xmlEventos.InnerText = dr["qt_evento"].ToString();
                xmlProcedimento.AppendChild(xmlEventos);
                //int qtEventos = int.Parse(dr["qt_evento"].ToString());
                //ttEventos += qtEventos;
            }

            if (String.Compare(dr["lg_beneficiario"].ToString(), "S") == 0)
            {

                XmlElement xmlBeneficiarios = doc.CreateElement("beneficiarios");
                xmlBeneficiarios.InnerText = dr["qt_benef_fora_per_carencia"].ToString();
                xmlProcedimento.AppendChild(xmlBeneficiarios);
                //int qtBenef = int.Parse(dr["qt_benef_fora_per_carencia"].ToString());
                //ttbenef += qtBenef;

            }


            if (String.Compare(dr["lg_despesa"].ToString(), "S") == 0)
            {
                XmlElement xmlDespesas = doc.CreateElement("despesas");
                xmlDespesas.InnerText = double.Parse(dr["tt_despesa_liq"].ToString()).ToString("F");
                xmlProcedimento.AppendChild(xmlDespesas);
                //double vrDespesa = double.Parse(dr["tt_despesa_liq"].ToString());
                //ttDespesa += vrDespesa;
            }

        }
        /*
        if (dr.HasRows)
        {
            item.SelectSingleNode("eventos").InnerText = ttEventos.ToString();
            item.SelectSingleNode("beneficiarios").InnerText = ttbenef.ToString();
            item.SelectSingleNode("despesas").InnerText = ttDespesa.ToString("F");
        }
         */
        dr.Close();
        db1.closeConn();
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
    private void DownloadArq(string NmArqFull, string Nmarq)
    {
        System.IO.FileInfo ArqInfo = new System.IO.FileInfo(NmArqFull);
        Response.Clear();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + Nmarq);
        Response.AddHeader("Content-Length", ArqInfo.Length.ToString());
        Response.ContentType = "application/octet-stream";
        Response.WriteFile(NmArqFull);
        Response.End();
    }

}