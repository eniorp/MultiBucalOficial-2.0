using AssinaXML;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*TesteSignature ts = new TesteSignature();
        ts.SignXML();
        return;*/
        RpsNFe rps = new RpsNFe();
        rps.geraRPSNFe();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        X509Certificate2Collection lcerts;
        X509Store lStore = new X509Store(StoreName.My, StoreLocation.CurrentUser);

        // Abre o Store
        lStore.Open(OpenFlags.ReadOnly);

        // Lista os certificados
        lcerts = lStore.Certificates;
        ListBox1.Items.Clear();
        foreach (X509Certificate2 cert in lcerts)
        {
            
            if (cert.HasPrivateKey && cert.NotAfter > DateTime.Now && cert.NotBefore < DateTime.Now)
            {


                ListBox1.Items.Add(new ListItem(cert.Subject));
                // Faz o uso do certificado....
                // Por exemplo, assinar um docto.
            }
        }
        lStore.Close();
    }

    

    protected void Button3_Click(object sender, EventArgs e)
    {
        
        AssinaturaDigital assinNFe = new AssinaturaDigital();
        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.PreserveWhitespace = false;
        xmlDoc.Load(@"c:\temp\RpsNFe.xml");

        X509Certificate2 certifMt = assinNFe.getCertificado("1E7C6E50619C3AE2"); // serial number do certificado da multi

        if (certifMt == null)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Certificado não localizado')", true);
            return;
        }
        
        Int32 result = assinNFe.Assinar(xmlDoc.OuterXml, "InfRps", certifMt);
        if (result != 0) {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert(' ocorreu o erro número " + result.ToString() + " verifique : " +
             
             " 1 - Erro: Problema ao acessar o certificado digital - %exceção%           " +
             " 2 - Problemas no certificado digital                                      " +
             " 3 - XML mal formado + exceção                                             " +
             " 4 - A tag de assinatura inexiste                                 " +
             " 5 - A tag de assinatura  não é unica                              " +
             " 6 - Erro Ao assinar o documento - ID deve ser string   " +
             " 7 - Erro: Ao assinar o documento -                              ')", true);
            return;
            
        }
        assinNFe.XMLDocAssinado.Save(@"c:\temp\RPsNFeAssin.xml");
        /*
        ginfesNFe.ServiceGinfesImplClient wsNFe = new ginfesNFe.ServiceGinfesImplClient();
        wsNFe.ClientCredentials.UserName.UserName = "mt";
        wsNFe.ClientCredentials.UserName.Password = "123";
        wsNFe.RecepcionarLoteRps(assinNFe.XMLDocAssinado.OuterXml);
        */

        //XmlDocument xmlDoc = new XmlDocument();
        //xmlDoc.PreserveWhitespace = false;
        xmlDoc.Load(@"c:\temp\RPsNFeAssin.xml");
        ginfesNFe.ServiceGinfesImplClient wsNFe = new ginfesNFe.ServiceGinfesImplClient();
        wsNFe.RecepcionarLoteRps(xmlDoc.OuterXml);

        

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string strAux = "";


        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert(' " + strAux + " ')", true);
        return;

        if(validaPIS(TextBox1.Text))
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert(' validou pis')",true);
        else
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert(' nao validou pis')", true);
        
        return;


        if (validaCnsProv(TextBox1.Text))
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert(' validou')",true);
        else
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert(' nao validou')", true);
        
        return;
        
        /*
        string strAux = "";



        ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert(' " + strAux + " ')", true);
         * */


    }

private bool validaCnsProv(string cns){
        if (cns.Trim().Length != 15){
            return(false);

        }

        
        float resto,soma;
         
        soma = int.Parse(cns.Substring(0,1))   * 15 +
               int.Parse(cns.Substring(1,1))   * 14 +
               int.Parse(cns.Substring(2,1))   * 13 +
               int.Parse(cns.Substring(3,1))   * 12 +
               int.Parse(cns.Substring(4,1))   * 11 +
               int.Parse(cns.Substring(5,1))   * 10 +
               int.Parse(cns.Substring(6,1))   * 9  +
               int.Parse(cns.Substring(7,1))   * 8  +
               int.Parse(cns.Substring(8,1))   * 7  +
               int.Parse(cns.Substring(9,1))  * 6 +
               int.Parse(cns.Substring(10,1)) * 5 +
               int.Parse(cns.Substring(11,1)) * 4 +
               int.Parse(cns.Substring(12,1)) * 3 +
               int.Parse(cns.Substring(13,1)) * 2 +
               int.Parse(cns.Substring(14,1)) * 1;

        resto = soma % 11;

        if (resto != 0){
            return(false);
        }else {
        return(true);}
    }

public static bool validaPIS(string pis)
{
    if (pis.Length != 11)
        return false;
    float soma;
    soma = int.Parse(pis.Substring(0, 1)) * 3 +
           int.Parse(pis.Substring(1, 1)) * 2 +
           int.Parse(pis.Substring(2, 1)) * 9 +
           int.Parse(pis.Substring(3, 1)) * 8 +
           int.Parse(pis.Substring(4, 1)) * 7 +
           int.Parse(pis.Substring(5, 1)) * 6 +
           int.Parse(pis.Substring(6, 1)) * 5 +
           int.Parse(pis.Substring(7, 1)) * 4 +
           int.Parse(pis.Substring(8, 1)) * 3 +
           int.Parse(pis.Substring(9, 1)) * 2;
    soma = 11 - (soma % 11);
    if (soma > 9)
        soma = 0;

    return float.Parse(pis.Substring(10)) == soma;

}


}