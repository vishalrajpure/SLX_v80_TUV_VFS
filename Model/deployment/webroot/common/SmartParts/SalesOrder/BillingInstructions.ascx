<%@ Control Language="C#" ClassName="BillingInstructions" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
  <SalesLogix:SlxGridView runat="server" ID="grdSalesOrderBillingInstructions" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 ExpandableRows="True" ResizableColumns="True"  OnRowCommand="grdSalesOrderBillingInstructions_RowCommand"
 DataKeyNames="InstanceId,Id"
 OnRowEditing="grdSalesOrderBillingInstructions_RowEditing"  OnRowDeleting="grdSalesOrderBillingInstructions_RowDeleting" OnRowDataBound="grdSalesOrderBillingInstructions_RowDataBound" >
<Columns>
   <asp:BoundField DataField="DateOfBilling"
  DataFormatString="<%$ resources: grdSalesOrderBillingInstructions.64878ae0-c160-4f7e-8d0c-5220ddb5dd7a.FormatString %>" HtmlEncode="false"    HeaderText="<%$ resources: grdSalesOrderBillingInstructions.64878ae0-c160-4f7e-8d0c-5220ddb5dd7a.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="InstructionDate"
  DataFormatString="<%$ resources: grdSalesOrderBillingInstructions.eb368936-0f89-430c-b88a-e8e66cb8830d.FormatString %>" HtmlEncode="false"    HeaderText="<%$ resources: grdSalesOrderBillingInstructions.eb368936-0f89-430c-b88a-e8e66cb8830d.ColumnHeading %>"          >
      </asp:BoundField>
    <asp:BoundField DataField="Comments"
      HeaderText="<%$ resources: grdSalesOrderBillingInstructions.f57debdf-5ec3-42d6-bf99-1428fcba6af2.ColumnHeading %>"          >
      </asp:BoundField>
  <asp:ButtonField CommandName="Edit"
  Text="<%$ resources: grdSalesOrderBillingInstructions.0a996cd0-1dc0-41e5-a8eb-1b5768bb1016.Text %>"        HeaderText="<%$ resources: grdSalesOrderBillingInstructions.0a996cd0-1dc0-41e5-a8eb-1b5768bb1016.ColumnHeading %>"        >
          </asp:ButtonField>
     <asp:ButtonField CommandName="Delete"
  Text="<%$ resources: grdSalesOrderBillingInstructions.019f966f-033a-4ba1-b774-aec0c82856b1.Text %>"         HeaderText="<%$ resources: grdSalesOrderBillingInstructions.019f966f-033a-4ba1-b774-aec0c82856b1.ColumnHeading %>"        >
          </asp:ButtonField>
   </Columns>
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">

               private int _grdSalesOrderBillingInstructionsdeleteColumnIndex = -2;
protected int grdSalesOrderBillingInstructionsDeleteColumnIndex
{
    get
    {
        if (_grdSalesOrderBillingInstructionsdeleteColumnIndex == -2)
        {
            int bias = (grdSalesOrderBillingInstructions.ExpandableRows) ? 1 : 0;
            _grdSalesOrderBillingInstructionsdeleteColumnIndex = -1;
            int colcount = 0;
            foreach (DataControlField col in grdSalesOrderBillingInstructions.Columns)
            {
                ButtonField btn = col as ButtonField;
                if (btn != null)
                {
                    if (btn.CommandName == "Delete")
                    {
                        _grdSalesOrderBillingInstructionsdeleteColumnIndex = colcount + bias;
                        break;
                    }
                }
                colcount++;
            }
        }
        return _grdSalesOrderBillingInstructionsdeleteColumnIndex;
    }
}

protected void grdSalesOrderBillingInstructions_RowDataBound(object sender, GridViewRowEventArgs e)
{
}
   
