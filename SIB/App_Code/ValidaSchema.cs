using System;
using System.Collections.Generic;
using System.Web;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Schema;

/// <summary>
/// Summary description for ValidaSchema
/// </summary>
public class ValidaSchema
{
	public ValidaSchema()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string validaSchema(string xml, string schema) {
        string aux = "";
        try
        {
            //List<XmlSchemaException> result = GetSchemaErrors(@"W:\monitoramento\dezembro2014\10A25\3512022014120001.xte", @"c:\tiss30\schemas\3.02\tissMonitoramentoV3_02_00.xsd", "http://www.ans.gov.br/padroes/tiss/schemas");

            //List<XmlSchemaException> result = GetSchemaErrors(@"c:\temp\3299672015010001.xte", @"C:\tiss30\schemas\3.02.01\tissMonitoramentoV3_02_01.xsd", "http://www.ans.gov.br/padroes/tiss/schemas");
            
            //List<XmlSchemaException> result = GetSchemaErrors(@"c:\temp\3513512015010001.xte", @"c:\tiss30\schemas\3.02\tissMonitoramentoV3_02_00.xsd", "http://www.ans.gov.br/padroes/tiss/schemas");
            List<XmlSchemaException> result = GetSchemaErrors(xml, schema, "http://www.ans.gov.br/padroes/tiss/schemas");

            
            foreach (XmlSchemaException erro in result)
            {
                aux += "nr linha : " + erro.LineNumber.ToString() + " posição linha : " + erro.LinePosition.ToString() + " erro : " + erro.Message + "<br>";
            }
        }
        catch (Exception ex)
        {
            aux = "Ocorreu um erro na validação do schema xml, verifique na mensagem a seguir a linha e coluna onde está a falha " + ex.Message;
        }
        return aux;

    }

    private static List<XmlSchemaException> GetSchemaErrors(string arqXml, string ArqXsd, string targetNameSpace)
    {
        XmlReaderSettings settings = new XmlReaderSettings();
        
        settings.Schemas.Add(targetNameSpace, ArqXsd);

        settings.ValidationType = ValidationType.Schema;
        List<XmlSchemaException> errors = new List<XmlSchemaException>();
        settings.ValidationEventHandler += (sender, args) => errors.Add(args.Exception);
        XmlReader reader = XmlReader.Create(arqXml, settings);
        var doc = XDocument.Load(reader);
        reader.Close();
        return errors;
    }


}