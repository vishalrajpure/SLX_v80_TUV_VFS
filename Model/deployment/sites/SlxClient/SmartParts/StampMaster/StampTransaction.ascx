<%@ Control Language="C#" ClassName="StampTransaction" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdStampTransactions" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True" >
<Columns>
   <asp:BoundField DataField="StampType"
      HeaderText="<%$ resources: grdStampTransactions.f000fa5a-06bb-40ab-8f65-0cc1882f6f68.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Contact.NameLF"
      HeaderText="<%$ resources: grdStampTransactions.1ca505e6-19c6-4dde-8849-7d08a2d9a79a.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="PurchaseIssueDate"
  DataFormatString="<%$ resources: grdStampTransactions.bc4a21d5-5358-4b7e-8b67-ffd4bbedbf11.FormatString %>" HtmlEncode="false"    HeaderText="<%$ resources: grdStampTransactions.bc4a21d5-5358-4b7e-8b67-ffd4bbedbf11.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="IssuedTo"
      HeaderText="<%$ resources: grdStampTransactions.0fb734cd-3e6c-4601-a113-39b80acd4862.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="IssuedBy"
      HeaderText="<%$ resources: grdStampTransactions.84b1887c-ed51-4274-8629-b7a08c74bed0.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="PurchaseQty"
      HeaderText="<%$ resources: grdStampTransactions.f4382770-b31c-4f58-862a-3dc387f0d399.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="AssignQty"
      HeaderText="<%$ resources: grdStampTransactions.17298312-d1f4-4a4a-b4af-f8643e8c7eac.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="ExpiryDate"
  DataFormatString="<%$ resources: grdStampTransactions.eb1130ca-80ff-4e20-ace4-391abc2458d4.FormatString %>" HtmlEncode="false"    HeaderText="<%$ resources: grdStampTransactions.eb1130ca-80ff-4e20-ace4-391abc2458d4.ColumnHeading %>"          >
      </asp:BoundField>
 </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


</script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="StampTransaction_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnInward"
 AlternateText="<%$ resources: btnInward.Caption %>"  ToolTip="<%$ resources: btnInward.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=sync_jobs_16x16"  />
 
    <asp:ImageButton runat="server" ID="btnOutward"
 AlternateText="<%$ resources: btnOutward.Caption %>"  ToolTip="<%$ resources: btnOutward.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=submit_to_accounting_sys_16x161"  />
 
    <asp:ImageButton runat="server" ID="btnReturn"
 AlternateText="<%$ resources: btnReturn.Caption %>"  ToolTip="<%$ resources: btnReturn.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=return_new_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=StampTransaction&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkStampTransactionHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="StampTransaction" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IStampMaster); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsStampTransactions;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsStampTransactions
{ 
  get 
  {
    if (_dsStampTransactions == null)
    {
             _dsStampTransactions = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IStampTransaction), 
	    EntityType              ,"StampTransactions", System.Reflection.MemberTypes.Property);
                   _dsStampTransactions.UseSmartQuery = true;
      	   	}
 	return _dsStampTransactions;
  }
}

void dsStampTransactions_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsStampTransactions.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsStampTransactions);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsStampTransactions.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("StampTransactions", grdStampTransactions ));
   dsStampTransactions.BindFieldNames = new String[] { "Id","StampType","Contact.NameLF","PurchaseFrom","PurchaseIssueDate","IssuedTo","IssuedBy","PurchaseQty","AssignQty","ExpiryDate" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsStampTransactions_OnCurrentEntitySet);
    
            }
       
protected void btnInward_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditStampTransaction", GetLocalResourceObject("2da3b2e9-89df-4b07-8f5a-4d445b77e305.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IStampTransaction); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IStampTransaction),
    typeof(Sage.Entity.Interfaces.IStampMaster),
    typeof(Sage.Entity.Interfaces.IStampTransaction).GetProperty("StampMaster"),
    typeof(Sage.Entity.Interfaces.IStampMaster).GetProperty("StampTransactions"));
  DialogService.ShowDialog();
}

}
protected void btnOutward_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditStampTransactionOutward", GetLocalResourceObject("75bfe60c-6076-4a9c-9e48-58bf6ac1b6fc.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IStampTransaction); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IStampTransaction),
    typeof(Sage.Entity.Interfaces.IStampMaster),
    typeof(Sage.Entity.Interfaces.IStampTransaction).GetProperty("StampMaster"),
    typeof(Sage.Entity.Interfaces.IStampMaster).GetProperty("StampTransactions"));
  DialogService.ShowDialog();
}

}
protected void btnReturn_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditStampTransactionReturn", GetLocalResourceObject("fd333214-2063-49d4-a20c-336d2ad61aa1.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.IStampTransaction); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.IStampTransaction),
    typeof(Sage.Entity.Interfaces.IStampMaster),
    typeof(Sage.Entity.Interfaces.IStampTransaction).GetProperty("StampMaster"),
    typeof(Sage.Entity.Interfaces.IStampMaster).GetProperty("StampTransactions"));
  DialogService.ShowDialog();
}

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 btnInward.Click += new ImageClickEventHandler(btnInward_ClickAction);
btnOutward.Click += new ImageClickEventHandler(btnOutward_ClickAction);
btnReturn.Click += new ImageClickEventHandler(btnReturn_ClickAction);


}

protected override void OnFormBound()
{
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dsStampTransactions.SourceObject == null) { dsStampTransactions.SourceObject = BindingSource.Current; }
if (dsStampTransactions.SourceObject == null) { RegisterBindingsWithClient(dsStampTransactions); }
dsStampTransactions.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new StampTransactionAdapter(this)); }
}

public class StampTransactionAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IStampTransaction
{
    public StampTransactionAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdStampTransactions;
    public  Sage.Platform.Controls.IDataGridControl grdStampTransactions
    {
        get { return FindControl(ref _grdStampTransactions, "grdStampTransactions"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsStampTransactions;
    public  Sage.Platform.Controls.IDataSourceControl dsStampTransactions
    {
        get { return FindControl(ref _dsStampTransactions, "dsStampTransactions"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnInward;
    public  Sage.Platform.Controls.IButtonControl btnInward
    {
        get { return FindControl(ref _btnInward, "btnInward"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnOutward;
    public  Sage.Platform.Controls.IButtonControl btnOutward
    {
        get { return FindControl(ref _btnOutward, "btnOutward"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnReturn;
    public  Sage.Platform.Controls.IButtonControl btnReturn
    {
        get { return FindControl(ref _btnReturn, "btnReturn"); }
    }

}

</script>

<script type="text/javascript">
</script>