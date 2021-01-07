using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;

/// <summary>
/// Summary description for Ginfes
/// </summary>
public class RpsNFe
{
    private XmlDocument docXml;
    public RpsNFe()
	{

	}
    public void geraRPSNFe(){
        docXml = new XmlDocument();

        XmlElement EnviarLoteRpsEnvio = docXml.CreateElement("EnviarLoteRpsEnvio");

        EnviarLoteRpsEnvio.SetAttribute("xmlns:ns3", "http://www.ginfes.com.br/servico_enviar_lote_rps_envio_v03.xsd");
        EnviarLoteRpsEnvio.SetAttribute("xmlns:ns4", "http://www.ginfes.com.br/tipos_v03.xsd");
        EnviarLoteRpsEnvio.SetAttribute("xmlns:ns5", "http://www.ginfes.com.br/cabecalho_v03.xsd");

        //XmlAttribute attr = docXml.CreateAttribute("xsi", "schemaLocation", "http://www.w3.org/2001/XMLSchema-instance");
        //attr.Value = "http://www.ans.gov.br/padroes/sib/schemas http://www.ans.gov.br/padroes/sib/schemas/sib.xsd";
        //xmlMensagemSIB.Attributes.Append(attr);

        docXml.AppendChild(EnviarLoteRpsEnvio);

        pLoteRPS(EnviarLoteRpsEnvio, "1", "01306081000115", "383001", "1");
        

        //geraCabecalhoSIB(xmlMensagemSIB, "SIB", Sequencial, DateTime.Now.ToString("yyyy-MM-ddTHH:mm:ss"), NrRegANS, "03589068000146", Cnpj, "1.1", "Multiodonto", versaoSis, "Proprio");
        //geraMensagemSIB(xmlMensagemSIB);

        docXml.PreserveWhitespace = false;
        

        docXml.Save(@"c:\temp\RpsNFe.xml");
    }

    private void pLoteRPS(XmlElement EnviarLoteRpsEnvio, string nrLote, string cnpj, string inscricaoMunicipal, string qtdeRPS)
    {

        XmlProcessingInstruction pi = docXml.CreateProcessingInstruction("xml", "version=\"1.0\" encoding=\"ISO-8859-1\" standalone=\"no\"");
        docXml.InsertBefore(pi, EnviarLoteRpsEnvio);

        XmlElement LoteRps = docXml.CreateElement("LoteRps");
        EnviarLoteRpsEnvio.AppendChild(LoteRps);

        XmlElement Cnpj = docXml.CreateElement("Cnpj");
        Cnpj.InnerText = cnpj;
        LoteRps.AppendChild(Cnpj);

        XmlElement NumeroLote = docXml.CreateElement("NumeroLote");
        NumeroLote.InnerText = nrLote;
        LoteRps.AppendChild(NumeroLote);


        XmlElement InscricaoMunicipal = docXml.CreateElement("InscricaoMunicipal");
        InscricaoMunicipal.InnerText = inscricaoMunicipal;
        LoteRps.AppendChild(InscricaoMunicipal);

        XmlElement QuantidadeRps = docXml.CreateElement("QuantidadeRps");
        QuantidadeRps.InnerText = qtdeRPS;
        LoteRps.AppendChild(QuantidadeRps);

        pRps(LoteRps);

    }
    public void pRps(XmlElement EnviarLoteRpsEnvio)
    {
        XmlElement ListaRps = docXml.CreateElement("ListaRps");
        EnviarLoteRpsEnvio.AppendChild(ListaRps);

        XmlElement Rps = docXml.CreateElement("Rps");
        ListaRps.AppendChild(Rps);
        pInfRps(Rps, "123", "NFE", "1", "2013-01-13T12:19", "1", "1", "2", "1","20.887,34","20.887,34","0,02","20.887,34","417,75",
                "4.23","620150000","3524709","PLANO ODONTOLOGICO","383001","01306081000115","60247194000156","SINDICATO DO COMERCIO VAREJISTA DE MATÃO","AV SETE DE SETEMBRO",
                 "1425","CENTRO","1111","SP","14092050","denise_bobivox@hotmail.com");

    }

