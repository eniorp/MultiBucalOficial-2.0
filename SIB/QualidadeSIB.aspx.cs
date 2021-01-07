using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Monitoramento_Qualidade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        divAlert.Visible = false;

        string filepath = @"c:\temp\";
        HttpFileCollection uploadedFiles = Request.Files;

        int ttArq = 0;
        for (int i = 0; i < uploadedFiles.Count; i++)
        {
            HttpPostedFile userPostedFile = uploadedFiles[i];

            try
            {
                if (userPostedFile.ContentLength > 0)
                {
                    ttArq++;
                    string nmArq = filepath + "\\" + Path.GetFileName(userPostedFile.FileName);
                    userPostedFile.SaveAs(nmArq);
                    QualidadeSIB qualidadeSib = new QualidadeSIB();
                    qualidadeSib.processaQualidadeSIB(nmArq);

                }
            }
            catch (Exception Ex)
            {
                Label1.Text += "Error: <br>" + Ex.Message;
                divAlert.Visible = true;
                return;
            }
        }
        if (Label1.Text != "")
            divAlert.Visible = true;
        else
        {
            divModal.Visible = true;
            paragModal.InnerText = "Foram processados " + ttArq.ToString() + " do processo de Qualidade ANS! Agora gere novamente os arquivos do(s) período(s) para envio à ANS";
        }
        sdsDtProcessamento.DataBind();
        DropDownList1.DataBind();
        if (DropDownList1.Items.IndexOf(new ListItem(DateTime.Today.ToString("dd/MM/yyyy"))) >= 0)
            DropDownList1.SelectedValue = DateTime.Today.ToString("dd/MM/yyyy");
        sdsErroQualidadeSIB.DataBind();
        GridView1.DataBind();

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        sdsErroQualidadeSIB.DataBind();
        GridView1.DataBind();
    }
}