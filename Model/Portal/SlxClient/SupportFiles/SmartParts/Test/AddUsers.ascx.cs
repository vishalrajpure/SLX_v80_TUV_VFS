using System;
using System.Text;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sage.Platform;
using Sage.Platform.WebPortal.SmartParts;
using Sage.Platform.Application.UI;
using Sage.Entity.Interfaces;
using Sage.Platform.Application;
using Sage.SalesLogix.Security;
using Sage.SalesLogix.Client.GroupBuilder;
using Sage.Platform.Security;
using System.Data.OleDb;
using System.Data;
using System.IO;
using System.Web;

public partial class AddUsers : Sage.Platform.WebPortal.SmartParts.SmartPartInfoProvider
{
    //Sage.Platform.WebPortal.WebPortalPage

    string _connectionString;
    //private IUser _CurrentUser;
    private SLXUserService m_SLXUserService;

    //private IUser CurrentUser
    //{
    //    get
    //    {
    //        if (_CurrentUser == null)
    //            _CurrentUser = m_SLXUserService.GetUser();
    //        return _CurrentUser;
    //    }
    //}
    private IUserManagementService _ums;
    public IUserManagementService UserManagementService
    {
        get { return _ums ?? (_ums = ApplicationContext.Current.Services.Get<IUserManagementService>(true)); }
    }

    /// <summary>
    /// Gets the smart part info.
    /// </summary>
    /// <param name="smartPartInfoType">Type of the smart part info.</param>
    /// <returns></returns>
    public override ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
    {
        ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
        foreach (Control c in AddUsers_RTools.Controls)
        {
            tinfo.RightTools.Add(c);
        }
        return tinfo;
    }

    /// <summary>
    /// Raises the <see cref="E:PreRender"/> event.
    /// </summary>
    /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
    protected override void OnPreRender(EventArgs e)
    {
        _connectionString = GetSLXConnectionString();

        m_SLXUserService = ApplicationContext.Current.Services.Get<IUserService>() as SLXUserService;

        LoadView();

        DisplayImage("1");
    }


    private byte[] ConvertImageToByteArray(System.Drawing.Image imageToConvert, System.Drawing.Imaging.ImageFormat formatOfImage)
    {
        byte[] Ret;
        try
        {
            using (MemoryStream ms = new MemoryStream())
            {
                imageToConvert.Save(ms, formatOfImage);
                Ret = ms.ToArray();
            }
        }
        catch (Exception) { throw; }
        return Ret;
    }

    public string GetSLXConnectionString()
    {
        string result = string.Empty;
        Sage.Platform.Data.IDataService service = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Data.IDataService>();
        return service.GetConnectionString();
    }

    protected void UserType_OnTextChanged(object sender, EventArgs e)
    {
        //if (lbxUserType.SelectedValue == "C")
        //{
        //}
    }

    /// <summary>
    /// Handles the Click event of the ok button control.
    /// </summary>
    /// <param name="sender">The source of the event.</param>
    /// <param name="e">The <see cref="System.EventArgs"/> instance containing the event data.</param>
    protected void OK_Click(object sender, EventArgs e)
    {
        
    }

    protected void CANCEL_Click(object sender, EventArgs e)
    {
        Response.Redirect(string.Format("~/{0}.aspx?", "User"), false);
    }

    protected void RefreshLic_Click(object sender, EventArgs e)
    {
        //UserManagementService.ClearLicenseCache();
    }

    protected override void OnWireEventHandlers()
    {
        base.OnWireEventHandlers();
        //lueAddUser.LookupResultValueChanged += lueAddUser_LookupResultValueChanged;
        btnSubmit.Click += new EventHandler(btnSubmit_Click);
    }

    private void LoadView()
    {
        
        string QueryObj;
        QueryObj = "select   s.FIRSTNAME+' '+s.Lastname as 'Surveyor',  SUM(isnull(sd.QUANTITYALLOCATED ,0))as 'Allocated Qty'  from surveyorSTAMPDISTRIBUTION sd right join SURVEYOR s  on sd.SURVEYORID =s.SURVEYORID  group by sd.SURVEYORID ,s.FIRSTNAME ,s.Lastname ";



        OleDbConnection conObj = new OleDbConnection(_connectionString);
        OleDbDataAdapter dataAdapterObj = new OleDbDataAdapter(QueryObj, conObj);

        System.Data.DataTable dt = new System.Data.DataTable();
        dataAdapterObj.Fill(dt);

        DataView dv = dt.DefaultView;




        gvstamp.DataSource = dv;
        gvstamp.DataBind();
    }




    protected void btnSubmit_Click(object sender, EventArgs e)
    {
         System.Drawing.Image imag = System.Drawing.Image.FromStream(flImage.PostedFile.InputStream);
        System.Data.SqlClient.SqlConnection conn = null;
        try
        {
            try
            {
                conn = new System.Data.SqlClient.SqlConnection("server=SAGECRMSRV;database=SLX_v8.0_TUVDev;UID=sa;PWD=SLXMa$t3r;Timeout=0;pooling='true'; Max Pool Size=200000;MultipleActiveResultSets=true");
                conn.Open();
                System.Data.SqlClient.SqlCommand insertCommand = new System.Data.SqlClient.SqlCommand("Insert into sysdba.[msg] (msgid, pic1) Values (2, @Pic)", conn);
                insertCommand.Parameters.Add("Pic", SqlDbType.Image, 0).Value = ConvertImageToByteArray(imag, System.Drawing.Imaging.ImageFormat.Jpeg);
                int queryResult = insertCommand.ExecuteNonQuery();
                if (queryResult == 1)
                    lblRes.Text = "msg record Created Successfully";
            }
            catch (Exception ex)
            {
                lblRes.Text = "Error: " + ex.Message;
            }
        }
        finally
        {
            if (conn != null)
                conn.Close();
        }
      
    }

    protected void DisplayImage(string id)
    {
        //HttpContext context = HttpContext.Current;

        //System.Data.SqlClient.SqlDataReader rdr = null;
        //System.Data.SqlClient.SqlConnection conn = null;
        //System.Data.SqlClient.SqlCommand selcmd = null;

        //try
        //{
        //    conn = new System.Data.SqlClient.SqlConnection("server=SAGECRMSRV;database=SLX_v8.0_TUVDev;UID=sa;PWD=SLXMa$t3r;Timeout=0;pooling='true'; Max Pool Size=200000;MultipleActiveResultSets=true");
        //    selcmd = new System.Data.SqlClient.SqlCommand("select pic1 from sysdba.msg where msgid=" + id, conn);
        //    conn.Open();
        //    rdr = selcmd.ExecuteReader();
        //    while (rdr.Read())
        //    {
        //        context.Response.ContentType = "image/jpg";
        //        context.Response.BinaryWrite((byte[])rdr["pic1"]);
        //    }
           

        //    if (rdr != null)
        //        rdr.Close();
        //}
        //finally
        //{
        //    if (conn != null)
        //        conn.Close();
        //}

        Image1.ImageUrl = "~/SmartParts/Test/Handler.ashx?imgid=1";
        
    }
}