    public void pInfRps(XmlElement Rps, string numero, string serie,string tipo,string dataEmissao,string naturezaOp,string optanteSimples,
                            string incentivadorCultural,string status,string valorServicos,string baseCalculo, string aliquota,string valorLiquido,
                            string valorISS, string codItemListaServico, string codTribuMunicipio, string codMunicipio, string descricaoProduto,
                            string inscricaoMunicipal, string cnpj, string cnpjTomador, string razaoSocial, string enderecoTomador, string nrEndereco,
                            string nmBairro, string cdMunicipioEndereco, string ufEndereco, string cepEndereco, string emailTomador)
    {
        XmlElement InfRps = docXml.CreateElement("InfRps");
        Rps.AppendChild(InfRps);
        InfRps.SetAttribute("Id", "rps_" + numero );

        XmlElement IdentificacaoRps = docXml.CreateElement("IdentificacaoRps");
        InfRps.AppendChild(IdentificacaoRps);

        XmlElement Numero = docXml.CreateElement("Numero");
        IdentificacaoRps.AppendChild(Numero);
        Numero.InnerText = numero;

        XmlElement Serie = docXml.CreateElement("Serie");
        IdentificacaoRps.AppendChild(Serie);
        Serie.InnerText = serie;

        XmlElement Tipo = docXml.CreateElement("Tipo");
        IdentificacaoRps.AppendChild(Tipo);
        Tipo.InnerText = tipo;

        XmlElement DataEmissao = docXml.CreateElement("DataEmissao");
        InfRps.AppendChild(DataEmissao);
        DataEmissao.InnerText = dataEmissao;

        XmlElement NaturezaOperacao = docXml.CreateElement("NaturezaOperacao");
        InfRps.AppendChild(NaturezaOperacao);
        NaturezaOperacao.InnerText = naturezaOp;

        XmlElement OptanteSimplesNacional = docXml.CreateElement("OptanteSimplesNacional");
        InfRps.AppendChild(OptanteSimplesNacional);
        OptanteSimplesNacional.InnerText = optanteSimples;

        XmlElement IncentivadorCultural = docXml.CreateElement("IncentivadorCultural");
        InfRps.AppendChild(IncentivadorCultural);
        IncentivadorCultural.InnerText = incentivadorCultural;

        XmlElement Status = docXml.CreateElement("Status");
        InfRps.AppendChild(Status);
        Status.InnerText = status;

        XmlElement Servico = docXml.CreateElement("Servico");
        InfRps.AppendChild(Servico);

        XmlElement Valores = docXml.CreateElement("Valores");
        Servico.AppendChild(Valores);

        XmlElement ValorServicos = docXml.CreateElement("ValorServicos");
        Valores.AppendChild(ValorServicos);
        ValorServicos.InnerText = valorServicos;

        XmlElement ValorDeducoes = docXml.CreateElement("ValorDeducoes");
        Valores.AppendChild(ValorDeducoes);
        ValorDeducoes.InnerText = "0";

        XmlElement ValorPis = docXml.CreateElement("ValorPis");
        Valores.AppendChild(ValorPis);
        ValorPis.InnerText = "0";

        XmlElement ValorCofins = docXml.CreateElement("ValorCofins");
        Valores.AppendChild(ValorCofins);
        ValorCofins.InnerText = "0";

        XmlElement ValorInss = docXml.CreateElement("ValorInss");
        Valores.AppendChild(ValorInss);
        ValorInss.InnerText = "0";

        XmlElement ValorIr = docXml.CreateElement("ValorIr");
        Valores.AppendChild(ValorIr);
        ValorIr.InnerText = "0";

        XmlElement ValorCsll = docXml.CreateElement("ValorCsll");
        Valores.AppendChild(ValorCsll);
        ValorCsll.InnerText = "0";

        XmlElement IssRetido = docXml.CreateElement("IssRetido");
        Valores.AppendChild(IssRetido);
        IssRetido.InnerText = "2"; // 2 significa nao

        XmlElement ValorIss = docXml.CreateElement("ValorIss");
        Valores.AppendChild(ValorIss);
        ValorIss.InnerText = valorISS;

        XmlElement ValorIssRetido = docXml.CreateElement("ValorIssRetido");
        Valores.AppendChild(ValorIssRetido);
        ValorIssRetido.InnerText = "0";

        XmlElement OutrasRetencoes = docXml.CreateElement("OutrasRetencoes");
        Valores.AppendChild(OutrasRetencoes);
        OutrasRetencoes.InnerText = "0";

        XmlElement BaseCalculo = docXml.CreateElement("BaseCalculo");
        Valores.AppendChild(BaseCalculo);
        BaseCalculo.InnerText = baseCalculo;

        XmlElement Aliquota = docXml.CreateElement("Aliquota");
        Valores.AppendChild(Aliquota);
        Aliquota.InnerText = aliquota;

        XmlElement ValorLiquidoNfse = docXml.CreateElement("ValorLiquidoNfse");
        Valores.AppendChild(ValorLiquidoNfse);
        ValorLiquidoNfse.InnerText = valorLiquido;


        XmlElement DescontoIncondicionado = docXml.CreateElement("DescontoIncondicionado");
        Valores.AppendChild(DescontoIncondicionado);
        DescontoIncondicionado.InnerText = "0";

        XmlElement DescontoCondicionado = docXml.CreateElement("DescontoCondicionado");
        Valores.AppendChild(DescontoCondicionado);
        DescontoCondicionado.InnerText = "0";

        XmlElement ItemListaServico = docXml.CreateElement("ItemListaServico");
        Servico.AppendChild(ItemListaServico);
        ItemListaServico.InnerText = codItemListaServico;

        XmlElement CodigoTributacaoMunicipio  = docXml.CreateElement("CodigoTributacaoMunicipio");
        Servico.AppendChild(CodigoTributacaoMunicipio);
        CodigoTributacaoMunicipio.InnerText = codTribuMunicipio;

        XmlElement Discriminacao  = docXml.CreateElement("Discriminacao");
        Servico.AppendChild(Discriminacao);
        Discriminacao.InnerText = descricaoProduto;

        XmlElement CodigoMunicipio = docXml.CreateElement("CodigoMunicipio");
        Servico.AppendChild(CodigoMunicipio);
        CodigoMunicipio.InnerText = codMunicipio;

        XmlElement Prestador = docXml.CreateElement("Prestador");
        InfRps.AppendChild(Prestador);

        XmlElement Cnpj = docXml.CreateElement("Cnpj");
        Prestador.AppendChild(Cnpj);
        Cnpj.InnerText = cnpj;

        XmlElement InscricaoMunicipal = docXml.CreateElement("InscricaoMunicipal");
        Prestador.AppendChild(InscricaoMunicipal);
        InscricaoMunicipal.InnerText = inscricaoMunicipal;

        XmlElement Tomador = docXml.CreateElement("Tomador");
        InfRps.AppendChild(Tomador);

        XmlElement IdentificacaoTomador = docXml.CreateElement("IdentificacaoTomador");
        Tomador.AppendChild(IdentificacaoTomador);

        XmlElement CpfCnpj = docXml.CreateElement("CpfCnpj");
        IdentificacaoTomador.AppendChild(CpfCnpj);

        XmlElement CnpjTomador = docXml.CreateElement("Cnpj");
        CpfCnpj.AppendChild(CnpjTomador);
        CnpjTomador.InnerText = cnpjTomador;

        XmlElement RazaoSocial = docXml.CreateElement("RazaoSocial");
        Tomador.AppendChild(RazaoSocial);
        RazaoSocial.InnerText = razaoSocial;

        XmlElement Endereco = docXml.CreateElement("Endereco");
        Tomador.AppendChild(Endereco);

        XmlElement EnderecoTomador = docXml.CreateElement("Endereco");
        Endereco.AppendChild(EnderecoTomador);
        EnderecoTomador.InnerText = enderecoTomador;

        XmlElement NumeroEndereco = docXml.CreateElement("Numero");
        Endereco.AppendChild(NumeroEndereco);
        NumeroEndereco.InnerText = nrEndereco;

        XmlElement Bairro = docXml.CreateElement("Bairro");
        Endereco.AppendChild(Bairro);
        Bairro.InnerText = nmBairro;

        XmlElement CodigoMunicipioEndereco = docXml.CreateElement("CodigoMunicipio");
        Endereco.AppendChild(CodigoMunicipioEndereco);
        CodigoMunicipioEndereco.InnerText = cdMunicipioEndereco;

        XmlElement Uf = docXml.CreateElement("Uf");
        Endereco.AppendChild(Uf);
        Uf.InnerText = ufEndereco;

        XmlElement Cep = docXml.CreateElement("Cep");
        Endereco.AppendChild(Cep);
        Cep.InnerText = cepEndereco;

        XmlElement Contato = docXml.CreateElement("Contato");
        Tomador.AppendChild(Contato);

        XmlElement Email = docXml.CreateElement("Email");
        Contato.AppendChild(Email);
        Email.InnerText = emailTomador;
    }

}