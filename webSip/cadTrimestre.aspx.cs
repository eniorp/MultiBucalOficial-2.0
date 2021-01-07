using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class cadTrimestre : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Session["op"] = "I";
            txtAno.Text = DateTime.Today.Year.ToString();
        }

    }
    protected void btnGravar_Click(object sender, EventArgs e)
    {
        /*tive que incluir na mao bolar um jeito para quando incluir o trimestre (viatriggerTalvez) incluir o item 3
            insert into sipxtrimestre values(1,2010,1,'SP','coletivoEmpresarial','3',0,0,0)
insert into sipxtrimestre values(1,2010,1,'SP','individualFamiliar','3',0,0,0)
insert into sipxtrimestre values(1,2010,2,'SP','coletivoEmpresarial','3',0,0,0)
insert into sipxtrimestre values(1,2010,2,'SP','individualFamiliar','3',0,0,0)
insert into sipxtrimestre values(2,2010,1,'SP','coletivoEmpresarial','3',0,0,0)
insert into sipxtrimestre values(2,2010,1,'SP','individualFamiliar','3',0,0,0)
insert into sipxtrimestre values(2,2010,2,'SP','coletivoEmpresarial','3',0,0,0)
insert into sipxtrimestre values(2,2010,2,'SP','individualFamiliar','3',0,0,0)*/

        if (Session["op"] == "I")
            gravarItem();
        else
            if (Session["op"] == "A")
            alterarItem();

        Session["trimestre"] = cboTrimestre.SelectedValue;
        Session["formaContrat"] = cboFormacontrat.SelectedValue;
        Session["ano"] = txtAno.Text;

        GridView1.DataBind();

    }
    private void alterarItem()
    {
        dbClass db = new dbClass();
        string sql = "update sipXtrimestre set cd_empresa = cd_empresa ";
        if(txtQtEventos.Text.Length > 0)
           sql += ", qt_evento = " + txtQtEventos.Text;
        if(txtQtBenefCarencia.Text.Length > 0)
           sql += ", qt_benef_fora_per_carencia = " + txtQtBenefCarencia.Text;
        if(txtTtDespLiq.Text.Length > 0)
           sql += ", tt_despesa_liq = " + txtTtDespLiq.Text.Replace(".", "").Replace(",", "."); 
        sql += " where cd_empresa = " + cboEmpresa.SelectedValue;
        sql += " and ano = " + txtAno.Text;
        sql += " and trimestre = " + cboTrimestre.SelectedValue;
        sql += " and uf = '" + txtUF.Text + "'";
        sql +=" and formaContratacao = '" + cboFormacontrat.SelectedValue + "'";
        sql += " and cd_sip = '" + cboItemAssit.SelectedValue + "'";
        db.execmd(sql, false);

    }
    private void gravarItem()
    {
        dbClass db = new dbClass();
        string sql = "insert into sipXtrimestre (cd_empresa, ano, trimestre, uf, formaContratacao, cd_sip, qt_evento,qt_benef_fora_per_carencia, tt_despesa_liq) values (";
        sql += cboEmpresa.SelectedValue + ",";
        sql += txtAno.Text + ",";
        sql += cboTrimestre.SelectedValue + ",'";
        sql += txtUF.Text + "','";
        sql += cboFormacontrat.SelectedValue + "','";
        sql += cboItemAssit.SelectedValue + "',";
        if(txtQtEventos.Text.Length > 0)
           sql += txtQtEventos.Text + ",";
        else
            sql +=  "0,";
        if(txtQtBenefCarencia.Text.Length > 0)
           sql += txtQtBenefCarencia.Text + ",";
        else
            sql += "0,";
        if(txtTtDespLiq.Text.Length > 0)
           sql += txtTtDespLiq.Text.Replace(".", "").Replace(",", ".") + ")";
        else
            sql +=  "0)";
        db.execmd(sql, false);
        limpaTela();

    }

    private void limpaTela()
    {
        Session["op"] = "I";
        if (Session["trimestre"] != null)
            cboTrimestre.SelectedValue = Session["trimestre"].ToString();

        if (Session["formaContrat"] != null)
            cboFormacontrat.SelectedValue = Session["formaContrat"].ToString();
        if (Session["ano"] != null)
            txtAno.Text = Session["ano"].ToString();

        txtQtBenefCarencia.Text = "";
        txtQtEventos.Text = "";
        txtTtDespLiq.Text = "";        

    }


    protected void cboItemAssit_SelectedIndexChanged(object sender, EventArgs e)
    {
        dbClass db = new dbClass();
        SqlDataReader dr = db.DataReader("select * from sipXtrimestre where cd_empresa = " + cboEmpresa.SelectedValue + " and ano = " + txtAno.Text + " and trimestre = " + cboTrimestre.SelectedValue + " and uf = '" + txtUF.Text + "' and formaContratacao = '" + cboFormacontrat.SelectedValue + "' and cd_sip = '" + cboItemAssit.SelectedValue + "'");
        if (dr.Read())
        {
            txtQtBenefCarencia.Text = dr["qt_benef_fora_per_carencia"].ToString();
            txtQtEventos.Text = dr["qt_evento"].ToString();
            txtTtDespLiq.Text = dr["tt_despesa_liq"].ToString();
            Session["op"] = "A";
        }
        else
        {
            txtQtBenefCarencia.Text = "";
            txtQtEventos.Text = "";
            txtTtDespLiq.Text = "";
            Session["op"] = "I";

        }
        txtQtEventos.Focus();
        dr.Close();
        db.closeConn();
        dr = db.DataReader("select * from sip where codigo = '" + cboItemAssit.SelectedValue + "'");
        if (dr.Read())
        {
            if (String.Compare(dr["lg_evento"].ToString(), "N") == 0)
            {
                txtQtEventos.Enabled = false;
                txtQtEventos.Text = "";
                txtQtEventos.BackColor = System.Drawing.Color.Gray;
            }
            else
            {
                txtQtEventos.Enabled = true;                
                txtQtEventos.BackColor = System.Drawing.Color.White;

            }

            if (String.Compare(dr["lg_beneficiario"].ToString(), "N") == 0)
            {
                txtQtBenefCarencia.Enabled = false;
                txtQtBenefCarencia.Text = "";
                txtQtBenefCarencia.BackColor = System.Drawing.Color.Gray;
            }
            else
            {
                txtQtBenefCarencia.Enabled = true;
                txtQtBenefCarencia.BackColor = System.Drawing.Color.White;

            }
            if (String.Compare(dr["lg_despesa"].ToString(), "N") == 0)
            {
                txtTtDespLiq.Enabled = false;
                txtTtDespLiq.Text = "";
                txtTtDespLiq.BackColor = System.Drawing.Color.Gray;
            }
            else
            {
                txtTtDespLiq.Enabled = true;
                txtTtDespLiq.BackColor = System.Drawing.Color.White;

            }


        }
        dr.Close();
        db.closeConn();


    }
    protected void cboEmpresa_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}