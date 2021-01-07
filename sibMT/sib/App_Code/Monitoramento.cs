using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Xml;

/// <summary>
/// Summary description for Monitoramento
/// </summary>
public class Monitoramento
{
    const string xmlns = "http://www.w3.org/2000/xmlns/";
    const string xsi = "http://www.w3.org/2001/XMLSchema-instance";
    //const string xsd = "http://www.w3.org/2001/XMLSchema";
    const string xsd = "http://www.ans.gov.br/padroes/tiss/schemas";
    
    private XmlDocument docXml;

	public Monitoramento()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string griaRegistroLoteMonitoramento(string mesAno, string nmLogin) { 
        Db_Class db = new Db_Class();
        string nrLote = db.execmd("select isnull(max(nr_lote),0) + 1 from envioMonitoramento where mesAno = '" + mesAno + "'", true);
        db.execmd("insert into envioMonitoramento (mesAno, nr_lote,  dt_envio, dt_retorno,nmLogin)  values ('" + mesAno + "'," + nrLote + ",getdate(),null,'" + nmLogin + "')", false);
        return nrLote;

    }
    public string geraMonitoramento(string periodo, string cdANS, string operador,string nrLote,string tpGeracao){

        docXml = new XmlDocument();

        XmlElement mensagemEnvioANS = docXml.CreateElement("ans","mensagemEnvioANS",xsd);

        XmlAttribute xsiNs = docXml.CreateAttribute("xmlns", "xsi", xmlns);
        xsiNs.Value = xsi;
        mensagemEnvioANS.SetAttributeNode(xsiNs);

        XmlAttribute schemaLocation = docXml.CreateAttribute("xmlns", "schemaLocation", xmlns);
        schemaLocation.Value = "http://www.ans.gov.br/padroes/tiss/schemas/tissMonitoramentoV3_02_00.xsd";
        mensagemEnvioANS.SetAttributeNode(schemaLocation);

        docXml.AppendChild(mensagemEnvioANS);
        


        XmlProcessingInstruction pi = docXml.CreateProcessingInstruction("xml", "version=\"1.0\" encoding=\"ISO-8859-1\" standalone=\"no\"");
        docXml.InsertBefore(pi, mensagemEnvioANS);
        
        geraCabecalhoMonit(mensagemEnvioANS,DateTime.Today.ToString("yyyy-MM-dd"),DateTime.Now.ToString("hh:mm:ss"), cdANS, "3.02.00", nrLote , periodo);
        XmlElement Mensagem = docXml.CreateElement("ans","Mensagem",xsd);
        mensagemEnvioANS.AppendChild(Mensagem);

        XmlElement operadoraParaANS = docXml.CreateElement("ans","operadoraParaANS",xsd);
        Mensagem.AppendChild(operadoraParaANS);
        
        SqlConnection cn = new SqlConnection();
        cn.ConnectionString = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["ConnSIB"].ToString();
        cn.Open();

        SqlCommand cmd = new SqlCommand("sp_monitoramentoANS", cn);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlParameter param;
        param = cmd.Parameters.Add(new SqlParameter("@mesAno", SqlDbType.Char));
        param.Direction = ParameterDirection.Input;
        param.Value = periodo;

        SqlParameter paramLote;
        paramLote = cmd.Parameters.Add(new SqlParameter("@nrLote", SqlDbType.Int));
        paramLote.Direction = ParameterDirection.Input;
        paramLote.Value = nrLote;

        SqlParameter paramtbGeracao;
        paramtbGeracao = cmd.Parameters.Add(new SqlParameter("@tpGeracao", SqlDbType.Char));
        paramtbGeracao.Direction = ParameterDirection.Input;
        paramtbGeracao.Value = tpGeracao;



        SqlDataReader dr = cmd.ExecuteReader();

        geraGuiasMonitoramento(operadoraParaANS,dr);
         dr.Close();
         
        XmlElement epilogo = docXml.CreateElement("ans", "epilogo", xsd);
        mensagemEnvioANS.AppendChild(epilogo);
        XmlElement hash = docXml.CreateElement("ans", "hash", xsd);
        epilogo.AppendChild(hash);


        
         
        string nmArquivo = @"c:\temp\" + cdANS + periodo.Substring(3,4) + periodo.Substring(0,2) + nrLote.PadLeft(4,'0') + ".xte";
         
        docXml.Save(nmArquivo);

        CalculaHashTiss(nmArquivo);
        return nmArquivo;
        //geraCabecalhoRadarTiss(xmlmensagemRadar, DateTime.Now.ToString("yyyy-MM-dd"), DateTime.Now.ToString("HH:mm:ss"), TextBoxRegistro.Text, TextBoxSequencial.Text, cboTipo.SelectedValue);



    }

