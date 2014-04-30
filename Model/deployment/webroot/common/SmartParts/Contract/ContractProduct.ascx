<%@ Control Language="C#" ClassName="ContractProduct" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdContractProductItems" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdContractProductItems_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdContractProductItems_RowEditing"  OnRowDeleting="grdContractProductItems_RowDeleting" OnRowDataBound="grdContractProductItems_RowDataBound" >
<Columns>
   <asp:BoundField DataField="Discount"
      HeaderText="<%$ resources: grdContractProductItems.b1878d9b-fe7a-4eb1-b2c6-c2529df879f1.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Family"
      HeaderText="<%$ resources: grdContractProductItems.4e417ce6-1bf6-4394-8a60-460d7535e629.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Price"
      HeaderText="<%$ resources: grdContractProductItems.a9c980cc-ecec-4458-bd96-72c80f501ae1.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Product"
      HeaderText="<%$ resources: grdContractProductItems.deca0aa0-0f20-4ca9-a611-d9f5668ce76f.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
                 >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
                 >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

                  private int _grdContractProductItemsdeleteColumnIndex = -2;
protected int grdContractProductItemsDeleteColumnIndex
{
    get
    {
        if (_grdContractProductItemsdeleteColumnIndex == -2)
        {
            int bias = (grdContractProductItems.ExpandableRows) ? 1 : 0;
            _grdContractProductItemsdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdContractProductItems.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdContractProductItemsdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdContractProductItemsdeleteColumnIndex;
    }
}

protected void grdContractProductItems_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
   
protected void grdContractProductItems_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsContractProductItems.SelectedIndex = rowIndex;
        object currentEntity = dsContractProductItems.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdContractProductItems.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdContractProductItems.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsContractProductItems.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsContractProductItems.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdContractProductItems.DataKeys[rowIndex].Values)
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
            Sage.Entity.Interfaces.IContract mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IContract;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.IContractProductItem childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IContractProductItem))
                {
                    childEntity = (Sage.Entity.Interfaces.IContractProductItem)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IContractProductItem>(id);
            }
                if(childEntity != null)
                {
                     mainentity.ContractProductItems.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsContractProductItems.SelectedIndex = -1;
                }
            }
        }
    }
    grdContractProductItems_refresh();
}
    protected void grdContractProductItems_refresh()
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

        protected void grdContractProductItems_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdContractProductItems.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdContractProductItems_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdContractProductItems.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="ContractProduct_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=ContractProduct&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkContractProductHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="ContractProduct" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IContract); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsContractProductItems;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsContractProductItems
{ 
  get 
  {
    if (_dsContractProductItems == null)
    {
             _dsContractProductItems = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IContractProductItem), 
	    EntityType              ,"ContractProductItems", System.Reflection.MemberTypes.Property);
                   _dsContractProductItems.UseSmartQuery = true;
      	   	}
 	return _dsContractProductItems;
  }
}

void dsContractProductItems_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsContractProductItems.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsContractProductItems);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsContractProductItems.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("ContractProductItems", grdContractProductItems ));
   dsContractProductItems.BindFieldNames = new String[] { "Id","Discount","Family","Price","Product" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsContractProductItems_OnCurrentEntitySet);
    
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
if (dsContractProductItems.SourceObject == null) { dsContractProductItems.SourceObject = BindingSource.Current; }
if (dsContractProductItems.SourceObject == null) { RegisterBindingsWithClient(dsContractProductItems); }
dsContractProductItems.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new ContractProductAdapter(this)); }
}

public class ContractProductAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IContractProduct
{
    public ContractProductAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdContractProductItems;
    public  Sage.Platform.Controls.IDataGridControl grdContractProductItems
    {
        get { return FindControl(ref _grdContractProductItems, "grdContractProductItems"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsContractProductItems;
    public  Sage.Platform.Controls.IDataSourceControl dsContractProductItems
    {
        get { return FindControl(ref _dsContractProductItems, "dsContractProductItems"); }
    }

}

</script>

<script type="text/javascript">
</script>