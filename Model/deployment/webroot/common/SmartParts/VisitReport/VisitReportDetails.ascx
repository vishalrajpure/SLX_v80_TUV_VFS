<%@ Control Language="C#" ClassName="VisitReportDetails" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpAccount_lbl" AssociatedControlID="lkpAccount" runat="server" Text="<%$ resources: lkpAccount.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lkpAccount" LookupEntityName="Account" LookupEntityTypeName="Sage.Entity.Interfaces.IAccount, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.AccountName.PropertyHeader %>" PropertyName="AccountName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.AccountManager.UserInfo.UserName.PropertyHeader %>" PropertyName="AccountManager.UserInfo.UserName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.Address.City.PropertyHeader %>" PropertyName="Address.City" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.Address.State.PropertyHeader %>" PropertyName="Address.State" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.BranchId.PropertyHeader %>" PropertyName="BranchId" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.MainPhone.PropertyHeader %>" PropertyName="MainPhone" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.Owner.User.UserName.PropertyHeader %>" PropertyName="Owner.User.UserName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.Type.PropertyHeader %>" PropertyName="Type" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpInspectionCall_lbl" AssociatedControlID="dtpInspectionCall" runat="server" Text="<%$ resources: dtpInspectionCall.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpInspectionCall" ReadOnly="true" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtPONum_lbl" AssociatedControlID="txtPONum" runat="server" Text="<%$ resources: txtPONum.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtPONum" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox" MaxLength="32"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpSalesOrder_lbl" AssociatedControlID="lkpSalesOrder" runat="server" Text="<%$ resources: lkpSalesOrder.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lkpSalesOrder" LookupEntityName="SalesOrder" LookupEntityTypeName="Sage.Entity.Interfaces.ISalesOrder, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" SeedProperty="Account.Id"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpSalesOrder.LookupProperties.Account.AccountName.PropertyHeader %>" PropertyName="Account.AccountName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpSalesOrder.LookupProperties.BranchId.PropertyHeader %>" PropertyName="BranchId" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpSalesOrder.LookupProperties.Ordercode.PropertyHeader %>" PropertyName="Ordercode" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpSalesOrder.LookupProperties.SAPJobNo.PropertyHeader %>" PropertyName="SAPJobNo" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtPlace_lbl" AssociatedControlID="txtPlace" runat="server" Text="<%$ resources: txtPlace.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtPlace" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox" MaxLength="32"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpReportDate_lbl" AssociatedControlID="dtpReportDate" runat="server" Text="<%$ resources: dtpReportDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpReportDate" Required="true" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueContract_lbl" AssociatedControlID="lueContract" runat="server" Text="<%$ resources: lueContract.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lueContract" ButtonToolTip="<%$ resources: lueContract.ButtonToolTip %>" LookupEntityName="Contract" LookupEntityTypeName="Sage.SalesLogix.Entities.Contract, Sage.SalesLogix.Entities" SeedProperty="SalesOrder.Id" AutoPostBack="true" Required="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueContract.LookupProperties.ReferenceNumber.PropertyHeader %>" PropertyName="ReferenceNumber" PropertyType="" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueContract.LookupProperties.ServiceCode.PropertyHeader %>" PropertyName="ServiceCode" PropertyType="SalesLogix.PickList" PropertyFormat="PickList" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueContract.LookupProperties.TypeCode.PropertyHeader %>" PropertyName="TypeCode" PropertyType="SalesLogix.PickList" PropertyFormat="PickList" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueContract.LookupProperties.Remaining.PropertyHeader %>" PropertyName="Remaining" PropertyType="" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="True"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueContract.LookupProperties.StartDate.PropertyHeader %>" PropertyName="StartDate" PropertyType="System.DateTime" PropertyFormat="DateTime" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="True"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueContract.LookupProperties.EndingDate.PropertyHeader %>" PropertyName="EndingDate" PropertyType="System.DateTime" PropertyFormat="DateTime" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="True"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpInspectionDate_lbl" AssociatedControlID="dtpInspectionDate" runat="server" Text="<%$ resources: dtpInspectionDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpInspectionDate" Required="true" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpReportWritingTime_lbl" AssociatedControlID="dtpReportWritingTime" runat="server" Text="<%$ resources: dtpReportWritingTime.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="dtpReportWritingTime"
Strict="False" 
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpTicket_lbl" AssociatedControlID="lkpTicket" runat="server" Text="<%$ resources: lkpTicket.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lkpTicket" LookupEntityName="Ticket" LookupEntityTypeName="Sage.Entity.Interfaces.ITicket, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" SeedProperty="Contradct.Id" AutoPostBack="true" Required="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpTicket.LookupProperties.Account.AccountName.PropertyHeader %>" PropertyName="Account.AccountName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpTicket.LookupProperties.Category.PropertyHeader %>" PropertyName="Category" PropertyType="SalesLogix.PickList" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpTicket.LookupProperties.ExecutingBranch.PropertyHeader %>" PropertyName="ExecutingBranch" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpTicket.LookupProperties.OriginatingBranch.PropertyHeader %>" PropertyName="OriginatingBranch" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpTicket.LookupProperties.ProjectName.PropertyHeader %>" PropertyName="ProjectName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpTicket.LookupProperties.SubCategory.PropertyHeader %>" PropertyName="SubCategory" PropertyType="SalesLogix.PickList" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpTicket.LookupProperties.SubCategory.PropertyHeader %>" PropertyName="SubCategory" PropertyType="SalesLogix.PickList" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpTicket.LookupProperties.TicketType.PropertyHeader %>" PropertyName="TicketType" PropertyType="SalesLogix.PickList" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpInspectionTime_lbl" AssociatedControlID="dtpInspectionTime" runat="server" Text="<%$ resources: dtpInspectionTime.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpInspectionTime" Required="true" DisplayDate="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpTavelTime_lbl" AssociatedControlID="dtpTavelTime" runat="server" Text="<%$ resources: dtpTavelTime.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="dtpTavelTime"
Strict="False" 
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpVendorId_lbl" AssociatedControlID="lkpVendorId" runat="server" Text="<%$ resources: lkpVendorId.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lkpVendorId" ReadOnly="true" EnableLookup="false" LookupEntityName="Account" LookupEntityTypeName="Sage.Entity.Interfaces.IAccount, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpVendorId.LookupProperties.AccountManager.UserInfo.UserName.PropertyHeader %>" PropertyName="AccountManager.UserInfo.UserName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpVendorId.LookupProperties.AccountName.PropertyHeader %>" PropertyName="AccountName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpVendorId.LookupProperties.Address.City.PropertyHeader %>" PropertyName="Address.City" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpVendorId.LookupProperties.Address.State.PropertyHeader %>" PropertyName="Address.State" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpVendorId.LookupProperties.MainPhone.PropertyHeader %>" PropertyName="MainPhone" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpVendorId.LookupProperties.Owner.User.UserName.PropertyHeader %>" PropertyName="Owner.User.UserName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpVendorId.LookupProperties.Type.PropertyHeader %>" PropertyName="Type" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtProject_lbl" AssociatedControlID="txtProject" runat="server" Text="<%$ resources: txtProject.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtProject" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox" MaxLength="32"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklStage_lbl" AssociatedControlID="pklStage" runat="server" Text="<%$ resources: pklStage.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklStage" PickListName="VisitiReportStage" MustExistInList="false" Required="true" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td rowspan="2"  colspan="3" >
 <div class=" lbl colspan3 alignleft" >
   <asp:Label ID="txtRemarks_lbl" AssociatedControlID="txtRemarks" runat="server" Text="<%$ resources: txtRemarks.Caption %>" ></asp:Label>
 </div>
  <div  class="threecoltextcontrol"   >
