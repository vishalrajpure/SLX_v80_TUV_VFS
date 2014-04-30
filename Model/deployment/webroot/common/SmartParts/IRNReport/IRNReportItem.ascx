<%@ Control Language="C#" ClassName="IRNReportItem" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdRNReportItems" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdRNReportItems_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdRNReportItems_RowEditing"  OnRowDeleting="grdRNReportItems_RowDeleting" OnRowDataBound="grdRNReportItems_RowDataBound" >
<Columns>
   <asp:BoundField DataField="Id"
      HeaderText="<%$ resources: grdRNReportItems.3e35d220-7495-4932-9cd0-ce0d02ce87bd.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Irnreportid"
      HeaderText="<%$ resources: grdRNReportItems.c02e5138-63df-4c82-aaa1-f33ca2fdd4cc.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="ItemCode"
      HeaderText="<%$ resources: grdRNReportItems.6be5de61-05fa-4ea6-a3b5-3bde7f4d0fc1.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="POItemNo"
      HeaderText="<%$ resources: grdRNReportItems.d1960573-43dc-4029-9ee2-3a62ae1ac85c.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Quantity"
      HeaderText="<%$ resources: grdRNReportItems.a0bc4d42-4b8a-40ff-8441-0871f56061a3.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
  Text="<%$ resources: grdRNReportItems.c0776ed5-51e0-4835-995f-d43a263f2711.Text %>"               >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
  Text="<%$ resources: grdRNReportItems.bcf9dd31-21f7-43c0-939e-05b895e66fd9.Text %>"                >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

                     private int _grdRNReportItemsdeleteColumnIndex = -2;
protected int grdRNReportItemsDeleteColumnIndex
{
    get
    {
        if (_grdRNReportItemsdeleteColumnIndex == -2)
        {
            int bias = (grdRNReportItems.ExpandableRows) ? 1 : 0;
            _grdRNReportItemsdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdRNReportItems.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdRNReportItemsdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdRNReportItemsdeleteColumnIndex;
    }
}

protected void grdRNReportItems_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
   
protected void grdRNReportItems_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsRNReportItems.SelectedIndex = rowIndex;
        object currentEntity = dsRNReportItems.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdRNReportItems.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdRNReportItems.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsRNReportItems.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsRNReportItems.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdRNReportItems.DataKeys[rowIndex].Values)
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
                            DialogService.SetSpecs(400, 600, "AddEditIRNReportItem", string.Empty );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.IRNReportItem );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.IIRNReport mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IIRNReport;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.IIRNReportItem childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IIRNReportItem))
                {
                    childEntity = (Sage.Entity.Interfaces.IIRNReportItem)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IIRNReportItem>(id);
            }
                if(childEntity != null)
                {
                     mainentity.IRNReportItems.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsRNReportItems.SelectedIndex = -1;
                }
            }
        }
    }
    grdRNReportItems_refresh();
}
    protected void grdRNReportItems_refresh()
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

        protected void grdRNReportItems_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdRNReportItems.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdRNReportItems_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdRNReportItems.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="IRNReportItem_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="cmdAdd"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=IRNReportItem&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkIRNReportItemHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="IRNReportItem" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IIRNReport); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsRNReportItems;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsRNReportItems
{ 
  get 
  {
    if (_dsRNReportItems == null)
    {
             _dsRNReportItems = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IIRNReportItem), 
	    EntityType              ,"IRNReportItems", System.Reflection.MemberTypes.Property);
                   _dsRNReportItems.UseSmartQuery = true;
      	   	}
 	return _dsRNReportItems;
  }
}

void dsRNReportItems_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsRNReportItems.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsRNReportItems);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsRNReportItems.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("IRNReportItems", grdRNReportItems ));
   dsRNReportItems.BindFieldNames = new String[] { "Id","Irnreportid","ItemCode","POItemNo","Quantity" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsRNReportItems_OnCurrentEntitySet);
    
    }
       
protected void cmdAdd_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditIRNReportItem", string.Empty );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IIRNReportItem); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IIRNReportItem),
    typeof(Sage.Entity.Interfaces.IIRNReport),
    typeof(Sage.Entity.Interfaces.IIRNReportItem).GetProperty(""),
    typeof(Sage.Entity.Interfaces.IIRNReport).GetProperty("IRNReportItems"));
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
if (dsRNReportItems.SourceObject == null) { dsRNReportItems.SourceObject = BindingSource.Current; }
if (dsRNReportItems.SourceObject == null) { RegisterBindingsWithClient(dsRNReportItems); }
dsRNReportItems.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new IRNReportItemAdapter(this)); }
}

public class IRNReportItemAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IIRNReportItem
{
    public IRNReportItemAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdRNReportItems;
    public  Sage.Platform.Controls.IDataGridControl grdRNReportItems
    {
        get { return FindControl(ref _grdRNReportItems, "grdRNReportItems"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsRNReportItems;
    public  Sage.Platform.Controls.IDataSourceControl dsRNReportItems
    {
        get { return FindControl(ref _dsRNReportItems, "dsRNReportItems"); }
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
