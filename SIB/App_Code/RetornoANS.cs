using System;
using System.Collections.Generic;

using System.Web;
using System.Xml;
/// <summary>
/// Summary description for RetornoANS
/// </summary>
public class RetornoANS
{
	public RetornoANS()
	{

	}

    public string processaRetornoANS(string nmArq) {
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
        if(db.getParam("CDRANS") != cdANS){
            return "Arquivo nao pertence a operadora";
        }
        string regANS = arqXml.SelectSingleNode("ans:mensagemEnvioANS/ans:cabecalho/ans:registroANS", xman).InnerText;
        XmlNodeList arqRejetado = arqXml.GetElementsByTagName("ans:arquivoRejeitado");
        string nmArqRejeitado = "";
        foreach (XmlNode item in arqRejetado)
        {

            nmArqRejeitado = item.SelectSingleNode("ans:nomeArquivo", xman).InnerText;
            if (!loteExiste(nmArqRejeitado)) {
                return "lote não localizado";
            }
            else
            if (loteProcessado(nmArqRejeitado)) {
                return "Arquivo já processado anteriormente";
            }
            string codRejeicao = item.SelectSingleNode("ans:codigoRejeicao",xman).InnerText;
            this.gravaRejeicaoLote(nmArqRejeitado, codRejeicao);
        }

        XmlNodeList regRejeitados = arqXml.GetElementsByTagName("ans:guiaMonitoramento");
        //testar o arquivo 3299672014120006.XTR
        if (regRejeitados != null)
        {
            nmArqRejeitado = arqXml.SelectSingleNode("ans:mensagemEnvioANS/ans:Mensagem/ans:ansParaOperadora/ans:resumoProcessamento/ans:nomeArquivo", xman).InnerText;
            if (!loteExiste(nmArqRejeitado))
            {
                return "lote não localizado";
            }
            else

            if (loteProcessado(nmArqRejeitado))
            {
                return "Arquivo já processado anteriormente";
            }

        }
        foreach (XmlNode regRejeitado in regRejeitados)
        {

            XmlNodeList errosGuia = regRejeitado.SelectNodes("ans:errosGuia", xman);
            foreach (XmlNode erro in errosGuia)
            {
                try
                {

                    string codRejeicao = erro.SelectSingleNode("ans:codigoErro", xman).InnerText;
                    string nrGuiaOperadora = regRejeitado.SelectSingleNode("ans:numeroGuiaOperadora", xman).InnerText;
                    this.gravaRejeicaoGuia(nrGuiaOperadora, nmArqRejeitado, codRejeicao);
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }


            }
            XmlNodeList errosItem = regRejeitado.SelectNodes("ans:errosItensGuia", xman);
            foreach (XmlNode erroItem in errosItem)
            {
                try
                {

                    string codRejeicao = erroItem.SelectSingleNode("ans:relacaoErros/ans:codigoErro", xman).InnerText;
                    string nrGuiaOperadora = regRejeitado.SelectSingleNode("ans:numeroGuiaOperadora", xman).InnerText;
                    this.gravaRejeicaoGuia(nrGuiaOperadora, nmArqRejeitado, codRejeicao);
                }
                catch (Exception ex)
                {
                    return ex.Message;
                }


            }


        }
        if (nmArqRejeitado != "")
        {
            string mesAno = nmArqRejeitado.Substring(10, 2) + "/" + nmArqRejeitado.Substring(6, 4);
            string nrLote = nmArqRejeitado.Substring(12, 4);

            db.execmd("update envioMonitoramento set dt_retorno = getdate() where mesAno = '" + mesAno + "' and nr_lote = " + nrLote, false);
        }
        return "";

    }
    private bool loteProcessado(string nmArqRejeitado)
    {
        string mesAno = nmArqRejeitado.Substring(10, 2) + "/" + nmArqRejeitado.Substring(6, 4);
        string nrLote = nmArqRejeitado.Substring(12, 4);
        Db_Class db = new Db_Class();
        return db.execmd("select count(*) from envioMonitoramento  where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and dt_retorno is not null", true) != "0";
        
    }
    private bool loteExiste(string nmArqRejeitado)
    {
        string mesAno = nmArqRejeitado.Substring(10, 2) + "/" + nmArqRejeitado.Substring(6, 4);
        string nrLote = nmArqRejeitado.Substring(12, 4);
        Db_Class db = new Db_Class();
        return db.execmd("select count(*) from envioMonitoramento  where mesAno = '" + mesAno + "' and nr_lote = " + nrLote , true) != "0";

    }

    private void gravaRejeicaoGuia(string nrGuiaOperadora, string nmArqRejeitado, string codRejeicao)
    {
        Db_Class db = new Db_Class();
        string mesAno = nmArqRejeitado.Substring(10, 2) + "/" + nmArqRejeitado.Substring(6, 4);
        string nrLote = nmArqRejeitado.Substring(12, 4);
        this.gravaRejeicaoGuia(nrGuiaOperadora, codRejeicao, mesAno, nrLote);
        //db.execmd("insert into erroMonitoramento select '" + mesAno + "'," + nrLote + ", orcamento,incremento, " + codRejeicao + ",tipo from envioMonitGuias e where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora + " and not exists(select * from erroMonitoramento where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora + " and incremento = e.incremento and cd_erro = " + codRejeicao + ")" , false);
        //if(codRejeicao != "1308") // 1308 guia ja apresentada
          // db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora, false);
        
        //db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora, false);
    }

    private void gravaRejeicaoGuia(string nrGuiaOperadora, string codRejeicao, string mesAno, string nrLote)
    {
        Db_Class db = new Db_Class();
        //string mesAno = nmArqRejeitado.Substring(10, 2) + "/" + nmArqRejeitado.Substring(6, 4);
        //string nrLote = nmArqRejeitado.Substring(12, 4);
        db.execmd("insert into erroMonitoramento select '" + mesAno + "'," + nrLote + ", orcamento,incremento, " + codRejeicao + ",tipo from envioMonitGuias e where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora + " and not exists(select * from erroMonitoramento where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora + " and incremento = e.incremento and cd_erro = " + codRejeicao + ")", false);
        if (codRejeicao != "1308") // 1308 guia ja apresentada
            db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora, false);

        //db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + mesAno + "' and nr_lote = " + nrLote + " and orcamento = " + nrGuiaOperadora, false);
    }

    private void gravaRejeicaoLote(string nmArqRejeitado, string codRejeicao)
    {
        Db_Class db = new Db_Class();
        string mesAno = nmArqRejeitado.Substring(10,2) + "/" + nmArqRejeitado.Substring(6,4);
        string nrLote = nmArqRejeitado.Substring(12,4);
        db.execmd("insert into erroMonitoramento select '" + mesAno + "'," + nrLote + ", orcamento,incremento, " + codRejeicao + ",tipo from envioMonitGuias where mesAno = '" + mesAno + "' and nr_lote = " + nrLote, false);
        db.execmd("update envioMonitoramento set dt_retorno = getdate() where mesAno = '" + mesAno + "' and nr_lote = " + nrLote, false);
        db.execmd("update envioMonitGuias set aceitoANS = 'N' where mesAno = '" + mesAno + "' and nr_lote = " + nrLote, false);
    }
}