<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;

public class Handler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        System.Data.SqlClient.SqlDataReader rdr = null;
        System.Data.SqlClient.SqlConnection conn = null;
        System.Data.SqlClient.SqlCommand selcmd = null;
        try
        {
            conn = new System.Data.SqlClient.SqlConnection("server=SAGECRMSRV;database=SLX_v8.0_TUVDev;UID=sa;PWD=SLXMa$t3r;Timeout=0;pooling='true'; Max Pool Size=200000;MultipleActiveResultSets=true");
            selcmd = new System.Data.SqlClient.SqlCommand("select pic1 from sysdba.msg where msgid=" + context.Request.QueryString["imgid"], conn);
            conn.Open();
            rdr = selcmd.ExecuteReader();
            while (rdr.Read())
            {
                context.Response.ContentType = "image/jpg";
                context.Response.BinaryWrite((byte[])rdr["pic1"]);
            }
            if (rdr != null)
                rdr.Close();
        }
        finally
        {
            if (conn != null)
                conn.Close();
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}