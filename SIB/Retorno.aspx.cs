using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.IO;

using System.Globalization;
using System.Net.Mail;
using System.Data.SqlClient;

public partial class About : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
    }
    private void carregaErros() {

        

        if (dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'DIRTMP'", true) == "")
            dbClass.execmd("insert into parametro values ('DIRTMP','c:\\temp\\','Diretório temporário','U','SISTEMA',getdate())", true);

        string filePath = dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'DIRTMP'", true);

        XmlDataDocument arq_Xml;
        arq_Xml = new XmlDataDocument();


        FileUpload1.SaveAs(filePath + FileUpload1.FileName);

        arq_Xml.Load(filePath + FileUpload1.FileName);

        lnkDownloadErros.Visible = false;

        if (arq_Xml.SelectSingleNode("mensagemSIB/cabecalho/destino/registroANS") != null)
        {
            if (dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'CDRANS'", true) != arq_Xml.SelectSingleNode("mensagemSIB/cabecalho/destino/registroANS").InnerText)
            {

                lblMensagem.Text = "Arquivo de retorno do SIB não pertence à empresa";
                return;
            }


        }
        else {
            lblMensagem.Text = "Arquivo não é um arquivo de retorno válido do SIB";
            return;
        }
        XmlNodeList lista = arq_Xml.SelectNodes("mensagemSIB/mensagem/ansParaOperadora/resultadoProcessamento/arquivoProcessado/registrosRejeitados/registroRejeitado");
        
        string linha = "";
        //dbClass db = new dbClass();


        string nmArquivo = arq_Xml.SelectSingleNode("mensagemSIB/mensagem/ansParaOperadora/resultadoProcessamento/arquivoProcessado/protocoloProcessamento/nomeArquivo").InnerText;
        nmArquivo = nmArquivo.Substring(0, nmArquivo.Length - 3);

        StreamWriter arq = new StreamWriter(filePath + "erro_" + nmArquivo + ".txt");

        Session["filePath"] = filePath;
        Session["fileName"] = "erro_" + nmArquivo + ".txt";
        Session["temErro"] = "N";

        arq.WriteLine("TP CCO/CODIGO  CAMPO COM ERRO                 CONTEUDO ENVIADO DO CAMPO COM ERRO                                     MENSAGEM DE ERRO");
        arq.WriteLine("==========================================================================================================================================================================================================================");
        if (lista.Count == 0)
        {
            lblMensagem.Text = "Não ocorreram erros";
            return;
        }

        foreach (XmlNode rejeitado in lista)
        {
            if (rejeitado.Attributes[2].InnerText == "INCLUSÃO")
            {
                linha = "I";
                linha += rejeitado.Attributes[0].InnerText.Substring(rejeitado.Attributes[0].InnerText.Length - 8, 8) + " ";
                string nmUsuario = dbClass.execmd("select nome from usuario where codigo_completo = " + rejeitado.Attributes[0].InnerText, true);
                if (nmUsuario.Length > 30)
                   nmUsuario = nmUsuario.Substring(0, 30);
                else
                   nmUsuario = nmUsuario.PadRight(30,' ');

                linha += nmUsuario;
            }

            else
                if (rejeitado.Attributes[2].InnerText == "RETIFICAÇÃO")
                {
                    linha = "A";
                    linha +=  dbClass.execmd("select codigo_completo from usuario where cco = '" + rejeitado.Attributes[0].InnerText.Substring(0, 10) + "'", true).PadRight(8,'0') + " ";
                    string nmUsuario = dbClass.execmd("select nome from usuario where cco = '" + rejeitado.Attributes[0].InnerText.Substring(0,10) + "'" , true);
                    if (nmUsuario.Length > 30)
                        nmUsuario = nmUsuario.Substring(0, 30);
                    else
                        nmUsuario = nmUsuario.PadRight(30, ' ');

                    linha += nmUsuario  + " ";
                }
                else
                    if (rejeitado.Attributes[2].InnerText == "EXCLUSÃO")
                    {
                        linha = "E";
                        linha += dbClass.execmd("select codigo_completo from usuario where cco = '" + rejeitado.Attributes[0].InnerText.Substring(0, 10) + "'", true).PadRight(8, '0') + " ";
                        string nmUsuario = dbClass.execmd("select nome from usuario where cco = '" + rejeitado.Attributes[0].InnerText.Substring(0, 10) + "'", true);
                        if (nmUsuario.Length > 30)
                            nmUsuario = nmUsuario.Substring(0, 30);
                        else
                            nmUsuario = nmUsuario.PadRight(30, ' ');

                        linha += nmUsuario + " ";

                    }
                    else
                    {
                        linha = "R";
                        linha += dbClass.execmd("select codigo_completo from usuario where cco = '" + rejeitado.Attributes[0].InnerText.Substring(0, 10) + "'", true).PadRight(8, '0') + " ";
                        string nmUsuario = dbClass.execmd("select nome from usuario where cco = '" + rejeitado.Attributes[0].InnerText.Substring(0, 10) + "'", true);
                        if (nmUsuario.Length > 30)
                            nmUsuario = nmUsuario.Substring(0, 30);
                        else
                            nmUsuario = nmUsuario.PadRight(30, ' ');

                        linha += nmUsuario + " ";

                    }

            linha += " ";
            
            if(rejeitado.Attributes[0].InnerText.Length < 20)
                linha += rejeitado.Attributes[0].InnerText.PadLeft(12,'0') + " ";
            else
               linha += rejeitado.Attributes[0].InnerText.Substring(18,12) + " ";

            //linha += rejeitado.SelectSingleNode("campoErro/erro/codigoErro").InnerText.PadLeft(10) + " ";
            try
            {
                linha += rejeitado.SelectSingleNode("campoErro/descricaoCampo").InnerText.PadRight(30).Substring(0, 30) + " ";

                if(rejeitado.SelectSingleNode("campoErro/valorCampo") != null)
                    linha += rejeitado.SelectSingleNode("campoErro/valorCampo").InnerText.PadRight(70).Substring(0, 70) + " ";
                else
                    linha += "NÃO POSSUI VALOR NO XML".PadRight(70).Substring(0, 70) + " ";

                linha += rejeitado.SelectSingleNode("campoErro/erro/mensagemErro").InnerText.PadRight(100).Substring(0, 100) + " ";

            }
            catch (Exception)
            {

                linha += "ERRO ao ler xml att 0 = " + rejeitado.Attributes[0].InnerText + " att 1 = " + rejeitado.Attributes[1].InnerText;
            }

            arq.WriteLine(linha);

        }
        Session["temErro"] = "S";
        lnkDownloadErros.Visible = true;
        arq.Close();


    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
        {
            lblMensagem.Text = "Selecione o arquivo de retorno!"; ;
            return;
        }
        carregaErros();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (!FileUpload2.HasFile)
        {
            lblMensagem.Text = "Selecione o arquivo de retorno!"; ;
            return;
        }
        processaCCO();
    }

    private void processaCCO()
    {


        if (dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'DIRTMP'", true) == "")
            dbClass.execmd("insert into parametro values ('DIRTMP','c:\\temp\\','Diretório temporário','U','SISTEMA',getdate())", true);

        string filePath = dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'DIRTMP'", true);

        XmlDataDocument arq_Xml;
        arq_Xml = new XmlDataDocument();


        FileUpload2.SaveAs(filePath + FileUpload2.FileName);

        arq_Xml.Load(filePath + FileUpload2.FileName);

        if (arq_Xml.SelectSingleNode("mensagemSIB/cabecalho/destino/registroANS") != null)
        {
            if (dbClass.execmd("select vl_parametro from parametro where cd_parametro = 'CDRANS'", true) != arq_Xml.SelectSingleNode("mensagemSIB/cabecalho/destino/registroANS").InnerText)
            {

                lblMensagem.Text = "Arquivo de retorno do SIB não pertence à empresa";
                return;
            }


        }
        else
        {
            lblMensagem.Text = "Arquivo não é um arquivo de retorno válido do SIB";
            return;
        }


        XmlNodeList lista = arq_Xml.SelectNodes("mensagemSIB/mensagem/ansParaOperadora/resultadoProcessamento/arquivoProcessado/registrosIncluidos/registroIncluido");
        
        int qt = 0;
        foreach (XmlNode incluido in lista)
        {
            string cco = incluido.SelectSingleNode("cco").InnerText;
            string cdUsuario = incluido.Attributes[0].InnerText;
            string nmUsuario = incluido.SelectSingleNode("nomeBeneficiario").InnerText;

            dbClass.execmd("update usuario set cco = '" + cco.Substring(0,10) + "',dg_cco = '" + cco.Substring(10,2) + "' where codigo_completo = " + cdUsuario,false);

            qt++;

        }
        lblMensagem.Text = "Quantidade de CCO's alimentados : " + qt;
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (Session["temErro"].ToString() == "S")
        {
            DownloadArq(Session["filePath"].ToString() + Session["fileName"].ToString(), Session["fileName"].ToString());

        }
        else
            lblMensagem.Text = "Não ocorreram erros ou o processamento do arquivo ainda não foi executado!";
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
}
