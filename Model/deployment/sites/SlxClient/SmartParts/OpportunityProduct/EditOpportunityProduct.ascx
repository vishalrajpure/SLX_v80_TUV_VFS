<%@ Control Language="C#" ClassName="EditOpportunityProduct" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtSort_lbl" AssociatedControlID="txtSort" runat="server" Text="<%$ resources: txtSort.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtSort" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  colspan="2" >
 <div class="twocollbl alignleft" >
   <asp:Label ID="txtName_lbl" AssociatedControlID="txtName" runat="server" Text="<%$ resources: txtName.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"   >
<asp:TextBox runat="server" ID="txtName" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox" TabIndex="1"  />
  </div>

      </td>
            </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklCriticality_lbl" AssociatedControlID="pklCriticality" runat="server" Text="<%$ resources: pklCriticality.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklCriticality" PickListName="ProductCriticality" MustExistInList="false" MaxLength="64"  />
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
   <asp:Label ID="pklType_lbl" AssociatedControlID="pklType" runat="server" Text="<%$ resources: pklType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklType" PickListName="TypeProduct" MustExistInList="false" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklInspectionType_lbl" AssociatedControlID="pklInspectionType" runat="server" Text="<%$ resources: pklInspectionType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklInspectionType" PickListName="InspectionType" MustExistInList="false" MaxLength="32"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="ManDayRequired_lbl" AssociatedControlID="ManDayRequired" runat="server" Text="<%$ resources: ManDayRequired.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="ManDayRequired"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtQuantity_lbl" AssociatedControlID="txtQuantity" runat="server" Text="<%$ resources: txtQuantity.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtQuantity"  dojoType="Sage.UI.Controls.TextBox" TabIndex="7" AutoPostBack="true"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
<div class=" lbl alignleft">
    <asp:Label ID="curPrice_lbl" AssociatedControlID="curPrice" runat="server" Text="<%$ resources: curPrice.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="curPrice" 
    ExchangeRateType="BaseRate"
    ReadOnly="true"  Required="false"
 DisplayCurrencyCode="false" DecimalDigits="-1"
TabIndex="3"  />
</div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lstbxPriceLevel_lbl" AssociatedControlID="lstbxPriceLevel" runat="server" Text="<%$ resources: lstbxPriceLevel.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol select"  > 
<asp:ListBox runat="server" ID="lstbxPriceLevel"  SelectionMode="Single" Rows="1" data-dojo-type="dijit.form.Select"  CssClass="select-control " TabIndex="2" AutoPostBack="true"  >
</asp:ListBox>
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="txtDiscount_lbl" AssociatedControlID="txtDiscount" runat="server" Text="<%$ resources: txtDiscount.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="txtDiscount"
TabIndex="4" FormatType="Percent" Strict="False" 
AutoPostBack="true"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
<div class=" lbl alignleft">
    <asp:Label ID="curCalculatedPrice_lbl" AssociatedControlID="curCalculatedPrice" runat="server" Text="<%$ resources: curCalculatedPrice.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="curCalculatedPrice" 
    ExchangeRateType="BaseRate"
     Required="false"
 DisplayCurrencyCode="false" DecimalDigits="-1"
TabIndex="5" AutoPostBack="true"  />
</div>

      </td>
                <td></td>
      </tr>
<tr>
            <td></td>
                <td></td>
      </tr>
<tr>
            <td></td>
                <td></td>
      </tr>
<tr>
            <td  >
<div class=" lbl alignleft">
    <asp:Label ID="curMCCalcPrice_lbl" AssociatedControlID="curMCCalcPrice" runat="server" Text="<%$ resources: curMCCalcPrice.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="curMCCalcPrice" 
    ExchangeRateType="EntityRate"
     Required="false"
 DecimalDigits="-1"
TabIndex="6" AutoPostBack="true"  />
</div>

      </td>
                <td></td>
      </tr>
<tr>
            <td></td>
                <td></td>
      </tr>
<tr>
            <td  >
<div class=" lbl alignleft">
    <asp:Label ID="curExtendedPrice_lbl" AssociatedControlID="curExtendedPrice" runat="server" Text="<%$ resources: curExtendedPrice.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="curExtendedPrice" 
    ExchangeRateType="BaseRate"
    ReadOnly="true"  Required="false"
 DisplayCurrencyCode="false" DecimalDigits="-1"
