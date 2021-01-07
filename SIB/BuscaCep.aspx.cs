using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BuscaCep : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["cep"] != null)
            {
                Cep cep = new Cep();
                string rs = cep.buscaCep(Request.QueryString["cep"].ToString());
                if (rs != "")
                    Response.Write("ocorreu o seguinte erro : " + rs);
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Cep cep = new Cep();
        string rs = cep.buscaCep(TextBox1.Text);
        if (rs != "")
            Response.Write("ocorreu o seguinte erro : " + rs);
    }
}