    public static string GetHash(string pKeyEncode, string encodtype)
    {
        MD5CryptoServiceProvider _cs = new MD5CryptoServiceProvider();
        byte[] _bs = Encoding.GetEncoding(encodtype).GetBytes(pKeyEncode);

        //byte[] _bs = Encoding.GetEncoding("ISO-8859-1").GetBytes(pKeyEncode);
        _bs = _cs.ComputeHash(_bs);
        StringBuilder _s = new System.Text.StringBuilder();
        foreach (byte _b in _bs)
        {
            _s.Append(_b.ToString("x2").ToLower());
        }
        return _s.ToString();
    }

    private void CalculaHashTiss(string nmArquivo)
    {
        XmlNamespaceManager man = new XmlNamespaceManager(docXml.NameTable);
        string url = "http://www.ans.gov.br/padroes/tiss/schemas";
        man.AddNamespace("ans", url);
        XmlNodeList list = docXml.GetElementsByTagName("ans:hash");
        
        //XmlNode hash = docXml. GetElementsByTagName("ans:hash", man);
        //hash.InnerText = "";
        //docXml.Save("");

        list.Item(0).InnerText = GetHash(docXml.InnerText, "ISO-8859-1");
        //hash.InnerText = GetHash(arqXml.InnerText, "utf-8");

        docXml.Save(nmArquivo);
    }
    private void geraGuiasMonitoramento(XmlElement operadoraParaANS,SqlDataReader dr)
    {
        string nrGuiaOperadoraAux = "";
        XmlElement guiaMonitoramento = null;
        while (dr.Read())
        {
            if (nrGuiaOperadoraAux != dr["nrGuiaOperadora"].ToString())
            {
                XmlElement guiaMonitoramentoAux = docXml.CreateElement("ans", "guiaMonitoramento", xsd);
                guiaMonitoramento = guiaMonitoramentoAux;
                nrGuiaOperadoraAux = dr["orcamento"].ToString();
                operadoraParaANS = geraDetGuiaMonit(operadoraParaANS, guiaMonitoramento, dr);
            }
            
            guiaMonitoramento = geraProcedimento(guiaMonitoramento, dr);
        }
        dr.Close();

        /*string nrGuiaOperadoraAux = "";
        while(dr.Read()){
            if (dr["nrGuiaPrestador"].ToString() == "171517") {
                nrGuiaOperadoraAux = nrGuiaOperadoraAux;
            }
            XmlElement guiaMonitoramento = docXml.CreateElement("ans", "guiaMonitoramento", xsd);
            nrGuiaOperadoraAux = dr["orcamento"].ToString();
            operadoraParaANS = geraDetGuiaMonit(operadoraParaANS,guiaMonitoramento, dr);
            guiaMonitoramento = geraProcedimento(guiaMonitoramento, dr);
            while (dr.Read()){
                if (dr["nrGuiaPrestador"].ToString() == "171517")
                {
                    nrGuiaOperadoraAux = nrGuiaOperadoraAux;
                }

                if (nrGuiaOperadoraAux == dr["orcamento"].ToString())
                    guiaMonitoramento = geraProcedimento(guiaMonitoramento, dr);
                else {
                    XmlElement guiaMonitoramento1 = docXml.CreateElement("ans", "guiaMonitoramento", xsd);
                    nrGuiaOperadoraAux = dr["orcamento"].ToString();
                    operadoraParaANS = geraDetGuiaMonit(operadoraParaANS, guiaMonitoramento1, dr);
                    guiaMonitoramento = geraProcedimento(guiaMonitoramento1, dr);
                    break;
                }
            }
          }
        dr.Close();
          */
    }