TabIndex="8"  />
</div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
<asp:Panel runat="server" ID="QFControlsList" CssClass="controlslist qfActionContainer"
>
   <asp:Button runat="server" ID="btnOK"
 Text="<%$ resources: btnOK.Caption %>" TabIndex="9" CssClass="slxbutton"  />
   
   <asp:Button runat="server" ID="btnCancel"
 Text="<%$ resources: btnCancel.Caption %>" TabIndex="10" CssClass="slxbutton"  />
 
</asp:Panel>
      </td>
                <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="EditOpportunityProduct_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=EditOpportunityProduct&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkEditOpportunityProductHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="EditOpportunityProduct" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IOpportunityProduct); }
}

 

protected override void OnAddEntityBindings() {
                 // txtSort.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtSortTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Sort", txtSort, "Text");
        BindingSource.Bindings.Add(txtSortTextBinding);
                    // txtName.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtNameTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Product.Name", txtName, "Text");
        BindingSource.Bindings.Add(txtNameTextBinding);
                    // pklCriticality.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklCriticalityPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Product.Criticality", pklCriticality, "PickListValue");
        BindingSource.Bindings.Add(pklCriticalityPickListValueBinding);
                    // pklFamily.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklFamilyPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Product.Family", pklFamily, "PickListValue");
        BindingSource.Bindings.Add(pklFamilyPickListValueBinding);
                    // pklType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Product.Type", pklType, "PickListValue");
        BindingSource.Bindings.Add(pklTypePickListValueBinding);
                    // pklInspectionType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklInspectionTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("InspectionType", pklInspectionType, "PickListValue");
        BindingSource.Bindings.Add(pklInspectionTypePickListValueBinding);
                    // ManDayRequired.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding ManDayRequiredTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ManDayRequired", ManDayRequired, "Text");
        BindingSource.Bindings.Add(ManDayRequiredTextBinding);
                    // txtQuantity.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtQuantityTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Quantity", txtQuantity, "Text");
        BindingSource.Bindings.Add(txtQuantityTextBinding);
                    // curPrice.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curPriceTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Price", curPrice, "Text");
        BindingSource.Bindings.Add(curPriceTextBinding);
                    // lstbxPriceLevel.SelectedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lstbxPriceLevelSelectedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Program", lstbxPriceLevel, "SelectedValue");
        lstbxPriceLevelSelectedValueBinding.ChangeNotificationEventName = "TextChanged";
        lstbxPriceLevelSelectedValueBinding.IgnoreFLSDisabling = true;
        BindingSource.Bindings.Add(lstbxPriceLevelSelectedValueBinding);
                    // txtDiscount.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtDiscountTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Discount", txtDiscount, "Text");
        BindingSource.Bindings.Add(txtDiscountTextBinding);
                    // curCalculatedPrice.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curCalculatedPriceTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CalculatedPrice", curCalculatedPrice, "Text");
        BindingSource.Bindings.Add(curCalculatedPriceTextBinding);
                    // curMCCalcPrice.CurrentCode Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curMCCalcPriceCurrentCodeBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Opportunity.ExchangeRateCode", curMCCalcPrice, "CurrentCode");
        curMCCalcPriceCurrentCodeBinding.IgnoreFLSDisabling = true;
        BindingSource.Bindings.Add(curMCCalcPriceCurrentCodeBinding);
                 // curMCCalcPrice.ExchangeRate Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curMCCalcPriceExchangeRateBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Opportunity.ExchangeRate", curMCCalcPrice, "ExchangeRate");
        curMCCalcPriceExchangeRateBinding.IgnoreFLSDisabling = true;
        BindingSource.Bindings.Add(curMCCalcPriceExchangeRateBinding);
                 // curMCCalcPrice.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curMCCalcPriceTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CalculatedPrice", curMCCalcPrice, "Text");
        BindingSource.Bindings.Add(curMCCalcPriceTextBinding);
                    // curExtendedPrice.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curExtendedPriceTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ExtendedPrice", curExtendedPrice, "Text");
        BindingSource.Bindings.Add(curExtendedPriceTextBinding);
             
   
}
                                                                                                                       