<asp:TextBox runat="server" ID="txtRemarks"  Rows="4" TextMode="MultiLine" Columns="40" dojoType="Sage.UI.Controls.SimpleTextarea" MultiLineMaxLength="2147483647"  />
  </div>

      </td>
                  </tr>
<tr>
                    </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="VisitReportDetails_RTools" ToolbarLocation="right">
   <SalesLogix:GroupNavigator runat="server" ID="grnVisitReport" ></SalesLogix:GroupNavigator>
    <asp:ImageButton runat="server" ID="cmdSave"
 AlternateText="<%$ resources: cmdSave.Caption %>"  ToolTip="<%$ resources: cmdSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
 
    <asp:ImageButton runat="server" ID="cmdDelete"
 AlternateText="<%$ resources: cmdDelete.Caption %>"  ToolTip="<%$ resources: cmdDelete.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16"  />
 
    <asp:ImageButton runat="server" ID="btnPrint"
 ToolTip="<%$ resources: btnPrint.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Print_View_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=VisitReportDetails&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkVisitReportDetailsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="VisitReportDetails" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IVisitReport); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _ds;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource ds
{ 
  get 
  {
    if (_ds == null)
    {
             _ds = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IVisitReportItem), 
	    EntityType              ,"VisitReportItems", System.Reflection.MemberTypes.Property);
            	   	}
 	return _ds;
  }
}

