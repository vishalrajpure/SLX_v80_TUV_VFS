<%@ Control Language="C#" ClassName="InsertContractNew" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox1_lbl" AssociatedControlID="QFTextBox1" runat="server" Text="<%$ resources: QFTextBox1.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox1"  dojoType="Sage.UI.Controls.TextBox" MaxLength="128"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpBranch_lbl" AssociatedControlID="lkpBranch" runat="server" Text="<%$ resources: lkpBranch.Caption %>" ></asp:Label>
 </div>   
  <div    >
<SalesLogix:LookupControl runat="server" ID="lkpBranch" LookupEntityName="Branch" LookupEntityTypeName="Sage.Entity.Interfaces.IBranch, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="DropDownList" LookupBindingMode="String" DropDownDisplayProperty="BranchName"  >
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
 <div class=" lbl alignleft">
   <asp:Label ID="lkpAccount_lbl" AssociatedControlID="lkpAccount" runat="server" Text="<%$ resources: lkpAccount.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lkpAccount" LookupEntityName="Account" LookupEntityTypeName="Sage.Entity.Interfaces.IAccount, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.AccountName.PropertyHeader %>" PropertyName="AccountName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.Description.PropertyHeader %>" PropertyName="Description" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.Division.PropertyHeader %>" PropertyName="Division" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccount.LookupProperties.Email.PropertyHeader %>" PropertyName="Email" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpSalesOrder_lbl" AssociatedControlID="lkpSalesOrder" runat="server" Text="<%$ resources: lkpSalesOrder.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lkpSalesOrder" LookupEntityName="SalesOrder" LookupEntityTypeName="Sage.Entity.Interfaces.ISalesOrder, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupBindingMode="String"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpSalesOrder.LookupProperties.Ordercode.PropertyHeader %>" PropertyName="Ordercode" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpSalesOrder.LookupProperties.OrderDate.PropertyHeader %>" PropertyName="OrderDate" PropertyType="System.DateTime" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpSalesOrder.LookupProperties.OrderTotal.PropertyHeader %>" PropertyName="OrderTotal" PropertyType="System.Double" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpSalesOrder.LookupProperties.OrderType.PropertyHeader %>" PropertyName="OrderType" PropertyType="SalesLogix.PickList" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
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
   <asp:Label ID="Description_lbl" AssociatedControlID="Description" runat="server" Text="<%$ resources: Description.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="Description"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpAccountManager_lbl" AssociatedControlID="lkpAccountManager" runat="server" Text="<%$ resources: lkpAccountManager.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lkpAccountManager" LookupEntityName="UserInfo" LookupEntityTypeName="Sage.Entity.Interfaces.IUserInfo, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupBindingMode="String"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccountManager.LookupProperties.FirstName.PropertyHeader %>" PropertyName="FirstName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpAccountManager.LookupProperties.LastName.PropertyHeader %>" PropertyName="LastName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="QFTextBox7_lbl" AssociatedControlID="QFTextBox7" runat="server" Text="<%$ resources: QFTextBox7.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="QFTextBox7" LookupEntityName="Contact" LookupEntityTypeName="Sage.Entity.Interfaces.IContact, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox7.LookupProperties.FirstName.PropertyHeader %>" PropertyName="FirstName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox7.LookupProperties.IsPrimary.PropertyHeader %>" PropertyName="IsPrimary" PropertyType="System.Boolean" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox7.LookupProperties.LastName.PropertyHeader %>" PropertyName="LastName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox7.LookupProperties.WorkPhone.PropertyHeader %>" PropertyName="WorkPhone" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklFeeType_lbl" AssociatedControlID="pklFeeType" runat="server" Text="<%$ resources: pklFeeType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklFeeType" PickListName="FeeType" MustExistInList="false" MaxLength="32"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklType_lbl" AssociatedControlID="pklType" runat="server" Text="<%$ resources: pklType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklType" PickListName="Product Type" MustExistInList="false" MaxLength="32"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="PONo_lbl" AssociatedControlID="PONo" runat="server" Text="<%$ resources: PONo.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="PONo"  dojoType="Sage.UI.Controls.TextBox" MaxLength="32"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtPODate_lbl" AssociatedControlID="dtPODate" runat="server" Text="<%$ resources: dtPODate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtPODate" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtProposdedStartDate_lbl" AssociatedControlID="dtProposdedStartDate" runat="server" Text="<%$ resources: dtProposdedStartDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtProposdedStartDate" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtProposedEndDate_lbl" AssociatedControlID="dtProposedEndDate" runat="server" Text="<%$ resources: dtProposedEndDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtProposedEndDate" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtReceivedDate_lbl" AssociatedControlID="dtReceivedDate" runat="server" Text="<%$ resources: dtReceivedDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtReceivedDate" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpExecutingBranch_lbl" AssociatedControlID="lkpExecutingBranch" runat="server" Text="<%$ resources: lkpExecutingBranch.Caption %>" ></asp:Label>
 </div>   
  <div    >
