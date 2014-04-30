<%@ Control Language="C#" ClassName="RNReports" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdRNReports" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: grdRNReports.f0803eb8-1075-4bf3-bae4-f3146fb01965.ColumnHeading %>"        >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="RNReport"
   EntityId='<%# dsRNReports.getPropertyValue(Container.DataItem, "Id") %>'     Text='<%# dsRNReports.getPropertyValue(Container.DataItem, "Id") %>'
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:BoundField DataField="PONumber"
      HeaderText="<%$ resources: grdRNReports.8c77eda2-50fd-4b55-968d-d5da6842ea72.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="PODate"
      HeaderText="<%$ resources: grdRNReports.b6035bc8-e0c1-4e4e-b389-8582672d4662.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Location"
      HeaderText="<%$ resources: grdRNReports.a3afefc0-b3c1-42f6-a620-621736d771fc.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="PlaceOfIssue"
      HeaderText="<%$ resources: grdRNReports.99069fac-1d5a-4ebb-9b8c-f7f411be6d47.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="OrderStatus"
      HeaderText="<%$ resources: grdRNReports.8754cfb4-7eb7-44d4-80c4-a7e7cea9c511.ColumnHeading %>"          >
      </asp:BoundField>
 </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


</script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="RNReports_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnAdd"
 ToolTip="<%$ resources: btnAdd.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=RNReports&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkRNReportsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="RNReports" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsRNReports;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsRNReports
{ 
  get 
  {
    if (_dsRNReports == null)
    {
             _dsRNReports = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IRNReport), 
	    EntityType              ,"RNReports", System.Reflection.MemberTypes.Property);
                   _dsRNReports.UseSmartQuery = true;
      	   	}
 	return _dsRNReports;
  }
}

void dsRNReports_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsRNReports.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsRNReports);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsRNReports.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("RNReports", grdRNReports ));
   dsRNReports.BindFieldNames = new String[] { "Id","PONumber","PODate","Location","PlaceOfIssue","OrderStatus" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsRNReports_OnCurrentEntitySet);
    
    }
       
protected void btnAdd_ClickAction(object sender, EventArgs e) {
      Response.Redirect(string.Format("RNReport.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
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
if (dsRNReports.SourceObject == null) { dsRNReports.SourceObject = BindingSource.Current; }
if (dsRNReports.SourceObject == null) { RegisterBindingsWithClient(dsRNReports); }
dsRNReports.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new RNReportsAdapter(this)); }
}

public class RNReportsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IRNReports
{
    public RNReportsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdRNReports;
    public  Sage.Platform.Controls.IDataGridControl grdRNReports
    {
        get { return FindControl(ref _grdRNReports, "grdRNReports"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsRNReports;
    public  Sage.Platform.Controls.IDataSourceControl dsRNReports
    {
        get { return FindControl(ref _dsRNReports, "dsRNReports"); }
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