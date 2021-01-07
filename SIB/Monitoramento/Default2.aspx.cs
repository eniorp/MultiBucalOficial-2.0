using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Monitoramento_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private void DownloadArq(string NmArqFull, string Nmarq)
    {

        FileInfo ArqInfo = new FileInfo(NmArqFull);
        Response.Clear();
        Response.AddHeader("Content-Disposition", "attachment; filename=" + Nmarq);
        Response.AddHeader("Content-Length", ArqInfo.Length.ToString());
        Response.ContentType = "application/octet-stream";
        Response.WriteFile(NmArqFull);
        Response.End();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //base.OnLoad(e);
        string url = string.Empty;// Request.QueryString["DownloadUrl"];
        if (url == null || url.Length == 0)
        {
            url = "http://lista.sv1.tv:25461/movie/eniorp@gmail.com/bfgFW43MfS/893.mp4";
        }

        //Initialize the input stream
        HttpWebRequest req = (HttpWebRequest)WebRequest.Create(url);
        HttpWebResponse resp = (HttpWebResponse)req.GetResponse();
        int bufferSize = 1;

        //Initialize the output stream
        Response.Clear();
        Response.AppendHeader("Content-Disposition:", "attachment; filename=download.jpg");
        Response.AppendHeader("Content-Length", resp.ContentLength.ToString());
        Response.ContentType = "application/download";

        //Populate the output stream
        byte[] ByteBuffer = new byte[bufferSize + 1];
        MemoryStream ms = new MemoryStream(ByteBuffer, true);
        Stream rs = req.GetResponse().GetResponseStream();
        byte[] bytes = new byte[bufferSize + 1];
        while (rs.Read(ByteBuffer, 0, ByteBuffer.Length) > 0)
        {
            Response.BinaryWrite(ms.ToArray());
            Response.Flush();
        }

        //Cleanup
        Response.End();
        ms.Close();
        ms.Dispose();
        rs.Dispose();
        ByteBuffer = null;
    }

}