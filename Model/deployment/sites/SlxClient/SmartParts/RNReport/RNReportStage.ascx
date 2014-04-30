<%@ Control Language="C#" ClassName="RNReportStage" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdRNReportStages" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdRNReportStages_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdRNReportStages_RowEditing"  OnRowDeleting="grdRNReportStages_RowDeleting" OnRowDataBound="grdRNReportStages_RowDataBound" >
<Columns>
   <asp:BoundField DataField="SerialNumber"
      HeaderText="<%$ resources: grdRNReportStages.f5e8d2e9-ef37-41e0-aee9-2e0b1fb8272d.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="ProductStage"
      HeaderText="<%$ resources: grdRNReportStages.4a0854f7-5044-4962-8977-644cea55adab.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Status"
      HeaderText="<%$ resources: grdRNReportStages.0f3bf30d-653b-4520-bf8f-729b36c0b1e0.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
  Text="<%$ resources: grdRNReportStages.b49246fb-012d-4a1e-8487-ba76fa8ff0da.Text %>"        HeaderText="<%$ resources: grdRNReportStages.b49246fb-012d-4a1e-8487-ba76fa8ff0da.ColumnHeading %>"        >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
  Text="<%$ resources: grdRNReportStages.b88b62d3-fb43-4969-8186-d933d79dc2c0.Text %>"         HeaderText="<%$ resources: grdRNReportStages.b88b62d3-fb43-4969-8186-d933d79dc2c0.ColumnHeading %>"        >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

               private int _grdRNReportStagesdeleteColumnIndex = -2;
protected int grdRNReportStagesDeleteColumnIndex
{
    get
    {
        if (_grdRNReportStagesdeleteColumnIndex == -2)
        {
            int bias = (grdRNReportStages.ExpandableRows) ? 1 : 0;
            _grdRNReportStagesdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdRNReportStages.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdRNReportStagesdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdRNReportStagesdeleteColumnIndex;
    }
}

protected void grdRNReportStages_RowDataBound(object sender, GridViewRowEventArgs e)
{
    if (e.Row.RowType == DataControlRowType.DataRow)
    {
        if ((grdRNReportStagesDeleteColumnIndex >= 0) && (grdRNReportStagesDeleteColumnIndex < e.Row.Cells.Count))
        {
            TableCell cell = e.Row.Cells[grdRNReportStagesDeleteColumnIndex];
            foreach (Control c in cell.Controls)
            {
                LinkButton btn = c as LinkButton;
                if (btn != null)
                {
                    btn.Attributes.Add("onclick", "javascript: return confirm('" + Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("grdRNReportStages.b88b62d3-fb43-4969-8186-d933d79dc2c0.ConfirmationMessage").ToString()) + "');");
                    return;
                }
            }
        }
    }
}
   
protected void grdRNReportStages_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsRNReportStages.SelectedIndex = rowIndex;
        object currentEntity = dsRNReportStages.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdRNReportStages.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdRNReportStages.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsRNReportStages.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsRNReportStages.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdRNReportStages.DataKeys[rowIndex].Values)
            {
                if (val.Key.ToString() != "InstanceId")
                {
                    id = val.Value.ToString();
                }
            }
        }
        if (e.CommandName.Equals("Edit"))
        {
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.IRNReport mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IRNReport;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.IRNReportStage childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IRNReportStage))
                {
                    childEntity = (Sage.Entity.Interfaces.IRNReportStage)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IRNReportStage>(id);
            }
                if(childEntity != null)
                {
                     mainentity.RNReportStages.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsRNReportStages.SelectedIndex = -1;
                }
            }
        }
    }
    grdRNReportStages_refresh();
}
    protected void grdRNReportStages_refresh()
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

        protected void grdRNReportStages_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdRNReportStages.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdRNReportStages_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdRNReportStages.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="RNReportStage_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="cmdAdd"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=RNReportStage&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkRNReportStageHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="RNReportStage" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IRNReport); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsRNReportStages;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsRNReportStages
{ 
  get 
  {
    if (_dsRNReportStages == null)
    {
             _dsRNReportStages = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IRNReportStage), 
	    EntityType              ,"RNReportStages", System.Reflection.MemberTypes.Property);
                   _dsRNReportStages.UseSmartQuery = true;
      	   	}
 	return _dsRNReportStages;
  }
}

void dsRNReportStages_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsRNReportStages.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsRNReportStages);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsRNReportStages.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("RNReportStages", grdRNReportStages ));
   dsRNReportStages.BindFieldNames = new String[] { "Id","SerialNumber","ProductStage","Status" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsRNReportStages_OnCurrentEntitySet);
    
    }
       
protected void cmdAdd_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditRNStage", GetLocalResourceObject("dabafc28-8700-4a5b-983b-8b6026ec9d61.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IRNReportStage); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IRNReportStage),
    typeof(Sage.Entity.Interfaces.IRNReport),
    typeof(Sage.Entity.Interfaces.IRNReportStage).GetProperty("RNReport"),
    typeof(Sage.Entity.Interfaces.IRNReport).GetProperty("RNReportStages"));
  DialogService.ShowDialog();
}

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 cmdAdd.Click += new ImageClickEventHandler(cmdAdd_ClickAction);


}

protected override void OnFormBound()
{
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dsRNReportStages.SourceObject == null) { dsRNReportStages.SourceObject = BindingSource.Current; }
if (dsRNReportStages.SourceObject == null) { RegisterBindingsWithClient(dsRNReportStages); }
dsRNReportStages.Bind();



}



public override Sage.Platform.Application.UI.ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
{
    ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
        if (BindingSource != null)
    {
        if (BindingSource.Current != null)
        {
            tinfo.Description = BindingSource.Current.ToString();
            tinfo.Title = BindingSource.Current.ToString();
        }
    }
    
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
    get { return _formAdapter ?? (_formAdapter = new RNReportStageAdapter(this)); }
}

public class RNReportStageAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IRNReportStage
{
    public RNReportStageAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdRNReportStages;
    public  Sage.Platform.Controls.IDataGridControl grdRNReportStages
    {
        get { return FindControl(ref _grdRNReportStages, "grdRNReportStages"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsRNReportStages;
    public  Sage.Platform.Controls.IDataSourceControl dsRNReportStages
    {
        get { return FindControl(ref _dsRNReportStages, "dsRNReportStages"); }
    }
    private Sage.Platform.Controls.IButtonControl _cmdAdd;
    public  Sage.Platform.Controls.IButtonControl cmdAdd
    {
        get { return FindControl(ref _cmdAdd, "cmdAdd"); }
    }

}

</script>

<script type="text/javascript">
</script>