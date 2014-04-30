<%@ Control Language="C#" ClassName="AddEditStampTransactionReturn" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
   <asp:Label ID="pklStampType_lbl" AssociatedControlID="pklStampType" runat="server" Text="<%$ resources: pklStampType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklStampType" ReadOnly="true" PickListName="StampType" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklIssuedBy_lbl" AssociatedControlID="pklIssuedBy" runat="server" Text="<%$ resources: pklIssuedBy.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklIssuedBy" PickListName="StampIssuedBy" MustExistInList="false" Required="true" MaxLength="64"  />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpIssuedTo_lbl" AssociatedControlID="lkpIssuedTo" runat="server" Text="<%$ resources: lkpIssuedTo.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="lkpIssuedTo" LookupEntityName="Surveyor" LookupEntityTypeName="Sage.Entity.Interfaces.ISurveyor, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupBindingMode="String" Required="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpIssuedTo.LookupProperties.FirstName.PropertyHeader %>" PropertyName="FirstName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpIssuedTo.LookupProperties.LastName.PropertyHeader %>" PropertyName="LastName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lkpIssuedTo.LookupProperties.MobileNo.PropertyHeader %>" PropertyName="MobileNo" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtIssueDate_lbl" AssociatedControlID="dtIssueDate" runat="server" Text="<%$ resources: dtIssueDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtIssueDate" DisplayTime="false" />
  </div>

      </td>
                <td></td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="AssignQty_lbl" AssociatedControlID="AssignQty" runat="server" Text="<%$ resources: AssignQty.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="AssignQty" Required="true" Text="<%$ resources: AssignQty.Text %>"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
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
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="AddEditStampTransactionReturn_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="QFButton"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=AddEditStampTransactionReturn&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkAddEditStampTransactionReturnHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="AddEditStampTransactionReturn" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IStampTransaction); }
}

 

protected override void OnAddEntityBindings() {
                 // pklStampType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklStampTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("StampType", pklStampType, "PickListValue");
        BindingSource.Bindings.Add(pklStampTypePickListValueBinding);
                    // pklIssuedBy.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklIssuedByPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("IssuedBy", pklIssuedBy, "PickListValue");
        BindingSource.Bindings.Add(pklIssuedByPickListValueBinding);
                    // lkpIssuedTo.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpIssuedToLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("IssuedTo", lkpIssuedTo, "LookupResultValue");
        BindingSource.Bindings.Add(lkpIssuedToLookupResultValueBinding);
                    // dtIssueDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtIssueDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PurchaseIssueDate", dtIssueDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtIssueDateDateTimeValueBinding);
                    // AssignQty.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding AssignQtyTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("AssignQty", AssignQty, "Text");
        BindingSource.Bindings.Add(AssignQtyTextBinding);
                    // dtExpiryDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtExpiryDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ExpiryDate", dtExpiryDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtExpiryDateDateTimeValueBinding);
    
   
    }
                                          
protected void QFButton_ClickAction(object sender, EventArgs e) {
Sage.Platform.WebPortal.EntityPage page = (Sage.Platform.WebPortal.EntityPage)Page;
    Sage.Entity.Interfaces.IStampTransaction   objReturn= this.BindingSource.Current as Sage.Entity.Interfaces.IStampTransaction ;
    //Sage.Entity.Interfaces.IStampMaster objStampMaster = this.BindingSource.Current as Sage.Entity.Interfaces.IStampMaster;
    
    
    //get old Quanity
    Sage.Platform.Data.IDataService service = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Data.IDataService>();
    System.Data.OleDb.OleDbConnection conObj = new System.Data.OleDb.OleDbConnection(service.GetConnectionString());

    string Query = "select isnull(RETURNEDQTY,0)  from stampmaster where STAMPMASTERID='" + Convert.ToString(page.EntityContext.EntityID)   + "'";

    System.Data.OleDb.OleDbDataAdapter dataAdapterObj3 = new System.Data.OleDb.OleDbDataAdapter(Query, conObj);
    System.Data.DataTable dt3 = new System.Data.DataTable();
    dataAdapterObj3.Fill(dt3);

    int oldQuanity;
    
    if (dt3.Rows.Count > 0 && dt3.Rows[0][0].ToString() != "")
    {
        oldQuanity = Convert.ToInt16 (dt3.Rows[0][0].ToString());
        
    }
    else
    {
        oldQuanity = 0;
    }
    
    
    
    //Save

    objReturn.StampType = "Return";
    objReturn.StampMasterId = Convert.ToString(page.EntityContext.EntityID);
    objReturn.IssuedTo = lkpIssuedTo.LookupResultValue.ToString();
    objReturn.IssuedBy = pklIssuedBy.PickListValue;
 if (!string.IsNullOrEmpty(dtIssueDate.DateTimeValue.ToString()))
{    objReturn.PurchaseIssueDate = Convert.ToDateTime(dtIssueDate.DateTimeValue);
}
 if (!string.IsNullOrEmpty(dtExpiryDate.DateTimeValue.ToString()))
{
    objReturn.ExpiryDate = Convert.ToDateTime(dtExpiryDate.DateTimeValue);
}
    objReturn.AssignQty = Convert.ToInt16(AssignQty.Text);
    objReturn.Save();
	
    //update master Quantity


    int NewQuantity = oldQuanity + Convert.ToInt16(AssignQty.Text);
 
    System.Data.OleDb.OleDbConnection conObj1 = new System.Data.OleDb.OleDbConnection(service.GetConnectionString());
    conObj1.Open();
    string query1 = "Update  stampmaster set RETURNEDQTY =" + NewQuantity + " where STAMPMASTERID='" +Convert.ToString (page.EntityContext.EntityID )+ "'";
    System.Data.OleDb.OleDbCommand cmd = new System.Data.OleDb.OleDbCommand(query1, conObj1);
    cmd.ExecuteNonQuery();

    Response.Redirect("StampMaster.aspx");
	 

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 QFButton.Click += new ImageClickEventHandler(QFButton_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {

Sage.Entity.Interfaces.IStampTransaction    objstampReturn = this.BindingSource.Current as Sage.Entity.Interfaces.IStampTransaction ; 



objstampReturn.StampType ="Return";


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
    get { return _formAdapter ?? (_formAdapter = new AddEditStampTransactionReturnAdapter(this)); }
}

public class AddEditStampTransactionReturnAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAddEditStampTransactionReturn
{
    public AddEditStampTransactionReturnAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IPickListControl _pklStampType;
    public  Sage.Platform.Controls.IPickListControl pklStampType
    {
        get { return FindControl(ref _pklStampType, "pklStampType"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpIssuedTo;
    public  Sage.Platform.Controls.ILookupControl lkpIssuedTo
    {
        get { return FindControl(ref _lkpIssuedTo, "lkpIssuedTo"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _AssignQty;
    public  Sage.Platform.Controls.ITextBoxControl AssignQty
    {
        get { return FindControl(ref _AssignQty, "AssignQty"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklIssuedBy;
    public  Sage.Platform.Controls.IPickListControl pklIssuedBy
    {
        get { return FindControl(ref _pklIssuedBy, "pklIssuedBy"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtIssueDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtIssueDate
    {
        get { return FindControl(ref _dtIssueDate, "dtIssueDate"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtExpiryDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtExpiryDate
    {
        get { return FindControl(ref _dtExpiryDate, "dtExpiryDate"); }
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
