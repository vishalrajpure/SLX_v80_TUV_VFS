<%@ Control Language="C#" ClassName="PaymentInstructions" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
<asp:TextBox runat="server" ID="QFTextBox1" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox_lbl" AssociatedControlID="QFTextBox" runat="server" Text="<%$ resources: QFTextBox.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="SAPJobNo_lbl" AssociatedControlID="SAPJobNo" runat="server" Text="<%$ resources: SAPJobNo.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="SAPJobNo"  dojoType="Sage.UI.Controls.TextBox" MaxLength="32"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="CustomerPONumber_lbl" AssociatedControlID="CustomerPONumber" runat="server" Text="<%$ resources: CustomerPONumber.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="CustomerPONumber"  dojoType="Sage.UI.Controls.TextBox" MaxLength="15"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtBillingDate_lbl" AssociatedControlID="dtBillingDate" runat="server" Text="<%$ resources: dtBillingDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtBillingDate" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="BillAmount_lbl" AssociatedControlID="BillAmount" runat="server" Text="<%$ resources: BillAmount.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="BillAmount"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtExpiryDate_lbl" AssociatedControlID="dtExpiryDate" runat="server" Text="<%$ resources: dtExpiryDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtExpiryDate" DisplayTime="false" />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td rowspan="2"  colspan="2" >
 <div class="twocollbl alignleft" >
   <asp:Label ID="Comments_lbl" AssociatedControlID="Comments" runat="server" Text="<%$ resources: Comments.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"   >
<asp:TextBox runat="server" ID="Comments"  dojoType="Sage.UI.Controls.TextBox" MaxLength="2147483647"  />
  </div>

      </td>
            </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="PaymentInstructions_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="QFButton"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=PaymentInstructions&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkPaymentInstructionsHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="PaymentInstructions" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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

 

protected override void OnAddEntityBindings() {
                 // QFTextBox1.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox1TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account", QFTextBox1, "Text");
        BindingSource.Bindings.Add(QFTextBox1TextBinding);
                    // QFTextBox.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBoxTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account.SAPCustomerId", QFTextBox, "Text");
        BindingSource.Bindings.Add(QFTextBoxTextBinding);
                    // SAPJobNo.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding SAPJobNoTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SAPJobNo", SAPJobNo, "Text");
        BindingSource.Bindings.Add(SAPJobNoTextBinding);
                    // CustomerPONumber.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding CustomerPONumberTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CustomerPurchaseOrderNumber", CustomerPONumber, "Text");
        BindingSource.Bindings.Add(CustomerPONumberTextBinding);
                    // dtBillingDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtBillingDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DATEOFBILLING", dtBillingDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtBillingDateDateTimeValueBinding);
                    // BillAmount.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding BillAmountTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("BillAmount", BillAmount, "Text");
        BindingSource.Bindings.Add(BillAmountTextBinding);
                    // dtExpiryDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtExpiryDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ExpiryDate", dtExpiryDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtExpiryDateDateTimeValueBinding);
                    // Comments.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding CommentsTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Comments", Comments, "Text");
        BindingSource.Bindings.Add(CommentsTextBinding);
    
   
    }
                                                        
protected void QFButton_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ISalesOrder _entity = BindingSource.Current as Sage.Entity.Interfaces.ISalesOrder;
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

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 QFButton.Click += new ImageClickEventHandler(QFButton_ClickAction);


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
    get { return _formAdapter ?? (_formAdapter = new PaymentInstructionsAdapter(this)); }
}

public class PaymentInstructionsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IPaymentInstructions
{
    public PaymentInstructionsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _QFTextBox1;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox1
    {
        get { return FindControl(ref _QFTextBox1, "QFTextBox1"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _SAPJobNo;
    public  Sage.Platform.Controls.ITextBoxControl SAPJobNo
    {
        get { return FindControl(ref _SAPJobNo, "SAPJobNo"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtBillingDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtBillingDate
    {
        get { return FindControl(ref _dtBillingDate, "dtBillingDate"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtExpiryDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtExpiryDate
    {
        get { return FindControl(ref _dtExpiryDate, "dtExpiryDate"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _Comments;
    public  Sage.Platform.Controls.ITextBoxControl Comments
    {
        get { return FindControl(ref _Comments, "Comments"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox
    {
        get { return FindControl(ref _QFTextBox, "QFTextBox"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _CustomerPONumber;
    public  Sage.Platform.Controls.ITextBoxControl CustomerPONumber
    {
        get { return FindControl(ref _CustomerPONumber, "CustomerPONumber"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _BillAmount;
    public  Sage.Platform.Controls.ITextBoxControl BillAmount
    {
        get { return FindControl(ref _BillAmount, "BillAmount"); }
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
