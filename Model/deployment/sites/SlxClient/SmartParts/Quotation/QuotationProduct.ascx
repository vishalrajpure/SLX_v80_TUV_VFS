<%@ Control Language="C#" ClassName="QuotationProduct" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdQuotationProducts" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdQuotationProducts_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdQuotationProducts_RowEditing" >
<Columns>
 <asp:ButtonField CommandName="Edit"
  Text="<%$ resources: grdQuotationProducts.b300cfa9-31b7-477f-af0c-e950b52c632f.Text %>"        HeaderText="<%$ resources: grdQuotationProducts.b300cfa9-31b7-477f-af0c-e950b52c632f.ColumnHeading %>"        >
          </asp:ButtonField>
      <asp:BoundField DataField="Product.Criticality"
      HeaderText="<%$ resources: grdQuotationProducts.459faacb-1462-44fa-8b28-bd9c5dbcabce.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Product.Family"
      HeaderText="<%$ resources: grdQuotationProducts.5c052549-887b-4013-b0d8-38144f1e076e.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Product.Type"
      HeaderText="<%$ resources: grdQuotationProducts.8ab9fd37-649f-42a6-b260-7b8464f232e3.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Product.Name"
      HeaderText="<%$ resources: grdQuotationProducts.5b5d0c6d-6a66-4382-babe-6c7d9efe4684.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="INSPECTIONTYPE"
      HeaderText="<%$ resources: grdQuotationProducts.968f0244-a051-42a4-8533-63615bfd6e74.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="MANDAYREQUIRED"
      HeaderText="<%$ resources: grdQuotationProducts.353a8171-fd57-4f47-af5a-4f944c4711fc.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Product.Price"
      HeaderText="<%$ resources: grdQuotationProducts.45c35e49-4af1-4135-abaf-2fa2b669b324.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="DISCOUNT"
      HeaderText="<%$ resources: grdQuotationProducts.2073c9c4-ba5f-41a7-83cc-44a8fb40ac24.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="CALCPRICE"
      HeaderText="<%$ resources: grdQuotationProducts.99ec5b24-f3ed-4107-9ff8-3f88c71ad8bf.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="QUANTITY"
      HeaderText="<%$ resources: grdQuotationProducts.acfddc56-0ab3-4eb0-acf8-3750b1b400b3.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="EXTENDEDPRICE"
      HeaderText="<%$ resources: grdQuotationProducts.eacadd20-6551-4781-aaf4-7c92590fb63d.ColumnHeading %>"          >
      </asp:BoundField>
 </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


protected void grdQuotationProducts_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsQuotationProducts.SelectedIndex = rowIndex;
        object currentEntity = dsQuotationProducts.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdQuotationProducts.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdQuotationProducts.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsQuotationProducts.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsQuotationProducts.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdQuotationProducts.DataKeys[rowIndex].Values)
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
                            DialogService.SetSpecs(400, 600, "AddEditQuotationProduct", GetLocalResourceObject("7a67c24c-b62f-42b7-8c80-02a10e7e6fdc.DialogTitleOverride").ToString() );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.IQuotationProduct );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
    }
    grdQuotationProducts_refresh();
}
    protected void grdQuotationProducts_refresh()
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

        protected void grdQuotationProducts_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdQuotationProducts.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
        </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="QuotationProduct_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnAdd"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=QuotationProduct&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkQuotationProductHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="QuotationProduct" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IQuotation); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsQuotationProducts;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsQuotationProducts
{ 
  get 
  {
    if (_dsQuotationProducts == null)
    {
             _dsQuotationProducts = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IQuotationProduct), 
	    EntityType              ,"Products", System.Reflection.MemberTypes.Property);
                   _dsQuotationProducts.UseSmartQuery = true;
      	   	}
 	return _dsQuotationProducts;
  }
}

void dsQuotationProducts_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsQuotationProducts.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsQuotationProducts);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsQuotationProducts.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("QuotationProducts", grdQuotationProducts ));
   dsQuotationProducts.BindFieldNames = new String[] { "Id","Product.Criticality","Product.Family","Product.Type","Product.Name","INSPECTIONTYPE","MANDAYREQUIRED","Product.Price","DISCOUNT","CALCPRICE","QUANTITY","EXTENDEDPRICE" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsQuotationProducts_OnCurrentEntitySet);
    
    }
       
protected void btnAdd_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(800, 800, "AddEditQuotationProduct", GetLocalResourceObject("f91cf592-aec5-4ef5-8c8f-5f33de2e4147.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IQuotationProduct); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IQuotationProduct),
    typeof(Sage.Entity.Interfaces.IQuotation),
    typeof(Sage.Entity.Interfaces.IQuotationProduct).GetProperty("Quotation"),
    typeof(Sage.Entity.Interfaces.IQuotation).GetProperty("Products"));
  DialogService.ShowDialog();
}

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 btnAdd.Click += new ImageClickEventHandler(btnAdd_ClickAction);


}

protected override void OnFormBound()
{
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dsQuotationProducts.SourceObject == null) { dsQuotationProducts.SourceObject = BindingSource.Current; }
if (dsQuotationProducts.SourceObject == null) { RegisterBindingsWithClient(dsQuotationProducts); }
dsQuotationProducts.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new QuotationProductAdapter(this)); }
}

public class QuotationProductAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IQuotationProduct
{
    public QuotationProductAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdQuotationProducts;
    public  Sage.Platform.Controls.IDataGridControl grdQuotationProducts
    {
        get { return FindControl(ref _grdQuotationProducts, "grdQuotationProducts"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsQuotationProducts;
    public  Sage.Platform.Controls.IDataSourceControl dsQuotationProducts
    {
        get { return FindControl(ref _dsQuotationProducts, "dsQuotationProducts"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnAdd;
    public  Sage.Platform.Controls.IButtonControl btnAdd
    {
        get { return FindControl(ref _btnAdd, "btnAdd"); }
    }

}

</script>

<script type="text/javascript">
</script>