    private XmlElement geraDetGuiaMonit(XmlElement operadoraParaANS, XmlElement guiaMonitoramento, SqlDataReader dr)
    {
        operadoraParaANS.AppendChild(guiaMonitoramento);
        
        XmlElement tipoRegistro = docXml.CreateElement("ans", "tipoRegistro", xsd);
        tipoRegistro.InnerText = "1";
        guiaMonitoramento.AppendChild(tipoRegistro);
        XmlElement versaoTISSPrestador = docXml.CreateElement("ans", "versaoTISSPrestador", xsd);
        versaoTISSPrestador.InnerText = "3.02.00";
        guiaMonitoramento.AppendChild(versaoTISSPrestador);
        XmlElement indicadorEnvioPapel = docXml.CreateElement("ans", "indicadorEnvioPapel", xsd);
        indicadorEnvioPapel.InnerText = "S";
        guiaMonitoramento.AppendChild(indicadorEnvioPapel);
        XmlElement dadosContratadoExecutante = docXml.CreateElement("ans", "dadosContratadoExecutante", xsd);
        guiaMonitoramento.AppendChild(dadosContratadoExecutante);

        XmlElement CNES = docXml.CreateElement("ans", "CNES", xsd);
        CNES.InnerText = Util.so_numero(dr["cnes"].ToString().Trim());
        dadosContratadoExecutante.AppendChild(CNES);
        XmlElement identificadorExecutante = docXml.CreateElement("ans", "identificadorExecutante", xsd);
        XmlElement codigoCNPJ_CPF = docXml.CreateElement("ans", "codigoCNPJ_CPF", xsd);
        if (dr["tipoPessoa"].ToString() == "PF")
        {
            identificadorExecutante.InnerText = "2";
            if(Util.so_numero(dr["cpf"].ToString()) != "")
               codigoCNPJ_CPF.InnerText = Util.so_numero(dr["cpf"].ToString());
        }
        else
        {
            identificadorExecutante.InnerText = "1";
            if (Util.so_numero(dr["cnpj"].ToString()) != "")
               codigoCNPJ_CPF.InnerText = Util.so_numero(dr["cnpj"].ToString());
        }

        dadosContratadoExecutante.AppendChild(identificadorExecutante);

        
        
        dadosContratadoExecutante.AppendChild(codigoCNPJ_CPF);

        XmlElement municipioExecutante = docXml.CreateElement("ans", "municipioExecutante", xsd);
        municipioExecutante.InnerText = dr["cdIbgeDentista"].ToString();
        dadosContratadoExecutante.AppendChild(municipioExecutante);

        XmlElement dadosBeneficiario = docXml.CreateElement("ans", "dadosBeneficiario", xsd);
        guiaMonitoramento.AppendChild(dadosBeneficiario);

        XmlElement identBeneficiario = docXml.CreateElement("ans", "identBeneficiario", xsd);
        dadosBeneficiario.AppendChild(identBeneficiario);
        if (dr["cd_sus"].ToString() == "")
        {
            XmlElement dadosSemCartao = docXml.CreateElement("ans", "dadosSemCartao", xsd);
            identBeneficiario.AppendChild(dadosSemCartao);
            XmlElement sexo = docXml.CreateElement("ans", "sexo", xsd);
            sexo.InnerText = dr["sexo"].ToString();
            dadosSemCartao.AppendChild(sexo);
            XmlElement dataNascimento = docXml.CreateElement("ans", "dataNascimento", xsd);
            dataNascimento.InnerText = dr["nasc"].ToString();
            dadosSemCartao.AppendChild(dataNascimento);
            XmlElement municipioResidencia = docXml.CreateElement("ans", "municipioResidencia", xsd);
            municipioResidencia.InnerText = dr["cidade_residencial"].ToString();
            dadosSemCartao.AppendChild(municipioResidencia);
        }
        else
        {
            XmlElement numeroCartaoNacionalSaude = docXml.CreateElement("ans", "numeroCartaoNacionalSaude", xsd);
            numeroCartaoNacionalSaude.InnerText = dr["cd_sus"].ToString();
            identBeneficiario.AppendChild(numeroCartaoNacionalSaude);
        }

        XmlElement numeroRegistroPlano = docXml.CreateElement("ans", "numeroRegistroPlano", xsd);
        numeroRegistroPlano.InnerText = dr["cdPlano"].ToString();
        dadosBeneficiario.AppendChild(numeroRegistroPlano);

        XmlElement tipoEventoAtencao = docXml.CreateElement("ans", "tipoEventoAtencao", xsd);
        tipoEventoAtencao.InnerText = "4";
        XmlElement origemEventoAtencao = docXml.CreateElement("ans", "origemEventoAtencao", xsd);
        origemEventoAtencao.InnerText = "1";
        XmlElement numeroGuia_prestador = docXml.CreateElement("ans", "numeroGuia_prestador", xsd);
        numeroGuia_prestador.InnerText = dr["nrGuiaPrestador"].ToString();
        XmlElement numeroGuia_operadora = docXml.CreateElement("ans", "numeroGuia_operadora", xsd);
        numeroGuia_operadora.InnerText = dr["nrGuiaOperadora"].ToString();
        XmlElement identificacaoReembolso = docXml.CreateElement("ans", "identificacaoReembolso", xsd);
        identificacaoReembolso.InnerText = "00000000000000000000";
        XmlElement dataSolicitacao = docXml.CreateElement("ans", "dataSolicitacao", xsd);
        dataSolicitacao.InnerText = dr["dtSolicitacao"].ToString();
        XmlElement dataAutorizacao = docXml.CreateElement("ans", "dataAutorizacao", xsd);
        dataAutorizacao.InnerText = dr["dtAutorizacao"].ToString();
        XmlElement dataRealizacao = docXml.CreateElement("ans", "dataRealizacao", xsd);
        dataRealizacao.InnerText = dr["dtReali"].ToString();
        XmlElement dataProtocoloCobranca = docXml.CreateElement("ans", "dataProtocoloCobranca", xsd);
        dataProtocoloCobranca.InnerText = dr["dtProtocolo"].ToString();
        XmlElement dataPagamento = docXml.CreateElement("ans", "dataPagamento", xsd);
        dataPagamento.InnerText = dr["dtPagamento"].ToString();
        XmlElement dataProcessamentoGuia = docXml.CreateElement("ans", "dataProcessamentoGuia", xsd);
        dataProcessamentoGuia.InnerText = dr["dtProcGuia"].ToString();
        XmlElement tipoFaturamento = docXml.CreateElement("ans", "tipoFaturamento", xsd);
        tipoFaturamento.InnerText = dr["TipoFaturamento"].ToString();

        XmlElement valorTotalInformado = docXml.CreateElement("ans", "valorTotalInformado", xsd);



        valorTotalInformado.InnerText = String.Format("{0:0.00}", decimal.Parse(dr["valorTot"].ToString())).Replace(",", ".");
        XmlElement valorProcessado = docXml.CreateElement("ans", "valorProcessado", xsd);
        valorProcessado.InnerText = String.Format("{0:0.00}", decimal.Parse(dr["valorTot"].ToString())).Replace(",", ".");
        XmlElement valorTotalPagoProcedimentos = docXml.CreateElement("ans", "valorTotalPagoProcedimentos", xsd);
        valorTotalPagoProcedimentos.InnerText = String.Format("{0:0.00}", decimal.Parse(dr["valorTot"].ToString())).Replace(",", ".");
        XmlElement valorTotalDiarias = docXml.CreateElement("ans", "valorTotalDiarias", xsd);
        valorTotalDiarias.InnerText = "0.00";
        XmlElement valorTotalTaxas = docXml.CreateElement("ans", "valorTotalTaxas", xsd);
        valorTotalTaxas.InnerText = "0.00";
        XmlElement valorTotalMateriais = docXml.CreateElement("ans", "valorTotalMateriais", xsd);
        valorTotalMateriais.InnerText = "0.00";
        XmlElement valorTotalOPME = docXml.CreateElement("ans", "valorTotalOPME", xsd);
        valorTotalOPME.InnerText = "0.00";
        XmlElement valorTotalMedicamentos = docXml.CreateElement("ans", "valorTotalMedicamentos", xsd);
        valorTotalMedicamentos.InnerText = "0.00";
        XmlElement valorGlosaGuia = docXml.CreateElement("ans", "valorGlosaGuia", xsd);
        valorGlosaGuia.InnerText = "0.00";
        XmlElement valorPagoGuia = docXml.CreateElement("ans", "valorPagoGuia", xsd);
        valorPagoGuia.InnerText = String.Format("{0:0.00}", decimal.Parse(dr["valorTot"].ToString())).Replace(",", ".");
        XmlElement valorPagoFornecedores = docXml.CreateElement("ans", "valorPagoFornecedores", xsd);
        valorPagoFornecedores.InnerText = "0.00";
        XmlElement valorTotalTabelaPropria = docXml.CreateElement("ans", "valorTotalTabelaPropria", xsd);
        valorTotalTabelaPropria.InnerText = "0.00";

        guiaMonitoramento.AppendChild(tipoEventoAtencao);
        guiaMonitoramento.AppendChild(origemEventoAtencao);
        guiaMonitoramento.AppendChild(numeroGuia_prestador);
        guiaMonitoramento.AppendChild(numeroGuia_operadora);
        guiaMonitoramento.AppendChild(identificacaoReembolso);
        guiaMonitoramento.AppendChild(dataSolicitacao);
        guiaMonitoramento.AppendChild(dataAutorizacao);
        guiaMonitoramento.AppendChild(dataRealizacao);
        guiaMonitoramento.AppendChild(dataProtocoloCobranca);
        guiaMonitoramento.AppendChild(dataPagamento);
        guiaMonitoramento.AppendChild(dataProcessamentoGuia);
        guiaMonitoramento.AppendChild(tipoFaturamento);

        XmlElement valoresGuia = docXml.CreateElement("ans", "valoresGuia", xsd);
        guiaMonitoramento.AppendChild(valoresGuia);

        valoresGuia.AppendChild(valorTotalInformado);
        valoresGuia.AppendChild(valorProcessado);
        valoresGuia.AppendChild(valorTotalPagoProcedimentos);
        valoresGuia.AppendChild(valorTotalDiarias);
        valoresGuia.AppendChild(valorTotalTaxas);
        valoresGuia.AppendChild(valorTotalMateriais);
        valoresGuia.AppendChild(valorTotalOPME);
        valoresGuia.AppendChild(valorTotalMedicamentos);
        valoresGuia.AppendChild(valorGlosaGuia);
        valoresGuia.AppendChild(valorPagoGuia);
        valoresGuia.AppendChild(valorPagoFornecedores);
        valoresGuia.AppendChild(valorTotalTabelaPropria);

        return operadoraParaANS;
    }

