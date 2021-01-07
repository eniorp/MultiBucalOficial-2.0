using System;
using System.Xml;

/// <summary>
/// Descrição resumida de QualidadeANS
/// </summary>
public class QualidadeANS
{
    public QualidadeANS()
    {
        //
        // TODO: Adicionar lógica do construtor aqui
        //
    }
    public string processaRetornoANS(string nmArq)
    {
        XmlDocument arqXml;
        XmlNamespaceManager xman;
        arqXml = new XmlDocument();
        arqXml.Load(nmArq);
        xman = new XmlNamespaceManager(arqXml.NameTable);
        string url = "http://www.ans.gov.br/padroes/tiss/schemas";
        xman.AddNamespace("ans", url);
        Db_Class db = new Db_Class();
        if (arqXml.SelectSingleNode("ans:mensagemEnvioANS/ans:cabecalho/ans:registroANS", xman) == null)
        {
            return "Arquivo nao parece estar no padrao de retorno ANS, nao foi possivel localisar pertence a operadora";
        }
        string cdANS = arqXml.SelectSingleNode("ans:mensagemEnvioANS/ans:cabecalho/ans:registroANS", xman).InnerText;
        if (db.getParam("CDRANS") != cdANS)
        {
            return "Arquivo nao pertence a operadora";
        }
        string nrLote = arqXml.SelectSingleNode("ans:mensagemEnvioANS/ans:cabecalho/ans:identificacaoTransacao/ans:numeroLote", xman).InnerText;
        string competencia = arqXml.SelectSingleNode("ans:mensagemEnvioANS/ans:cabecalho/ans:identificacaoTransacao/ans:competenciaLote", xman).InnerText;
        competencia = competencia.Substring(4, 2) + "/" + competencia.Substring(0, 4);
        if (db.execmd("select count(*) from envioMonitoramento where mesano = '" + competencia + "' and nr_lote = " + nrLote, true) == "0")
        {
            return "lote " + nrLote + " não localizado na competência " + competencia;
        }


        if (loteProcessado(competencia))
        {
            return "Arquivo já processado anteriormente";
        }



        XmlNodeList regRejeitados = arqXml.SelectNodes("ans:mensagemEnvioANS/ans:Mensagem/ans:ansParaOperadora/ans:controleQualidade/ans:guiaAtendimento", xman);
        
        foreach (XmlNode regRejeitado in regRejeitados)
        {

            try
            {
                string nrGuiaOperadora = regRejeitado.SelectSingleNode("ans:numeroGuiaOperadora", xman).InnerText;
                string dataProcessamento = regRejeitado.SelectSingleNode("ans:lancamentosRegistradosANS/ans:dataProcessamento", xman).InnerText;

                XmlNodeList ocorrenciasLanc = regRejeitado.SelectNodes("ans:lancamentosCompetencia/ans:lancamento/ans:ocorrenciasLancamento", xman);
                int cont = 0;
                foreach (XmlNode ocorrencia in ocorrenciasLanc)
                {
                    cont++;
                    XmlNodeList ItensOcorrencias = ocorrencia.SelectNodes("ans:ocorrencia", xman);
                    foreach (XmlNode ocorrenciaItem in ItensOcorrencias)
                    {
                        string campo = ocorrenciaItem.SelectSingleNode("ans:identificadorCampo", xman).InnerText;
                        string erro = ocorrenciaItem.SelectSingleNode("ans:codigoErro", xman).InnerText;
                        string seqAux = db.execmd("select isnull(max(sequencial),0) + 1 from errosQualidadeANS where mesano = '" + competencia + "' and nr_lote = " + nrLote, true);
                        string sql = "insert into errosQualidadeANS values('" + competencia + "'," + nrLote + "," + nrGuiaOperadora + "," + seqAux + "," + campo + "," + erro + ",getdate(),'')";
                        db.execmd(sql, false);
                        if (erro != "1308") // 1308 guia ja apresentada
                            db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + competencia + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora, false);

                    }

                }
                if (cont > 1)
                    return "mais de um nivel ans:ocorrenciasLancamento, precisa adaptar a rotina";
                
                XmlNodeList itensLancamento = regRejeitado.SelectNodes("ans:lancamentosCompetencia/ans:lancamento/ans:itensLancamento/ans:procedimentoItemAssistencial", xman);

                foreach (XmlNode procedimentoItemAssistencial in itensLancamento)
                {

                    //XmlNodeList procedimentoItemAssistencial = ItemLancamento.SelectNodes("ans:procedimentoItemAssistencial", xman);
                    foreach (XmlNode ocorrencia in procedimentoItemAssistencial.SelectNodes("ans:ocorrenciasProcedimentoItemAssistencial/ans:ocorrencia", xman))
                    {
                        string campo = ocorrencia.SelectSingleNode("ans:identificadorCampo", xman).InnerText;
                        string erro = ocorrencia.SelectSingleNode("ans:codigoErro", xman).InnerText;
                        string procedimento = procedimentoItemAssistencial.SelectSingleNode("ans:procedimento/ans:codigoProcedimento", xman).InnerText;
                        string denteRegiao = "";
                        if (procedimentoItemAssistencial.SelectSingleNode("ans:denteRegiao/ans:codDente", xman) != null)
                            denteRegiao += "Dente : " + procedimentoItemAssistencial.SelectSingleNode("ans:denteRegiao/ans:codDente", xman).InnerText;
                        if (procedimentoItemAssistencial.SelectSingleNode("ans:denteRegiao/ans:codRegiao", xman) != null)
                            denteRegiao += "região : " + procedimentoItemAssistencial.SelectSingleNode("ans:denteRegiao/ans:codRegiao", xman).InnerText;
                        if (procedimentoItemAssistencial.SelectSingleNode("ans:denteFace", xman) != null)
                            denteRegiao += "Face : " + procedimentoItemAssistencial.SelectSingleNode("ans:denteFace", xman).InnerText;
                        denteRegiao += " procedimento : " + procedimento;
                        string seqAux = db.execmd("select isnull(max(sequencial),0) + 1 from errosQualidadeANS where mesano = '" + competencia + "' and nr_lote = " + nrLote, true);
                        string sql = "insert into errosQualidadeANS values('" + competencia + "'," + nrLote + "," + nrGuiaOperadora + "," + seqAux + "," + campo + "," + erro + ",getdate(),'" + denteRegiao + "')";

                        db.execmd(sql, false);
                        if (erro != "1308") // 1308 guia ja apresentada
                            db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + competencia + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora, false);
                    }
                }
                //this.gravaRejeicaoGuia(nrGuiaOperadora, nmArqRejeitado, codRejeicao);
            }
            catch (Exception ex)
            {
                return ex.Message;
            }

