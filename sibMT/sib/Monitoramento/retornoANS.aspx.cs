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
        if (!FileUpload1.HasFile) {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Selecione um arquivo')", true);
            return;
        }
        string nmArq = @"c:\temp\_" + FileUpload1.FileName;
        FileUpload1.SaveAs(nmArq);
        System.IO.FileInfo arq = new System.IO.FileInfo(nmArq);
        if (arq.Extension.ToLower() != ".xtr") {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('arquivo deve ser de extensão .xtr')", true);
            return;
        }
        RetornoANS ret = new RetornoANS();
        string retorno = ret.processaRetornoANS(nmArq);
        if (retorno != "") {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('" + retorno + "')", true);
        }
        else
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('processamento finalizado com sucesso')", true);

        
        

    }
}