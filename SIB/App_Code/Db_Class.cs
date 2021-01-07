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
using System.Data.Odbc;

/// <summary>
/// Summary description for util
/// </summary>
public class Db_Class
{

    private SqlConnection cn = new SqlConnection();
    private OdbcConnection cnOdbc = new OdbcConnection();

    public void closeConn()
    {
        if (cn.State == ConnectionState.Open)
            cn.Close();
    }

    public void closeConnOdbc()
    {
        if (cnOdbc.State == ConnectionState.Open)
            cnOdbc.Close();
    }

    public string getParam(string cdParam)
    {
        return this.execmd("select vl_parametro from parametro where cd_parametro = '" + cdParam + "'", true);
    }
    public OdbcDataReader DataReader(string sql, string Banco)
    {
        closeConnOdbc();
        cnOdbc.ConnectionString = WebConfigurationManager.ConnectionStrings[Banco].ToString();
        OdbcCommand cmd = new OdbcCommand(sql, cnOdbc);
        cnOdbc.Open();
        OdbcDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        return dr;
    }

    public string execmd(string sql, bool RetVal, string Banco)
    {
        // RetVal se true indica que vai retornar valor, se false é uma instrução insert ou update
        closeConnOdbc();
        string result;
        cnOdbc.ConnectionString = WebConfigurationManager.ConnectionStrings[Banco].ToString();
        OdbcCommand cmd = new OdbcCommand(sql, cnOdbc);
        cnOdbc.Open();

        if (RetVal)
        {
            OdbcDataReader dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
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

        cnOdbc.Close();
        return result;
    }

    public string execmd(SqlCommand sql, bool RetVal)
    {
        // RetVal se true indica que vai retornar valor, se false é uma instrução insert ou update
        closeConn();
        string result;
        cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnSIB"].ToString();
        sql.Connection = cn;
        cn.Open();

        if (RetVal)
        {
            SqlDataReader dr = sql.ExecuteReader();
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
            sql.ExecuteNonQuery();
        }

        cn.Close();
        return result;
    }

    public SqlDataReader DataReader(string sql)
    {


        SqlDataReader dr = null;
        try
        {
            closeConn();
            cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnSIB"].ToString();
            SqlCommand cmd = new SqlCommand(sql, cn);
            cn.Open();

            dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dr;

        }
        catch (Exception)
        {
            throw;
        }
    }

    public string execmd(string sql, bool RetVal)
    {
        // RetVal se true indica que vai retornar valor, se false é uma instrução insert ou update

        closeConn();
        string result;
        cn.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnSIB"].ToString();
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
