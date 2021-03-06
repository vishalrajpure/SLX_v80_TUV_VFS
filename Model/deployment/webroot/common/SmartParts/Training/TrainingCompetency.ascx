<%@ Control Language="C#" ClassName="TrainingCompetency" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdTrainingCompetencies" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdTrainingCompetencies_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdTrainingCompetencies_RowEditing"  OnRowDeleting="grdTrainingCompetencies_RowDeleting" OnRowDataBound="grdTrainingCompetencies_RowDataBound" >
<Columns>
   <asp:BoundField DataField="Surveyor.FirstName"
      HeaderText="<%$ resources: grdTrainingCompetencies.1e8bb718-2b63-4f50-b266-1825075d74f2.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Surveyor.LastName"
      HeaderText="<%$ resources: grdTrainingCompetencies.0c089283-eb42-4ecd-a6f0-e135ab8a830e.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Date"
  DataFormatString="<%$ resources: grdTrainingCompetencies.f4d3e690-da90-4d0c-af5a-98a580cc8114.FormatString %>" HtmlEncode="false"    HeaderText="<%$ resources: grdTrainingCompetencies.f4d3e690-da90-4d0c-af5a-98a580cc8114.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Level"
      HeaderText="<%$ resources: grdTrainingCompetencies.2527b028-2568-48dd-9b45-070e37a789ad.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="InspectionScope"
      HeaderText="<%$ resources: grdTrainingCompetencies.2880558a-5b8f-4bd4-862f-04a36b4ed9ba.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Status"
      HeaderText="<%$ resources: grdTrainingCompetencies.ec444efc-30d8-4570-b78c-55c93f9c24d7.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
  Text="<%$ resources: grdTrainingCompetencies.8e942d90-df1f-4a1a-b84a-1d50693ea34b.Text %>"        HeaderText="<%$ resources: grdTrainingCompetencies.8e942d90-df1f-4a1a-b84a-1d50693ea34b.ColumnHeading %>"        >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
  Text="<%$ resources: grdTrainingCompetencies.a962c718-8f87-4195-8061-56d3b31974b1.Text %>"         HeaderText="<%$ resources: grdTrainingCompetencies.a962c718-8f87-4195-8061-56d3b31974b1.ColumnHeading %>"        >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

                        private int _grdTrainingCompetenciesdeleteColumnIndex = -2;
protected int grdTrainingCompetenciesDeleteColumnIndex
{
    get
    {
        if (_grdTrainingCompetenciesdeleteColumnIndex == -2)
        {
            int bias = (grdTrainingCompetencies.ExpandableRows) ? 1 : 0;
            _grdTrainingCompetenciesdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdTrainingCompetencies.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdTrainingCompetenciesdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdTrainingCompetenciesdeleteColumnIndex;
    }
}

protected void grdTrainingCompetencies_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
   
protected void grdTrainingCompetencies_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsTrainingCompetencies.SelectedIndex = rowIndex;
        object currentEntity = dsTrainingCompetencies.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdTrainingCompetencies.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdTrainingCompetencies.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsTrainingCompetencies.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsTrainingCompetencies.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdTrainingCompetencies.DataKeys[rowIndex].Values)
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
                            DialogService.SetSpecs(400, 600, "AddEditTrainingCompetency", GetLocalResourceObject("7a901119-e498-4ff5-a006-eea3dfdd0e35.DialogTitleOverride").ToString() );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.ITrainingCompetency );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.ITraining mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.ITraining;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.ITrainingCompetency childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.ITrainingCompetency))
                {
                    childEntity = (Sage.Entity.Interfaces.ITrainingCompetency)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.ITrainingCompetency>(id);
            }
                if(childEntity != null)
                {
                     mainentity.TrainingCompetencies.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsTrainingCompetencies.SelectedIndex = -1;
                }
            }
        }
    }
    grdTrainingCompetencies_refresh();
}
    protected void grdTrainingCompetencies_refresh()
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

        protected void grdTrainingCompetencies_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdTrainingCompetencies.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdTrainingCompetencies_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdTrainingCompetencies.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="TrainingCompetency_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnAdd"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=TrainingCompetency&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkTrainingCompetencyHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="TrainingCompetency" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.ITraining); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsTrainingCompetencies;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsTrainingCompetencies
{ 
  get 
  {
    if (_dsTrainingCompetencies == null)
    {
             _dsTrainingCompetencies = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.ITrainingCompetency), 
	    EntityType              ,"TrainingCompetencies", System.Reflection.MemberTypes.Property);
                   _dsTrainingCompetencies.UseSmartQuery = true;
      	   	}
 	return _dsTrainingCompetencies;
  }
}

void dsTrainingCompetencies_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsTrainingCompetencies.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsTrainingCompetencies);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsTrainingCompetencies.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("TrainingCompetencies", grdTrainingCompetencies ));
   dsTrainingCompetencies.BindFieldNames = new String[] { "Id","Surveyor.FirstName","Surveyor.LastName","Date","Level","InspectionScope","Status" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsTrainingCompetencies_OnCurrentEntitySet);
    
    }
       
protected void btnAdd_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditTrainingCompetency", GetLocalResourceObject("8e850b9e-d005-45fb-a699-f96694115bb3.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.ITrainingCompetency); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.ITrainingCompetency),
    typeof(Sage.Entity.Interfaces.ITraining),
    typeof(Sage.Entity.Interfaces.ITrainingCompetency).GetProperty("Training"),
    typeof(Sage.Entity.Interfaces.ITraining).GetProperty("TrainingCompetencies"));
  DialogService.ShowDialog();
}
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
 btnAdd.Click += new ImageClickEventHandler(btnAdd_ClickAction);


}

protected override void OnFormBound()
{
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dsTrainingCompetencies.SourceObject == null) { dsTrainingCompetencies.SourceObject = BindingSource.Current; }
if (dsTrainingCompetencies.SourceObject == null) { RegisterBindingsWithClient(dsTrainingCompetencies); }
dsTrainingCompetencies.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new TrainingCompetencyAdapter(this)); }
}

public class TrainingCompetencyAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ITrainingCompetency
{
    public TrainingCompetencyAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdTrainingCompetencies;
    public  Sage.Platform.Controls.IDataGridControl grdTrainingCompetencies
    {
        get { return FindControl(ref _grdTrainingCompetencies, "grdTrainingCompetencies"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsTrainingCompetencies;
    public  Sage.Platform.Controls.IDataSourceControl dsTrainingCompetencies
    {
        get { return FindControl(ref _dsTrainingCompetencies, "dsTrainingCompetencies"); }
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
