<%@ Control Language="C#" ClassName="AddEditQuotationProduct" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
     <tr>
            <td  colspan="2" >
 <div class="twocollbl alignleft">
   <asp:Label ID="lkpProduct_lbl" AssociatedControlID="lkpProduct" runat="server" Text="<%$ resources: lkpProduct.Caption %>" ></asp:Label>
 </div>   
  <div  class="twocoltextcontrol lookup"  >
<SalesLogix:LookupControl runat="server" ID="lkpProduct" LookupEntityName="Product" LookupEntityTypeName="Sage.Entity.Interfaces.IProduct, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupBindingMode="String" SeedProperty="Quotation" AutoPostBack="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpProduct.LookupProperties.Criticality.PropertyHeader %>" PropertyName="Criticality" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpProduct.LookupProperties.Family.PropertyHeader %>" PropertyName="Family" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpProduct.LookupProperties.Name.PropertyHeader %>" PropertyName="Name" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpProduct.LookupProperties.Price.PropertyHeader %>" PropertyName="Price" PropertyType="System.Decimal" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpProduct.LookupProperties.Type.PropertyHeader %>" PropertyName="Type" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
<SalesLogix:LookupPreFilter PropertyName="Type" PropertyType="System.String" OperatorCode="=" Visible="False"
 FilterValue="PED"
 ></SalesLogix:LookupPreFilter>
</LookupPreFilters>
</SalesLogix:LookupControl>
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
    <SalesLogix:PickListControl runat="server" ID="pklFamily" PickListName="Product Family" MustExistInList="false" MaxLength="64"  />
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
    <SalesLogix:PickListControl runat="server" ID="pklInspectionType" PickListName="InspectionType" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="Price_lbl" AssociatedControlID="Price" runat="server" Text="<%$ resources: Price.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="Price"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="MandayRequired_lbl" AssociatedControlID="MandayRequired" runat="server" Text="<%$ resources: MandayRequired.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="MandayRequired"  dojoType="Sage.UI.Controls.TextBox" AutoPostBack="true"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="Discount_lbl" AssociatedControlID="Discount" runat="server" Text="<%$ resources: Discount.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="Discount"  dojoType="Sage.UI.Controls.TextBox" AutoPostBack="true"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="Quantity_lbl" AssociatedControlID="Quantity" runat="server" Text="<%$ resources: Quantity.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="Quantity"  dojoType="Sage.UI.Controls.TextBox" AutoPostBack="true"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
<div class=" lbl alignleft">
    <asp:Label ID="CALCPRICE_lbl" AssociatedControlID="CALCPRICE" runat="server" Text="<%$ resources: CALCPRICE.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="CALCPRICE" 
    ExchangeRateType="BaseRate"
     Required="false"
 DecimalDigits="-1"
AutoPostBack="true"  />
</div>

      </td>
                <td  >
<div class=" lbl alignleft">
    <asp:Label ID="ExtendedPrice_lbl" AssociatedControlID="ExtendedPrice" runat="server" Text="<%$ resources: ExtendedPrice.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="ExtendedPrice" 
    ExchangeRateType="BaseRate"
    ReadOnly="true"  Required="false"
 DecimalDigits="-1"
 />
</div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="QFTextBox_lbl" AssociatedControlID="QFTextBox" runat="server" Text="<%$ resources: QFTextBox.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="QFTextBox" LookupEntityName="Product" LookupEntityTypeName="Sage.Entity.Interfaces.IProduct, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupBindingMode="String" SeedProperty="Quotations"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox.LookupProperties.Name.PropertyHeader %>" PropertyName="Name" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox.LookupProperties.Type.PropertyHeader %>" PropertyName="Type" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
<SalesLogix:LookupPreFilter PropertyName="Type" PropertyType="System.String" OperatorCode="=" Visible="False"
 FilterValue="Quotation.Type"
 ></SalesLogix:LookupPreFilter>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="AddEditQuotationProduct_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnSave"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnDelete"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=AddEditQuotationProduct&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkAddEditQuotationProductHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="AddEditQuotationProduct" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IQuotationProduct); }
}

 

