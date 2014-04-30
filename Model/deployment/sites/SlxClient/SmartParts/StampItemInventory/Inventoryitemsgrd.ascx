<%@ Control Language="C#" ClassName="Inventoryitemsgrd" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdStampItemInventories" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
EmptyTableRowText="<%$ resources: grdStampItemInventories.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True" >
<Columns>
   <asp:BoundField DataField="Description"
      HeaderText="<%$ resources: grdStampItemInventories.36255689-b686-4ac8-baaf-8866a2e99975.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="QuantityAllocated"
      HeaderText="<%$ resources: grdStampItemInventories.7d5886d1-9d81-4c19-964e-64b2b1e5fed3.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="QuantityBalance"
      HeaderText="<%$ resources: grdStampItemInventories.2bf875e6-033b-45c9-ae76-cd442fb445d5.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Type"
      HeaderText="<%$ resources: grdStampItemInventories.bf8fe37b-c416-45f4-91df-7938a491ec42.ColumnHeading %>"          >
      </asp:BoundField>
 </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


</script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="Inventoryitemsgrd_RTools" ToolbarLocation="right">
    <asp:HyperLink runat="server" ID="QFLink"   ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"    ToolTip="<%$ resources: QFLink.ToolTip %>"    NavigateUrl="~/StampInventoryItem1.aspx?modeid=Insert"     />

  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=Inventoryitemsgrd&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkInventoryitemsgrdHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="Inventoryitemsgrd" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IStampItemInventory); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsStampItemInventories;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsStampItemInventories
{ 
  get 
  {
    if (_dsStampItemInventories == null)
    {
             _dsStampItemInventories = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Object), 
	    EntityType              ,"Id", System.Reflection.MemberTypes.Property);
                   _dsStampItemInventories.UseSmartQuery = true;
      	   	}
 	return _dsStampItemInventories;
  }
}

void dsStampItemInventories_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsStampItemInventories.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsStampItemInventories);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsStampItemInventories.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("Id", grdStampItemInventories ));
   dsStampItemInventories.BindFieldNames = new String[] { "Id","Description","QuantityAllocated","QuantityBalance","Type" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsStampItemInventories_OnCurrentEntitySet);
    
    }
       

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 
}

protected override void OnFormBound()
{
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dsStampItemInventories.SourceObject == null) { dsStampItemInventories.SourceObject = BindingSource.Current; }
if (dsStampItemInventories.SourceObject == null) { RegisterBindingsWithClient(dsStampItemInventories); }
dsStampItemInventories.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new InventoryitemsgrdAdapter(this)); }
}

public class InventoryitemsgrdAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IInventoryitemsgrd
{
    public InventoryitemsgrdAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdStampItemInventories;
    public  Sage.Platform.Controls.IDataGridControl grdStampItemInventories
    {
        get { return FindControl(ref _grdStampItemInventories, "grdStampItemInventories"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsStampItemInventories;
    public  Sage.Platform.Controls.IDataSourceControl dsStampItemInventories
    {
        get { return FindControl(ref _dsStampItemInventories, "dsStampItemInventories"); }
    }
    private Sage.Platform.Controls.ILinkControl _QFLink;
    public  Sage.Platform.Controls.ILinkControl QFLink
    {
        get { return FindControl(ref _QFLink, "QFLink"); }
    }

}

</script>

<script type="text/javascript">
</script>