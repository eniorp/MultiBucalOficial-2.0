using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MonitoramentoANS : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            fieldSetRegerar.Visible = false;
            //DbClass db = new DbClass();
            //Label2.Text = db.execmd("Select fantasia from empresa", true).Substring(0,3); 
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        string[] parametros = txtMesAnoVlfs.Text.Split('-');
        if (parametros.Length != 2)
        {
            Label1.Text = "Parâmetros inválidos , verifique!";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Parâmetros inválidos , verifique!')", true);
            return;
            
        }
        string periodo = parametros[0];
        string vlfs = parametros[1];
        Monitoramento monit = new Monitoramento();
        Db_Class db = new Db_Class();
        if (db.execmd("select count(*) from itens_pagdentista i where i.mesano = '" + periodo + "' and i.valor is not null and not exists(select * from  envioMonitGuias e where e.orcamento = i.Orcamento and e.incremento = i.incremento and i.MesAno = e.mesAno and e.aceitoANS = 'S')", true) == "0")
        {

            Label1.Text = "não há registros para gerar lote";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('não há registros para gerar lote')", true);
            return;
        }

        string nrLote = monit.griaRegistroLoteMonitoramento(periodo,"enio");
        string retorno = monit.geraMonitoramento(periodo, db.getParam("CDRANS"), "enio",nrLote,"G",vlfs);
        ValidaSchema valid = new ValidaSchema();
        //Label1.Text =  valid.validaSchema(retorno, Server.MapPath("") + @"\schema\3.03.03\tissMonitoramentoV3_03_03.xsd");
        Label1.Text = valid.validaSchema(retorno, Server.MapPath("") + @"\schema\1.00.00\tissMonitoramentoV1_00_00.xsd");
        if (Label1.Text.Length == 0)
        {
            Label1.Text = "Arquivo gerado com sucesso " + retorno.Replace(@"\", "_");
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Arquivo gerado com sucesso " + retorno.Replace(@"\", "_") + " ')", true);
        }
        else
        {
            Label1.Text = "Arquivo não gerado verifique os erros : " + Label1.Text;
            
            db.execmd("delete envioMonitGuias where mesano = '" + periodo + "' and nr_lote = " + nrLote, true);
            db.execmd("delete envioMonitoramento where mesano = '" + periodo + "' and nr_lote = " + nrLote, true);
            db.execmd("delete manutencaoFS where mesano = '" + periodo + "' and nrLote = " + nrLote, true);
            
            
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Arquivo nao gerado verifique os erros ')", true);

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        /*
        if (TextBox2.Text.Length == 0) {
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('não há registros para gerar lote')", true);
           // TextBox2.Focus();
            return;
        }
        Monitoramento monit = new Monitoramento();
        Db_Class db = new Db_Class();
        
        string retorno = monit.geraMonitoramento(TextBox1.Text, db.getParam("CDRANS"), "enio", TextBox2.Text, "R",vlfs);
        ValidaSchema valid = new ValidaSchema();
        Label1.Text = valid.validaSchema(retorno, Server.MapPath("") + @"\schema\3.02.00\tissMonitoramentoV3_02_00.xsd");
        if (Label1.Text.Length == 0)
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Arquivo gerado com sucesso " + retorno.Replace(@"\", "_") + " ')", true);
        else
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Arquivo nao gerado verifiqeu os erros ')", true);
        */

    }
    
    protected void Button3_Click(object sender, EventArgs e)
    {
        /*
        Monitoramento monit = new Monitoramento();
        Db_Class db = new Db_Class();

        string nrLote = monit.griaRegistroLoteMonitoramento(TextBox1.Text, "enio");
        string retorno = monit.geraMonitoramento(TextBox1.Text, db.getParam("CDRANS"), "enio", nrLote, "G");
        ValidaSchema valid = new ValidaSchema();
        Label1.Text = valid.validaSchema(retorno, Server.MapPath("") + @"\schema\3.02.00\tissMonitoramentoV3_02_00.xsd");
        if (Label1.Text.Length == 0)
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Arquivo gerado com sucesso " + retorno.Replace(@"\", "_") + " ')", true);
        else
        {
            db.execmd("delete envioMonitGuias where nr_lote = " + nrLote, true);
            db.execmd("delete envioMonitoramento where nr_lote = " + nrLote, true);
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('Arquivo nao gerado verifique os erros ')", true);

        }
          */

    }
    
}