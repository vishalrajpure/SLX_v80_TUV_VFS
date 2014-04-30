<%@ Control Language="C#" ClassName="CallsActivityRateDetail" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="25%" />
            <col width="50%" />
            <col width="25%" />
     <tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtRateTypeCode_lbl" AssociatedControlID="txtRateTypeCode" runat="server" Text="<%$ resources: txtRateTypeCode.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtRateTypeCode"  dojoType="Sage.UI.Controls.TextBox" MaxLength="12"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtTypeDescription_lbl" AssociatedControlID="txtTypeDescription" runat="server" Text="<%$ resources: txtTypeDescription.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtTypeDescription"  dojoType="Sage.UI.Controls.TextBox" MaxLength="80"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtAmount_lbl" AssociatedControlID="txtAmount" runat="server" Text="<%$ resources: txtAmount.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtAmount"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="CallsActivityRateDetail_RTools" ToolbarLocation="right">
   <SalesLogix:GroupNavigator runat="server" ID="navTicketActivityRate" ></SalesLogix:GroupNavigator>
    <asp:ImageButton runat="server" ID="Save"
 AlternateText="<%$ resources: Save.Caption %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnAdd"
 AlternateText="<%$ resources: btnAdd.Caption %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  />
 
    <asp:ImageButton runat="server" ID="btnDelete"
 AlternateText="<%$ resources: btnDelete.Caption %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=CallsActivityRateDetail&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkCallsActivityRateDetailHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="CallsActivityRateDetail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.ITicketActivityRate); }
}

 

protected override void OnAddEntityBindings() {
                 // txtRateTypeCode.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtRateTypeCodeTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("RateTypeCode", txtRateTypeCode, "Text");
        BindingSource.Bindings.Add(txtRateTypeCodeTextBinding);
                    // txtTypeDescription.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtTypeDescriptionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("TypeDescription", txtTypeDescription, "Text");
        BindingSource.Bindings.Add(txtTypeDescriptionTextBinding);
                    // txtAmount.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtAmountTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Amount", txtAmount, "Text");
        BindingSource.Bindings.Add(txtAmountTextBinding);
    
   
                }
                     
protected void Save_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ITicketActivityRate _entity = BindingSource.Current as Sage.Entity.Interfaces.ITicketActivityRate;
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

          Save_ClickActionBRC(sender, e);
    
  
}
protected void Save_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect(string.Format("TicketActivityRate.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}
protected void btnAdd_ClickAction(object sender, EventArgs e) {
            Response.Redirect("TicketActivityRate.aspx?modeid=insert");
      
}
protected void btnDelete_ClickAction(object sender, EventArgs e) {
  Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
  if (persistentEntity != null) {
    persistentEntity.Delete();
  }

          btnDelete_ClickActionBRC(sender, e);
    
  
}
protected void btnDelete_ClickActionBRC(object sender, EventArgs e) {

	//Query for the first of the remaining rates sorted by RateTypeCode so we can redirect them to the Edit screen
	Sage.Platform.RepositoryHelper<Sage.Entity.Interfaces.ITicketActivityRate> repoHelper = Sage.Platform.EntityFactory.GetRepositoryHelper<Sage.Entity.Interfaces.ITicketActivityRate>();
    Sage.Platform.Repository.ICriteria criteria = repoHelper.CreateCriteria();
	criteria.AddOrder(repoHelper.EF.Asc("RateTypeCode"));
	criteria.SetFirstResult(0);
	criteria.SetMaxResults(1);
    criteria.SetProjection(repoHelper.PF.Property("Id"));
    System.Collections.Generic.IList<string> definedRates = criteria.List<string>();

    if (definedRates.Count == 0)
    {
        HttpContext.Current.Response.Redirect("~/TicketActivityRate.aspx?modeId=list", false);
    }
    else
    {
        HttpContext.Current.Response.Redirect(string.Format("~/TicketActivityRate.aspx?entityId={0}", definedRates[0].ToString()), false);
    }


}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 Save.Click += new ImageClickEventHandler(Save_ClickAction);
btnAdd.Click += new ImageClickEventHandler(btnAdd_ClickAction);
btnDelete.Click += new ImageClickEventHandler(btnDelete_ClickAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterSaveButton(Save);

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
    get { return _formAdapter ?? (_formAdapter = new CallsActivityRateDetailAdapter(this)); }
}

public class CallsActivityRateDetailAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ICallsActivityRateDetail
{
    public CallsActivityRateDetailAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _txtRateTypeCode;
    public  Sage.Platform.Controls.ITextBoxControl txtRateTypeCode
    {
        get { return FindControl(ref _txtRateTypeCode, "txtRateTypeCode"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtTypeDescription;
    public  Sage.Platform.Controls.ITextBoxControl txtTypeDescription
    {
        get { return FindControl(ref _txtTypeDescription, "txtTypeDescription"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtAmount;
    public  Sage.Platform.Controls.ITextBoxControl txtAmount
    {
        get { return FindControl(ref _txtAmount, "txtAmount"); }
    }
    private Sage.Platform.Controls.IGroupNavigatorControl _navTicketActivityRate;
    public  Sage.Platform.Controls.IGroupNavigatorControl navTicketActivityRate
    {
        get { return FindControl(ref _navTicketActivityRate, "navTicketActivityRate"); }
    }
    private Sage.Platform.Controls.IButtonControl _Save;
    public  Sage.Platform.Controls.IButtonControl Save
    {
        get { return FindControl(ref _Save, "Save"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnAdd;
    public  Sage.Platform.Controls.IButtonControl btnAdd
    {
        get { return FindControl(ref _btnAdd, "btnAdd"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnDelete;
    public  Sage.Platform.Controls.IButtonControl btnDelete
    {
        get { return FindControl(ref _btnDelete, "btnDelete"); }
    }

}

</script>

<script type="text/javascript">
</script>
