using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class conferencia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void processaConferencia() {

        LabelConf.Text = "";
        string filePath = dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'DIRTMP'", true);


        //FileUpload1.SaveAs(filePath + FileUpload1.FileName);

        XmlDataDocument arq_Xml;
        arq_Xml = new XmlDataDocument();
        arq_Xml.Load(@"C:\temp\sibConf\ArqConf3512021120150101.CNX");
        //arq_Xml.Load(filePath + FileUpload1.FileName);
        //validar o codigo da empresa
        if (!getDadoXml(arq_Xml, "mensagemSIB/cabecalho/identificacaoTransacao/tipoTransacao").Equals("'CONFERENCIA CADASTRAL'"))
        {
            LabelConf.Text = "Arquivo de conferência inválido !";
            return;
        }
        string NrRegANS = dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'CDRANS'", true);
        if (!getDadoXml(arq_Xml, "mensagemSIB/cabecalho/destino/registroANS").Equals("'" + NrRegANS + "'"))
        {
            LabelConf.Text = "Arquivo não pertence ao convenio registro ANS " + NrRegANS ;
            return;
        }

        
        XmlNodeList lista = arq_Xml.SelectNodes("mensagemSIB/mensagem/ansParaOperadora/conferencia/beneficiario");

        dbClass.execmd("delete ANS_CONF", false);

        LabelConf.Text = "Inicio processamento : " + DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");

        foreach (XmlNode benef in lista)
        {
            if (benef.SelectSingleNode("vinculo/numeroPlanoANS").InnerText != "456.521/07-5" &&
                benef.SelectSingleNode("vinculo/numeroPlanoANS").InnerText != "463.641/10-4" &&
                benef.SelectSingleNode("vinculo/numeroPlanoANS").InnerText != "463.834/11-4" &&
                benef.SelectSingleNode("vinculo/numeroPlanoANS").InnerText != "472.534/14-4" &&
                benef.SelectSingleNode("vinculo/numeroPlanoANS").InnerText != "472.535/14-2" &&
                benef.SelectSingleNode("vinculo/numeroPlanoANS").InnerText != "404.201/99-8")
                continue;

            string sql = "set dateformat dmy insert into ANS_CONF (" +
            " NrSeqArq,IndDetalhe,cdIdentBenef,NmBenef,DtNasc,Sexo,cpf,NmMaeBenef,NrRegPlanoANS,DtAdesaoPlano,DtCancelamento, " +
            " DtReinclusao,Logradouro,NrEndereco,ComplLog,Bairro,Cidade,UF,Cep, VinculoBenef,MotivoCancel, CNPJ,flag_compara) values (";


            sql += "1,";
            if (benef.Attributes.Item(0).InnerText.Equals("ATIVO"))
                sql += "1,"; //ativo
            else
                sql += "3,"; //inativo

            sql += getDadoXml(benef, "vinculo/codigoBeneficiario") + ",";
            sql += getDadoXml(benef, "identificacao/nome") + ",";
            sql += convertData(getDadoXml(benef, "identificacao/dataNascimento")) + ",";
            string sexo = getDadoXml(benef, "identificacao/sexo");
            if (sexo.Equals('1'))
                sql += "'M',";
            else
                sql += "'F',";
            sql += getDadoXml(benef, "identificacao/cpf") + ",";
            sql += getDadoXml(benef, "identificacao/nomeMae") + ",";
            sql += getDadoXml(benef, "vinculo/numeroPlanoANS") + ",";
            sql += convertData(getDadoXml(benef, "vinculo/dataContratacao")) + ",";

            sql += convertData(getDadoXml(benef, "vinculo/dataCancelamento")) + ",";

            sql += convertData(getDadoXml(benef, "vinculo/dataReativacao")) + ",";
            sql += getDadoXml(benef, "endereco/logradouro") + ",";
            sql += getDadoXml(benef, "endereco/numero") + ",";
            sql += getDadoXml(benef, "endereco/complemento") + ",";
            sql += getDadoXml(benef, "endereco/bairro") + ",";
            if (benef.SelectSingleNode("endereco/codigoMunicipio") != null)
            {
                string nmcidade = dbClass.execmd("select ds_cidade from cidade where cd_ibge =  " + getDadoXml(benef, "endereco/codigoMunicipio"), true);
                if (nmcidade.Length > 0)
                {
                    sql += "'" + nmcidade + "',";
                    sql += dbClass.execmd("select uf from cidade where cd_ibge =  " + getDadoXml(benef, "endereco/codigoMunicipio"), true) + ",";
                }
                else
                    sql += "null,null,";

            }
            else
                sql += "null,null,";



            sql += getDadoXml(benef, "endereco/cep") + ",";
            sql += getDadoXml(benef, "vinculo/relacaoDependencia") + ",";
            sql += getDadoXml(benef, "vinculo/motivoCancelamento") + ",";
            sql += getDadoXml(benef, "vinculo/cnpjEmpresaContratante") + ",";
            if (eh_numerico(getDadoXml(benef, "vinculo/codigoBeneficiario").Replace("'", "")))
                sql += "1)";
            else
                sql += "0)";
            dbClass.execmd(sql, false);


        }
        LabelConf.Text += " Fim processamento : " + DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss");
    }

    private string getDadoXml(XmlNode benef, string tag)
    {

        if (benef.SelectSingleNode(tag) != null)
            return "'" + benef.SelectSingleNode(tag).InnerText.Replace("'", "") + "'";
        else
            return "null";
    }

    private string convertData(string data)
    {

        if (data.Length >= 10)
            return "'" + data.Substring(9, 2) + "/" + data.Substring(6, 2) + "/" + data.Substring(1, 4) + "'";
        else
            return data;
    }

    private bool eh_numerico(string str)
    {

        try
        {
            decimal.Parse(str);
            return true;
        }
        catch (Exception)
        {

            return false;
        }
    }

    //2011-12-31
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        processaConferencia();
    }
}