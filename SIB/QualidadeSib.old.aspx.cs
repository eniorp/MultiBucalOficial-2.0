using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QualidadeSib : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        QualidadeSIB qualidadeSib = new QualidadeSIB();
        qualidadeSib.processaQualidadeSIB(@"c:\temp\mt\qualidadeSIB\351351_1 (3) (1).xml");
    }
}