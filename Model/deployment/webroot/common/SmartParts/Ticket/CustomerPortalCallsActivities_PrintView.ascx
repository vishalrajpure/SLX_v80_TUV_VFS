<%@ Control Language="C#" ClassName="CustomerPortalCallsActivities_PrintView" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
<table border="0" cellpadding="1" cellspacing="0" class="formtable">
         <col width="33%" />
            <col width="33%" />
            <col width="33%" />
     <tr>
            <td  colspan="2" >
 <div class="twocollbl alignleft" style="margin-top:.5em;">
   <asp:Label ID="txtComments_lbl" AssociatedControlID="txtComments" runat="server" Text="<%$ resources: txtComments.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"  style="margin-top:.5em;" >
<asp:Label runat="server" ID="txtComments" style="white-space:normal"  />
  </div>

      </td>
                      <td  >

      </td>
      </tr>
<tr>
            <td  colspan="3" >
  <hr />
 

      </td>
                  </tr>
<tr>
            <td  colspan="3" >
<SalesLogix:SlxGridView runat="server" ID="grdActivities" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
EmptyTableRowText="<%$ resources: grdActivities.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True" >
<Columns>
   <asp:TemplateField   HeaderText="<%$ resources: grdActivities.67b60db5-b392-4431-a25c-cea4c559bf66.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:PickListControl runat="server" ID="grdActivitiescol1" PickListId="kSYST0000372" ValueStoredAsText="False" PickListName="Ticket Activity" PickListValue='<%#  dtsTicketActivities.getPropertyValue(Container.DataItem, "ActivityTypeCode")  %>' DisplayMode="AsText" CssClass="" />
   </itemtemplate></asp:TemplateField>
    <asp:TemplateField   HeaderText="<%$ resources: grdActivities.d0f4c75a-d483-4469-be59-c1881384c29b.ColumnHeading %>"        >
    <itemtemplate>
   <SalesLogix:DateTimePicker runat="server" ID="grdActivitiescol2"  DisplayMode="AsText" DateTimeValue='<%#  dtsTicketActivities.getPropertyValue(Container.DataItem, "AssignedDate")  %>'  CssClass=""  />
   </itemtemplate></asp:TemplateField>
    <asp:BoundField DataField="ActivityDescription"
      HeaderText="<%$ resources: grdActivities.a1b83bc8-e7ec-461a-86f8-bc3a0b8aa250.ColumnHeading %>"          >
      </asp:BoundField>
 </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


</script>

      </td>
                  </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="CustomerPortalCallsActivities_PrintView_RTools" ToolbarLocation="right">
   
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=CustomerPortalCallsActivities_PrintView&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkCustomerPortalCallsActivities_PrintViewHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="CustomerPortalCallsActivities" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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

 private Sage.Platform.WebPortal.Binding.WebEntityBindingSource _dtsTicketActivityDataSource;
public Sage.Platform.WebPortal.Binding.WebEntityBindingSource dtsTicketActivityDataSource
{ 
  get 
  {
    if (_dtsTicketActivityDataSource == null)
    {
             _dtsTicketActivityDataSource = new Sage.Platform.WebPortal.Binding.WebEntityBindingSource(typeof(Sage.Entity.Interfaces.ITicketActivity),
	    EntityType              );       	   	}
 	return _dtsTicketActivityDataSource;
  }
}

void dtsTicketActivityDataSource_OnCurrentEntitySet(object sender, EventArgs e) 
{
    string changeKey = GetChangeStateKey(typeof(Sage.Entity.Interfaces.ITicketActivity), Sage.Platform.Orm.Entities.EntityViewMode.Insert);
    object current = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.ITicketActivity>();
    RestoreEntityChanges(changeKey, current);
    dtsTicketActivityDataSource.Current = current;
   if (Visible)
   {   
      RegisterBindingsWithClient(dtsTicketActivityDataSource);
   }
}

 

protected override void OnUnload(EventArgs e)
{
    base.OnUnload(e);
    string changeKey = GetChangeStateKey(typeof(Sage.Entity.Interfaces.ITicketActivity), Sage.Platform.Orm.Entities.EntityViewMode.Insert);
    SaveEntityChanges(changeKey, dtsTicketActivityDataSource.Current);
}


 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dtsTicketActivities;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dtsTicketActivities
{ 
  get 
  {
    if (_dtsTicketActivities == null)
    {
             _dtsTicketActivities = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.ITicketActivity), 
	    EntityType                     ,"GetPortalTicketActivities", System.Reflection.MemberTypes.Method);
            	   	}
 	return _dtsTicketActivities;
  }
}

void dtsTicketActivities_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dtsTicketActivities.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dtsTicketActivities);
   }
}

 



 

protected override void OnAddEntityBindings() {
                 // txtComments.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCommentsTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ActivityDescription", txtComments, "Text");
        dtsTicketActivityDataSource.Bindings.Add(txtCommentsTextBinding);
                dtsTicketActivities.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("GetPortalTicketActivities()", grdActivities ));
   dtsTicketActivities.BindFieldNames = new String[] { "Id","ActivityTypeCode","AssignedDate","ActivityDescription" };
                
     BindingSource.OnCurrentEntitySet += new EventHandler(dtsTicketActivityDataSource_OnCurrentEntitySet);
      BindingSource.OnCurrentEntitySet += new EventHandler(dtsTicketActivities_OnCurrentEntitySet);
    
    }
                            
protected override void OnFormBound()
{
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
dtsTicketActivityDataSource.Bind( true );

if (dtsTicketActivities.SourceObject == null) { dtsTicketActivities.SourceObject = BindingSource.Current; }
if (dtsTicketActivities.SourceObject == null) { RegisterBindingsWithClient(dtsTicketActivities); }
dtsTicketActivities.Bind();



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
                                            if (tool is PageLink)
                        {
                            PageLink plink = tool as PageLink;
                            if (plink.LinkType == enumPageLinkType.HelpFileName)
                            {
                                            tinfo.RightTools.Add(tool);
                                                }
                        }
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
    get { return _formAdapter ?? (_formAdapter = new CustomerPortalCallsActivitiesAdapter(this)); }
}

public class CustomerPortalCallsActivitiesAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ICustomerPortalCallsActivities
{
    public CustomerPortalCallsActivitiesAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _txtComments;
    public  Sage.Platform.Controls.ITextBoxControl txtComments
    {
        get { return FindControl(ref _txtComments, "txtComments"); }
    }
    private Sage.Platform.Controls.IDataGridControl _grdActivities;
    public  Sage.Platform.Controls.IDataGridControl grdActivities
    {
        get { return FindControl(ref _grdActivities, "grdActivities"); }
    }
    private Sage.Platform.Controls.IButtonControl _cmdSubmit;
    public  Sage.Platform.Controls.IButtonControl cmdSubmit
    {
        get { return FindControl(ref _cmdSubmit, "cmdSubmit"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dtsTicketActivityDataSource;
    public  Sage.Platform.Controls.IDataSourceControl dtsTicketActivityDataSource
    {
        get { return FindControl(ref _dtsTicketActivityDataSource, "dtsTicketActivityDataSource"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dtsTicketActivities;
    public  Sage.Platform.Controls.IDataSourceControl dtsTicketActivities
    {
        get { return FindControl(ref _dtsTicketActivities, "dtsTicketActivities"); }
    }
    private Sage.Platform.Controls.IButtonControl _cmdTicketActivities;
    public  Sage.Platform.Controls.IButtonControl cmdTicketActivities
    {
        get { return FindControl(ref _cmdTicketActivities, "cmdTicketActivities"); }
    }

}

</script>

<script type="text/javascript">
</script>