protected void txtQuantity_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IOpportunityProduct>("OpportunityProduct.CalculateExtendedPrice", objarray);

          txtQuantity_ChangeActionBRC(sender, e);
    
  
}
protected void txtQuantity_ChangeActionBRC(object sender, EventArgs e) {
Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
if (refresher != null) {
  refresher.RefreshAll();
}
else {  
  Response.Redirect(Request.Url.ToString());
}
}
protected void lstbxPriceLevel_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IOpportunityProduct>("OpportunityProduct.CalcPriceFromProgramPrice", objarray);

          lstbxPriceLevel_ChangeActionBRC(sender, e);
    
  
}
protected void lstbxPriceLevel_ChangeActionBRC(object sender, EventArgs e) {
Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
if (refresher != null) {
  refresher.RefreshAll();
}
else {  
  Response.Redirect(Request.Url.ToString());
}
}
protected void txtDiscount_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IOpportunityProduct>("OpportunityProduct.CalculateDiscount", objarray);

          txtDiscount_ChangeActionBRC(sender, e);
    
  
}
protected void txtDiscount_ChangeActionBRC(object sender, EventArgs e) {
Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
if (refresher != null) {
  refresher.RefreshAll();
}
else {  
  Response.Redirect(Request.Url.ToString());
}
}
protected void curCalculatedPrice_ChangeAction(object sender, EventArgs e) {
      object[] objarray = new object[] { this.BindingSource.Current };
     Sage.Platform.EntityFactory.Execute<Sage.Entity.Interfaces.IOpportunityProduct>("OpportunityProduct.UpdateDiscountFromCalculatedSales", objarray);

          curCalculatedPrice_ChangeActionBRC(sender, e);
    
  
}
protected void curCalculatedPrice_ChangeActionBRC(object sender, EventArgs e) {
Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
if (refresher != null) {
  refresher.RefreshAll();
}
else {  
  Response.Redirect(Request.Url.ToString());
}
}
protected void curMCCalcPrice_ChangeAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("EditOpportunityProduct.curMCCalcPrice_OnChange", methodArgs);

}
protected void btnOK_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IOpportunityProduct _entity = BindingSource.Current as Sage.Entity.Interfaces.IOpportunityProduct;
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

          btnOK_ClickActionBRC(sender, e);
    
  
}
protected void btnOK_ClickActionBRC(object sender, EventArgs e) {
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
 txtQuantity.TextChanged += new EventHandler(txtQuantity_ChangeAction);
lstbxPriceLevel.TextChanged += new EventHandler(lstbxPriceLevel_ChangeAction);
txtDiscount.TextChanged += new EventHandler(txtDiscount_ChangeAction);
curCalculatedPrice.TextChanged += new EventHandler(curCalculatedPrice_ChangeAction);
curMCCalcPrice.TextChanged += new EventHandler(curMCCalcPrice_ChangeAction);
btnOK.Click += new EventHandler(btnOK_ClickAction);
btnOK.Click += new EventHandler(DialogService.CloseEventHappened);
btnOK.Click += new EventHandler(Refresh);
btnCancel.Click += new EventHandler(DialogService.CloseEventHappened);


}

protected void quickformload0(object sender, EventArgs e) {
var optionSvc = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.SalesLogix.Services.ISystemOptionsService>(true);
bool multiCurrency = optionSvc.MultiCurrency;
Sage.Entity.Interfaces.IOpportunityProduct oppProduct = BindingSource.Current as Sage.Entity.Interfaces.IOpportunityProduct;
if (multiCurrency)
{
	curMCCalcPrice.Visible = true;
	curMCCalcPrice_lbl.Visible = true;
}
else
{
	curMCCalcPrice.Visible = false;
	curMCCalcPrice_lbl.Visible = false;
}

lstbxPriceLevel.Items.Clear();
ListItem item;
foreach (Sage.Entity.Interfaces.IProductProgram priceLevel in oppProduct.Product.ProductProgram)
{
    item = new ListItem();
    item.Text = priceLevel.Program;
	item.Value = priceLevel.Program;
	if(oppProduct.Program == priceLevel.Program)
		item.Selected = true;
    lstbxPriceLevel.Items.Add(item);
}



}
protected override void OnFormBound()
{
ClientBindingMgr.RegisterSaveButton(btnOK);

ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
ClientBindingMgr.RegisterDialogCancelButton(btnCancel);
quickformload0(this, EventArgs.Empty);


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
    get { return _formAdapter ?? (_formAdapter = new EditOpportunityProductAdapter(this)); }
}