            XmlNodeList errosItem = regRejeitado.SelectNodes("ans:errosItensGuia", xman);
            foreach (XmlNode erroItem in errosItem)
            {
                try
                {

                    string codRejeicao = erroItem.SelectSingleNode("ans:relacaoErros/ans:codigoErro", xman).InnerText;
                    string nrGuiaOperadora = regRejeitado.SelectSingleNode("ans:numeroGuiaOperadora", xman).InnerText;
                    //this.gravaRejeicaoGuia(nrGuiaOperadora, nmArqRejeitado, codRejeicao);
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }


            }


        }
        if ("" != "")
        {
            string mesAno = ""; // nmArqRejeitado.Substring(10, 2) + "/" + nmArqRejeitado.Substring(6, 4);
            //string nrLote = ""; //nmArqRejeitado.Substring(12, 4);

            db.execmd("update envioMonitoramento set dt_retorno = getdate() where mesAno = '" + mesAno + "' and nr_lote = " + nrLote, false);
        }
        return "";

    }
    private bool loteProcessado(string competencia)
    {
        Db_Class db = new Db_Class();
        return db.execmd("select count(*) from errosQualidadeANS  where mesAno = '" + competencia + "'", true) != "0";
    }

    private void gravaRejeicaoGuia(string nrGuiaOperadora, string nmArqRejeitado, string codRejeicao)
    {
        Db_Class db = new Db_Class();
        string mesAno = nmArqRejeitado.Substring(10, 2) + "/" + nmArqRejeitado.Substring(6, 4);
        string nrLote = nmArqRejeitado.Substring(12, 4);
        db.execmd("insert into erroMonitoramento select '" + mesAno + "'," + nrLote + ", orcamento,incremento, " + codRejeicao + ",tipo from envioMonitGuias e where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora + " and not exists(select * from erroMonitoramento where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora + " and incremento = e.incremento and cd_erro = " + codRejeicao + ")", false);
        if (codRejeicao != "1308") // 1308 guia ja apresentada
            db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora, false);

        //db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora, false);


    }

    private void gravaRejeicaoLote(string nmArqRejeitado, string codRejeicao)
    {
        Db_Class db = new Db_Class();
        string mesAno = nmArqRejeitado.Substring(10, 2) + "/" + nmArqRejeitado.Substring(6, 4);
        string nrLote = nmArqRejeitado.Substring(12, 4);
        db.execmd("insert into erroMonitoramento select '" + mesAno + "'," + nrLote + ", orcamento,incremento, " + codRejeicao + ",tipo from envioMonitGuias where mesAno = '" + mesAno + "' and nr_lote = " + nrLote, false);
        db.execmd("update envioMonitoramento set dt_retorno = getdate() where mesAno = '" + mesAno + "' and nr_lote = " + nrLote, false);
        db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + mesAno + "' and nr_lote = " + nrLote, false);
    }
}