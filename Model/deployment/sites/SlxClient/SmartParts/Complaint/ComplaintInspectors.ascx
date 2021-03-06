<%@ Control Language="C#" ClassName="ComplaintInspectors" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdComplaintInspectors" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdComplaintInspectors_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowDeleting="grdComplaintInspectors_RowDeleting" OnRowDataBound="grdComplaintInspectors_RowDataBound" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: grdComplaintInspectors.03e19cac-415e-417a-9eaa-54a88692224b.ColumnHeading %>"        >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="Surveyor"
   EntityId='<%# dsComplaintInspectors.getPropertyValue(Container.DataItem, "Surveyor.Id") %>'     Text='<%# dsComplaintInspectors.getPropertyValue(Container.DataItem, "Surveyor.InspectorName") %>'
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
     <asp:ButtonField CommandName="Delete"
                 >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

      private int _grdComplaintInspectorsdeleteColumnIndex = -2;
protected int grdComplaintInspectorsDeleteColumnIndex
{
    get
    {
        if (_grdComplaintInspectorsdeleteColumnIndex == -2)
        {
            int bias = (grdComplaintInspectors.ExpandableRows) ? 1 : 0;
            _grdComplaintInspectorsdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdComplaintInspectors.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdComplaintInspectorsdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdComplaintInspectorsdeleteColumnIndex;
    }
}

protected void grdComplaintInspectors_RowDataBound(object sender, GridViewRowEventArgs e)
{
    if (e.Row.RowType == DataControlRowType.DataRow)
    {
        if ((grdComplaintInspectorsDeleteColumnIndex >= 0) && (grdComplaintInspectorsDeleteColumnIndex < e.Row.Cells.Count))
        {
            TableCell cell = e.Row.Cells[grdComplaintInspectorsDeleteColumnIndex];
            foreach (Control c in cell.Controls)
            {
                LinkButton btn = c as LinkButton;
                if (btn != null)
                {
                    btn.Attributes.Add("onclick", "javascript: return confirm('" + Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("grdComplaintInspectors.a6ab5a83-3168-44c4-9123-5ec8edfff74c.ConfirmationMessage").ToString()) + "');");
                    return;
                }
            }
        }
    }
}
   
protected void grdComplaintInspectors_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsComplaintInspectors.SelectedIndex = rowIndex;
        object currentEntity = dsComplaintInspectors.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdComplaintInspectors.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdComplaintInspectors.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsComplaintInspectors.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsComplaintInspectors.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdComplaintInspectors.DataKeys[rowIndex].Values)
            {
                if (val.Key.ToString() != "InstanceId")
                {
                    id = val.Value.ToString();
                }
            }
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.IComplaint mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IComplaint;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.IComplaintInspector childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IComplaintInspector))
                {
                    childEntity = (Sage.Entity.Interfaces.IComplaintInspector)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IComplaintInspector>(id);
            }
                if(childEntity != null)
                {
                     mainentity.ComplaintInspectors.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsComplaintInspectors.SelectedIndex = -1;
                }
            }
        }
    }
    grdComplaintInspectors_refresh();
}
    protected void grdComplaintInspectors_refresh()
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

            protected void grdComplaintInspectors_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdComplaintInspectors.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="ComplaintInspectors_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnAdd"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=ComplaintInspectors&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkComplaintInspectorsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="ComplaintInspectors" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IComplaint); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsComplaintInspectors;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsComplaintInspectors
{ 
  get 
  {
    if (_dsComplaintInspectors == null)
    {
             _dsComplaintInspectors = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IComplaintInspector), 
	    EntityType              ,"ComplaintInspectors", System.Reflection.MemberTypes.Property);
                   _dsComplaintInspectors.UseSmartQuery = true;
      	   	}
 	return _dsComplaintInspectors;
  }
}

void dsComplaintInspectors_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsComplaintInspectors.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsComplaintInspectors);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsComplaintInspectors.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("ComplaintInspectors", grdComplaintInspectors ));
   dsComplaintInspectors.BindFieldNames = new String[] { "Id","Surveyor.Id","Surveyor.InspectorName" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsComplaintInspectors_OnCurrentEntitySet);
    
    }
       
protected void btnAdd_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "ComplaintInspectorDetails", string.Empty );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IComplaintInspector); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IComplaintInspector),
    typeof(Sage.Entity.Interfaces.IComplaint),
    typeof(Sage.Entity.Interfaces.IComplaintInspector).GetProperty("Complaint"),
    typeof(Sage.Entity.Interfaces.IComplaint).GetProperty("ComplaintInspectors"));
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
if (dsComplaintInspectors.SourceObject == null) { dsComplaintInspectors.SourceObject = BindingSource.Current; }
if (dsComplaintInspectors.SourceObject == null) { RegisterBindingsWithClient(dsComplaintInspectors); }
dsComplaintInspectors.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new ComplaintInspectorsAdapter(this)); }
}

public class ComplaintInspectorsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IComplaintInspectors
{
    public ComplaintInspectorsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdComplaintInspectors;
    public  Sage.Platform.Controls.IDataGridControl grdComplaintInspectors
    {
        get { return FindControl(ref _grdComplaintInspectors, "grdComplaintInspectors"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsComplaintInspectors;
    public  Sage.Platform.Controls.IDataSourceControl dsComplaintInspectors
    {
        get { return FindControl(ref _dsComplaintInspectors, "dsComplaintInspectors"); }
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