protected void grdSalesOrderBillingInstructions_RowCommand(object sender, GridViewCommandEventArgs e)
{
    if (e.CommandName == "Page")
        return;
    int rowIndex;
    if (Int32.TryParse(e.CommandArgument.ToString(), out rowIndex))
    {
        dsSalesOrderBillingInstructions.SelectedIndex = rowIndex;
        object currentEntity = dsSalesOrderBillingInstructions.Current;
        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
        string id = String.Empty;
        //Check if this is an unpersisted entity and use its InstanceId
        if (Sage.Platform.WebPortal.PortalUtil.ObjectIsNewEntity(currentEntity))
        {
            if (grdSalesOrderBillingInstructions.DataKeys[0].Values.Count > 1) {
                foreach (DictionaryEntry val in grdSalesOrderBillingInstructions.DataKeys[rowIndex].Values)
                {
                    if (val.Key.ToString() == "InstanceId")
                    {
                        Guid instanceId = (Guid)val.Value;
                        dsSalesOrderBillingInstructions.SetCurrentEntityByInstanceId(instanceId);
                        id = instanceId.ToString();
                        currentEntity = dsSalesOrderBillingInstructions.Current;
                        if ((currentEntity is Sage.Platform.ComponentModel.ComponentView) && !((Sage.Platform.ComponentModel.ComponentView)currentEntity).IsVirtualComponent)
                            currentEntity = ((Sage.Platform.ComponentModel.ComponentView)currentEntity).Component;
                    }
                }
            }
        }
        else
        {
            foreach (DictionaryEntry val in grdSalesOrderBillingInstructions.DataKeys[rowIndex].Values)
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
                            DialogService.SetSpecs(400, 600, "AddEditBillingInstruction", GetLocalResourceObject("6db69f78-5a68-46c8-bd93-4a4332217315.DialogTitleOverride").ToString() );
                            DialogService.EntityType = typeof(Sage.Entity.Interfaces.ISalesOrderBillingInstruction );
                DialogService.EntityID = id;
                DialogService.ShowDialog();
            }
        }
        if (e.CommandName.Equals("Delete"))
        {
            Sage.Entity.Interfaces.ISalesOrder mainentity = this.BindingSource.Current as Sage.Entity.Interfaces.ISalesOrder;
            if (mainentity != null)
            {
                Sage.Entity.Interfaces.ISalesOrderBillingInstruction childEntity = null;
                if((currentEntity != null) && (currentEntity is Sage.Entity.Interfaces.ISalesOrderBillingInstruction))
                {
                    childEntity = (Sage.Entity.Interfaces.ISalesOrderBillingInstruction)currentEntity;
                }
                else if (id != null)
                {
                    childEntity = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.ISalesOrderBillingInstruction>(id);
            }
                if(childEntity != null)
                {
                     mainentity.SalesOrderBillingInstructions.Remove(childEntity);

                     if((childEntity.PersistentState & Sage.Platform.Orm.Interfaces.PersistentState.New) <= 0)
                     {
                         childEntity.Delete();
                     }
                     dsSalesOrderBillingInstructions.SelectedIndex = -1;
                }
            }
        }
    }
    grdSalesOrderBillingInstructions_refresh();
}
    protected void grdSalesOrderBillingInstructions_refresh()
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

        protected void grdSalesOrderBillingInstructions_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdSalesOrderBillingInstructions.SelectedIndex = e.NewEditIndex;
        e.Cancel = true;
    }
            protected void grdSalesOrderBillingInstructions_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        grdSalesOrderBillingInstructions.SelectedIndex = -1;
    }
    </script>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="BillingInstructions_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="QFButton"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=BillingInstructions&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkBillingInstructionsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="BillingInstructions" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsSalesOrderBillingInstructions;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsSalesOrderBillingInstructions
{ 
  get 
  {
    if (_dsSalesOrderBillingInstructions == null)
    {
             _dsSalesOrderBillingInstructions = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.ISalesOrderBillingInstruction), 
	    EntityType              ,"SalesOrderBillingInstructions", System.Reflection.MemberTypes.Property);
                   _dsSalesOrderBillingInstructions.UseSmartQuery = true;
      	   	}
 	return _dsSalesOrderBillingInstructions;
  }
}

void dsSalesOrderBillingInstructions_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsSalesOrderBillingInstructions.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsSalesOrderBillingInstructions);
   }
}

 



 

protected override void OnAddEntityBindings() {
       dsSalesOrderBillingInstructions.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("SalesOrderBillingInstructions", grdSalesOrderBillingInstructions ));
   dsSalesOrderBillingInstructions.BindFieldNames = new String[] { "Id","DateOfBilling","InstructionDate","Comments" };
     
     BindingSource.OnCurrentEntitySet += new EventHandler(dsSalesOrderBillingInstructions_OnCurrentEntitySet);
    
    }
       
protected void QFButton_ClickAction(object sender, EventArgs e) {
if (DialogService != null)
{
  // InsertChildDialogActionItem
  DialogService.SetSpecs(400, 600, "AddEditBillingInstruction", GetLocalResourceObject("412038ab-c382-41d0-80cd-59ce0fd4701f.DialogTitleOverride").ToString() );
  DialogService.EntityType = typeof(Sage.Entity.Interfaces.ISalesOrderBillingInstruction); 
  DialogService.SetChildIsertInfo(
    typeof(Sage.Entity.Interfaces.ISalesOrderBillingInstruction),
    typeof(Sage.Entity.Interfaces.ISalesOrder),
    typeof(Sage.Entity.Interfaces.ISalesOrderBillingInstruction).GetProperty("SalesOrder"),
    typeof(Sage.Entity.Interfaces.ISalesOrder).GetProperty("SalesOrderBillingInstructions"));
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
if (dsSalesOrderBillingInstructions.SourceObject == null) { dsSalesOrderBillingInstructions.SourceObject = BindingSource.Current; }
if (dsSalesOrderBillingInstructions.SourceObject == null) { RegisterBindingsWithClient(dsSalesOrderBillingInstructions); }
dsSalesOrderBillingInstructions.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new BillingInstructionsAdapter(this)); }
}

public class BillingInstructionsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IBillingInstructions
{
    public BillingInstructionsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataGridControl _grdSalesOrderBillingInstructions;
    public  Sage.Platform.Controls.IDataGridControl grdSalesOrderBillingInstructions
    {
        get { return FindControl(ref _grdSalesOrderBillingInstructions, "grdSalesOrderBillingInstructions"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dsSalesOrderBillingInstructions;
    public  Sage.Platform.Controls.IDataSourceControl dsSalesOrderBillingInstructions
    {
        get { return FindControl(ref _dsSalesOrderBillingInstructions, "dsSalesOrderBillingInstructions"); }
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
