using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Security.Cryptography;
using System.Text;
using System.Xml.Serialization;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    private XmlDocument docXml;
    private decimal tt = 0;
    private int qt = 0;

    const string xmlns = "http://www.w3.org/2000/xmlns/";
    const string xsi = "http://www.w3.org/2001/XMLSchema-instance";
    const string xsd = "http://www.w3.org/2001/XMLSchema";
    private decimal valorTussConsulta = 0;
    private decimal valorTussAmbu = 0;
    private decimal valorTussOdonto = 0;
    private decimal valorTussDiagTerapia = 0;
    private decimal valorTussInternacao = 0;



    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        docXml = new XmlDocument();

        if (!FileUpload1.HasFile)
            return;

        XmlElement xmlmensagemRadar = docXml.CreateElement("mensagemRadar");

        XmlAttribute xsiNs = docXml.CreateAttribute("xmlns", "xsi", xmlns);
        xsiNs.Value = xsi;
        xmlmensagemRadar.SetAttributeNode(xsiNs);

        XmlAttribute xsdNs = docXml.CreateAttribute("xmlns", "xsd", xmlns);
        xsdNs.Value = xsd;
        xmlmensagemRadar.SetAttributeNode(xsdNs);

        xmlmensagemRadar.SetAttribute("xmlns", "http://www.ans.gov.br/padroes/tiss/schemas");

        docXml.AppendChild(xmlmensagemRadar);
        

        XmlProcessingInstruction pi = docXml.CreateProcessingInstruction("xml", "version=\"1.0\" encoding=\"ISO-8859-1\" standalone=\"no\"");
        docXml.InsertBefore(pi, xmlmensagemRadar);

        geraCabecalhoRadarTiss(xmlmensagemRadar, DateTime.Now.ToString("yyyy-MM-dd"), DateTime.Now.ToString("HH:mm:ss"),TextBoxRegistro.Text,TextBoxSequencial.Text,cboTipo.SelectedValue) ;

        //geraoperadoraANS(xmlmensagemRadar, @"c:\temp\radarDados.txt");
        FileUpload1.SaveAs(@"c:\temp\download\" + FileUpload1.FileName);
        string arqOrigem = @"c:\temp\download\" + FileUpload1.FileName;
        geraoperadoraANS(xmlmensagemRadar, arqOrigem);
        //geraoperadoraANS(xmlmensagemRadar, @"c:\temp\radar_tiss_2011.lst");
        
        geraEpilogo(xmlmensagemRadar);
        string nmArq = "radarTiss" + DateTime.Now.Year.ToString() + "_" + TextBoxRegistro.Text + "_" + TextBoxSequencial.Text + "_" + DateTime.Now.ToString("ddMMyyyyHHmmss") + ".xml";
        Session["nmArq"] = nmArq;
        docXml.Save(@"c:\temp\" + nmArq);

    }


    private void DownloadArq(string NmArqFull, string Nmarq)
    {

        FileInfo ArqInfo = new FileInfo(NmArqFull);
        Response.Clear();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + Nmarq);
        Response.AddHeader("Content-Length", ArqInfo.Length.ToString());
        Response.ContentType = "application/octet-stream";
        Response.WriteFile(NmArqFull);
        Response.End();
    }

    private void geraCabecalhoRadarTiss(XmlElement xmlMensagemRadar, string pdataRegistro, string phoraRegistro, string pregistroAns,string pSequencialTransacao, string pTipoTransacao)
    {


        XmlElement cabecalho = docXml.CreateElement("cabecalho");
        xmlMensagemRadar.AppendChild(cabecalho);

        //XmlElement cabecalhoTransacao = docXml.CreateElement("cabecalhoTransacao");
        //xmlCabecalhoRadar.AppendChild(cabecalhoTransacao);

        XmlElement identificacaoTransacao = docXml.CreateElement("identificacaoTransacao");
        cabecalho.AppendChild(identificacaoTransacao);

        XmlElement tipoTransacao  = docXml.CreateElement("tipoTransacao");
        tipoTransacao.InnerText = pTipoTransacao;
        identificacaoTransacao.AppendChild(tipoTransacao);

        XmlElement sequencialTransacao  = docXml.CreateElement("sequencialTransacao");
        sequencialTransacao.InnerText = pSequencialTransacao;
        identificacaoTransacao.AppendChild(sequencialTransacao);

        XmlElement dataRegistroTransacao = docXml.CreateElement("dataRegistroTransacao");
        dataRegistroTransacao.InnerText = pdataRegistro;
        identificacaoTransacao.AppendChild(dataRegistroTransacao);

        XmlElement horaRegistroTransacao = docXml.CreateElement("horaRegistroTransacao");
        horaRegistroTransacao.InnerText = phoraRegistro;
        identificacaoTransacao.AppendChild(horaRegistroTransacao);

        XmlElement origem = docXml.CreateElement("origem");
        cabecalho.AppendChild(origem);

        XmlElement registroANS = docXml.CreateElement("registroANS");
        registroANS.InnerText = pregistroAns;
        origem.AppendChild(registroANS);

        
        XmlElement destino = docXml.CreateElement("destino");
        cabecalho.AppendChild(destino);

       

        XmlElement ANSDestino = docXml.CreateElement("ANS");
        ANSDestino.InnerText = "ANS"; // fixo
        destino.AppendChild(ANSDestino);
        

    }

    private void geraoperadoraANS(XmlElement xmlmensagemRadar,string arqTexto) {

        XmlElement operadoraANS = docXml.CreateElement("operadoraParaANS");
        xmlmensagemRadar.AppendChild(operadoraANS);

        XmlElement pergunta01 = docXml.CreateElement("pergunta1");
        operadoraANS.AppendChild(pergunta01);

        XmlElement pergunta02 = docXml.CreateElement("pergunta2");
        operadoraANS.AppendChild(pergunta02);

        XmlElement pergunta03 = docXml.CreateElement("pergunta3");
        operadoraANS.AppendChild(pergunta03);

        XmlElement pergunta04 = docXml.CreateElement("pergunta4");
        operadoraANS.AppendChild(pergunta04);

        XmlElement pergunta05 = docXml.CreateElement("pergunta5");
        operadoraANS.AppendChild(pergunta05);

        XmlElement pergunta06 = docXml.CreateElement("pergunta6");
        operadoraANS.AppendChild(pergunta06);

        XmlElement pergunta07 = docXml.CreateElement("pergunta7");
        operadoraANS.AppendChild(pergunta07);
        geraPergunta07(pergunta07);

        XmlElement pergunta08a10 = docXml.CreateElement("pergunta8a10");
        operadoraANS.AppendChild(pergunta08a10);
        geraPergunta08a10(pergunta08a10);

        XmlElement pergunta11 = docXml.CreateElement("pergunta11");
        operadoraANS.AppendChild(pergunta11);
        geraPergunta11(pergunta11);


        System.IO.StreamReader textFile = new System.IO.StreamReader(arqTexto);

        string linha;
        string[] registro;
        string pergunta;
        while (!textFile.EndOfStream) {
            
            linha = textFile.ReadLine();            
            registro = linha.Split(';');
            pergunta = registro[0].ToUpper().Trim();


            if (pergunta.Equals("PERGUNTA01"))

                geraPergunta01(pergunta01, registro);


            //else if (pergunta.Equals("PERGUNTA02") && Int32.Parse(registro[6]) > 0) // somente envia esse dado se qtde reg eletornico maior que zero, da erro de schema(sem sentido)
            else if (pergunta.Equals("PERGUNTA02")) 
                geraPergunta02(pergunta02, registro);

            else if (pergunta.Equals("PERGUNTA03"))
                geraPergunta03(pergunta03, registro);

            else if (pergunta.Equals("PERGUNTA04"))
                geraPergunta04(pergunta04, registro);

            else if (pergunta.Equals("PERGUNTA05"))
                geraPergunta05(pergunta05, registro);

            else if (pergunta.Equals("PERGUNTA06"))
                geraPergunta06(pergunta06, registro);

            //else if (pergunta.Equals("PERGUNTA07"))
                //geraPergunta07(pergunta07, registro);

            //else if (pergunta.Equals("PERGUNTA08A10"))
                //geraPergunta08a10(pergunta08a10, registro);

            //else if (pergunta.Equals("PERGUNTA11"))
                //geraPergunta11(pergunta11, registro);
            

        }
        Label1.Text = tt.ToString() + " qt : " + qt.ToString();
        geraValorTUSS(pergunta01, "1", valorTussConsulta.ToString());
        geraValorTUSS(pergunta01, "2", valorTussAmbu.ToString());
        geraValorTUSS(pergunta01, "3", valorTussOdonto.ToString());
        geraValorTUSS(pergunta01, "4", valorTussDiagTerapia.ToString());
        geraValorTUSS(pergunta01, "5", valorTussInternacao.ToString());

        textFile.Close();

    }

    private void geraValorTUSS(XmlElement pergunta01,string pgrupoEvento,string vlTuss)
    {

        XmlElement questao01 = docXml.CreateElement("questao01");
        pergunta01.AppendChild(questao01);

	    XmlElement  grupoEvento = docXml.CreateElement("grupoEvento");
        grupoEvento.InnerText = pgrupoEvento;
        questao01.AppendChild(grupoEvento);

		XmlElement  tpValorEvento = docXml.CreateElement("tpValorEvento");
        tpValorEvento.InnerText = "4";
        questao01.AppendChild(tpValorEvento);

        XmlElement valorevento = docXml.CreateElement("valorevento");
        valorevento.InnerText = vlTuss.Replace(",",".");
        questao01.AppendChild(valorevento);

        
    }

    private void geraPergunta01(XmlElement pergunta01, string[] registro) {

        acumulaValorTuss(registro[1].Trim(), registro[4].Trim());
        XmlElement questao01 = docXml.CreateElement("questao01");
        pergunta01.AppendChild(questao01);

	    XmlElement  grupoEvento = docXml.CreateElement("grupoEvento");
        grupoEvento.InnerText = registro[1].Trim();
        questao01.AppendChild(grupoEvento);

		XmlElement  tpValorEvento = docXml.CreateElement("tpValorEvento");
        tpValorEvento.InnerText = registro[2].Trim();
        questao01.AppendChild(tpValorEvento);

        XmlElement valorevento = docXml.CreateElement("valorevento");
        valorevento.InnerText = registro[3].Trim().Replace(",", ".");
        questao01.AppendChild(valorevento);


    }

    private void acumulaValorTuss(string grupoEvento, string valorTuss)
    {
        if (Int32.Parse(grupoEvento) == 1)
            valorTussConsulta = valorTussConsulta + decimal.Parse(valorTuss);
        else
            if (Int32.Parse(grupoEvento) == 2)
                valorTussAmbu = valorTussAmbu + decimal.Parse(valorTuss);
        else
            if (Int32.Parse(grupoEvento) == 3)
                valorTussOdonto = valorTussOdonto + decimal.Parse(valorTuss);
        else
            if (Int32.Parse(grupoEvento) == 4)
                valorTussDiagTerapia = valorTussDiagTerapia + decimal.Parse(valorTuss);
        else
            if (Int32.Parse(grupoEvento) == 5)
                valorTussInternacao = valorTussInternacao + decimal.Parse(valorTuss);


        
    }
    

    private void geraPergunta02(XmlElement pergunta02, string[] registro) {

        XmlElement questao02 = docXml.CreateElement("questao02");
        pergunta02.AppendChild(questao02);

        XmlElement tipoIdent = docXml.CreateElement("tipoIdent");
        tipoIdent.InnerText = registro[1].Trim();
        questao02.AppendChild(tipoIdent);

        XmlElement codIdent = docXml.CreateElement("codIdent");
        if(tipoIdent.InnerText.Equals("1")) // cpf
           codIdent.InnerText = registro[2].Trim().PadLeft(11,'0');

        else if(tipoIdent.InnerText.Equals("2")) // cnpj
            codIdent.InnerText = registro[2].Trim().PadLeft(14, '0');

        questao02.AppendChild(codIdent);

        XmlElement codMunic = docXml.CreateElement("codMunic");
        codMunic.InnerText = registro[3].Trim();
        questao02.AppendChild(codMunic);

        XmlElement tipoGuia = docXml.CreateElement("tipoGuia");
        tipoGuia.InnerText = registro[4].Trim();
        questao02.AppendChild(tipoGuia);

        XmlElement qtdGuiasEletro = docXml.CreateElement("qtdGuiasEletro");
        qtdGuiasEletro.InnerText = registro[5].Trim();
        questao02.AppendChild(qtdGuiasEletro);

        XmlElement qtdItensEletro = docXml.CreateElement("qtdItensEletro");
        qtdItensEletro.InnerText = registro[6].Trim();
        questao02.AppendChild(qtdItensEletro);

        XmlElement valorEletro = docXml.CreateElement("valorEletro");
        valorEletro.InnerText = registro[7].Trim().Replace(",",".");
        questao02.AppendChild(valorEletro);


        XmlElement qtdGuiasTotal = docXml.CreateElement("qtdGuiasTotal");
        qtdGuiasTotal.InnerText = registro[8].Trim();
        questao02.AppendChild(qtdGuiasTotal);

        XmlElement qtdItensTotal = docXml.CreateElement("qtdItensTotal");
        qtdItensTotal.InnerText = registro[9].Trim();
        questao02.AppendChild(qtdItensTotal);

        XmlElement valorTotal = docXml.CreateElement("valorTotal");
        valorTotal.InnerText = registro[10].Trim().Replace(",", ".");
        questao02.AppendChild(valorTotal);
        if (int.Parse(qtdGuiasEletro.InnerText) > 0)
        {
            XmlElement versaoTiss = docXml.CreateElement("versaoTiss");
            versaoTiss.InnerText = registro[11].Trim().Replace(".", "");
            questao02.AppendChild(versaoTiss);
        }
        tt += decimal.Parse(registro[10].Trim());
        qt++;

    }

    private void geraPergunta03(XmlElement pergunta03, string[] registro)  {

        XmlElement questao03 = docXml.CreateElement("questao03");
        pergunta03.AppendChild(questao03);

        XmlElement verifElegibilidade = docXml.CreateElement("verifElegibilidade");
        verifElegibilidade.InnerText = registro[1].Trim();
        questao03.AppendChild(verifElegibilidade);

        XmlElement grupoEvento = docXml.CreateElement("grupoEvento");
        grupoEvento.InnerText = registro[2].Trim();
        questao03.AppendChild(grupoEvento);

		XmlElement qtdElegibilidade = docXml.CreateElement("qtdElegibilidade");
        qtdElegibilidade.InnerText = registro[3].Trim();
        questao03.AppendChild(qtdElegibilidade);

    }
    private void geraPergunta04(XmlElement pergunta04, string[] registro)    {

        XmlElement questao04 = docXml.CreateElement("questao04");
        pergunta04.AppendChild(questao04);

        XmlElement msgEletronica = docXml.CreateElement("msgEletronica");
        msgEletronica.InnerText = registro[1].Trim();
        questao04.AppendChild(msgEletronica);

        XmlElement tpCanalMsg = docXml.CreateElement("tpCanalMsg");
        tpCanalMsg.InnerText = registro[2].Trim();
        questao04.AppendChild(tpCanalMsg);

        XmlElement elegibilidade = docXml.CreateElement("elegibilidade");
        elegibilidade.InnerText = registro[3].Trim();
        questao04.AppendChild(elegibilidade);
					

    }

    private void geraPergunta05(XmlElement pergunta05, string[] registro)   {

        //XmlElement questao05 = docXml.CreateElement("questao05");
        //pergunta05.AppendChild(questao05);

        XmlElement possuiCertificado = docXml.CreateElement("possuiCertificado");
        possuiCertificado.InnerText = cboPossuiCertifado.SelectedValue;
        pergunta05.AppendChild(possuiCertificado);

        XmlElement nomeCertificado = docXml.CreateElement("nomeCertificado");
        nomeCertificado.InnerText = txtDominioeCertif.Text;
        pergunta05.AppendChild(nomeCertificado);

        XmlElement qtdPrestadoresCertif = docXml.CreateElement("qtdPrestadoresCertif");
        qtdPrestadoresCertif.InnerText = txtQtPrestadores.Text;
        pergunta05.AppendChild(qtdPrestadoresCertif);

    }

    private void geraPergunta06(XmlElement pergunta06, string[] registro)    {

        XmlElement questao06 = docXml.CreateElement("questao06");
        pergunta06.AppendChild(questao06);

        XmlElement formAcesso = docXml.CreateElement("formAcesso");
        formAcesso.InnerText = registro[1].Trim();
        questao06.AppendChild(formAcesso);

        XmlElement implElegibilidade = docXml.CreateElement("implElegibilidade");
        implElegibilidade.InnerText = registro[2].Trim();
        questao06.AppendChild(implElegibilidade);

        XmlElement qtdElegibilidade = docXml.CreateElement("qtdElegibilidade");
        qtdElegibilidade.InnerText = registro[3].Trim();
        questao06.AppendChild(qtdElegibilidade);

    }

    private void geraPergunta07(XmlElement pergunta07)    {


        /*XmlElement relacaoDocs = docXml.CreateElement("relacaoDocs");
        relacaoDocs.InnerText = "SEM DADOS A INFORMAR";
        pergunta07.AppendChild(relacaoDocs);*/

        XmlElement possuiCanalLoginSenha = docXml.CreateElement("possuiCanalLoginSenha");
        possuiCanalLoginSenha.InnerText = "S";
        pergunta07.AppendChild(possuiCanalLoginSenha);
        XmlElement acessoDadosCadastrais = docXml.CreateElement("acessoDadosCadastrais");
        acessoDadosCadastrais.InnerText = "S";
        pergunta07.AppendChild(acessoDadosCadastrais);
        XmlElement acessoRedePrestadores = docXml.CreateElement("acessoRedePrestadores");
        acessoRedePrestadores.InnerText = "S";
        pergunta07.AppendChild(acessoRedePrestadores);
        XmlElement acessoDadosUtilizacao = docXml.CreateElement("acessoDadosUtilizacao");
        acessoDadosUtilizacao.InnerText = "S";
        pergunta07.AppendChild(acessoDadosUtilizacao);
        XmlElement acessoOutrosDados = docXml.CreateElement("acessoOutrosDados");
        acessoOutrosDados.InnerText = "S";
        pergunta07.AppendChild(acessoOutrosDados);


        /*XmlElement docUtilizado = docXml.CreateElement("docUtilizado");
        //docUtilizado.InnerText = "SEM DADOS A INFORMAR";
        pergunta07.AppendChild(docUtilizado);*/

    }

    private void geraPergunta08a10(XmlElement pergunta08a10)    {



        XmlElement principaisDemandas = docXml.CreateElement("principaisDemandas");
        principaisDemandas.InnerText = "SEM DADOS A INFORMAR";
        pergunta08a10.AppendChild(principaisDemandas);

        XmlElement principaisDificuldades = docXml.CreateElement("principaisDificuldades");
        principaisDificuldades.InnerText = "SEM DADOS A INFORMAR";
        pergunta08a10.AppendChild(principaisDificuldades);

        XmlElement implantacaoV3 = docXml.CreateElement("implantacaoV3");
        implantacaoV3.InnerText = "NAO , ESTAMOS AGUARDANDO LIBERACAO DA VERSAO DO NOSSO SISTEMA DE GESTAO E DE NOSSO PORTAL COM AS IMPLEMENTACOES DA VERSAO 3.0";
        pergunta08a10.AppendChild(implantacaoV3);

        /*XmlElement sugestoesMelhorias = docXml.CreateElement("sugestoesMelhorias");
        sugestoesMelhorias.InnerText = "SEM DADOS A INFORMAR";
        pergunta08a10.AppendChild(sugestoesMelhorias);
         * */

    }

    private void geraPergunta11(XmlElement pergunta11)    {


        XmlElement nomeResponsavel = docXml.CreateElement("nomeResponsavel");
        nomeResponsavel.InnerText = TextBoxNmResponsavel.Text;
        pergunta11.AppendChild(nomeResponsavel);

        XmlElement cargoResponsavel = docXml.CreateElement("cargoResponsavel");
        cargoResponsavel.InnerText = TextBoxCargo.Text;
        pergunta11.AppendChild(cargoResponsavel);

        XmlElement telResponsavel = docXml.CreateElement("telResponsavel");
        telResponsavel.InnerText = TextBoxFone.Text;
        pergunta11.AppendChild(telResponsavel);

        XmlElement emailResponsavel = docXml.CreateElement("emailResponsavel");
        emailResponsavel.InnerText = TextBoxemail.Text;
        pergunta11.AppendChild(emailResponsavel);

    }


    private void geraEpilogo(XmlElement xmlmensagemRadar)
    {
        //docXml.PreserveWhitespace = true;        

        //string aux = "http://www.ans.gov.br/padroes/sib/schemas http://www.ans.gov.br/padroes/sib/schemas/sib.xsd" + xmlMensagemSIB.InnerText;

        string aux = "";
        if (CheckBox1.Checked)
        {
            string atributos = "";
            for (int i = 0; i < xmlmensagemRadar.Attributes.Count; i++)
            {
                atributos += xmlmensagemRadar.Attributes[i].InnerText;
            }

            aux = atributos + xmlmensagemRadar.InnerText;
        }
        else 
            aux = xmlmensagemRadar.InnerText;
        XmlElement epilogo = docXml.CreateElement("epilogo");
        xmlmensagemRadar.AppendChild(epilogo);

        XmlElement hashMd5 = docXml.CreateElement("hash");
        epilogo.AppendChild(hashMd5);
        
        hashMd5.InnerText = GetHash(aux).ToUpper();

    }

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


    protected void Button2_Click(object sender, EventArgs e)
    {




        XmlDocument doc = new XmlDocument();
        XmlElement mensagemRadar = doc.CreateElement("mensagemRadar");

        XmlAttribute xsiNs = doc.CreateAttribute("xmlns", "xsi", xmlns);        
        xsiNs.Value = xsi;
        mensagemRadar.SetAttributeNode(xsiNs);

        XmlAttribute xsdNs = doc.CreateAttribute("xmlns", "xsd", xmlns);
        xsdNs.Value = xsd;
        mensagemRadar.SetAttributeNode(xsdNs);

        mensagemRadar.SetAttribute("xmlns", "http://www.ans.gov.br/padroes/tiss/schemas");

        doc.AppendChild(mensagemRadar);

        doc.Save(@"c:\temp\bb.xml");

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["nmArq"] == null)
        {
            Label1.Text = "Primeiro selecione o arquivo e clique em gerar arquivo xml radar Tiss";
            return;
        }
        string nmArq = Session["nmArq"].ToString();
        if (nmArq.Equals(""))
            Label1.Text = "Primeiro selecione o arquivo e clique em gerar arquivo xml radar Tiss";
        else
        {
            Session["nmArq"] = "";
            DownloadArq(@"c:\temp\" + nmArq, nmArq);
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        XmlDocument arq_Xml = new XmlDocument();

        arq_Xml.Load(@"c:\temp\radar.xml");

        XmlNodeList lista = arq_Xml.SelectNodes("mensagemRadar/operadoraParaANS/pergunta2/questao02");
        decimal valorTotal = 0;
        int qt = 0;
        StreamWriter arq = new StreamWriter(@"c:\temp\log1.txt");
        foreach (XmlNode questao2 in lista)
        {
            arq.WriteLine(questao2.SelectSingleNode("codIdent").InnerText + ";" +
                          questao2.SelectSingleNode("tipoGuia").InnerText + ";" +
                          questao2.SelectSingleNode("qtdGuiasEletro").InnerText + ";" +
                          questao2.SelectSingleNode("qtdItensEletro").InnerText + ";" +
                          questao2.SelectSingleNode("valorEletro").InnerText + ";" +
                          questao2.SelectSingleNode("qtdGuiasTotal").InnerText + ";" +
                          questao2.SelectSingleNode("qtdItensTotal").InnerText + ";" +
                          questao2.SelectSingleNode("valorTotal").InnerText);
            valorTotal += decimal.Parse(questao2.SelectSingleNode("valorTotal").InnerText.Replace(".", ","));
            qt++;
        }
        arq.Close();
        Label1.Text = valorTotal.ToString();



        
        

    }
}