<SalesLogix:LookupControl runat="server" ID="lkpExecutingBranch" LookupEntityName="Branch" LookupEntityTypeName="Sage.Entity.Interfaces.IBranch, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="DropDownList" LookupBindingMode="String" DropDownDisplayProperty="BranchName"  >
<LookupProperties>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td></td>
                <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="InsertContractNew_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="QFButton"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="QFButton2"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=InsertContractNew&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkInsertContractNewHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="InsertContractNew" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IContract); }
}

 

protected override void OnAddEntityBindings() {
                 // QFTextBox1.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox1TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ReferenceNumber", QFTextBox1, "Text");
        BindingSource.Bindings.Add(QFTextBox1TextBinding);
                    // lkpBranch.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpBranchLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("BranchId", lkpBranch, "LookupResultValue");
        BindingSource.Bindings.Add(lkpBranchLookupResultValueBinding);
                    // lkpAccount.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpAccountLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account", lkpAccount, "LookupResultValue");
        BindingSource.Bindings.Add(lkpAccountLookupResultValueBinding);
                    // lkpSalesOrder.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpSalesOrderLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SalesOrderId", lkpSalesOrder, "LookupResultValue");
        BindingSource.Bindings.Add(lkpSalesOrderLookupResultValueBinding);
                    // Description.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding DescriptionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Description", Description, "Text");
        BindingSource.Bindings.Add(DescriptionTextBinding);
                    // lkpAccountManager.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpAccountManagerLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AccountManager", lkpAccountManager, "LookupResultValue");
        BindingSource.Bindings.Add(lkpAccountManagerLookupResultValueBinding);
                    // QFTextBox7.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox7LookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Contact", QFTextBox7, "LookupResultValue");
        BindingSource.Bindings.Add(QFTextBox7LookupResultValueBinding);
                    // pklFeeType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklFeeTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("FeeType", pklFeeType, "PickListValue");
        BindingSource.Bindings.Add(pklFeeTypePickListValueBinding);
                    // pklType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("JobType", pklType, "PickListValue");
        BindingSource.Bindings.Add(pklTypePickListValueBinding);
                    // PONo.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding PONoTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PONo", PONo, "Text");
        BindingSource.Bindings.Add(PONoTextBinding);
                    // dtPODate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtPODateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PODate", dtPODate, "DateTimeValue");
        BindingSource.Bindings.Add(dtPODateDateTimeValueBinding);
                    // dtProposdedStartDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtProposdedStartDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ProposedStartDate", dtProposdedStartDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtProposdedStartDateDateTimeValueBinding);
                    // dtProposedEndDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtProposedEndDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ProposedEndDate", dtProposedEndDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtProposedEndDateDateTimeValueBinding);
                    // dtReceivedDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtReceivedDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ReceivedDate", dtReceivedDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtReceivedDateDateTimeValueBinding);
                    // lkpExecutingBranch.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpExecutingBranchLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ExecutingBranchId", lkpExecutingBranch, "LookupResultValue");
        BindingSource.Bindings.Add(lkpExecutingBranchLookupResultValueBinding);
    
   
        }
                                                                                                         
