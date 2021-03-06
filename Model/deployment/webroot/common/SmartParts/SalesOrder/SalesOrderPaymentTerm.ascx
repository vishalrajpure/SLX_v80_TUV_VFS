<%@ Control Language="C#" ClassName="SalesOrderPaymentTerm" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdSalesOrderPaymentTerms" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdSalesOrderPaymentTerms_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdSalesOrderPaymentTerms_RowEditing"  OnRowDeleting="grdSalesOrderPaymentTerms_RowDeleting" OnRowDataBound="grdSalesOrderPaymentTerms_RowDataBound" >
<Columns>
   <asp:BoundField DataField="Description"
      HeaderText="<%$ resources: grdSalesOrderPaymentTerms.ebebfbde-e1ea-44d8-8780-067999714e88.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
  Text="<%$ resources: grdSalesOrderPaymentTerms.84a47597-b2cf-4049-9382-0dff121f0869.Text %>"        HeaderText="<%$ resources: grdSalesOrderPaymentTerms.84a47597-b2cf-4049-9382-0dff121f0869.ColumnHeading %>"        >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
  Text="<%$ resources: grdSalesOrderPaymentTerms.41277505-9c9e-403f-bbc1-ccab1505ca74.Text %>"         HeaderText="<%$ resources: grdSalesOrderPaymentTerms.41277505-9c9e-403f-bbc1-ccab1505ca74.ColumnHeading %>"        >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

         private int _grdSalesOrderPaymentTermsdeleteColumnIndex = -2;
protected int grdSalesOrderPaymentTermsDeleteColumnIndex
{
    get
    {
        if (_grdSalesOrderPaymentTermsdeleteColumnIndex == -2)
        {
            int bias = (grdSalesOrderPaymentTerms.ExpandableRows) ? 1 : 0;
            _grdSalesOrderPaymentTermsdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdSalesOrderPaymentTerms.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdSalesOrderPaymentTermsdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdSalesOrderPaymentTermsdeleteColumnIndex;
    }
}

protected void grdSalesOrderPaymentTerms_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
   
protected void grdSalesOrderPaymentTerms_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsSalesOrderPaymentTerms.SelectedIndex = rowIndex;
        object currentEntity = dsSalesOrderPaymentTerms.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdSalesOrderPaymentTerms.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdSalesOrderPaymentTerms.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsSalesOrderPaymentTerms.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsSalesOrderPaymentTerms.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdSalesOrderPaymentTerms.DataKeys[rowIndex].Values)
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
                            DialogService.SetSpecs(400, 600, "AddEditSaledOrderPaymentTerm", GetLocalResourceObject("8522dd50-6adc-4fad-99c1-23479748d949.DialogTitleOverride").ToString() );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.ISalesOrderPaymentTerm );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.ISalesOrder mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.ISalesOrder;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.ISalesOrderPaymentTerm childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.ISalesOrderPaymentTerm))
                {
                    childEntity = (Sage.Entity.Interfaces.ISalesOrderPaymentTerm)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.ISalesOrderPaymentTerm>(id);
            }
                if(childEntity != null)
                {
                     mainentity.SalesOrderPaymentTerms.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsSalesOrderPaymentTerms.SelectedIndex = -1;
                }
            }
        }
    }
    grdSalesOrderPaymentTerms_refresh();
}
    protected void grdSalesOrderPaymentTerms_refresh()
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

        protected void grdSalesOrderPaymentTerms_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdSalesOrderPaymentTerms.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdSalesOrderPaymentTerms_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdSalesOrderPaymentTerms.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="SalesOrderPaymentTerm_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnAdd"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=SalesOrderPaymentTerm&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkSalesOrderPaymentTermHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="SalesOrderPaymentTerm" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.ISalesOrder); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsSalesOrderPaymentTerms;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsSalesOrderPaymentTerms
{ 
  get 
  {
    if (_dsSalesOrderPaymentTerms == null)
    {
             _dsSalesOrderPaymentTerms = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.ISalesOrderPaymentTerm), 
	    EntityType              ,"SalesOrderPaymentTerms", System.Reflection.MemberTypes.Property);
                   _dsSalesOrderPaymentTerms.UseSmartQuery = true;
      	   	}
 	return _dsSalesOrderPaymentTerms;
  }
}

void dsSalesOrderPaymentTerms_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsSalesOrderPaymentTerms.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsSalesOrderPaymentTerms);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsSalesOrderPaymentTerms.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("SalesOrderPaymentTerms", grdSalesOrderPaymentTerms ));
   dsSalesOrderPaymentTerms.BindFieldNames = new String[] { "Id","Description" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsSalesOrderPaymentTerms_OnCurrentEntitySet);
    
    }
       
protected void btnAdd_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditSaledOrderPaymentTerm", GetLocalResourceObject("e52ad611-a911-4dff-a326-d127505c86bf.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.ISalesOrderPaymentTerm); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.ISalesOrderPaymentTerm),
    typeof(Sage.Entity.Interfaces.ISalesOrder),
    typeof(Sage.Entity.Interfaces.ISalesOrderPaymentTerm).GetProperty("SalesOrder"),
    typeof(Sage.Entity.Interfaces.ISalesOrder).GetProperty("SalesOrderPaymentTerms"));
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
if (dsSalesOrderPaymentTerms.SourceObject == null) { dsSalesOrderPaymentTerms.SourceObject = BindingSource.Current; }
if (dsSalesOrderPaymentTerms.SourceObject == null) { RegisterBindingsWithClient(dsSalesOrderPaymentTerms); }
dsSalesOrderPaymentTerms.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new SalesOrderPaymentTermAdapter(this)); }
}

public class SalesOrderPaymentTermAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ISalesOrderPaymentTerm
{
    public SalesOrderPaymentTermAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdSalesOrderPaymentTerms;
    public  Sage.Platform.Controls.IDataGridControl grdSalesOrderPaymentTerms
    {
        get { return FindControl(ref _grdSalesOrderPaymentTerms, "grdSalesOrderPaymentTerms"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsSalesOrderPaymentTerms;
    public  Sage.Platform.Controls.IDataSourceControl dsSalesOrderPaymentTerms
    {
        get { return FindControl(ref _dsSalesOrderPaymentTerms, "dsSalesOrderPaymentTerms"); }
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
