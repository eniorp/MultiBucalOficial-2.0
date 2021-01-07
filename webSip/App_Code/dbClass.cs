using System;
using System.Data;
using System.Configuration;
using System.Web;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for util
/// </summary>
public class dbClass
{

    private SqlConnection cn = new SqlConnection();


    public void closeConn()
    {
        if (cn.State == ConnectionState.Open)
            cn.Close();
    }


    public SqlDataReader DataReader(string sql)
    {


        SqlDataReader dr = null;
        try
        {
            closeConn();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnSip"].ToString();
            SqlCommand cmd = new SqlCommand(sql, cn);
            cn.Open();

            dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dr;

        }
        catch (Exception)
        {
            return dr;
            throw;
        }
    }

    public string execmd(string sql, bool RetVal)
    {
        // RetVal se true indica que vai retornar valor, se false é uma instrução insert ou update

        closeConn();
        string result;
        cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnSip"].ToString();
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();

        if (RetVal)
        {

            SqlDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            if (dr.Read())
                result = dr[0].ToString();
            else
                result = "";
            dr.Close();
            //result = cmd.ExecuteScalar().ToString();
        }
        else
        {
            result = "";
            cmd.ExecuteNonQuery();
        }

        cn.Close();
        return result;
    }

}
