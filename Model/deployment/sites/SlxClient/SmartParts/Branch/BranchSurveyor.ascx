<%@ Control Language="C#" ClassName="BranchSurveyor" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdBranchSurveyors" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdBranchSurveyors_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdBranchSurveyors_RowEditing"  OnRowDeleting="grdBranchSurveyors_RowDeleting" OnRowDataBound="grdBranchSurveyors_RowDataBound" >
<Columns>
   <asp:BoundField DataField="Surveyor.FirstName"
      HeaderText="<%$ resources: grdBranchSurveyors.e650446c-f649-4e29-85b1-07284c103af7.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Surveyor.EmailAddress"
      HeaderText="<%$ resources: grdBranchSurveyors.4c5138f1-c10d-4677-bc2d-70573295446b.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Surveyor.MobileNo"
      HeaderText="<%$ resources: grdBranchSurveyors.21bde97e-f4ce-43cb-bde1-12a67c791132.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
          HeaderText="<%$ resources: grdBranchSurveyors.7e0cbdaa-6df1-405b-a497-12ef57fb2198.ColumnHeading %>"        >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
          HeaderText="<%$ resources: grdBranchSurveyors.0054e109-2f02-4312-846e-ad1fa2e5eb66.ColumnHeading %>"        >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

               private int _grdBranchSurveyorsdeleteColumnIndex = -2;
protected int grdBranchSurveyorsDeleteColumnIndex
{
    get
    {
        if (_grdBranchSurveyorsdeleteColumnIndex == -2)
        {
            int bias = (grdBranchSurveyors.ExpandableRows) ? 1 : 0;
            _grdBranchSurveyorsdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdBranchSurveyors.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdBranchSurveyorsdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdBranchSurveyorsdeleteColumnIndex;
    }
}

protected void grdBranchSurveyors_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
   
protected void grdBranchSurveyors_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsBranchSurveyors.SelectedIndex = rowIndex;
        object currentEntity = dsBranchSurveyors.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdBranchSurveyors.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdBranchSurveyors.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsBranchSurveyors.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsBranchSurveyors.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdBranchSurveyors.DataKeys[rowIndex].Values)
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
                            DialogService.SetSpecs(400, 600, "AddEditBranchSurveyor", GetLocalResourceObject("f2fa63d3-d897-40c6-8970-2fb49d246cd7.DialogTitleOverride").ToString() );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.IBranchSurveyor );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.IBranch mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.IBranch;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.IBranchSurveyor childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.IBranchSurveyor))
                {
                    childEntity = (Sage.Entity.Interfaces.IBranchSurveyor)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IBranchSurveyor>(id);
            }
                if(childEntity != null)
                {
                     mainentity.BranchSurveyors.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsBranchSurveyors.SelectedIndex = -1;
                }
            }
        }
    }
    grdBranchSurveyors_refresh();
}
    protected void grdBranchSurveyors_refresh()
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

        protected void grdBranchSurveyors_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdBranchSurveyors.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdBranchSurveyors_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdBranchSurveyors.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="BranchSurveyor_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="QFButton"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=BranchSurveyor&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkBranchSurveyorHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="BranchSurveyor" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IBranch); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsBranchSurveyors;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsBranchSurveyors
{ 
  get 
  {
    if (_dsBranchSurveyors == null)
    {
             _dsBranchSurveyors = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IBranchSurveyor), 
	    EntityType              ,"BranchSurveyors", System.Reflection.MemberTypes.Property);
                   _dsBranchSurveyors.UseSmartQuery = true;
      	   	}
 	return _dsBranchSurveyors;
  }
}

void dsBranchSurveyors_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsBranchSurveyors.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsBranchSurveyors);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsBranchSurveyors.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("BranchSurveyors", grdBranchSurveyors ));
   dsBranchSurveyors.BindFieldNames = new String[] { "Id","Surveyor.FirstName","Surveyor.Surveyor","Surveyor.EmailAddress","Surveyor.MobileNo" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsBranchSurveyors_OnCurrentEntitySet);
    
    }
       
protected void QFButton_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditBranchSurveyor", GetLocalResourceObject("590f59a8-51d6-4d66-bfd3-d13c4683ff53.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IBranchSurveyor); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IBranchSurveyor),
    typeof(Sage.Entity.Interfaces.IBranch),
    typeof(Sage.Entity.Interfaces.IBranchSurveyor).GetProperty("Branch"),
    typeof(Sage.Entity.Interfaces.IBranch).GetProperty("BranchSurveyors"));
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
if (dsBranchSurveyors.SourceObject == null) { dsBranchSurveyors.SourceObject = BindingSource.Current; }
if (dsBranchSurveyors.SourceObject == null) { RegisterBindingsWithClient(dsBranchSurveyors); }
dsBranchSurveyors.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new BranchSurveyorAdapter(this)); }
}

public class BranchSurveyorAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IBranchSurveyor
{
    public BranchSurveyorAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdBranchSurveyors;
    public  Sage.Platform.Controls.IDataGridControl grdBranchSurveyors
    {
        get { return FindControl(ref _grdBranchSurveyors, "grdBranchSurveyors"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsBranchSurveyors;
    public  Sage.Platform.Controls.IDataSourceControl dsBranchSurveyors
    {
        get { return FindControl(ref _dsBranchSurveyors, "dsBranchSurveyors"); }
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