protected override void OnAddEntityBindings() {
                 // lkpProduct.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpProductLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PRODUCTID", lkpProduct, "LookupResultValue");
        BindingSource.Bindings.Add(lkpProductLookupResultValueBinding);
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
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklInspectionTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("INSPECTIONTYPE", pklInspectionType, "PickListValue");
        BindingSource.Bindings.Add(pklInspectionTypePickListValueBinding);
                    // Price.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding PriceTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Product.Price", Price, "Text");
        BindingSource.Bindings.Add(PriceTextBinding);
                    // MandayRequired.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding MandayRequiredTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("MANDAYREQUIRED", MandayRequired, "Text");
        BindingSource.Bindings.Add(MandayRequiredTextBinding);
                    // Discount.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding DiscountTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DISCOUNT", Discount, "Text");
        BindingSource.Bindings.Add(DiscountTextBinding);
                    // Quantity.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QuantityTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("QUANTITY", Quantity, "Text");
        BindingSource.Bindings.Add(QuantityTextBinding);
                    // CALCPRICE.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding CALCPRICETextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CALCPRICE", CALCPRICE, "Text");
        BindingSource.Bindings.Add(CALCPRICETextBinding);
                    // ExtendedPrice.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding ExtendedPriceTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("EXTENDEDPRICE", ExtendedPrice, "Text");
        BindingSource.Bindings.Add(ExtendedPriceTextBinding);
                    // QFTextBox.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBoxLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PRODUCTID", QFTextBox, "LookupResultValue");
        BindingSource.Bindings.Add(QFTextBoxLookupResultValueBinding);
    
   
        }
                                                                                    
