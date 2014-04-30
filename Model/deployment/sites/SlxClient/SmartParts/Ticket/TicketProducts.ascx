<%@ Control Language="C#" ClassName="TicketProducts" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdTicketProducts" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdTicketProducts_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdTicketProducts_RowEditing"  OnRowDeleting="grdTicketProducts_RowDeleting" OnRowDataBound="grdTicketProducts_RowDataBound" >
<Columns>
   <asp:BoundField DataField="ProductID"
      HeaderText="<%$ resources: grdTicketProducts.c2d30730-977a-4702-9b9a-0372f7ca0293.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Description"
      HeaderText="<%$ resources: grdTicketProducts.ba8c35f1-c8e1-4ab7-a397-78aff94abf32.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Quantity"
      HeaderText="<%$ resources: grdTicketProducts.5be401ea-e06f-49a0-a978-3c2d0122298d.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
          HeaderText="<%$ resources: grdTicketProducts.d9156029-4c3e-4314-be20-1b66ecaeb768.ColumnHeading %>"        >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
          HeaderText="<%$ resources: grdTicketProducts.90cd4bbd-b715-4f90-a46f-8b500a11aaac.ColumnHeading %>"        >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

               private int _grdTicketProductsdeleteColumnIndex = -2;
protected int grdTicketProductsDeleteColumnIndex
{
    get
    {
        if (_grdTicketProductsdeleteColumnIndex == -2)
        {
            int bias = (grdTicketProducts.ExpandableRows) ? 1 : 0;
            _grdTicketProductsdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdTicketProducts.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdTicketProductsdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdTicketProductsdeleteColumnIndex;
    }
}

protected void grdTicketProducts_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
   
protected void grdTicketProducts_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsTicketProducts.SelectedIndex = rowIndex;
        object currentEntity = dsTicketProducts.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdTicketProducts.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdTicketProducts.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsTicketProducts.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsTicketProducts.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdTicketProducts.DataKeys[rowIndex].Values)
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
                            DialogService.SetSpecs(400, 600, "AddEditProduct", string.Empty );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.ITicketProduct );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.ITicket mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.ITicket;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.ITicketProduct childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.ITicketProduct))
                {
                    childEntity = (Sage.Entity.Interfaces.ITicketProduct)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.ITicketProduct>(id);
            }
                if(childEntity != null)
                {
                     mainentity.TicketProducts.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsTicketProducts.SelectedIndex = -1;
                }
            }
        }
    }
    grdTicketProducts_refresh();
}
    protected void grdTicketProducts_refresh()
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

        protected void grdTicketProducts_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdTicketProducts.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdTicketProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdTicketProducts.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="TicketProducts_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="QFButton"
 ToolTip="<%$ resources: QFButton.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=TicketProducts&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkTicketProductsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="TicketProducts" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.ITicket); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsTicketProducts;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsTicketProducts
{ 
  get 
  {
    if (_dsTicketProducts == null)
    {
             _dsTicketProducts = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.ITicketProduct), 
	    EntityType              ,"TicketProducts", System.Reflection.MemberTypes.Property);
                   _dsTicketProducts.UseSmartQuery = true;
      	   	}
 	return _dsTicketProducts;
  }
}

void dsTicketProducts_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsTicketProducts.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsTicketProducts);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsTicketProducts.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("TicketProducts", grdTicketProducts ));
   dsTicketProducts.BindFieldNames = new String[] { "Id","ProductID","Description","Quantity" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsTicketProducts_OnCurrentEntitySet);
    
    }
       
protected void QFButton_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditProduct", string.Empty );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.ITicketProduct); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.ITicketProduct),
    typeof(Sage.Entity.Interfaces.ITicket),
    typeof(Sage.Entity.Interfaces.ITicketProduct).GetProperty("Call"),
    typeof(Sage.Entity.Interfaces.ITicket).GetProperty("TicketProducts"));
  DialogService.ShowDialog();
}

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 QFButton.Click += new ImageClickEventHandler(QFButton_ClickAction);


}

protected override void OnFormBound()
{
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dsTicketProducts.SourceObject == null) { dsTicketProducts.SourceObject = BindingSource.Current; }
if (dsTicketProducts.SourceObject == null) { RegisterBindingsWithClient(dsTicketProducts); }
dsTicketProducts.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new TicketProductsAdapter(this)); }
}

public class TicketProductsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ITicketProducts
{
    public TicketProductsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdTicketProducts;
    public  Sage.Platform.Controls.IDataGridControl grdTicketProducts
    {
        get { return FindControl(ref _grdTicketProducts, "grdTicketProducts"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsTicketProducts;
    public  Sage.Platform.Controls.IDataSourceControl dsTicketProducts
    {
        get { return FindControl(ref _dsTicketProducts, "dsTicketProducts"); }
    }
    private Sage.Platform.Controls.IButtonControl _QFButton;
    public  Sage.Platform.Controls.IButtonControl QFButton
    {
        get { return FindControl(ref _QFButton, "QFButton"); }
    }

}

</script>

<script type="text/javascript">
</script>