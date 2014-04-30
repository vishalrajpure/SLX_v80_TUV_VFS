<%@ Control Language="C#" ClassName="VisitReports" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdVisitReports" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: grdVisitReports.d9066106-72fd-4ed9-ba09-94e517cf68e6.ColumnHeading %>"        >
    <itemtemplate>
      <SalesLogix:PageLink runat="server" NavigateUrl="VisitReport"
   EntityId='<%# dsVisitReports.getPropertyValue(Container.DataItem, "Id") %>'     Text='<%# dsVisitReports.getPropertyValue(Container.DataItem, "Id") %>'
         LinkType="EntityAlias"></SalesLogix:PageLink>
     </itemtemplate></asp:TemplateField>
      <asp:BoundField DataField="ReportDate"
      HeaderText="<%$ resources: grdVisitReports.150ac8b2-455b-4949-99b3-ed92baeff4f0.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:TemplateField   HeaderText="<%$ resources: grdVisitReports.76dccfb8-2331-4926-939a-0c40a826fb3c.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdVisitReportscol3" DisplayTime="false"  DisplayMode="AsText" DateTimeValue='<%#  dsVisitReports.getPropertyValue(Container.DataItem, "InspectionDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdVisitReports.658c44c5-45da-4e52-8c43-37b7d2d9096b.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdVisitReportscol4" DisplayTime="false"  DisplayMode="AsText" DateTimeValue='<%#  dsVisitReports.getPropertyValue(Container.DataItem, "InspectionTime")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:BoundField DataField="ProjectName"
      HeaderText="<%$ resources: grdVisitReports.974207c4-cd49-4971-8b0b-b5241e45e0dd.ColumnHeading %>"          >
      </asp:BoundField>
 </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


</script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="VisitReports_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnAdd"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=VisitReports&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkVisitReportsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="VisitReports" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsVisitReports;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsVisitReports
{ 
  get 
  {
    if (_dsVisitReports == null)
    {
             _dsVisitReports = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IVisitReport), 
	    EntityType              ,"VisitReports", System.Reflection.MemberTypes.Property);
                   _dsVisitReports.UseSmartQuery = true;
      	   	}
 	return _dsVisitReports;
  }
}

void dsVisitReports_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsVisitReports.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsVisitReports);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsVisitReports.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("VisitReports", grdVisitReports ));
   dsVisitReports.BindFieldNames = new String[] { "Id","VisitReportID","ReportDate","InspectionDate","InspectionTime","ProjectName" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsVisitReports_OnCurrentEntitySet);
    
    }
       
protected void grdVisitReports_RowSelectedAction(object sender, EventArgs e) {

}
protected void btnAdd_ClickAction(object sender, EventArgs e) {
      Response.Redirect(string.Format("VisitReport.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 grdVisitReports.SelectedIndexChanged += new EventHandler(grdVisitReports_RowSelectedAction);
btnAdd.Click += new ImageClickEventHandler(btnAdd_ClickAction);


}

protected override void OnFormBound()
{
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dsVisitReports.SourceObject == null) { dsVisitReports.SourceObject = BindingSource.Current; }
if (dsVisitReports.SourceObject == null) { RegisterBindingsWithClient(dsVisitReports); }
dsVisitReports.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new VisitReportsAdapter(this)); }
}

public class VisitReportsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IVisitReports
{
    public VisitReportsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdVisitReports;
    public  Sage.Platform.Controls.IDataGridControl grdVisitReports
    {
        get { return FindControl(ref _grdVisitReports, "grdVisitReports"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsVisitReports;
    public  Sage.Platform.Controls.IDataSourceControl dsVisitReports
    {
        get { return FindControl(ref _dsVisitReports, "dsVisitReports"); }
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
