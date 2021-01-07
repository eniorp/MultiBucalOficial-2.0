using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;

/// <summary>
/// Descrição resumida de QualidadeSIB
/// </summary>
public class QualidadeSIB
{
    public QualidadeSIB()
    {
        //
        // TODO: Adicionar lógica do construtor aqui
        //
    }
    public string processaQualidadeSIB(string nmArq)
    {
        System.IO.FileInfo arqAux = new System.IO.FileInfo(nmArq);
        
        XmlDocument arqXml;
        //XmlNamespaceManager xman;
        arqXml = new XmlDocument();
        arqXml.Load(nmArq);
        //xman = new XmlNamespaceManager(arqXml.NameTable);
        //string url = "http://www.ans.gov.br/padroes/tiss/schemas";
        //xman.AddNamespace("ans", url);
        string cdANS = arqXml.SelectSingleNode("itemMonitoramento").Attributes[0].InnerText;
        string erroAnx = arqXml.SelectSingleNode("itemMonitoramento").Attributes[1].InnerText;
        Db_Class db = new Db_Class();

        if (db.getParam("CDRANS") != cdANS)
        {
            return "Arquivo nao pertence a operadora";
        }
        XmlNodeList beneficiarios = arqXml.SelectNodes("itemMonitoramento/beneficiarios/beneficiario");
        string naoLocalizados = "";
        string erroProc = "";
        foreach (XmlNode benef in beneficiarios)
        {
            try
            {

                string cco = benef.SelectSingleNode("cco").InnerText;
                string codBenef = benef.SelectSingleNode("codigoBeneficiario").InnerText;
                if (dbClass.execmd("select count(*) from usuario where codigo_completo = " + codBenef, true) == "0")
                {
                    naoLocalizados += cco + " " + codBenef + "<br/>";

                }
                else
                {
                    db.execmd("insert into qualidadeSib values(" + codBenef + ",'" + arqAux.Name +  "','" + cco + "','" + erroAnx + "',getdate())", false);
                }
            }
            catch (Exception ex)
            {
                erroProc += " erro  " + ex.Message + "<br/>";
            }
        }
        Email mail = new Email();
        string rsAux = "";
        if (naoLocalizados != "")
        {
            rsAux += "beneficiarios nao localizados : " + naoLocalizados;
            mail.EnviaMailEnio("eniorp@gmail.com", "benef nao localizado qualidade sib", naoLocalizados);
        }
        if (erroProc != "")
        {
            rsAux += "Erros de processamento : " + erroProc;
            mail.EnviaMailEnio("eniorp@gmail.com", "erro processamento qualidade  sib", erroProc);
        }
        return rsAux;
    }

}