    private XmlElement geraProcedimento(XmlElement guiaMonitoramento, SqlDataReader dr)
    {
        XmlElement procedimentos = docXml.CreateElement("ans", "procedimentos", xsd);
        guiaMonitoramento.AppendChild(procedimentos);
        XmlElement identProcedimento = docXml.CreateElement("ans", "identProcedimento", xsd);
        procedimentos.AppendChild(identProcedimento);
        XmlElement codigoTabela = docXml.CreateElement("ans", "codigoTabela", xsd);
        codigoTabela.InnerText = dr["cd_tabela"].ToString();
        XmlElement procedimento = docXml.CreateElement("ans", "Procedimento", xsd);
        XmlElement codigoProcedimento = docXml.CreateElement("ans", "codigoProcedimento", xsd);
        codigoProcedimento.InnerText = dr["cd_servico"].ToString();
        procedimento.AppendChild(codigoProcedimento);
        identProcedimento.AppendChild(codigoTabela);
        identProcedimento.AppendChild(procedimento);
        XmlElement denteRegiao = docXml.CreateElement("ans", "denteRegiao", xsd);
        
        if (dr["dente"].ToString() != "")
        {
            XmlElement codDente = docXml.CreateElement("ans", "codDente", xsd);
            codDente.InnerText = dr["dente"].ToString();
            denteRegiao.AppendChild(codDente);
            procedimentos.AppendChild(denteRegiao);

        }
        else
            if (dr["regiao"].ToString() != "")
            {
                XmlElement codRegiao = docXml.CreateElement("ans", "codRegiao", xsd);
                denteRegiao.AppendChild(codRegiao);
                codRegiao.InnerText = dr["regiao"].ToString();
                procedimentos.AppendChild(denteRegiao);
            }

        if (dr["face"].ToString() != "")
        {
            XmlElement denteFace = docXml.CreateElement("ans", "denteFace", xsd);
            denteFace.InnerText = dr["face"].ToString();
            procedimentos.AppendChild(denteFace);

        }
        XmlElement quantidadeInformada = docXml.CreateElement("ans", "quantidadeInformada", xsd);
        quantidadeInformada.InnerText = dr["quantidade"].ToString();
        procedimentos.AppendChild(quantidadeInformada);

        XmlElement valorInformado = docXml.CreateElement("ans", "valorInformado", xsd);
        valorInformado.InnerText = String.Format("{0:0.00}", decimal.Parse(dr["valor"].ToString())).Replace(",", ".");
        procedimentos.AppendChild(valorInformado);

        XmlElement quantidadePaga = docXml.CreateElement("ans", "quantidadePaga", xsd);
        quantidadePaga.InnerText = dr["Quantidade_Paga"].ToString();
        procedimentos.AppendChild(quantidadePaga);

        XmlElement valorPagoProc = docXml.CreateElement("ans", "valorPagoProc", xsd);
        valorPagoProc.InnerText = String.Format("{0:0.00}", decimal.Parse(dr["valor"].ToString())).Replace(",", ".");
        procedimentos.AppendChild(valorPagoProc);

        XmlElement valorPagoFornecedor = docXml.CreateElement("ans", "valorPagoFornecedor", xsd);
        valorPagoFornecedor.InnerText = "0.00";
        procedimentos.AppendChild(valorPagoFornecedor);
        return guiaMonitoramento;

    }
    private void geraCabecalhoMonit(XmlElement xmlMensagemMonit, string dataRegistro, string horaRegistro, string pregistroAns, string pversaoPadrao,  string nrLote, string competencia)
    {

        XmlElement cabecalho = docXml.CreateElement("ans","cabecalho",xsd);
        xmlMensagemMonit.AppendChild(cabecalho);

        //XmlElement cabecalhoTransacao = docXml.CreateElement("cabecalhoTransacao");
        //xmlCabecalhoRadar.AppendChild(cabecalhoTransacao);

        XmlElement identificacaoTransacao = docXml.CreateElement("ans", "identificacaoTransacao",xsd);
        cabecalho.AppendChild(identificacaoTransacao);

        XmlElement tipoTransacao = docXml.CreateElement("ans","tipoTransacao",xsd);
        tipoTransacao.InnerText = "MONITORAMENTO";
        identificacaoTransacao.AppendChild(tipoTransacao);

        XmlElement numeroLote = docXml.CreateElement("ans", "numeroLote",xsd);
        numeroLote.InnerText = nrLote;
        identificacaoTransacao.AppendChild(numeroLote);

        XmlElement competenciaLote = docXml.CreateElement("ans", "competenciaLote",xsd);
        competenciaLote.InnerText = competencia.Substring(3,4) + competencia.Substring(0,2);
        identificacaoTransacao.AppendChild(competenciaLote);

        XmlElement dataRegistroTransacao = docXml.CreateElement("ans", "dataRegistroTransacao",xsd);
        dataRegistroTransacao.InnerText = dataRegistro;
        identificacaoTransacao.AppendChild(dataRegistroTransacao);

        XmlElement horaRegistroTransacao = docXml.CreateElement("ans", "horaRegistroTransacao",xsd);
        horaRegistroTransacao.InnerText = horaRegistro;
        identificacaoTransacao.AppendChild(horaRegistroTransacao);

        XmlElement registroANS = docXml.CreateElement("ans", "registroANS",xsd);
        registroANS.InnerText = pregistroAns;
        cabecalho.AppendChild(registroANS);

        XmlElement versaoPadrao = docXml.CreateElement("ans", "versaoPadrao",xsd);
        versaoPadrao.InnerText = pversaoPadrao;
        cabecalho.AppendChild(versaoPadrao);



    }


}