void ds_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        ds.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(ds);
   }
}

 



 

protected override void OnAddEntityBindings() {
                 // lkpAccount.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpAccountLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account", lkpAccount, "LookupResultValue");
        BindingSource.Bindings.Add(lkpAccountLookupResultValueBinding);
                    // dtpInspectionCall.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpInspectionCallDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Inspection_call_received", dtpInspectionCall, "DateTimeValue");
        BindingSource.Bindings.Add(dtpInspectionCallDateTimeValueBinding);
                    // txtPONum.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtPONumTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CustomerPONumber", txtPONum, "Text");
        BindingSource.Bindings.Add(txtPONumTextBinding);
                    // lkpSalesOrder.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpSalesOrderLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SalesOrder", lkpSalesOrder, "LookupResultValue");
        BindingSource.Bindings.Add(lkpSalesOrderLookupResultValueBinding);
                 // lkpSalesOrder.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpSalesOrderSeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account.Id", lkpSalesOrder, "SeedValue");
        lkpSalesOrderSeedValueBinding.IgnoreFLSDisabling = true;
        BindingSource.Bindings.Add(lkpSalesOrderSeedValueBinding);
                    // txtPlace.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtPlaceTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PlaceofInspection", txtPlace, "Text");
        BindingSource.Bindings.Add(txtPlaceTextBinding);
                    // dtpReportDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpReportDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ReportDate", dtpReportDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtpReportDateDateTimeValueBinding);
                    // lueContract.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueContractLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Contract", lueContract, "LookupResultValue");
        BindingSource.Bindings.Add(lueContractLookupResultValueBinding);
                 // lueContract.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueContractSeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SalesOrder.Id", lueContract, "SeedValue");
        lueContractSeedValueBinding.IgnoreFLSDisabling = true;
        BindingSource.Bindings.Add(lueContractSeedValueBinding);
                    // dtpInspectionDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpInspectionDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("InspectionDate", dtpInspectionDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtpInspectionDateDateTimeValueBinding);
                    // dtpReportWritingTime.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpReportWritingTimeTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ReportWritingTime", dtpReportWritingTime, "Text");
        BindingSource.Bindings.Add(dtpReportWritingTimeTextBinding);
                    // lkpTicket.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpTicketLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Ticket", lkpTicket, "LookupResultValue");
        BindingSource.Bindings.Add(lkpTicketLookupResultValueBinding);
                 // lkpTicket.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpTicketSeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Contract.Id", lkpTicket, "SeedValue");
        lkpTicketSeedValueBinding.IgnoreFLSDisabling = true;
        BindingSource.Bindings.Add(lkpTicketSeedValueBinding);
                    // dtpInspectionTime.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpInspectionTimeDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("InspectionTime", dtpInspectionTime, "DateTimeValue");
        BindingSource.Bindings.Add(dtpInspectionTimeDateTimeValueBinding);
                    // dtpTavelTime.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpTavelTimeTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("TravelTime", dtpTavelTime, "Text");
        BindingSource.Bindings.Add(dtpTavelTimeTextBinding);
                    // lkpVendorId.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpVendorIdLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account", lkpVendorId, "LookupResultValue");
        BindingSource.Bindings.Add(lkpVendorIdLookupResultValueBinding);
                    // txtProject.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtProjectTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ProjectName", txtProject, "Text");
        BindingSource.Bindings.Add(txtProjectTextBinding);
                    // pklStage.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklStagePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Stage", pklStage, "PickListValue");
        BindingSource.Bindings.Add(pklStagePickListValueBinding);
                    // txtRemarks.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtRemarksTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Remarks", txtRemarks, "Text");
        BindingSource.Bindings.Add(txtRemarksTextBinding);
    
     BindingSource.OnCurrentEntitySet += new EventHandler(ds_OnCurrentEntitySet);
    
                }
                                                                                                                
