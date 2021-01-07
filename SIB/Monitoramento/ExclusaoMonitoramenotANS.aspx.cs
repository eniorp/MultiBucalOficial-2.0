using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Monitoramento_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        Db_Class db = new Db_Class();

        string sql = "select count(*) from envioMonitoramento where mesano = '" +  txtMesAno.Text + "' and nr_lote = " + txtNrLote.Text + " and dt_retorno is not null";
        if (db.execmd(sql, true) != "0")
        {
            lblmsg.Text = "lote não pode ser excluído, já houve processamento de retorno da ANS!";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('lote não pode ser excluído, já houve processamento de retorno da ANS!')", true);
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('não há registros para gerar lote')", true);
            return;
        }
        sql = "select count(*) from envioMonitoramento where mesano = '" + txtMesAno.Text + "' and nr_lote = " + txtNrLote.Text;
        if (db.execmd(sql, true) == "0")
        {
            lblmsg.Text = "lote não localizado";
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('lote não localizado!')", true);
            ScriptManager.RegisterStartupScript(this, GetType(), "alert", "alert('não há registros para gerar lote')", true);
            return;
        }
        sql = "select dt_envio from envioMonitoramento where mesano = '" + txtMesAno.Text + "' and nr_lote = " + txtNrLote.Text;
        Label1.Text = "confirma a exclusão do lote " + txtNrLote.Text + " do período " + txtMesAno.Text + ". esse lote foi gerado na data de : " +  db.execmd(sql,true);
        MultiView1.SetActiveView(View2);
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Db_Class db = new Db_Class();
        db.execmd("delete manutencaoFS where mesano = '" + txtMesAno.Text + "' and nrlote = " + txtNrLote.Text, false);
        db.execmd("delete envioMonitGuias where mesano = '" + txtMesAno.Text + "' and nr_lote = " + txtNrLote.Text, false);
        db.execmd("delete envioMonitoramento where mesano = '" + txtMesAno.Text + "' and nr_lote = " + txtNrLote.Text, false);
        Label2.Text = "EXCLUSÃO REALIZADA COM SUCESSO!";
    }
}