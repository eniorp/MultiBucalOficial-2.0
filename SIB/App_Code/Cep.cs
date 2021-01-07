using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descrição resumida de Cep
/// </summary>
public class Cep
{
    public Cep()
    {
        //
        // TODO: Adicionar lógica do construtor aqui
        //
    }

    public string buscaCep(string cep)
    {
        cep = Util.so_numero(cep);
        string sql = "";
        Db_Class db = new Db_Class();
        db.execmd("delete enderecoTemp where cep = " + cep, false);
        string logAux = "log 1,";
        if (cep != "")
        {
            logAux += "log 2,";
            wsCorreios.AtendeClienteClient wscep = new wsCorreios.AtendeClienteClient();
            try
            {
                logAux += "log 3,";
                var dados = wscep.consultaCEP(cep);
                sql = "insert into enderecoTemp values(" +
                cep + ",'" +
                dados.end + "','" +
                dados.bairro + "','" +
                dados.uf.ToUpper() + "','" +
                dados.cidade + "','')";
                logAux += "log 4,";

            }
            catch (Exception ex)
            {
                logAux += "log 5,";
                string erro = ex.Message;
                if (erro.Length > 200)
                    erro = erro.Substring(0, 200);
                sql = "insert into enderecoTemp values(" + cep + ",'','','','','" + ex.Message + "')";
                db.execmd(sql, false);
                logAux += "log 6,";
                return ex.Message + logAux;

            }

            try
            {
                logAux += "log 7,";
                db.execmd(sql, false);
                logAux += "log 7.1,";
            }
            catch (Exception ex)
            {
                logAux += "log 8,";
                string erro = ex.Message;
                if (erro.Length > 200)
                    erro = erro.Substring(0, 200);
                sql = "insert into enderecoTemp values(" + cep + ",'','','','','" + ex.Message + "')";
                db.execmd(sql, false);
                logAux += "log 9,";
                return ex.Message + logAux;
            }

            return "" ;
        }
        else
        {
            sql = "insert into enderecoTemp values(" + cep + ",'','','','','cep deve ser informado')";
            db.execmd(sql, false);
            return "cep deve ser informado";
        }
    }
}