protected void lkpTicket_ChangeAction(object sender, EventArgs e) {
Sage.Entity.Interfaces.IVisitReport VRpt = this.BindingSource.Current as Sage.Entity.Interfaces.IVisitReport;
Sage.Entity.Interfaces.ITicket tkt = lkpTicket.LookupResultValue as Sage.Entity.Interfaces.ITicket;
if(tkt != null)
{
	VRpt.Account = tkt.Account;
	VRpt.SalesOrder = tkt.SalesOrder;
	VRpt.ProjectName = tkt.ProjectName;
	VRpt.Inspection_call_received = tkt.ReceivedDate;
	VRpt.PlaceofInspection = tkt.JobLocation;
	VRpt.Contract = tkt.Contract;
	VRpt.CustomerPONumber = tkt.Contract.PONumber;
}
//tkt.SalesOrder = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.ISalesOrder>(tkt.Contract.SalesOrderId);

}
protected void cmdSave_ClickAction(object sender, EventArgs e) {
Sage.Entity.Interfaces.ITicket objT = this.GetParentEntity() as Sage.Entity.Interfaces.ITicket;
Sage.Entity.Interfaces.IVisitReport VR = this.BindingSource.Current as Sage.Entity.Interfaces.IVisitReport;
Sage.Entity.Interfaces.ITicket objTicket = VR.Ticket;
if(dtpInspectionDate.DateTimeValue>dtpReportDate.DateTimeValue)
{
	throw new Sage.Platform.Application.ValidationException("Inspection date can not be grater than Report Date");
}
if(dtpInspectionCall.DateTimeValue>dtpInspectionDate.DateTimeValue)
{
	throw new Sage.Platform.Application.ValidationException("Inspection date can not be less than Insepection Call Date");
}
else
{
	
	VR.Save();
	
	
	if (EntityContext.EntityID.ToString().ToUpper().Equals("INSERT") == true)
	{
		if(objTicket.TicketProducts.Count > 0)
		{
			
			foreach(Sage.Entity.Interfaces.ITicketProduct prd in objTicket.TicketProducts)
			{
				Sage.Entity.Interfaces.IVisitReportItem vritem = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.IVisitReportItem>();
				vritem.TicketProduct = prd;
				vritem.VisitReport = VR;
				vritem.Save();
			}
		}
		if(objTicket.TicketSurveyors.Count > 0)
		{
			
			foreach(Sage.Entity.Interfaces.ITicketSurveyor prd in objTicket.TicketSurveyors)
			{
				Sage.Entity.Interfaces.IVisitReportSurveyor vritem = Sage.Platform.EntityFactory.Create<Sage.Entity.Interfaces.IVisitReportSurveyor>();
				vritem.Surveyor = prd.Surveyor;
				vritem.VisitReport = VR;
				vritem.Save();
			}
		}
	}
	if(objT != null)
	{	
		
		System.Web.HttpContext.Current.Response.Redirect(string.Format("~/{0}.aspx?entityid={1}", "Ticket",  objT.Id.ToString()));
	}
	else
	{
		//System.Web.HttpContext.Current.Response.Redirect(string.Format("VisitReport.aspx?entityid=" + VR.Id.ToString(), "&modeid=Detail"));
		System.Web.HttpContext.Current.Response.Redirect(string.Format("~/{0}.aspx?entityid={1}", "VisitReport", VR.Id.ToString()));
	}
	
	
	
}	




}
protected void cmdDelete_ClickAction(object sender, EventArgs e) {
  Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
  if (persistentEntity != null) {
    persistentEntity.Delete();
  }

  
}
protected void btnPrint_ClickAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("VisitReportDetails.btnPrint_OnClick", methodArgs);

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lkpTicket.LookupResultValueChanged += new EventHandler(lkpTicket_ChangeAction);
cmdSave.Click += new ImageClickEventHandler(cmdSave_ClickAction);
cmdDelete.Click += new ImageClickEventHandler(cmdDelete_ClickAction);
btnPrint.Click += new ImageClickEventHandler(btnPrint_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {
Sage.Entity.Interfaces.IVisitReport VRpt = BindingSource.Current as Sage.Entity.Interfaces.IVisitReport;
Sage.Entity.Interfaces.ITicket tkt = this.GetParentEntity() as Sage.Entity.Interfaces.ITicket;
if (EntityContext.EntityID.ToString().ToUpper().Equals("INSERT") == true)
{
	    btnPrint.Visible = false;
 }
 else
 {
	btnPrint.Visible = true;
	
 } 
if (tkt != null)    
{
	//Sage.Entity.Interfaces.ITicket tkt = VRpt.Ticket;
	VRpt.Ticket = tkt;
	VRpt.Account = tkt.Account;
	VRpt.SalesOrder = tkt.SalesOrder;
	VRpt.ProjectName = tkt.ProjectName;
	VRpt.Inspection_call_received = tkt.ReceivedDate;
	VRpt.PlaceofInspection = tkt.JobLocation;
	VRpt.Contract = tkt.Contract;	
	VRpt.CustomerPONumber = tkt.Contract.PONumber;
	dtpReportDate.DateTimeValue=DateTime.Now;
	
	//VRpt.ReportDate.Value = dtpReportDate.DateTimeValue;
		
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
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (ds.SourceObject == null) { ds.SourceObject = BindingSource.Current; }
if (ds.SourceObject == null) { RegisterBindingsWithClient(ds); }
ds.Bind();



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
    get { return _formAdapter ?? (_formAdapter = new VisitReportDetailsAdapter(this)); }
}

public class VisitReportDetailsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IVisitReportDetails
{
    public VisitReportDetailsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ILookupControl _lkpAccount;
    public  Sage.Platform.Controls.ILookupControl lkpAccount
    {
        get { return FindControl(ref _lkpAccount, "lkpAccount"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpSalesOrder;
    public  Sage.Platform.Controls.ILookupControl lkpSalesOrder
    {
        get { return FindControl(ref _lkpSalesOrder, "lkpSalesOrder"); }
    }
    private Sage.Platform.Controls.ILookupControl _lueContract;
    public  Sage.Platform.Controls.ILookupControl lueContract
    {
        get { return FindControl(ref _lueContract, "lueContract"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpTicket;
    public  Sage.Platform.Controls.ILookupControl lkpTicket
    {
        get { return FindControl(ref _lkpTicket, "lkpTicket"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpVendorId;
    public  Sage.Platform.Controls.ILookupControl lkpVendorId
    {
        get { return FindControl(ref _lkpVendorId, "lkpVendorId"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtRemarks;
    public  Sage.Platform.Controls.ITextBoxControl txtRemarks
    {
        get { return FindControl(ref _txtRemarks, "txtRemarks"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtpInspectionCall;
    public  Sage.Platform.Controls.IDateTimePickerControl dtpInspectionCall
    {
        get { return FindControl(ref _dtpInspectionCall, "dtpInspectionCall"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtPlace;
    public  Sage.Platform.Controls.ITextBoxControl txtPlace
    {
        get { return FindControl(ref _txtPlace, "txtPlace"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtpInspectionDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtpInspectionDate
    {
        get { return FindControl(ref _dtpInspectionDate, "dtpInspectionDate"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtpInspectionTime;
    public  Sage.Platform.Controls.IDateTimePickerControl dtpInspectionTime
    {
        get { return FindControl(ref _dtpInspectionTime, "dtpInspectionTime"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtProject;
    public  Sage.Platform.Controls.ITextBoxControl txtProject
    {
        get { return FindControl(ref _txtProject, "txtProject"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtPONum;
    public  Sage.Platform.Controls.ITextBoxControl txtPONum
    {
        get { return FindControl(ref _txtPONum, "txtPONum"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtpReportDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtpReportDate
    {
        get { return FindControl(ref _dtpReportDate, "dtpReportDate"); }
    }
    private Sage.Platform.Controls.INumericControl _dtpReportWritingTime;
    public  Sage.Platform.Controls.INumericControl dtpReportWritingTime
    {
        get { return FindControl(ref _dtpReportWritingTime, "dtpReportWritingTime"); }
    }
    private Sage.Platform.Controls.INumericControl _dtpTavelTime;
    public  Sage.Platform.Controls.INumericControl dtpTavelTime
    {
        get { return FindControl(ref _dtpTavelTime, "dtpTavelTime"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklStage;
    public  Sage.Platform.Controls.IPickListControl pklStage
    {
        get { return FindControl(ref _pklStage, "pklStage"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _ds;
    public  Sage.Platform.Controls.IDataSourceControl ds
    {
        get { return FindControl(ref _ds, "ds"); }
    }
    private Sage.Platform.Controls.IGroupNavigatorControl _grnVisitReport;
    public  Sage.Platform.Controls.IGroupNavigatorControl grnVisitReport
    {
        get { return FindControl(ref _grnVisitReport, "grnVisitReport"); }
    }
    private Sage.Platform.Controls.IButtonControl _cmdSave;
    public  Sage.Platform.Controls.IButtonControl cmdSave
    {
        get { return FindControl(ref _cmdSave, "cmdSave"); }
    }
    private Sage.Platform.Controls.IButtonControl _cmdDelete;
    public  Sage.Platform.Controls.IButtonControl cmdDelete
    {
        get { return FindControl(ref _cmdDelete, "cmdDelete"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnPrint;
    public  Sage.Platform.Controls.IButtonControl btnPrint
    {
        get { return FindControl(ref _btnPrint, "btnPrint"); }
    }

    public  void btnPrint_OnClick(System.EventArgs e)
    {
        Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
        Object[] methodArgs = new Object[] { this, e };
        lib.Execute("VisitReportDetails.btnPrint_OnClick", methodArgs);
    }
}

</script>

<script type="text/javascript">
</script>