<%@ Control Language="C#" ClassName="AddEditProductCases" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="50%" />
     <tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpProductStages_lbl" AssociatedControlID="lkpProductStages" runat="server" Text="<%$ resources: lkpProductStages.Caption %>" ></asp:Label>
 </div>   
  <div    >
<SalesLogix:LookupControl runat="server" ID="lkpProductStages" LookupEntityName="ProductStage" LookupEntityTypeName="Sage.Entity.Interfaces.IProductStage, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="DropDownList" LookupBindingMode="String" SeedProperty="$qfcontrol.SeedProperty" DropDownDisplayProperty="Name"  >
<LookupProperties>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="TestCaseName_lbl" AssociatedControlID="TestCaseName" runat="server" Text="<%$ resources: TestCaseName.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="TestCaseName"  dojoType="Sage.UI.Controls.TextBox" MaxLength="128"  />
  </div>

      </td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="AddEditProductCases_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnSave"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=AddEditProductCases&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkAddEditProductCasesHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="AddEditProductCases" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IProductTestCases); }
}

 

protected override void OnAddEntityBindings() {
                 // lkpProductStages.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpProductStagesLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ProductStageId", lkpProductStages, "LookupResultValue");
        BindingSource.Bindings.Add(lkpProductStagesLookupResultValueBinding);
                 // lkpProductStages.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpProductStagesSeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Product.Id", lkpProductStages, "SeedValue");
        lkpProductStagesSeedValueBinding.IgnoreFLSDisabling = true;
        BindingSource.Bindings.Add(lkpProductStagesSeedValueBinding);
                    // TestCaseName.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding TestCaseNameTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("TestCaseName", TestCaseName, "Text");
        BindingSource.Bindings.Add(TestCaseNameTextBinding);
    
   
    }
              
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IProductTestCases _entity = BindingSource.Current as Sage.Entity.Interfaces.IProductTestCases;
  if (_entity != null)
  {
    object _parent = GetParentEntity();
    if (DialogService.ChildInsertInfo != null)
    {
        if (_parent != null)
        {
            if (DialogService.ChildInsertInfo.ParentReferenceProperty != null)
            {
                DialogService.ChildInsertInfo.ParentReferenceProperty.SetValue(_entity, _parent, null);
            }
        }
    }
    bool shouldSave = true;
    Sage.Platform.WebPortal.EntityPage page = Page as Sage.Platform.WebPortal.EntityPage;
    if (page != null)
    {
        if(IsInDialog() && page.ModeId.ToUpper() == "INSERT")
        {
            shouldSave = false;
        }
    }

    if(shouldSave)
    {
       _entity.Save();
    }

    if (_parent != null)
    {
        if (DialogService.ChildInsertInfo != null)
        {
           if (DialogService.ChildInsertInfo.ParentsCollectionProperty != null)
           {
              System.Reflection.MethodInfo _add = DialogService.ChildInsertInfo.ParentsCollectionProperty.PropertyType.GetMethod("Add");
              _add.Invoke(DialogService.ChildInsertInfo.ParentsCollectionProperty.GetValue(_parent, null), new object[] { _entity });
           }
        }
     }
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
 btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);
btnSave.Click += new ImageClickEventHandler(DialogService.CloseEventHappened);
btnSave.Click += new ImageClickEventHandler(Refresh);


}

protected void quickformload0(object sender, EventArgs e) {
  Sage.Platform.WebPortal.EntityPage page = (Sage.Platform.WebPortal.EntityPage)Page;
    
    
    
Sage.SalesLogix.HighLevelTypes.LookupPreFilter actfilter = new Sage.SalesLogix.HighLevelTypes.LookupPreFilter();
        actfilter.LookupEntityName = "Sage.Entity.Interfaces.IProductStage";
        actfilter.FilterValue = page.EntityContext.EntityID.ToString () ;
        actfilter.PropertyName = "ProductId";
        actfilter.OperatorCode = "==";
        actfilter.PropertyType = "System.String";
        lkpProductStages.LookupPreFilters.Clear();
        lkpProductStages.LookupPreFilters.Add(actfilter);

}
private bool _runActivating;
protected override void OnActivating()
{
_runActivating = true;
}
private void DoActivating()
{
quickformload0(this, EventArgs.Empty);

}
protected override void OnFormBound()
{
Sage.Platform.WebPortal.EntityPage epage = Page as Sage.Platform.WebPortal.EntityPage;
        if (epage != null)
            _runActivating = (epage.IsNewEntity || _runActivating);
if (_runActivating) DoActivating();
ClientBindingMgr.RegisterSaveButton(btnSave);

if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}


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
    get { return _formAdapter ?? (_formAdapter = new AddEditProductCasesAdapter(this)); }
}

public class AddEditProductCasesAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAddEditProductCases
{
    public AddEditProductCasesAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ILookupControl _lkpProductStages;
    public  Sage.Platform.Controls.ILookupControl lkpProductStages
    {
        get { return FindControl(ref _lkpProductStages, "lkpProductStages"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _TestCaseName;
    public  Sage.Platform.Controls.ITextBoxControl TestCaseName
    {
        get { return FindControl(ref _TestCaseName, "TestCaseName"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnSave;
    public  Sage.Platform.Controls.IButtonControl btnSave
    {
        get { return FindControl(ref _btnSave, "btnSave"); }
    }

}

</script>

<script type="text/javascript">
</script>
