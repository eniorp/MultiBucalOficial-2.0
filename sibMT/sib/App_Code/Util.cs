using System;
using System.Collections.Generic;
using System.Globalization;

using System.Web;

/// <summary>
/// Summary description for Util
/// </summary>
public static class Util
{
    public static string so_numero(string str)
    {
        string strAux = "";
        for (int i = 0; i < str.Length; i++)
        {

            switch (str[i])
            {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9': strAux += str[i]; break;
            }
        }
        return strAux;
    }
    public static bool eh_numero(string str)
    {
        try
        {
            decimal.Parse(str);
        }
        catch (Exception)
        {
            return false;

        }
        return true;
    }


}