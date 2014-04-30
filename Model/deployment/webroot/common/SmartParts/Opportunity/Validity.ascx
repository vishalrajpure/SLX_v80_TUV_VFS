<%@ Control Language="C#" ClassName="Validity" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdOpportunityValidities" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdOpportunityValidities_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdOpportunityValidities_RowEditing"  OnRowDeleting="grdOpportunityValidities_RowDeleting" OnRowDataBound="grdOpportunityValidities_RowDataBound" >
<Columns>
   <asp:BoundField DataField="Description"
      HeaderText="<%$ resources: grdOpportunityValidities.4ff23a50-9443-4cbb-8ec9-ca4ae93e9106.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
  Text="<%$ resources: grdOpportunityValidities.0e63aabe-0631-404c-a842-6a282afb7b8f.Text %>"        HeaderText="<%$ resources: grdOpportunityValidities.0e63aabe-0631-404c-a842-6a282afb7b8f.ColumnHeading %>"        >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
  Text="<%$ resources: grdOpportunityValidities.069a92dd-aae2-4c3d-ac16-0e70945780ff.Text %>"         HeaderText="<%$ resources: grdOpportunityValidities.069a92dd-aae2-4c3d-ac16-0e70945780ff.ColumnHeading %>"        >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

         private int _grdOpportunityValiditiesdeleteColumnIndex = -2;
protected int grdOpportunityValiditiesDeleteColumnIndex
{
    get
    {
        if (_grdOpportunityValiditiesdeleteColumnIndex == -2)
        {
            int bias = (grdOpportunityValidities.ExpandableRows) ? 1 : 0;
            _grdOpportunityValiditiesdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdOpportunityValidities.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdOpportunityValiditiesdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdOpportunityValiditiesdeleteColumnIndex;
    }
}

protected void grdOpportunityValidities_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
   
protected void grdOpportunityValidities_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsOpportunityValidities.SelectedIndex = rowIndex;
        object currentEntity = dsOpportunityValidities.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdOpportunityValidities.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdOpportunityValidities.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsOpportunityValidities.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsOpportunityValidities.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdOpportunityValidities.DataKeys[rowIndex].Values)
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
                            DialogService.SetSpecs(400, 600, "AddEditValidity", GetLocalResourceObject("b3206232-af03-4a56-b206-041236bdedd4.DialogTitleOverride").ToString() );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.IOpportunityValidity );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.IOpportunity mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IOpportunity;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.IOpportunityValidity childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IOpportunityValidity))
                {
                    childEntity = (Sage.Entity.Interfaces.IOpportunityValidity)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IOpportunityValidity>(id);
            }
                if(childEntity != null)
                {
                     mainentity.OpportunityValidities.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsOpportunityValidities.SelectedIndex = -1;
                }
            }
        }
    }
    grdOpportunityValidities_refresh();
}
    protected void grdOpportunityValidities_refresh()
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

        protected void grdOpportunityValidities_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdOpportunityValidities.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdOpportunityValidities_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdOpportunityValidities.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="Validity_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnAdd"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=Validity&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkValidityHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="Validity" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IOpportunity); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsOpportunityValidities;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsOpportunityValidities
{ 
  get 
  {
    if (_dsOpportunityValidities == null)
    {
             _dsOpportunityValidities = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IOpportunityValidity), 
	    EntityType              ,"OpportunityValidities", System.Reflection.MemberTypes.Property);
                   _dsOpportunityValidities.UseSmartQuery = true;
      	   	}
 	return _dsOpportunityValidities;
  }
}

void dsOpportunityValidities_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsOpportunityValidities.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsOpportunityValidities);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsOpportunityValidities.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("OpportunityValidities", grdOpportunityValidities ));
   dsOpportunityValidities.BindFieldNames = new String[] { "Id","Description" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsOpportunityValidities_OnCurrentEntitySet);
    
    }
       
protected void btnAdd_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditValidity", GetLocalResourceObject("369edadb-9b45-4f41-af12-960b31f2aee6.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IOpportunityValidity); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IOpportunityValidity),
    typeof(Sage.Entity.Interfaces.IOpportunity),
    typeof(Sage.Entity.Interfaces.IOpportunityValidity).GetProperty("Opportunity"),
    typeof(Sage.Entity.Interfaces.IOpportunity).GetProperty("OpportunityValidities"));
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
if (dsOpportunityValidities.SourceObject == null) { dsOpportunityValidities.SourceObject = BindingSource.Current; }
if (dsOpportunityValidities.SourceObject == null) { RegisterBindingsWithClient(dsOpportunityValidities); }
dsOpportunityValidities.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new ValidityAdapter(this)); }
}

public class ValidityAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IValidity
{
    public ValidityAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdOpportunityValidities;
    public  Sage.Platform.Controls.IDataGridControl grdOpportunityValidities
    {
        get { return FindControl(ref _grdOpportunityValidities, "grdOpportunityValidities"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsOpportunityValidities;
    public  Sage.Platform.Controls.IDataSourceControl dsOpportunityValidities
    {
        get { return FindControl(ref _dsOpportunityValidities, "dsOpportunityValidities"); }
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