protected void lkpProduct_ChangeAction(object sender, EventArgs e) {

 
Sage.Platform.Data.IDataService service = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Data.IDataService>();
System.Data.OleDb.OleDbConnection conObj = new System.Data.OleDb.OleDbConnection(service.GetConnectionString());


Sage.Entity.Interfaces.IQuotationProduct entity = this.BindingSource.Current as Sage.Entity.Interfaces.IQuotationProduct; 
 

    if (!string.IsNullOrEmpty( lkpProduct.LookupResultValue.ToString()))
{
    string Query2 = " select CRITICALITY,TYPE,FAMILY ,PRICE  from product  where PRODUCTID='" + lkpProduct.LookupResultValue.ToString() + "'";
    System.Data.OleDb.OleDbDataAdapter dataAdapterObj2 = new System.Data.OleDb.OleDbDataAdapter(Query2, conObj);
    System.Data.DataTable dt2 = new System.Data.DataTable();
      
    dataAdapterObj2.Fill(dt2);
    if (dt2.Rows.Count > 0)
    {


      
       //pklCriticality.PickListValue   = dt2.Rows[0][0].ToString();
      // pklType.PickListValue = dt2.Rows[0][1].ToString() ;
      // pklFamily.PickListValue = dt2.Rows[0][2].ToString() ;
        Price.Text = dt2.Rows[0][3].ToString();
        ExtendedPrice.Text = dt2.Rows[0][3].ToString();
		MandayRequired.Text = "3";
    }
}

}
protected void MandayRequired_ChangeAction(object sender, EventArgs e) {
Sage.Entity.Interfaces.IQuotationProduct objproduct = this.BindingSource.Current as Sage.Entity.Interfaces.IQuotationProduct;
    //    Sage.Entity.Interfaces.IQuotationProduct objQuotation = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.IQuotationProduct>();
    // objproduct.EXTENDEDPRICE = Convert.ToInt32(MandayRequired.Text) * 10;

     
    
    
    
    if (!String.IsNullOrEmpty(MandayRequired.Text))
    {

        if ((!String.IsNullOrEmpty(CALCPRICE.Text)) && ((!String.IsNullOrEmpty(Quantity.Text))))
        {
            objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }
        else if ((String.IsNullOrEmpty(CALCPRICE.Text)) && (!String.IsNullOrEmpty(Quantity.Text)))
        {
            objproduct.EXTENDEDPRICE = 0;// Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }
        else if ((!String.IsNullOrEmpty(CALCPRICE.Text)) && (String.IsNullOrEmpty(Quantity.Text)))
        {
            objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(MandayRequired.Text);
        }
        else if ((String.IsNullOrEmpty(CALCPRICE.Text)) && (String.IsNullOrEmpty(Quantity.Text)))
        {
            objproduct.EXTENDEDPRICE = 0;// Convert.ToInt32(MandayRequired.Text);
        }
        else
        {
            objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }

    }


}
protected void Discount_ChangeAction(object sender, EventArgs e) {
Sage.Entity.Interfaces.IQuotationProduct objproduct = this.BindingSource.Current as Sage.Entity.Interfaces.IQuotationProduct;

Sage.Platform.Data.IDataService service = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Data.IDataService>();
System.Data.OleDb.OleDbConnection conObj = new System.Data.OleDb.OleDbConnection(service.GetConnectionString());


Sage.Entity.Interfaces.IQuotationProduct entity = this.BindingSource.Current as Sage.Entity.Interfaces.IQuotationProduct;
string tprice = "0";
    

if (!string.IsNullOrEmpty(lkpProduct.LookupResultValue.ToString()))
{
    string Query2 = " select CRITICALITY,TYPE,FAMILY ,isnull(PRICE,0)  from product  where PRODUCTID='" + lkpProduct.LookupResultValue.ToString() + "'";
    System.Data.OleDb.OleDbDataAdapter dataAdapterObj2 = new System.Data.OleDb.OleDbDataAdapter(Query2, conObj);
    System.Data.DataTable dt2 = new System.Data.DataTable();

    dataAdapterObj2.Fill(dt2);
    if (dt2.Rows.Count > 0)
    {

      

        tprice = dt2.Rows[0][3].ToString();
      
    }
}
    
    
    if (!String.IsNullOrEmpty(Discount.Text))
    {

        decimal t1=0;
        
    //    t1 = Convert.ToDecimal(tprice) - ((Convert.ToDecimal(tprice)) * Convert.ToDecimal(Discount.Text));
        t1 = Convert.ToDecimal(tprice) - ( Convert.ToDecimal(Discount.Text));
            
        if ((!String.IsNullOrEmpty(CALCPRICE.Text)) && ((!String.IsNullOrEmpty(Quantity.Text))))
        {
            objproduct.CALCPRICE = t1;

            objproduct.EXTENDEDPRICE = t1 * Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }
        else if ((String.IsNullOrEmpty(CALCPRICE.Text)) && (!String.IsNullOrEmpty(Quantity.Text)))
        {
            objproduct.CALCPRICE = t1;
            objproduct.EXTENDEDPRICE = 0;// Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }
            
        else if ((!String.IsNullOrEmpty(CALCPRICE.Text)) && (String.IsNullOrEmpty(Quantity.Text)))
        {

            objproduct.CALCPRICE = t1;
            objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(MandayRequired.Text);
        }
        else if ((String.IsNullOrEmpty(CALCPRICE.Text)) && (String.IsNullOrEmpty(Quantity.Text)))
        {
            objproduct.CALCPRICE = t1;
            objproduct.EXTENDEDPRICE = 0;//Convert.ToInt32(MandayRequired.Text);
        }
        else
        {

            objproduct.CALCPRICE = t1;
            objproduct.EXTENDEDPRICE = t1 * Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }

    }

}
protected void Quantity_ChangeAction(object sender, EventArgs e) {
Sage.Entity.Interfaces.IQuotationProduct objproduct = this.BindingSource.Current as Sage.Entity.Interfaces.IQuotationProduct;
    //    Sage.Entity.Interfaces.IQuotationProduct objQuotation = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.IQuotationProduct>();
    // objproduct.EXTENDEDPRICE = Convert.ToInt32(MandayRequired.Text) * 10;



if (!String.IsNullOrEmpty(Quantity.Text))
    {

        if ((!String.IsNullOrEmpty(CALCPRICE.Text)) && ((!String.IsNullOrEmpty(MandayRequired.Text))))
        {
            objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }
        else if ((String.IsNullOrEmpty(CALCPRICE.Text)) && (!String.IsNullOrEmpty(MandayRequired.Text)))
        {
            objproduct.EXTENDEDPRICE = 0;// Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }
        else if ((!String.IsNullOrEmpty(CALCPRICE.Text)) && (String.IsNullOrEmpty(MandayRequired.Text)))
        {
            objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(Quantity.Text);
        }
        else if ((String.IsNullOrEmpty(CALCPRICE.Text)) && (String.IsNullOrEmpty(MandayRequired.Text)))
        {
            objproduct.EXTENDEDPRICE = 0; //Convert.ToInt32(MandayRequired.Text);
        }
        else
        {
            objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
        }

    }


}
protected void CALCPRICE_ChangeAction(object sender, EventArgs e) {
Sage.Entity.Interfaces.IQuotationProduct objproduct = this.BindingSource.Current as Sage.Entity.Interfaces.IQuotationProduct;
    //    Sage.Entity.Interfaces.IQuotationProduct objQuotation = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.IQuotationProduct>();
    // objproduct.EXTENDEDPRICE = Convert.ToInt32(MandayRequired.Text) * 10;




if (!String.IsNullOrEmpty(CALCPRICE.Text))
{

    if ((!String.IsNullOrEmpty(MandayRequired.Text)) && ((!String.IsNullOrEmpty(Quantity.Text))))
    {
        objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
    }
    else if ((String.IsNullOrEmpty(MandayRequired.Text)) && (!String.IsNullOrEmpty(Quantity.Text)))
    {
        objproduct.EXTENDEDPRICE = Convert.ToInt32(MandayRequired.Text) * Convert.ToInt32(CALCPRICE.Text);
    }
    else if ((!String.IsNullOrEmpty(MandayRequired.Text)) && (String.IsNullOrEmpty(Quantity.Text)))
    {
        objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(Quantity.Text);
    }
    else if ((String.IsNullOrEmpty(MandayRequired.Text)) && (String.IsNullOrEmpty(Quantity.Text)))
    {
        objproduct.EXTENDEDPRICE = Convert.ToInt32(CALCPRICE.Text);
    }
    else
    {
        objproduct.EXTENDEDPRICE = Convert.ToDecimal(CALCPRICE.Text) * Convert.ToInt32(Quantity.Text) * Convert.ToInt32(MandayRequired.Text);
    }

}
else
{
    objproduct.EXTENDEDPRICE = 0;
}


}
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IQuotationProduct _entity = BindingSource.Current as Sage.Entity.Interfaces.IQuotationProduct;
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
protected void btnDelete_ClickAction(object sender, EventArgs e) {
  Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
  if (persistentEntity != null) {
    persistentEntity.Delete();
  }

  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lkpProduct.LookupResultValueChanged += new EventHandler(lkpProduct_ChangeAction);
MandayRequired.TextChanged += new EventHandler(MandayRequired_ChangeAction);
Discount.TextChanged += new EventHandler(Discount_ChangeAction);
Quantity.TextChanged += new EventHandler(Quantity_ChangeAction);
CALCPRICE.TextChanged += new EventHandler(CALCPRICE_ChangeAction);
btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);
btnSave.Click += new ImageClickEventHandler(DialogService.CloseEventHappened);
btnSave.Click += new ImageClickEventHandler(Refresh);
btnDelete.Click += new ImageClickEventHandler(btnDelete_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {
Sage.Platform.WebPortal.EntityPage page = (Sage.Platform.WebPortal.EntityPage)Page;
    if (!page.IsInsertMode)
    {
        pklCriticality.ReadOnly = true;
        pklType.ReadOnly = true;
       // lkpProduct.ReadOnly = true;
        Price.ReadOnly = true;
        pklFamily.ReadOnly = true;
        
    }

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
    get { return _formAdapter ?? (_formAdapter = new AddEditQuotationProductAdapter(this)); }
}

public class AddEditQuotationProductAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAddEditQuotationProduct
{
    public AddEditQuotationProductAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ILookupControl _lkpProduct;
    public  Sage.Platform.Controls.ILookupControl lkpProduct
    {
        get { return FindControl(ref _lkpProduct, "lkpProduct"); }
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
    private Sage.Platform.Controls.ITextBoxControl _Price;
    public  Sage.Platform.Controls.ITextBoxControl Price
    {
        get { return FindControl(ref _Price, "Price"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _Discount;
    public  Sage.Platform.Controls.ITextBoxControl Discount
    {
        get { return FindControl(ref _Discount, "Discount"); }
    }
    private Sage.Platform.Controls.ICurrencyControl _CALCPRICE;
    public  Sage.Platform.Controls.ICurrencyControl CALCPRICE
    {
        get { return FindControl(ref _CALCPRICE, "CALCPRICE"); }
    }
    private Sage.Platform.Controls.ILookupControl _QFTextBox;
    public  Sage.Platform.Controls.ILookupControl QFTextBox
    {
        get { return FindControl(ref _QFTextBox, "QFTextBox"); }
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
    private Sage.Platform.Controls.ITextBoxControl _MandayRequired;
    public  Sage.Platform.Controls.ITextBoxControl MandayRequired
    {
        get { return FindControl(ref _MandayRequired, "MandayRequired"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _Quantity;
    public  Sage.Platform.Controls.ITextBoxControl Quantity
    {
        get { return FindControl(ref _Quantity, "Quantity"); }
    }
    private Sage.Platform.Controls.ICurrencyControl _ExtendedPrice;
    public  Sage.Platform.Controls.ICurrencyControl ExtendedPrice
    {
        get { return FindControl(ref _ExtendedPrice, "ExtendedPrice"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnSave;
    public  Sage.Platform.Controls.IButtonControl btnSave
    {
        get { return FindControl(ref _btnSave, "btnSave"); }
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
