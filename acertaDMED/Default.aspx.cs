using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        System.IO.StreamReader arqEntrada = new System.IO.StreamReader(@"c:\dmed\dmed_2012.txt");
        System.IO.StreamWriter arqSaida = new System.IO.StreamWriter(@"c:\dmed\dmed_2012_out.txt");

        string linhaEntrada = "";
        string[] regEntrada;
        string[] regTop = linhaEntrada.Split('|');
        sem chance de fazer a tempo
        while (!arqEntrada.EndOfStream) {
            linhaEntrada = arqEntrada.ReadLine();
            regEntrada = linhaEntrada.Split('|');
            
            if (regEntrada[0].Equals("TOP")) {
                
                regTop = regEntrada;
            }
            else if(regEntrada[0].Equals("DTOP")){
                    if(regTop[1].Equals(regEntrada[1])){ // se cpf eh igual
                        int total = Int32.Parse(regTop[3]);
                        total += Int32.Parse(regEntrada[4]);
                        regTop[3] = total.ToString();
                    }

                }



            }

    }
}