<%@ Control Language="C#" ClassName="AccountingSystems" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
<%@ Register Assembly="Sage.SalesLogix.Client.GroupBuilder" Namespace="Sage.SalesLogix.Client.GroupBuilder" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.PickList" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.DependencyLookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Lookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Timeline" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.HighLevelTypes" Namespace="Sage.SalesLogix.HighLevelTypes" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.Platform.WebPortal" Namespace="Sage.Platform.WebPortal.SmartParts" TagPrefix="SalesLogix" %>

<%//------------------------------------------------------------------------
//This file was generated by a tool.  Changes to this file may cause incorrect behavior and will be lost if the code is regenerated.
//------------------------------------------------------------------------ %>
  <SalesLogix:SlxGridView runat="server" ID="grdEndPoints" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 AllowPaging="true" PageSize="20" OnPageIndexChanging="grdEndPointspage_changing" EmptyTableRowText="<%$ resources: grdEndPoints.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdEndPoints_RowCommand"
 DataKeyNames="Id"
 AllowSorting="true" OnSorting="grdEndPoints_Sorting"  OnRowEditing="grdEndPoints_RowEditing"  ShowSortIcon="true" >
<Columns>
   <asp:BoundField DataField="Name"
      HeaderText="<%$ resources: grdEndPoints.ac37c91b-78f5-4453-958e-0e1da9fcc60b.ColumnHeading %>"       SortExpression="Name"    >
      </asp:BoundField>
    <asp:BoundField DataField="EndPointURL"
      HeaderText="<%$ resources: grdEndPoints.0beb5912-3fb6-4f76-b67c-4e1664856d9d.ColumnHeading %>"       SortExpression="EndPointURL"    >
      </asp:BoundField>
    <asp:BoundField DataField="UserName"
      HeaderText="<%$ resources: grdEndPoints.dd9d353c-bd4d-498e-9840-1259991e08d7.ColumnHeading %>"       SortExpression="UserName"    >
      </asp:BoundField>
    <asp:TemplateField   HeaderText="<%$ resources: grdEndPoints.69783e94-6dd7-4716-8613-e556b0e912d4.ColumnHeading %>"       SortExpression="Enabled"  >
    <itemtemplate>
   <%# FormatEntryFeedState(Eval("Enabled") ) %>
   </itemtemplate></asp:TemplateField>
  <asp:ButtonField CommandName="Edit"
  Text="<%$ resources: grdEndPoints.403f2d07-3671-4fe0-bdbf-5b724f37372f.Text %>"               >
          </asp:ButtonField>
    <asp:CommandField ShowSelectButton="true"
  SelectText="<%$ resources: grdEndPoints.dacac144-28d9-468f-9e96-d8205b85791b.Text %>" ButtonType="link"
             >
          </asp:CommandField>
 </Columns>
    <PagerSettings Mode="NumericFirstLast" FirstPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=Start_16x16" LastPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=End_16x16" />
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


protected void grdEndPointspage_changing(object sender, GridViewPageEventArgs e)
{
 grdEndPoints.PageIndex = e.NewPageIndex;
 grdEndPoints.DataBind();
}
protected void grdEndPoints_Sorting(object sender, GridViewSortEventArgs e) { }
protected void grdEndPoints_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        hqlDsEndPoints.SelectedIndex = rowIndex;
        object currentEntity = hqlDsEndPoints.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdEndPoints.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdEndPoints.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        hqlDsEndPoints.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = hqlDsEndPoints.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdEndPoints.DataKeys[rowIndex].Values)
            {
                if (val.Key.ToString() != "InstanceId")
                {
                    id = val.Value.ToString();
                }
            }
        }
        if (e.CommandName.Equals("Edit"))
        {
            if (DialogService != null)
            {
                // QFDataGrid
                            DialogService.SetSpecs(650, 885, "AddEditAccountingSystem", GetLocalResourceObject("04e1a283-eabb-465b-bc09-6ae588f52cf9.DialogTitleOverride").ToString() );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.IAppIdMapping );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
    }
    grdEndPoints_refresh();
}
    protected void grdEndPoints_refresh()
    {
        if (PageWorkItem != null) {
            Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
            if (refresher != null)
            {
                refresher.RefreshAll();
            }
            else
            {
                Response.Redirect(Request.Url.ToString());
            }
        }
    }

        protected void grdEndPoints_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdEndPoints.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
        protected String FormatEntryFeedState(object enabled)
{
	return Convert.ToBoolean(enabled) ? GetLocalResourceObject("lblEnabled.Caption").ToString() : GetLocalResourceObject("lblDisabled.Caption").ToString();
}
</script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="AccountingSystems_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnInsert"
 AlternateText="<%$ resources: btnInsert.Caption %>"  ToolTip="<%$ resources: btnInsert.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnSyncAll"
 ToolTip="<%$ resources: btnSyncAll.ToolTip %>" Visible="false" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Recurring_16x16" 
 />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=AccountingSystems&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkAccountingSystemsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="AccountingSystems" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
 </SalesLogix:SmartPartToolsContainer>



