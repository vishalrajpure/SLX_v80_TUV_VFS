<%@ Control Language="C#" ClassName="ProductDetails" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
            <col width="50%" />
     <tr>
            <td></td>
                <td></td>
      </tr>
<tr>
            <td  colspan="2" >
 <div class="twocollbl alignleft" >
   <asp:Label ID="txtName_lbl" AssociatedControlID="txtName" runat="server" Text="<%$ resources: txtName.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"   >
<asp:TextBox runat="server" ID="txtName"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
            </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklType_lbl" AssociatedControlID="pklType" runat="server" Text="<%$ resources: pklType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklType" PickListName="TypeProduct" MustExistInList="false" Required="true"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklFamily_lbl" AssociatedControlID="pklFamily" runat="server" Text="<%$ resources: pklFamily.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklFamily" PickListName="FamilyProduct" MustExistInList="false" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklCriticality_lbl" AssociatedControlID="pklCriticality" runat="server" Text="<%$ resources: pklCriticality.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklCriticality" PickListName="ProductCriticality" MustExistInList="false" MaxLength="32"  />
  </div>

      </td>
                <td  >
<div class=" lbl alignleft">
    <asp:Label ID="Price_lbl" AssociatedControlID="Price" runat="server" Text="<%$ resources: Price.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="Price" 
    ExchangeRateType="BaseRate"
     Required="false"
 DecimalDigits="-1"
 />
</div>

      </td>
      </tr>
<tr>
            <td  >
<div class=" lbl alignleft">
    <asp:Label ID="curCost_lbl" AssociatedControlID="curCost" runat="server" Text="<%$ resources: curCost.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="curCost" 
    ExchangeRateType="BaseRate"
     Required="false"
 DecimalDigits="-1"
 />
</div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklStatus_lbl" AssociatedControlID="pklStatus" runat="server" Text="<%$ resources: pklStatus.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklStatus" PickListName="Product Status"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="QFTextBox1_lbl" AssociatedControlID="QFTextBox1" runat="server" Text="<%$ resources: QFTextBox1.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="QFTextBox1" PickListName="SAPGroupIdentification" MustExistInList="false" MaxLength="32"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
<asp:Panel runat="server" ID="clIntegrationContract" CssClass="controlslist "
>
   <div class=" lbl alignleft" >
   <asp:Label ID="lueUnitOfMeasure_lbl" AssociatedControlID="lueUnitOfMeasure" runat="server" Text="<%$ resources: lueUnitOfMeasure.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="lueUnitOfMeasure" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

</asp:Panel>
      </td>
                <td></td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtSKU_lbl" AssociatedControlID="txtSKU" runat="server" Text="<%$ resources: txtSKU.Caption %>" Visible="false" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtSKU"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64" Visible="false"  />
  </div>

      </td>
                <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="ProductDetails_RTools" ToolbarLocation="right">
   <SalesLogix:GroupNavigator runat="server" ID="grpNavProducts" ></SalesLogix:GroupNavigator>
    <asp:ImageButton runat="server" ID="btnSave"
 ToolTip="<%$ resources: btnSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnInsertSave"
 ToolTip="<%$ resources: btnInsertSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnDelete"
 ToolTip="<%$ resources: btnDelete.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16" 
 />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=ProductDetails&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkProductDetailsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="ProductDetails" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IProduct); }
}

 

