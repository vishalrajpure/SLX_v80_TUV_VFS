<%@ Control Language="C#" ClassName="AddEditIRNReportItem" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="30%" />
     <tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lueItemCode_lbl" AssociatedControlID="lueItemCode" runat="server" Text="<%$ resources: lueItemCode.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lueItemCode" LookupEntityName="TicketProduct" LookupEntityTypeName="Sage.Entity.Interfaces.ITicketProduct, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" SeedProperty="IRNReport.TicketId" AutoPostBack="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueItemCode.LookupProperties.Description.PropertyHeader %>" PropertyName="Description" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueItemCode.LookupProperties.Quantity.PropertyHeader %>" PropertyName="Quantity" PropertyType="System.Int32" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
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
   <asp:Label ID="txtitemcode_lbl" AssociatedControlID="txtitemcode" runat="server" Text="<%$ resources: txtitemcode.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtitemcode"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="txtquantity_lbl" AssociatedControlID="txtquantity" runat="server" Text="<%$ resources: txtquantity.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="txtquantity"
ReadOnly="true" MaxLength="15" DecimalDigits="0" Strict="False" 
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="txtQuantityOffered_lbl" AssociatedControlID="txtQuantityOffered" runat="server" Text="<%$ resources: txtQuantityOffered.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="txtQuantityOffered"
ReadOnly="true" Strict="False" 
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="txtQuantityAccepted_lbl" AssociatedControlID="txtQuantityAccepted" runat="server" Text="<%$ resources: txtQuantityAccepted.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol numeric"  > 
    <SalesLogix:NumericControl runat="server" ID="txtQuantityAccepted"
Strict="False" 
 />
  </div>

      </td>
      </tr>
<tr>
            <td  >
<div class="slxlabel  alignleft checkboxRight">

  <SalesLogix:SLXCheckBox runat="server" ID="chkQuantityCompletePerPo"  Text="<%$ resources: chkQuantityCompletePerPo.Caption %>"  CssClass=""
LabelPlacement="left"  />
</div>
      </td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="AddEditIRNReportItem_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnSave"
 ToolTip="<%$ resources: btnSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=AddEditIRNReportItem&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkAddEditIRNReportItemHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="AddEditIRNReportItem" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IIRNReportItem); }
}

 

protected override void OnAddEntityBindings() {
                 // lueItemCode.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueItemCodeLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("TicketProduct", lueItemCode, "LookupResultValue");
        BindingSource.Bindings.Add(lueItemCodeLookupResultValueBinding);
                 // lueItemCode.SeedValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lueItemCodeSeedValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("IRNReport.TicketId", lueItemCode, "SeedValue");
        lueItemCodeSeedValueBinding.IgnoreFLSDisabling = true;
        BindingSource.Bindings.Add(lueItemCodeSeedValueBinding);
                    // txtitemcode.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtitemcodeTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ItemCode", txtitemcode, "Text");
        BindingSource.Bindings.Add(txtitemcodeTextBinding);
                    // txtquantity.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtquantityTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Quantity", txtquantity, "Text");
        BindingSource.Bindings.Add(txtquantityTextBinding);
                    // txtQuantityOffered.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtQuantityOfferedTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("QuantityOffered", txtQuantityOffered, "Text");
        BindingSource.Bindings.Add(txtQuantityOfferedTextBinding);
                    // txtQuantityAccepted.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtQuantityAcceptedTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("QuantityAccepted", txtQuantityAccepted, "Text");
        BindingSource.Bindings.Add(txtQuantityAcceptedTextBinding);
                    // chkQuantityCompletePerPo.Checked Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding chkQuantityCompletePerPoCheckedBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("QuantityCompletePerPO", chkQuantityCompletePerPo, "Checked");
        BindingSource.Bindings.Add(chkQuantityCompletePerPoCheckedBinding);
    
   
    }
                                          
protected void lueItemCode_ChangeAction(object sender, EventArgs e) {
Sage.Entity.Interfaces.IIRNReportItem objitem = BindingSource.Current as Sage.Entity.Interfaces.IIRNReportItem;
objitem.Quantity = objitem.TicketProduct.ContractProductItem.Quantity;
objitem.QuantityOffered = objitem.TicketProduct.Quantity;
objitem.ItemCode = objitem.TicketProduct.Description;

}
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IIRNReportItem _entity = BindingSource.Current as Sage.Entity.Interfaces.IIRNReportItem;
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

          btnSave_ClickActionBRC(sender, e);
    
  
}
protected void btnSave_ClickActionBRC(object sender, EventArgs e) {
Sage.Entity.Interfaces.IIRNReport VRpt = this.GetParentEntity() as Sage.Entity.Interfaces.IIRNReport;
Sage.Entity.Interfaces.IIRNReportItem objs = BindingSource.Current as Sage.Entity.Interfaces.IIRNReportItem;
if(objs != null)
{
	objs.IRNReport = VRpt;
	objs.Save();
	System.Web.HttpContext.Current.Response.Redirect(string.Format("IRNReport.aspx?entityid=" + VRpt.Id.ToString(), "&modeid=Detail"));
}

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueItemCode.LookupResultValueChanged += new EventHandler(lueItemCode_ChangeAction);
btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);


}

protected override void OnFormBound()
{
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
    get { return _formAdapter ?? (_formAdapter = new AddEditIRNReportItemAdapter(this)); }
}

public class AddEditIRNReportItemAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAddEditIRNReportItem
{
    public AddEditIRNReportItemAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ILookupControl _lueItemCode;
    public  Sage.Platform.Controls.ILookupControl lueItemCode
    {
        get { return FindControl(ref _lueItemCode, "lueItemCode"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtitemcode;
    public  Sage.Platform.Controls.ITextBoxControl txtitemcode
    {
        get { return FindControl(ref _txtitemcode, "txtitemcode"); }
    }
    private Sage.Platform.Controls.INumericControl _txtquantity;
    public  Sage.Platform.Controls.INumericControl txtquantity
    {
        get { return FindControl(ref _txtquantity, "txtquantity"); }
    }
    private Sage.Platform.Controls.INumericControl _txtQuantityOffered;
    public  Sage.Platform.Controls.INumericControl txtQuantityOffered
    {
        get { return FindControl(ref _txtQuantityOffered, "txtQuantityOffered"); }
    }
    private Sage.Platform.Controls.INumericControl _txtQuantityAccepted;
    public  Sage.Platform.Controls.INumericControl txtQuantityAccepted
    {
        get { return FindControl(ref _txtQuantityAccepted, "txtQuantityAccepted"); }
    }
    private Sage.Platform.Controls.ICheckBoxControl _chkQuantityCompletePerPo;
    public  Sage.Platform.Controls.ICheckBoxControl chkQuantityCompletePerPo
    {
        get { return FindControl(ref _chkQuantityCompletePerPo, "chkQuantityCompletePerPo"); }
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