<script runat="server" type="text/C#">
/// <summary>
/// Gets or sets the role security service.
/// </summary>
/// <value>The role security service.</value>
[Sage.Platform.Application.ServiceDependency]
public Sage.Platform.Security.IRoleSecurityService RoleSecurityService { get; set; }

public override Type EntityType
{
    get { return typeof(Sage.Entity.Interfaces.IAppIdMapping); }
}

 private Sage.Platform.WebPortal.Binding.WebHqlListBindingSource _hqlDsEndPoints;
public Sage.Platform.WebPortal.Binding.WebHqlListBindingSource hqlDsEndPoints
{
    get
    {
        if (_hqlDsEndPoints == null)
        {
            _hqlDsEndPoints = new Sage.Platform.WebPortal.Binding.WebHqlListBindingSource();
            var selectFieldList = new System.Collections.Generic.List<Sage.Platform.WebPortal.Binding.HqlSelectField>();
    		    selectFieldList.Add(new Sage.Platform.WebPortal.Binding.HqlSelectField("Id", "Id"));						
        		    selectFieldList.Add(new Sage.Platform.WebPortal.Binding.HqlSelectField("Name", "Name"));						
        		    selectFieldList.Add(new Sage.Platform.WebPortal.Binding.HqlSelectField("EndPointURL", "EndPointURL"));						
        		    selectFieldList.Add(new Sage.Platform.WebPortal.Binding.HqlSelectField("UserName", "UserName"));						
        		    selectFieldList.Add(new Sage.Platform.WebPortal.Binding.HqlSelectField("Enabled", "Enabled"));						
                _hqlDsEndPoints.Select = selectFieldList;
            var parameterList = new System.Collections.Generic.List<Sage.Platform.WebPortal.Binding.HqlParameter>();
            parameterList.Add(new Sage.Platform.WebPortal.Binding.HqlParameter("appId", "EntityId"));
            _hqlDsEndPoints.Parameters = parameterList;
            _hqlDsEndPoints.From = "AppIdMapping";
            _hqlDsEndPoints.Where = "Id != :appId";
            _hqlDsEndPoints.OrderBy = "Name";
        }
        return _hqlDsEndPoints;
    }
}

void hqlDsEndPoints_OnCurrentEntitySet(object sender, EventArgs e)
{
    if (Visible)
    {
        if (BindingSource.Current != null)
        {
            hqlDsEndPoints.SourceObject = BindingSource.Current;
        }
        else
        {
            var entityContextService = PageWorkItem.Services.Get<Sage.Platform.Application.IEntityContextService>();
            if (entityContextService != null)
            {
                hqlDsEndPoints.SourceObject = entityContextService;
            }
        }
		
		
		
        _hqlDsEndPoints.BoundGrid = grdEndPoints;
    }
}
 

protected override void OnAddEntityBindings() {
       hqlDsEndPoints.Bindings.Add(new Sage.Platform.Mashups.Web.WebMashupBinding(grdEndPoints));
     
     BindingSource.OnCurrentEntitySet += new EventHandler(hqlDsEndPoints_OnCurrentEntitySet);
    
        }
       