public class EditOpportunityProductAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IEditOpportunityProduct
{
    public EditOpportunityProductAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _txtSort;
    public  Sage.Platform.Controls.ITextBoxControl txtSort
    {
        get { return FindControl(ref _txtSort, "txtSort"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtName;
    public  Sage.Platform.Controls.ITextBoxControl txtName
    {
        get { return FindControl(ref _txtName, "txtName"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklCriticality;
    public  Sage.Platform.Controls.IPickListControl pklCriticality
    {
        get { return FindControl(ref _pklCriticality, "pklCriticality"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklType;
    public  Sage.Platform.Controls.IPickListControl pklType
    {
        get { return FindControl(ref _pklType, "pklType"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _ManDayRequired;
    public  Sage.Platform.Controls.ITextBoxControl ManDayRequired
    {
        get { return FindControl(ref _ManDayRequired, "ManDayRequired"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtQuantity;
    public  Sage.Platform.Controls.ITextBoxControl txtQuantity
    {
        get { return FindControl(ref _txtQuantity, "txtQuantity"); }
    }
    private Sage.Platform.Controls.ICurrencyControl _curPrice;
    public  Sage.Platform.Controls.ICurrencyControl curPrice
    {
        get { return FindControl(ref _curPrice, "curPrice"); }
    }
    private Sage.Platform.Controls.INumericControl _txtDiscount;
    public  Sage.Platform.Controls.INumericControl txtDiscount
    {
        get { return FindControl(ref _txtDiscount, "txtDiscount"); }
    }
    private Sage.Platform.Controls.ICurrencyControl _curCalculatedPrice;
    public  Sage.Platform.Controls.ICurrencyControl curCalculatedPrice
    {
        get { return FindControl(ref _curCalculatedPrice, "curCalculatedPrice"); }
    }
    private Sage.Platform.Controls.ICurrencyControl _curMCCalcPrice;
    public  Sage.Platform.Controls.ICurrencyControl curMCCalcPrice
    {
        get { return FindControl(ref _curMCCalcPrice, "curMCCalcPrice"); }
    }
    private Sage.Platform.Controls.ICurrencyControl _curExtendedPrice;
    public  Sage.Platform.Controls.ICurrencyControl curExtendedPrice
    {
        get { return FindControl(ref _curExtendedPrice, "curExtendedPrice"); }
    }
    private Sage.Platform.Controls.IControlsListControl _QFControlsList;
    public  Sage.Platform.Controls.IControlsListControl QFControlsList
    {
        get { return FindControl(ref _QFControlsList, "QFControlsList"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnOK;
    public  Sage.Platform.Controls.IButtonControl btnOK
    {
        get { return FindControl(ref _btnOK, "btnOK"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnCancel;
    public  Sage.Platform.Controls.IButtonControl btnCancel
    {
        get { return FindControl(ref _btnCancel, "btnCancel"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklFamily;
    public  Sage.Platform.Controls.IPickListControl pklFamily
    {
        get { return FindControl(ref _pklFamily, "pklFamily"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklInspectionType;
    public  Sage.Platform.Controls.IPickListControl pklInspectionType
    {
        get { return FindControl(ref _pklInspectionType, "pklInspectionType"); }
    }
    private Sage.Platform.Controls.IListBoxControl _lstbxPriceLevel;
    public  Sage.Platform.Controls.IListBoxControl lstbxPriceLevel
    {
        get { return FindControl(ref _lstbxPriceLevel, "lstbxPriceLevel"); }
    }

    public  void curMCCalcPrice_OnChange(System.EventArgs e)
    {
        Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
        Object[] methodArgs = new Object[] { this, e };
        lib.Execute("EditOpportunityProduct.curMCCalcPrice_OnChange", methodArgs);
    }
}

</script>

<script type="text/javascript">
</script>
