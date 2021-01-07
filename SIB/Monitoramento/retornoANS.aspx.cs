using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class retornoANS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        if (!FileUpload1.HasFile) {
            Label1.Text = "nehum arquivo selecionado";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Selecione um arquivo')", true);
            return;
        }
        string nmArq = @"c:\temp\_" + FileUpload1.FileName;
        FileUpload1.SaveAs(nmArq);
        System.IO.FileInfo arq = new System.IO.FileInfo(nmArq);
        if (arq.Extension.ToLower() != ".xtr") {
            Label1.Text = "arquivo deve ser de extensão .xtr";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('arquivo deve ser de extensão .xtr')", true);
            return;
        }
        RetornoANS ret = new RetornoANS();
        string retorno = ret.processaRetornoANS(nmArq);
        if (retorno != "")
        {
            Label1.Text = retorno;
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + retorno + "')", true);
        }
        else
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('processamento finalizado com sucesso')", true);
            Label1.Text = "processamento finalizado com sucesso";
            TextBox1.Text = arq.Name.Substring(11, 2) + "/" + arq.Name.Substring(7, 4);
            TextBox2.Text = arq.Name.Substring(13, 4);
            SqlDataSource1.DataBind();

        }

        
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Length > 0 && TextBox2.Text.Length > 0) {
            SqlDataSource1.DataBind();
        }

    }
}