protected void QFButton_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IContract _entity = BindingSource.Current as Sage.Entity.Interfaces.IContract;
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
protected void QFButton2_ClickAction(object sender, EventArgs e) {
  Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
  if (persistentEntity != null) {
    persistentEntity.Delete();
  }

  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 QFButton.Click += new ImageClickEventHandler(QFButton_ClickAction);
QFButton2.Click += new ImageClickEventHandler(QFButton2_ClickAction);


}

protected override void OnFormBound()
{
ClientBindingMgr.RegisterSaveButton(QFButton);

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
    get { return _formAdapter ?? (_formAdapter = new InsertContractNewAdapter(this)); }
}

public class InsertContractNewAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IInsertContractNew
{
    public InsertContractNewAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _QFTextBox1;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox1
    {
        get { return FindControl(ref _QFTextBox1, "QFTextBox1"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpAccount;
    public  Sage.Platform.Controls.ILookupControl lkpAccount
    {
        get { return FindControl(ref _lkpAccount, "lkpAccount"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _Description;
    public  Sage.Platform.Controls.ITextBoxControl Description
    {
        get { return FindControl(ref _Description, "Description"); }
    }
    private Sage.Platform.Controls.ILookupControl _QFTextBox7;
    public  Sage.Platform.Controls.ILookupControl QFTextBox7
    {
        get { return FindControl(ref _QFTextBox7, "QFTextBox7"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklType;
    public  Sage.Platform.Controls.IPickListControl pklType
    {
        get { return FindControl(ref _pklType, "pklType"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtPODate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtPODate
    {
        get { return FindControl(ref _dtPODate, "dtPODate"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtProposedEndDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtProposedEndDate
    {
        get { return FindControl(ref _dtProposedEndDate, "dtProposedEndDate"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpExecutingBranch;
    public  Sage.Platform.Controls.ILookupControl lkpExecutingBranch
    {
        get { return FindControl(ref _lkpExecutingBranch, "lkpExecutingBranch"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpBranch;
    public  Sage.Platform.Controls.ILookupControl lkpBranch
    {
        get { return FindControl(ref _lkpBranch, "lkpBranch"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpSalesOrder;
    public  Sage.Platform.Controls.ILookupControl lkpSalesOrder
    {
        get { return FindControl(ref _lkpSalesOrder, "lkpSalesOrder"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpAccountManager;
    public  Sage.Platform.Controls.ILookupControl lkpAccountManager
    {
        get { return FindControl(ref _lkpAccountManager, "lkpAccountManager"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklFeeType;
    public  Sage.Platform.Controls.IPickListControl pklFeeType
    {
        get { return FindControl(ref _pklFeeType, "pklFeeType"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _PONo;
    public  Sage.Platform.Controls.ITextBoxControl PONo
    {
        get { return FindControl(ref _PONo, "PONo"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtProposdedStartDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtProposdedStartDate
    {
        get { return FindControl(ref _dtProposdedStartDate, "dtProposdedStartDate"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtReceivedDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtReceivedDate
    {
        get { return FindControl(ref _dtReceivedDate, "dtReceivedDate"); }
    }
    private Sage.Platform.Controls.IButtonControl _QFButton;
    public  Sage.Platform.Controls.IButtonControl QFButton
    {
        get { return FindControl(ref _QFButton, "QFButton"); }
    }
    private Sage.Platform.Controls.IButtonControl _QFButton2;
    public  Sage.Platform.Controls.IButtonControl QFButton2
    {
        get { return FindControl(ref _QFButton2, "QFButton2"); }
    }

}

</script>

<script type="text/javascript">
</script>
