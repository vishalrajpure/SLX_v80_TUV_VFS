using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Sage.Platform.Application;
using Sage.Platform.Application.UI;
using Sage.Platform.NamedQueries;
using Sage.SalesLogix.Security;
using System.Data.OleDb;
using Sage.Entity.Interfaces;
using Sage.Platform.Security;

public partial class SmartParts_StampItems_Custom_Pages_stampdistributionl : System.Web.UI.UserControl
{

    string _connectionString;
    private IUser _CurrentUser;
    private SLXUserService m_SLXUserService;

    private IUser CurrentUser
    {
        get
        {
            if (_CurrentUser == null)
                _CurrentUser = m_SLXUserService.GetUser();
            return _CurrentUser;
        }
    }
    protected void Page_Init(object sender, EventArgs e)
    {
        _connectionString = GetSLXConnectionString(); 

        m_SLXUserService = ApplicationContext.Current.Services.Get<IUserService>() as SLXUserService;
    }
    public string GetSLXConnectionString()
    {
        string result = string.Empty;
        Sage.Platform.Data.IDataService service = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Data.IDataService>();
        return service.GetConnectionString();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            LoadGridviewData();
        
        }
    }


    private void LoadGridviewData()
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
}