using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Xml.Serialization;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    private XmlDocument docXml;
    protected void Page_Load(object sender, EventArgs e)


    {
        LinkButton2.Visible = false;
        if (!IsPostBack)
            lblEmpresa.Text = dbClass.execmd("select razao_social from empresa", true);

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        Label1.Text = "";
        LinkButton2.Visible = false;
        if (txtDtBase.Text == "")
        {
            Label1.Text = "Informe a data base!";
            return;
        }
        if (cboOficializa.SelectedIndex < 1) {
            Label1.Text = "Informe se é para oficializar ou não a geração do SIB";
            return;
        }

        String NrRegANS = dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'CDRANS'", true);
        Session["NrRegANS"] = NrRegANS;
        String nmArq = NrRegANS;
                
        nmArq += DateTime.Now.ToString("yyyyMMddHHmmss");
        
        string nmSoarq = nmArq;
        nmArq = nmArq + ".SBX";

        docXml = new XmlDocument();
        
        XmlElement xmlMensagemSIB = docXml.CreateElement("mensagemSIB");
        
        xmlMensagemSIB.SetAttribute("xmlns:ansSIB", "http://www.ans.gov.br/padroes/sib/schemas");                

        XmlAttribute attr = docXml.CreateAttribute("xsi", "schemaLocation", "http://www.w3.org/2001/XMLSchema-instance");
        attr.Value = "http://www.ans.gov.br/padroes/sib/schemas http://www.ans.gov.br/padroes/sib/schemas/sib.xsd";
        xmlMensagemSIB.Attributes.Append(attr);

        docXml.AppendChild(xmlMensagemSIB);

        string Sequencial = "1";
        string Cnpj =  dbClass.execmd("select replace(replace(cgc,'-',''),'/','') cgc from empresa",true);
        string versaoSis = dbClass.execmd("select versao from preferencia",true);

        geraCabecalhoSIB(xmlMensagemSIB, "SIB", Sequencial, DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss"), NrRegANS, "03589068000146", Cnpj, "1.1", "Multiodonto", versaoSis, "Proprio");
        geraMensagemSIB(xmlMensagemSIB);

        docXml.PreserveWhitespace = false;
        //docXml.Save(Server.MapPath("~") + nmArq);
        docXml.Save(@"c:\temp\" + nmArq);
        Session["nmArq"] = nmArq;
        LinkButton2.Visible = true;
        //DownloadArq(@"c:\temp\" + nmArq, nmArq);

        //docXml.Save(@"c:\temp\35135120110804232455.SBX");
        //if(Label1.Text.Length == 0)
          // Label1.Text = "Arquivo gerado com sucesso !" + DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
    }

    private void geraCabecalhoSIB(XmlElement xmlMensagemSIB, string tpTransacao, string sequencial, string dataHora, string NrregistroANS, string cnpjANS, string cnpjOperadora,
        string versaoPadrao, string nomeAplicativo, string versaoAplicativo, string fabricanteAplicativo)
    {

        XmlProcessingInstruction pi = docXml.CreateProcessingInstruction("xml", "version=\"1.0\" encoding=\"ISO-8859-1\" standalone=\"no\"");
        docXml.InsertBefore(pi, xmlMensagemSIB);

        XmlElement cabecalho = docXml.CreateElement("cabecalho");
        xmlMensagemSIB.AppendChild(cabecalho);

        XmlElement IdentificacaoTransacao = docXml.CreateElement("identificacaoTransacao");
        cabecalho.AppendChild(IdentificacaoTransacao);

        XmlElement tipoTransacao = docXml.CreateElement("tipoTransacao");
        tipoTransacao.InnerText = tpTransacao;
        IdentificacaoTransacao.AppendChild(tipoTransacao);

        XmlElement sequencialTransacao = docXml.CreateElement("sequencialTransacao");
        sequencialTransacao.InnerText = sequencial;
        IdentificacaoTransacao.AppendChild(sequencialTransacao);

        XmlElement dataHoraRegistroTransacao = docXml.CreateElement("dataHoraRegistroTransacao");
        dataHoraRegistroTransacao.InnerText = dataHora;
        IdentificacaoTransacao.AppendChild(dataHoraRegistroTransacao);

        XmlElement xmlOrigem = docXml.CreateElement("origem");
        cabecalho.AppendChild(xmlOrigem);

        XmlElement xmlRegistroANS = docXml.CreateElement("registroANS");
        xmlRegistroANS.InnerText = NrregistroANS;
        xmlOrigem.AppendChild(xmlRegistroANS);


        XmlElement xmlDestino = docXml.CreateElement("destino");
        cabecalho.AppendChild(xmlDestino);

        XmlElement xmlVersaoPadrao = docXml.CreateElement("versaoPadrao");
        xmlVersaoPadrao.InnerText = versaoPadrao;
        cabecalho.AppendChild(xmlVersaoPadrao);

        //xmlDestino.AppendChild(xmlRegistroANS);

        XmlElement xmlCnpjAns = docXml.CreateElement("cnpj");
        xmlCnpjAns.InnerText = cnpjANS;

        xmlDestino.AppendChild(xmlCnpjAns);


        XmlElement xmlIdentificacaoSoftwareGerador = docXml.CreateElement("identificacaoSoftwareGerador");

        cabecalho.AppendChild(xmlIdentificacaoSoftwareGerador);

        XmlElement xmlnomeAplicativo = docXml.CreateElement("nomeAplicativo");
        xmlnomeAplicativo.InnerText = nomeAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlnomeAplicativo);

        XmlElement xmlVersaoAplicativo = docXml.CreateElement("versaoAplicativo");
        xmlVersaoAplicativo.InnerText = versaoAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlVersaoAplicativo);

        XmlElement xmlfabricanteAplicativo = docXml.CreateElement("fabricanteAplicativo");
        xmlfabricanteAplicativo.InnerText = fabricanteAplicativo;
        xmlIdentificacaoSoftwareGerador.AppendChild(xmlfabricanteAplicativo);

    }

    private void geraInclusaoBenef(XmlElement xmlSibBeneficiarios, SqlDataReader dr)
    {
        
        XmlElement xmlSibInclusao = docXml.CreateElement("inclusao");
        xmlSibBeneficiarios.AppendChild(xmlSibInclusao);

        XmlElement xmlSibidentificacao = docXml.CreateElement("identificacao");
        xmlSibInclusao.AppendChild(xmlSibidentificacao);

        int indice = 0;
        if (dr["cpf"].ToString() != "")
        {
            xmlSibidentificacao.AppendChild(docXml.CreateElement("cpf"));
            xmlSibidentificacao.ChildNodes[indice].InnerText = dr["cpf"].ToString().Trim();            
            indice++;
        }

        /* se aplica somente para planos de saude conf. consulta de Gabi ao Julio Paim.
         * 
         * xmlSibidentificacao.AppendChild(docXml.CreateElement("dn"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = "Ver o que vai aki";
        indice++;
         */
        if (dr["PIS_PASEP"].ToString() != "" & dr["PIS_PASEP"].ToString() != "0")
        {
            xmlSibidentificacao.AppendChild(docXml.CreateElement("pisPasep"));
            xmlSibidentificacao.ChildNodes[indice].InnerText = dr["PIS_PASEP"].ToString().Trim();
            indice++;
        }

       /* A partir de 06/2012
        * xmlSibidentificacao.AppendChild(docXml.CreateElement("cns"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = "tratar so enviar quando tiver";
        indice++;
        */ 
        

        
        xmlSibidentificacao.AppendChild(docXml.CreateElement("nome"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = this.TirarAcentos(dr["nome"].ToString().Replace(".", "").Trim());
        indice++;

        xmlSibidentificacao.AppendChild(docXml.CreateElement("sexo"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = dr["sexo"].ToString().Trim();
        indice++;

        xmlSibidentificacao.AppendChild(docXml.CreateElement("dataNascimento"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = dr["Data_Nascimento"].ToString().Substring(6, 4) + "-" + dr["Data_Nascimento"].ToString().Substring(3, 2) + "-" + dr["Data_Nascimento"].ToString().Substring(0, 2);        
        indice++;


        string nmMae = this.TirarAcentos(dr["Nm_mae"].ToString().Replace(".", "").Trim());
        if (nmMae.Length > 0)
        {
            xmlSibidentificacao.AppendChild(docXml.CreateElement("nomeMae"));
            xmlSibidentificacao.ChildNodes[indice].InnerText = nmMae;
            indice++;
        }


        XmlElement xmlSibEndereco = docXml.CreateElement("endereco");
        xmlSibInclusao.AppendChild(xmlSibEndereco);
        indice = 0;


        xmlSibEndereco.AppendChild(docXml.CreateElement("logradouro"));
        xmlSibEndereco.ChildNodes[indice].InnerText = this.TirarAcentos(dr["Endereco_Residencial"].ToString().Trim());
        indice++;
        if (dr["Numero_Res"].ToString() == "" || !this.eh_numero(dr["Numero_Res"].ToString().Trim()))
            Label1.Text += "Número de residência não preenchido ou inválido. CCO : " + dr["cco"].ToString() + " nome : " + dr["nome"].ToString() + " Numero : " + dr["Numero_Res"].ToString() + "</br>";
        xmlSibEndereco.AppendChild(docXml.CreateElement("numero"));
        xmlSibEndereco.ChildNodes[indice].InnerText = dr["Numero_Res"].ToString().Trim();
        indice++;

        
        if(dr["Bairro_Residencial"].ToString().Length > 30)
            Label1.Text += "Bairro possui mais de 30 caracteres \"" + dr["Bairro_Residencial"].ToString() + "\" . CCO : " + dr["cco"].ToString() + " nome : " + dr["nome"].ToString() + "</br>";
            
        xmlSibEndereco.AppendChild(docXml.CreateElement("bairro"));
        xmlSibEndereco.ChildNodes[indice].InnerText = this.TirarAcentos(dr["Bairro_Residencial"].ToString().Trim());
        indice++;

        xmlSibEndereco.AppendChild(docXml.CreateElement("codigoMunicipio"));
        xmlSibEndereco.ChildNodes[indice].InnerText = dr["cd_ibge"].ToString().Substring(0,6);
        indice++;

        //xmlSibEndereco.AppendChild(docXml.CreateElement("codigoMunicipioResidencia"));
        //xmlSibEndereco.ChildNodes[indice].InnerText = dr["cd_ibge"].ToString().Substring(0, 6);
        //indice++;

        xmlSibEndereco.AppendChild(docXml.CreateElement("cep"));
        xmlSibEndereco.ChildNodes[indice].InnerText = so_numero(dr["cep"].ToString().Trim());
        indice++;

        xmlSibEndereco.AppendChild(docXml.CreateElement("tipoEndereco"));
        xmlSibEndereco.ChildNodes[indice].InnerText = "2"; //residencial
        indice++;

        xmlSibEndereco.AppendChild(docXml.CreateElement("resideExterior"));
        xmlSibEndereco.ChildNodes[indice].InnerText = "0"; //<!--0 - Não reside no exterior-->
        indice++;

        
        XmlElement xmlSibVinculo = docXml.CreateElement("vinculo");
        xmlSibInclusao.AppendChild(xmlSibVinculo);

        indice = 0;
        xmlSibVinculo.AppendChild(docXml.CreateElement("codigoBeneficiario"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["codigo_completo"].ToString().PadLeft(30,'0');
        indice++;

        xmlSibVinculo.AppendChild(docXml.CreateElement("relacaoDependencia"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["grau_parentesco"].ToString();
        indice++;
        int grauParentesco = Int32.Parse(dr["grau_parentesco"].ToString());
        
        if( grauParentesco != 1){ // para titular nao manda

           xmlSibVinculo.AppendChild(docXml.CreateElement("codigoBeneficiarioTitular"));
           xmlSibVinculo.ChildNodes[indice].InnerText = dr["Campo34Cdtitular"].ToString().PadLeft(30, '0').Trim();
           indice++;
        }

        xmlSibVinculo.AppendChild(docXml.CreateElement("dataContratacao"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["Data_Inclusao"].ToString().Substring(6,4) + "-" + dr["Data_Inclusao"].ToString().Substring(3,2) + "-" + dr["Data_Inclusao"].ToString().Substring(0,2);
        indice++;

        xmlSibVinculo.AppendChild(docXml.CreateElement("numeroPlanoANS"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["codigo_susep"].ToString().PadLeft(9,'0');
        indice++;
        /*
        xmlSibVinculo.AppendChild(docXml.CreateElement("numeroPlanoOperadora"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["cd_plano"].ToString();
        indice++;
         */ 

        xmlSibVinculo.AppendChild(docXml.CreateElement("coberturaParcialTemporaria"));
        xmlSibVinculo.ChildNodes[indice].InnerText = "1";  // <!--1 - Possui cobertura parcial temporaria--> conforme GAbi. 06//06/11 via msn
        indice++;

        xmlSibVinculo.AppendChild(docXml.CreateElement("itensExcluidosCobertura"));
        xmlSibVinculo.ChildNodes[indice].InnerText = "0"; // <!--0 - Não possui ítens excluídos da cobertura--> conforme Gabi 06/06/ via msn
        indice++;

        if (dr["Fis_Jur"].ToString() == "Jurídica")
        {
            xmlSibVinculo.AppendChild(docXml.CreateElement("cnpjEmpresaContratante"));
            xmlSibVinculo.ChildNodes[indice].InnerText = dr["Campo33CNPJ"].ToString().PadLeft(14, '0').Trim();
            indice++;

            //xmlSibVinculo.AppendChild(docXml.CreateElement("ceiEmpresaContratante"));
            //xmlSibVinculo.ChildNodes[indice].InnerText = dr["cei"].ToString().PadLeft(14, '0').Trim();
            //indice++;

        }



    }
    private void geraAlteracaoBenef(XmlElement xmlSibBeneficiarios, SqlDataReader dr)
    {
        XmlElement xmlSibretificacao = docXml.CreateElement("retificacao");
        xmlSibBeneficiarios.AppendChild(xmlSibretificacao);


        if (dr["cco"].ToString().Trim() == "")
            Label1.Text += "CCO é obrigatório para alteração/exclusão. Beneficiário : " + dr["nome"].ToString() + "</br>"; ;
        xmlSibretificacao.AppendChild(docXml.CreateElement("cco"));
        xmlSibretificacao.ChildNodes[0].InnerText = dr["cco"].ToString();
        //string aux = "";
        //if (dr["cco"].ToString().PadLeft(12, '0') == "000083357974")
            //aux = "ok";
            
        XmlElement xmlSibidentificacao = docXml.CreateElement("identificacao");
        xmlSibretificacao.AppendChild(xmlSibidentificacao);

        int indice = 0;
        if (dr["cpf"].ToString() != "")
        {
            xmlSibidentificacao.AppendChild(docXml.CreateElement("cpf"));
            xmlSibidentificacao.ChildNodes[indice].InnerText = dr["cpf"].ToString().Trim();
            indice++;
        }

        /* se aplica somente para planos de saude conf. consulta de Gabi ao Julio Paim.
         * 
         * xmlSibidentificacao.AppendChild(docXml.CreateElement("dn"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = "Ver o que vai aki";
        indice++;
         */
        if (dr["PIS_PASEP"].ToString() != "" & dr["PIS_PASEP"].ToString() != "0")
        {
            xmlSibidentificacao.AppendChild(docXml.CreateElement("pisPasep"));
            xmlSibidentificacao.ChildNodes[indice].InnerText = dr["PIS_PASEP"].ToString().Trim();
            indice++;
        }

        /* A partir de 06/2012
         * xmlSibidentificacao.AppendChild(docXml.CreateElement("cns"));
         xmlSibidentificacao.ChildNodes[indice].InnerText = "tratar so enviar quando tiver";
         indice++;
         */



        xmlSibidentificacao.AppendChild(docXml.CreateElement("nome"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = this.TirarAcentos(dr["nome"].ToString().Replace(".", "").Trim());
        indice++;

        xmlSibidentificacao.AppendChild(docXml.CreateElement("sexo"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = dr["sexo"].ToString().Trim();
        indice++;

        xmlSibidentificacao.AppendChild(docXml.CreateElement("dataNascimento"));
        xmlSibidentificacao.ChildNodes[indice].InnerText = dr["Data_Nascimento"].ToString().Substring(6, 4) + "-" + dr["Data_Nascimento"].ToString().Substring(3, 2) + "-" + dr["Data_Nascimento"].ToString().Substring(0, 2);
        indice++;

        string nmMae = this.TirarAcentos(dr["Nm_mae"].ToString().Replace(".", "").Trim());
        if (nmMae.Length > 0)
        {
            xmlSibidentificacao.AppendChild(docXml.CreateElement("nomeMae"));
            xmlSibidentificacao.ChildNodes[indice].InnerText = nmMae;
            indice++;
        }

        XmlElement xmlSibEndereco = docXml.CreateElement("endereco");
        xmlSibretificacao.AppendChild(xmlSibEndereco);
        indice = 0;


        xmlSibEndereco.AppendChild(docXml.CreateElement("logradouro"));
        xmlSibEndereco.ChildNodes[indice].InnerText = this.TirarAcentos(dr["Endereco_Residencial"].ToString().Trim());
        indice++;
        if (dr["Numero_Res"].ToString() == "" || !this.eh_numero(dr["Numero_Res"].ToString().Trim()))
            Label1.Text += "Número de residência não preenchido ou inválido CCO : " + dr["cco"].ToString() + " nome : " + dr["nome"].ToString() + " Numero : " + dr["Numero_Res"].ToString() + "</br>";
        
        xmlSibEndereco.AppendChild(docXml.CreateElement("numero"));
        xmlSibEndereco.ChildNodes[indice].InnerText = dr["Numero_Res"].ToString().Trim();
        indice++;

        if (dr["Bairro_Residencial"].ToString().Length > 30)
            Label1.Text += "Bairro possui mais de 30 caracteres \"" + dr["Bairro_Residencial"].ToString() + "\" . CCO : " + dr["cco"].ToString() + " nome : " + dr["nome"].ToString() + "</br>";

        xmlSibEndereco.AppendChild(docXml.CreateElement("bairro"));
        xmlSibEndereco.ChildNodes[indice].InnerText = this.TirarAcentos(dr["Bairro_Residencial"].ToString());
        indice++;

        xmlSibEndereco.AppendChild(docXml.CreateElement("codigoMunicipio"));
        xmlSibEndereco.ChildNodes[indice].InnerText = dr["cd_ibge"].ToString().Substring(0, 6);
        indice++;

        //xmlSibEndereco.AppendChild(docXml.CreateElement("codigoMunicipioResidencia"));
        //xmlSibEndereco.ChildNodes[indice].InnerText = dr["cd_ibge"].ToString().Substring(0, 6);
        //indice++;

        xmlSibEndereco.AppendChild(docXml.CreateElement("cep"));
        xmlSibEndereco.ChildNodes[indice].InnerText = so_numero(dr["cep"].ToString().Trim());
        indice++;

        xmlSibEndereco.AppendChild(docXml.CreateElement("tipoEndereco"));
        xmlSibEndereco.ChildNodes[indice].InnerText = "2"; //residencial
        indice++;

        xmlSibEndereco.AppendChild(docXml.CreateElement("resideExterior"));
        xmlSibEndereco.ChildNodes[indice].InnerText = "0"; //<!--0 - Não reside no exterior-->
        indice++;
        

        XmlElement xmlSibVinculo = docXml.CreateElement("vinculo");
        xmlSibretificacao.AppendChild(xmlSibVinculo);

        indice = 0;
        xmlSibVinculo.AppendChild(docXml.CreateElement("codigoBeneficiario"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["codigo_completo"].ToString().PadLeft(30, '0');
        indice++;

        xmlSibVinculo.AppendChild(docXml.CreateElement("relacaoDependencia"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["grau_parentesco"].ToString();
        indice++;
        int grauParentesco = Int32.Parse(dr["grau_parentesco"].ToString());
        
        if( grauParentesco != 1) // para titular nao manda
        {

            xmlSibVinculo.AppendChild(docXml.CreateElement("codigoBeneficiarioTitular"));
            xmlSibVinculo.ChildNodes[indice].InnerText = dr["Campo34Cdtitular"].ToString().PadLeft(30, '0').Trim();
            indice++;
        }

        xmlSibVinculo.AppendChild(docXml.CreateElement("dataContratacao"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["Data_Inclusao"].ToString().Substring(6, 4) + "-" + dr["Data_Inclusao"].ToString().Substring(3, 2) + "-" + dr["Data_Inclusao"].ToString().Substring(0, 2);
        indice++;

        if (dr["dtReinclusao"].ToString() != "0000000000")
        {
            xmlSibVinculo.AppendChild(docXml.CreateElement("dataReativacao"));
            xmlSibVinculo.ChildNodes[indice].InnerText = dr["dtReinclusao"].ToString().Substring(6, 4) + "-" + dr["dtReinclusao"].ToString().Substring(3, 2) + "-" + dr["dtReinclusao"].ToString().Substring(0, 2);
            indice++;
        }

        if (dr["data_exclusao"].ToString() != "0000000000")
        {
            xmlSibVinculo.AppendChild(docXml.CreateElement("dataCancelamento"));
            xmlSibVinculo.ChildNodes[indice].InnerText = dr["data_exclusao"].ToString().Substring(6, 4) + "-" + dr["data_exclusao"].ToString().Substring(3, 2) + "-" + dr["data_exclusao"].ToString().Substring(0, 2);
            indice++;

            xmlSibVinculo.AppendChild(docXml.CreateElement("motivoCancelamento"));
            xmlSibVinculo.ChildNodes[indice].InnerText = dr["motivo_cancelamento"].ToString();
            indice++;
        }



        xmlSibVinculo.AppendChild(docXml.CreateElement("numeroPlanoANS"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["codigo_susep"].ToString().PadLeft(9, '0').Trim();
        indice++;

        /*
        xmlSibVinculo.AppendChild(docXml.CreateElement("numeroPlanoOperadora"));
        xmlSibVinculo.ChildNodes[indice].InnerText = dr["cd_plano"].ToString();
        indice++;
         */

        xmlSibVinculo.AppendChild(docXml.CreateElement("coberturaParcialTemporaria"));
        xmlSibVinculo.ChildNodes[indice].InnerText = "1";  // <!--1 - Possui cobertura parcial temporaria--> conforme GAbi. 06//06/11 via msn
        indice++;

        xmlSibVinculo.AppendChild(docXml.CreateElement("itensExcluidosCobertura"));
        xmlSibVinculo.ChildNodes[indice].InnerText = "0"; // <!--0 - Não possui ítens excluídos da cobertura--> conforme Gabi 06/06/ via msn
        indice++;

        if (dr["Fis_Jur"].ToString() == "Jurídica")
        {
            xmlSibVinculo.AppendChild(docXml.CreateElement("cnpjEmpresaContratante"));
            xmlSibVinculo.ChildNodes[indice].InnerText = dr["Campo33CNPJ"].ToString().PadLeft(14, '0').Trim();
            indice++;

            //xmlSibVinculo.AppendChild(docXml.CreateElement("ceiEmpresaContratante"));
            //xmlSibVinculo.ChildNodes[indice].InnerText = dr["cei"].ToString().PadLeft(14, '0').Trim();
            //indice++;

        }



    }
    private void geraExclusaoBenef(XmlElement xmlSibBeneficiarios, SqlDataReader dr)
    {
        if (dr["cco"].ToString().Trim() == "")
            Label1.Text += "CCO é obrigatório para alteração/exclusão. Beneficiário : " + dr["nome"].ToString() + "</br>"; ;

        XmlElement xmlSibExclusao = docXml.CreateElement("cancelamento");
        xmlSibBeneficiarios.AppendChild(xmlSibExclusao);

        xmlSibExclusao.AppendChild(docXml.CreateElement("cco"));
        xmlSibExclusao.ChildNodes[0].InnerText = dr["cco"].ToString().Trim();

        xmlSibExclusao.AppendChild(docXml.CreateElement("dataCancelamento"));
        xmlSibExclusao.ChildNodes[1].InnerText = dr["data_exclusao"].ToString().Substring(6, 4) + "-" + dr["data_exclusao"].ToString().Substring(3, 2) + "-" + dr["data_exclusao"].ToString().Substring(0, 2);

        string motivo = dr["motivo_cancelamento"].ToString();
		if(motivo == ""){
           Label1.Text += "Motivo de exclusão(" + dr["motivo_cancelamento"].ToString() + ")  não permitido pelo novo layout SIB/XM . cco : " + dr["cco"].ToString() + ". Motivos permitidos : </br>" +
                      
                          "41 - Rompimento do contrato por inictativa do beneficiário. </br>" + 
                          "42 - Desligamento da empresa (para planos coletivos)</br>" + 
                          "43 - Inadimplência.</br>" + 
                          "44 - Óbito.</br>" + 
                          "45 - Transferência de carteira.</br>" + 
                          "46 - Inclusão indevida de beneficiários.</br>" + 
                          "47 - Fraude (art. 13 da Lei 9.656/98).</br>" + 
                          "48 - Por portabillidade de carência.</br>"; 
		}
        
        /*if (!Session["NrRegANS"].ToString().Equals("351351"))
        { //Seato
            if (dr["motivo_cancelamento"].ToString() == "1")
            { // no seato eh 1 e 2 representam a mesma coisa o ideal eh colocar na tabela cancelamento o cod de /para do ans..mas na pressa.
                motivo = "41";
                xmlSibExclusao.AppendChild(docXml.CreateElement("motivoCancelamento"));
                xmlSibExclusao.ChildNodes[2].InnerText = motivo;
                return;
            }
        }

        if (dr["motivo_cancelamento"].ToString() == "2")
            motivo = "41";
        else
            if (dr["motivo_cancelamento"].ToString() == "3")
                motivo = "42";
            else
                if (dr["motivo_cancelamento"].ToString() == "4")
                    motivo = "43";
                else
                    if (dr["motivo_cancelamento"].ToString() == "5")
                        motivo = "44";
                    else
                        if (dr["motivo_cancelamento"].ToString() == "13")
                            motivo = "46";
                        else
                            if (dr["motivo_cancelamento"].ToString() == "14")
                                motivo = "47";
                            else
                                Label1.Text += "Motivo de exclusão(" + dr["motivo_cancelamento"].ToString() + ")  não permitido pelo novo layout SIB/XM . cco : " + dr["cco"].ToString() + ". Motivos permitidos : </br>" +

                                    "41 - Rompimento do contrato por inictativa do beneficiário. </br>" + 
                                    "42 - Desligamento da empresa (para planos coletivos)</br>" + 
                                    "43 - Inadimplência.</br>" + 
                                    "44 - Óbito.</br>" + 
                                    "45 - Transferência de carteira.</br>" + 
                                    "46 - Inclusão indevida de beneficiários.</br>" + 
                                    "47 - Fraude (art. 13 da Lei 9.656/98).</br>" + 
                                    "48 - Por portabillidade de carência.</br>"; */
        
        xmlSibExclusao.AppendChild(docXml.CreateElement("motivoCancelamento"));
        xmlSibExclusao.ChildNodes[2].InnerText = motivo;

    }
    private void geraReInculsaoBenef(XmlElement xmlSibBeneficiarios, SqlDataReader dr)
    {
        if (dr["cco"].ToString().Trim() == "")
            Label1.Text += "CCO é obrigatório para alteração/exclusão. Beneficiário : " + dr["nome"].ToString() + "</br>";

        XmlElement xmlSibReativacao = docXml.CreateElement("reativacao");
        xmlSibBeneficiarios.AppendChild(xmlSibReativacao);

        xmlSibReativacao.AppendChild(docXml.CreateElement("cco"));
        xmlSibReativacao.ChildNodes[0].InnerText = dr["cco"].ToString().Trim();

        xmlSibReativacao.AppendChild(docXml.CreateElement("dataReativacao"));
        xmlSibReativacao.ChildNodes[1].InnerText = dr["dtReinclusao"].ToString().Substring(6, 4) + "-" + dr["dtReinclusao"].ToString().Substring(3, 2) + "-" + dr["dtReinclusao"].ToString().Substring(0, 2);

    }


    private void geraMensagemSIB(XmlElement xmlMensagemSIB)
    {
        XmlElement xmlMensagem = docXml.CreateElement("mensagem");
        xmlMensagemSIB.AppendChild(xmlMensagem);

        
        XmlElement xmlOperadoraParaANS = docXml.CreateElement("operadoraParaANS");
        xmlMensagem.AppendChild(xmlOperadoraParaANS);

        XmlElement xmlSibBeneficiarios = docXml.CreateElement("beneficiarios");
        xmlOperadoraParaANS.AppendChild(xmlSibBeneficiarios);

        
        SqlConnection cn = new SqlConnection();

        cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnSIB"].ToString();
        cn.Open();
        SqlCommand cmdIncTemp = new SqlCommand("SpArqSusep", cn);
        cmdIncTemp.CommandType = CommandType.StoredProcedure;
        SqlParameter param;
        param = cmdIncTemp.Parameters.Add(new SqlParameter("@DtLimite", SqlDbType.Text, 10));
        param.Direction = ParameterDirection.Input;
        param.Value = txtDtBase.Text;

        SqlParameter paramOficializa;
        paramOficializa = cmdIncTemp.Parameters.Add(new SqlParameter("@oficializa", SqlDbType.Text, 1));
        paramOficializa.Direction = ParameterDirection.Input;
        paramOficializa.Value = cboOficializa.SelectedValue.Substring(0,1);


        SqlDataReader dr = cmdIncTemp.ExecuteReader();
        int qtInc = 0;
        int qtAlt = 0;
        int qtExc = 0;

        while (dr.Read())
        {
            if (dr["FlagIncl_Excl"].ToString() == "1")
            {
                geraInclusaoBenef(xmlSibBeneficiarios, dr);
                qtInc++;
            }
            else
                if (dr["FlagIncl_Excl"].ToString() == "2")
                {
                    geraAlteracaoBenef(xmlSibBeneficiarios, dr);
                    qtAlt++;
                }
                else
                    if (dr["FlagIncl_Excl"].ToString() == "3")
                    {
                        geraExclusaoBenef(xmlSibBeneficiarios, dr);
                        qtExc++;
                    }
                    else
                        if (dr["FlagIncl_Excl"].ToString() == "8")
                        {
                            geraReInculsaoBenef(xmlSibBeneficiarios, dr);
                            qtAlt++;
                        }
        }

        geraEpilogo(xmlMensagemSIB);        
        dr.Close();
        cn.Close();
        if (Label1.Text.Length == 0)
            Label1.Text = "Arquivo Gerado com Sucesso : " + DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss") + "</br>" +
                "Inclusões  : " + qtInc.ToString() + "</br>" +
                "Alterações : " + qtAlt.ToString() + "</br>" +
                "Exclusões  : " + qtExc.ToString() + "</br>";
        else
        {
            LinkButton2.Visible = false;
            Session["nmArq"] = "";
        }
    }

    private void geraEpilogo(XmlElement xmlMensagemSIB)
    {
        docXml.PreserveWhitespace = true;
        
        //string aux = "http://www.ans.gov.br/padroes/sib/schemas http://www.w3.org/2001/XMLSchema-instance" + xmlMensagemSIB.InnerText;
        
        string aux = "http://www.ans.gov.br/padroes/sib/schemas http://www.ans.gov.br/padroes/sib/schemas/sib.xsd" + xmlMensagemSIB.InnerText;

        XmlElement epilogo = docXml.CreateElement("epilogo");
        xmlMensagemSIB.AppendChild(epilogo);

        XmlElement hashMd5 = docXml.CreateElement("hash");
        epilogo.AppendChild(hashMd5);



        if (cboOficializa.SelectedValue.ToUpper() == "SIM") // so gera o hahs se estiver oficializando a geração.
            hashMd5.InnerText = GetHash(aux).ToUpper();
        else
            hashMd5.InnerText = "213434ererefe34"; // coloca um hash inválido, o propósito é não deixar enviar o sib se naõ tiver sido oficializado a geração
        
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

    public bool eh_numero(string numero) {
        try
        {
            decimal.Parse(numero);
            return true;
        }
        catch (Exception)
        {

            return false;
        }
    }
    public string so_numero(string str) {
        string aux = "";
        for (int i = 0; i < str.Length; i++)
        {
            if (str[i] == '0' || str[i] == '1' || str[i] == '2' || str[i] == '3' || str[i] == '4' || str[i] == '5' || str[i] == '6' || str[i] == '7' || str[i] == '8' || str[i] == '9')
                aux += str[i];
            
        }
        return aux;
    }

    public string TirarAcentos(string texto)
    {
        string textor = "";

        for (int i = 0; i < texto.Length; i++)
        {
            if (texto[i].ToString() == "ã") textor += "a";
            else if (texto[i].ToString() == "á") textor += "a";
            else if (texto[i].ToString() == "à") textor += "a";
            else if (texto[i].ToString() == "â") textor += "a";
            else if (texto[i].ToString() == "ä") textor += "a";
            else if (texto[i].ToString() == "é") textor += "e";
            else if (texto[i].ToString() == "è") textor += "e";
            else if (texto[i].ToString() == "ê") textor += "e";
            else if (texto[i].ToString() == "ë") textor += "e";
            else if (texto[i].ToString() == "í") textor += "i";
            else if (texto[i].ToString() == "ì") textor += "i";
            else if (texto[i].ToString() == "ï") textor += "i";
            else if (texto[i].ToString() == "õ") textor += "o";
            else if (texto[i].ToString() == "ó") textor += "o";
            else if (texto[i].ToString() == "ò") textor += "o";
            else if (texto[i].ToString() == "ö") textor += "o";
            else if (texto[i].ToString() == "ô") textor += "o";
            else if (texto[i].ToString() == "ú") textor += "u";
            else if (texto[i].ToString() == "ù") textor += "u";
            else if (texto[i].ToString() == "ü") textor += "u";
            else if (texto[i].ToString() == "ç") textor += "c";
            else if (texto[i].ToString() == "Ã") textor += "A";
            else if (texto[i].ToString() == "Á") textor += "A";
            else if (texto[i].ToString() == "À") textor += "A";
            else if (texto[i].ToString() == "Â") textor += "A";
            else if (texto[i].ToString() == "Ä") textor += "A";
            else if (texto[i].ToString() == "É") textor += "E";
            else if (texto[i].ToString() == "È") textor += "E";
            else if (texto[i].ToString() == "Ê") textor += "E";
            else if (texto[i].ToString() == "Ë") textor += "E";
            else if (texto[i].ToString() == "Í") textor += "I";
            else if (texto[i].ToString() == "Ì") textor += "I";
            else if (texto[i].ToString() == "Ï") textor += "I";
            else if (texto[i].ToString() == "Õ") textor += "O";
            else if (texto[i].ToString() == "Ó") textor += "O";
            else if (texto[i].ToString() == "Ò") textor += "O";
            else if (texto[i].ToString() == "Ö") textor += "O";
            else if (texto[i].ToString() == "Ô") textor += "O";
            else if (texto[i].ToString() == "Ú") textor += "U";
            else if (texto[i].ToString() == "Ù") textor += "U";
            else if (texto[i].ToString() == "Ü") textor += "U";
            else if (texto[i].ToString() == "Ç") textor += "C";
            else if (texto[i].ToString() == "°") textor += "";// esse caracter me tirou noite de sono pra validar o hahs...brincadeira a ans.
            else textor += texto[i];
        }
        return textor;
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
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
	
	//DownloadArq(Server.MapPath(@"~\temp\") + Session["nmArq"].ToString(), Session["nmArq"].ToString());
        DownloadArq(@"c:\temp\" + Session["nmArq"].ToString(), Session["nmArq"].ToString());
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        
    }


}