protected void grdEndPoints_RowSelectedAction(object sender, EventArgs e) {
Sage.SalesLogix.Web.Controls.SlxGridView grid = sender as Sage.SalesLogix.Web.Controls.SlxGridView;
Sage.Entity.Interfaces.IAppIdMapping appIdMapping =
    Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IAppIdMapping>(grid.SelectedDataKey.Values["Id"]);
if (appIdMapping != null && (appIdMapping.Enabled ?? false))
{
    string jobName = appIdMapping.ExecuteSync();
    if (DialogService.DialogParameters.ContainsKey("NewSyncJobName"))
    {
        DialogService.DialogParameters.Remove("NewSyncJobName");
    }
    DialogService.DialogParameters.Add("NewSyncJobName", jobName);
    DialogService.SetSpecs(150, 450, "SyncJobConfirmation", GetLocalResourceObject("Sync_Confirmation_Title").ToString());
    DialogService.ShowDialog();
}
else
{
    throw new Sage.Platform.Application.ValidationException(
        Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(
        String.Format(GetLocalResourceObject("Error_AccountingSystem_NotEnabled").ToString(), appIdMapping.Name)));
}

}
protected void btnInsert_ClickAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("AccountingSystems.btnInsert_OnClick", methodArgs);
  Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
    if (refresher != null) {
      refresher.RefreshAll();
    }
    else {  
      Response.Redirect(Request.Url.ToString());
    }

}
protected void btnSyncAll_ClickAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IAppIdMapping>("AppIdMapping.ExecuteSyncAll", objarray);

    Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
    if (refresher != null) {
      refresher.RefreshAll();
    }
    else {  
      Response.Redirect(Request.Url.ToString());
    }

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 grdEndPoints.SelectedIndexChanged += new EventHandler(grdEndPoints_RowSelectedAction);
btnInsert.Click += new ImageClickEventHandler(btnInsert_ClickAction);
btnSyncAll.Click += new ImageClickEventHandler(btnSyncAll_ClickAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterSaveButton(btnInsert);

btnSyncAll.OnClientClick = string.Format("return confirm('{0}');", Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("btnSyncAll.ActionConfirmationMessage").ToString()));

if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (hqlDsEndPoints.Current != null) { hqlDsEndPoints.Bind(); }
 grdEndPoints.DataBind(); 
 RegisterBindingsWithClient(hqlDsEndPoints); 



}



public override Sage.Platform.Application.UI.ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
{
    ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
    
    foreach (Control c in Controls)
    {
        SmartPartToolsContainer cont = c as SmartPartToolsContainer;
        if (cont != null)
        {
            switch (cont.ToolbarLocation)
            {
                case SmartPartToolsLocation.Right:
                    foreach (Control tool in cont.Controls)
                    {
                                            tinfo.RightTools.Add(tool);
                                        }
                    break;
                case SmartPartToolsLocation.Center:
                    foreach (Control tool in cont.Controls)
                    {
                        tinfo.CenterTools.Add(tool);
                    }
                    break;
                case SmartPartToolsLocation.Left:
                    foreach (Control tool in cont.Controls)
                    {
                        tinfo.LeftTools.Add(tool);
                    }
                    break;
            }
        }
    }

        return tinfo;
}

private Sage.Platform.Controls.IEntityForm _formAdapter;

public Sage.Platform.Controls.IEntityForm FormAdapter
{
    get { return _formAdapter ?? (_formAdapter = new AccountingSystemsAdapter(this)); }
}

public class AccountingSystemsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAccountingSystems
{
    public AccountingSystemsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdEndPoints;
    public  Sage.Platform.Controls.IDataGridControl grdEndPoints
    {
        get { return FindControl(ref _grdEndPoints, "grdEndPoints"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _hqlDsEndPoints;
    public  Sage.Platform.Controls.IDataSourceControl hqlDsEndPoints
    {
        get { return FindControl(ref _hqlDsEndPoints, "hqlDsEndPoints"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnInsert;
    public  Sage.Platform.Controls.IButtonControl btnInsert
    {
        get { return FindControl(ref _btnInsert, "btnInsert"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnSyncAll;
    public  Sage.Platform.Controls.IButtonControl btnSyncAll
    {
        get { return FindControl(ref _btnSyncAll, "btnSyncAll"); }
    }

    public  void btnInsert_OnClick(System.EventArgs e)
    {
        Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
        Object[] methodArgs = new Object[] { this, e };
        lib.Execute("AccountingSystems.btnInsert_OnClick", methodArgs);
    }
}

</script>

<script type="text/javascript">
</script>