protected override void OnAddEntityBindings() {
                 // txtName.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtNameTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Name", txtName, "Text");
        BindingSource.Bindings.Add(txtNameTextBinding);
                    // pklType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Type", pklType, "PickListValue");
        BindingSource.Bindings.Add(pklTypePickListValueBinding);
                    // pklFamily.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklFamilyPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Family", pklFamily, "PickListValue");
        BindingSource.Bindings.Add(pklFamilyPickListValueBinding);
                    // pklCriticality.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklCriticalityPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Criticality", pklCriticality, "PickListValue");
        BindingSource.Bindings.Add(pklCriticalityPickListValueBinding);
                    // Price.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding PriceTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Price", Price, "Text");
        BindingSource.Bindings.Add(PriceTextBinding);
                    // curCost.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curCostTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("FixedCost", curCost, "Text");
        BindingSource.Bindings.Add(curCostTextBinding);
                    // pklStatus.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklStatusPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Status", pklStatus, "PickListValue");
        BindingSource.Bindings.Add(pklStatusPickListValueBinding);
                    // QFTextBox1.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox1PickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SAPGroupIdentification", QFTextBox1, "PickListValue");
        BindingSource.Bindings.Add(QFTextBox1PickListValueBinding);
                       // lueUnitOfMeasure.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueUnitOfMeasureTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("UnitOfMeasure.Name", lueUnitOfMeasure, "Text");
        BindingSource.Bindings.Add(lueUnitOfMeasureTextBinding);
                    // txtSKU.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtSKUTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ActualId", txtSKU, "Text");
        BindingSource.Bindings.Add(txtSKUTextBinding);
    
   
             
      
      
      
             
      
      
      
             
      
      
      
    }
                                                                             
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IProduct _entity = BindingSource.Current as Sage.Entity.Interfaces.IProduct;
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

  
}
protected void btnInsertSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IProduct _entity = BindingSource.Current as Sage.Entity.Interfaces.IProduct;
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

          btnInsertSave_ClickActionBRC(sender, e);
    
  
}
protected void btnInsertSave_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect(string.Format("Product.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}
protected void btnDelete_ClickAction(object sender, EventArgs e) {
  Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
  if (persistentEntity != null) {
    persistentEntity.Delete();
  }

          btnDelete_ClickActionBRC(sender, e);
    
  
}
protected void btnDelete_ClickActionBRC(object sender, EventArgs e) {
      Response.Redirect("Product.aspx");
  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 if (RoleSecurityService != null)
{
if (RoleSecurityService.HasAccess("ENTITIES/PRODUCT/EDIT"))
{
btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);
}
}
if (RoleSecurityService != null)
{
if (RoleSecurityService.HasAccess("ENTITIES/PRODUCT/ADD"))
{
btnInsertSave.Click += new ImageClickEventHandler(btnInsertSave_ClickAction);
}
}
if (RoleSecurityService != null)
{
if (RoleSecurityService.HasAccess("ENTITIES/PRODUCT/DELETE"))
{
btnDelete.Click += new ImageClickEventHandler(btnDelete_ClickAction);
}
}


}

protected void quickformload0(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("ProductDetails.OnLoad", methodArgs);

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
ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
ClientBindingMgr.RegisterSaveButton(btnSave);

ClientBindingMgr.RegisterSaveButton(btnInsertSave);

btnDelete.OnClientClick = string.Format("return confirm('{0}');", Sage.Platform.WebPortal.PortalUtil.JavaScriptEncode(GetLocalResourceObject("btnDelete.ActionConfirmationMessage").ToString()));

if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (!RoleSecurityService.HasAccess("ENTITIES/PRODUCT/EDIT"))
{
btnSave.Visible = false;
}
if (!RoleSecurityService.HasAccess("ENTITIES/PRODUCT/ADD"))
{
btnInsertSave.Visible = false;
}
if (!RoleSecurityService.HasAccess("ENTITIES/PRODUCT/DELETE"))
{
btnDelete.Visible = false;
}
ClientBindingMgr.SetFocusTo(txtName);


}



public override Sage.Platform.Application.UI.ISmartPartInfo GetSmartPartInfo(Type smartPartInfoType)
{
    ToolsSmartPartInfo tinfo = new ToolsSmartPartInfo();
    
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
    get { return _formAdapter ?? (_formAdapter = new ProductDetailsAdapter(this)); }
}

public class ProductDetailsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IProductDetails
{
    public ProductDetailsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _txtName;
    public  Sage.Platform.Controls.ITextBoxControl txtName
    {
        get { return FindControl(ref _txtName, "txtName"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklType;
    public  Sage.Platform.Controls.IPickListControl pklType
    {
        get { return FindControl(ref _pklType, "pklType"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklCriticality;
    public  Sage.Platform.Controls.IPickListControl pklCriticality
    {
        get { return FindControl(ref _pklCriticality, "pklCriticality"); }
    }
    private Sage.Platform.Controls.ICurrencyControl _curCost;
    public  Sage.Platform.Controls.ICurrencyControl curCost
    {
        get { return FindControl(ref _curCost, "curCost"); }
    }
    private Sage.Platform.Controls.IPickListControl _QFTextBox1;
    public  Sage.Platform.Controls.IPickListControl QFTextBox1
    {
        get { return FindControl(ref _QFTextBox1, "QFTextBox1"); }
    }
    private Sage.Platform.Controls.IControlsListControl _clIntegrationContract;
    public  Sage.Platform.Controls.IControlsListControl clIntegrationContract
    {
        get { return FindControl(ref _clIntegrationContract, "clIntegrationContract"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _lueUnitOfMeasure;
    public  Sage.Platform.Controls.ITextBoxControl lueUnitOfMeasure
    {
        get { return FindControl(ref _lueUnitOfMeasure, "lueUnitOfMeasure"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtSKU;
    public  Sage.Platform.Controls.ITextBoxControl txtSKU
    {
        get { return FindControl(ref _txtSKU, "txtSKU"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklFamily;
    public  Sage.Platform.Controls.IPickListControl pklFamily
    {
        get { return FindControl(ref _pklFamily, "pklFamily"); }
    }
    private Sage.Platform.Controls.ICurrencyControl _Price;
    public  Sage.Platform.Controls.ICurrencyControl Price
    {
        get { return FindControl(ref _Price, "Price"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklStatus;
    public  Sage.Platform.Controls.IPickListControl pklStatus
    {
        get { return FindControl(ref _pklStatus, "pklStatus"); }
    }
    private Sage.Platform.Controls.IGroupNavigatorControl _grpNavProducts;
    public  Sage.Platform.Controls.IGroupNavigatorControl grpNavProducts
    {
        get { return FindControl(ref _grpNavProducts, "grpNavProducts"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnSave;
    public  Sage.Platform.Controls.IButtonControl btnSave
    {
        get { return FindControl(ref _btnSave, "btnSave"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnInsertSave;
    public  Sage.Platform.Controls.IButtonControl btnInsertSave
    {
        get { return FindControl(ref _btnInsertSave, "btnInsertSave"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnDelete;
    public  Sage.Platform.Controls.IButtonControl btnDelete
    {
        get { return FindControl(ref _btnDelete, "btnDelete"); }
    }

    public  void OnLoad(System.EventArgs e)
    {
        Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
        Object[] methodArgs = new Object[] { this, e };
        lib.Execute("ProductDetails.OnLoad", methodArgs);
    }
}

</script>

<script type="text/javascript">
</script>
