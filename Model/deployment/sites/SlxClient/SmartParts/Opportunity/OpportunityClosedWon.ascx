<%@ Control Language="C#" ClassName="OpportunityClosedWon" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
         <col width="100%" />
     <tr>
            <td  >
<div class=" lbl alignleft">
    <asp:Label ID="curActualAmount_lbl" AssociatedControlID="curActualAmount" runat="server" Text="<%$ resources: curActualAmount.Caption %>" ></asp:Label>
</div>
 <div  class="textcontrol currency"  >
    <SalesLogix:Currency
    runat="server"
    ID="curActualAmount" 
    ExchangeRateType="EntityRate"
     Required="false"
 DisplayCurrencyCode="false" DecimalDigits="-1"
 />
</div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpActualClose_lbl" AssociatedControlID="dtpActualClose" runat="server" Text="<%$ resources: dtpActualClose.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpActualClose" ButtonToolTip="<%$ resources: dtpActualClose.ButtonToolTip %>" DisplayTime="false" Timeless="true" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklReason_lbl" AssociatedControlID="pklReason" runat="server" Text="<%$ resources: pklReason.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklReason" PickListName="Reason Won" AllowMultiples="true" NoneEditable="true"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtNotes_lbl" AssociatedControlID="txtNotes" runat="server" Text="<%$ resources: txtNotes.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtNotes"  Rows="3" TextMode="MultiLine" Columns="40" dojoType="Sage.UI.Controls.SimpleTextarea" MultiLineMaxLength="2147483647"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
<SalesLogix:LookupControl runat="server" ID="lueCompetitorReplaced" ButtonToolTip="<%$ resources: lueCompetitorReplaced.ButtonToolTip %>" LookupEntityName="Competitor" LookupEntityTypeName="Sage.Entity.Interfaces.ICompetitor, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="ButtonOnly" AutoPostBack="true" CssClass="buttonAlignRight" LookupImageURL="~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueCompetitorReplaced.LookupProperties.CompetitorName.PropertyHeader %>" PropertyName="CompetitorName" PropertyType="" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueCompetitorReplaced.LookupProperties.Rating.PropertyHeader %>" PropertyName="Rating" PropertyType="" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="True"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: lueCompetitorReplaced.LookupProperties.Strengths.PropertyHeader %>" PropertyName="Strengths" PropertyType="" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
</LookupProperties>
<LookupPreFilters>
</LookupPreFilters>
</SalesLogix:LookupControl>

      </td>
      </tr>
<tr>
            <td  >
<SalesLogix:SlxGridView runat="server" ID="grdOppCompetitors" GridLines="None"
AutoGenerateColumns="false" CellPadding="4" CssClass="datagrid" PagerStyle-CssClass="gridPager"
AlternatingRowStyle-CssClass="rowdk" RowStyle-CssClass="rowlt" SelectedRowStyle-CssClass="rowSelected" ShowEmptyTable="true" EnableViewState="false"
 AllowPaging="true" PageSize="5" OnPageIndexChanging="grdOppCompetitorspage_changing" EmptyTableRowText="<%$ resources: grdOppCompetitors.EmptyTableRowText %>"  ExpandableRows="True" ResizableColumns="True"  AllowSorting="true" OnSorting="grdOppCompetitors_Sorting"  ShowSortIcon="true" >
<Columns>
   <asp:BoundField DataField="Competitor.CompetitorName"
      HeaderText="<%$ resources: grdOppCompetitors.2502806d-23a2-42f2-9917-3ae124d23ab6.ColumnHeading %>"       SortExpression="Competitor.CompetitorName"    >
      </asp:BoundField>
    <asp:BoundField DataField="Rating"
      HeaderText="<%$ resources: grdOppCompetitors.335c2ad2-bf2e-4efb-951b-93e75d6cf731.ColumnHeading %>"       SortExpression="Rating"    >
      </asp:BoundField>
    <asp:BoundField DataField="Weaknesses"
      HeaderText="<%$ resources: grdOppCompetitors.e433bca0-e1f8-496a-bbc6-c4efa375be91.ColumnHeading %>"       SortExpression="Weaknesses"    >
      </asp:BoundField>
 </Columns>
    <PagerSettings Mode="NumericFirstLast" FirstPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=Start_16x16" LastPageImageUrl="ImageResource.axd?scope=global&type=Global_Images&key=End_16x16" />
</SalesLogix:SlxGridView>

<script runat="server" type="text/C#">


protected void grdOppCompetitorspage_changing(object sender, GridViewPageEventArgs e)
{
 grdOppCompetitors.PageIndex = e.NewPageIndex;
 grdOppCompetitors.DataBind();
}
protected void grdOppCompetitors_Sorting(object sender, GridViewSortEventArgs e) { }
</script>

      </td>
      </tr>
<tr>
            <td  >
<asp:Panel runat="server" ID="QFControlsList" CssClass="controlslist qfActionContainer"
>
   <asp:Button runat="server" ID="cmdOK"
 Text="<%$ resources: cmdOK.Caption %>" CssClass="slxbutton"  />
   
   <asp:Button runat="server" ID="cmdCancel"
 Text="<%$ resources: cmdCancel.Caption %>" CssClass="slxbutton"  />
 
</asp:Panel>
      </td>
      </tr>
<tr>
            <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="OpportunityClosedWon_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=OpportunityClosedWon&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkOpportunityClosedWonHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="OpportunityClosedWon" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IOpportunity); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dtsOppCompetitors;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dtsOppCompetitors
{ 
  get 
  {
    if (_dtsOppCompetitors == null)
    {
             _dtsOppCompetitors = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IOpportunityCompetitor), 
	    EntityType                     ,"GetClosedWonLostOppCompetitors", System.Reflection.MemberTypes.Method);
            	   	}
 	return _dtsOppCompetitors;
  }
}

void dtsOppCompetitors_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dtsOppCompetitors.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dtsOppCompetitors);
   }
}

 



 

protected override void OnAddEntityBindings() {
                 // curActualAmount.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding curActualAmountTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ActualAmount", curActualAmount, "Text");
        BindingSource.Bindings.Add(curActualAmountTextBinding);
                    // dtpActualClose.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpActualCloseDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ActualClose", dtpActualClose, "DateTimeValue");
        BindingSource.Bindings.Add(dtpActualCloseDateTimeValueBinding);
                    // pklReason.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklReasonPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Reason", pklReason, "PickListValue");
        BindingSource.Bindings.Add(pklReasonPickListValueBinding);
                    // txtNotes.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtNotesTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Notes", txtNotes, "Text");
        BindingSource.Bindings.Add(txtNotesTextBinding);
                      dtsOppCompetitors.Bindings.Add(new Sage.Platform.WebPortal.Binding.WebEntityListBinding("GetClosedWonLostOppCompetitors()", grdOppCompetitors ));
   dtsOppCompetitors.BindFieldNames = new String[] { "OpportunityId","CompetitorId","Competitor.CompetitorName","Rating","Weaknesses" };
              
     BindingSource.OnCurrentEntitySet += new EventHandler(dtsOppCompetitors_OnCurrentEntitySet);
    
}
                                                              
      
      
      
          
protected void lueCompetitorReplaced_ChangeAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("OpportunityClosedWon.lueCompetitorReplaced_OnChange", methodArgs);

}
protected void cmdOK_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IOpportunity _entity = BindingSource.Current as Sage.Entity.Interfaces.IOpportunity;
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

      		        cmdOK_ClickActionBRC(sender, e);
    
    Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
    if (refresher != null) {
      refresher.RefreshAll();
    }
    else {  
      Response.Redirect(Request.Url.ToString());
    }

}
protected void cmdOK_ClickActionBRC(object sender, EventArgs e) {

Sage.Entity.Interfaces.IOpportunity  oppo = this.BindingSource.Current as Sage.Entity.Interfaces.IOpportunity ;

Sage.Entity.Interfaces.IAccount   account = this.BindingSource.Current as Sage.Entity.Interfaces.IAccount  ;
Sage.Platform.Data.IDataService service = 
Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Data.IDataService>();
System.Data.OleDb.OleDbConnection conObj1 = new System.Data.OleDb.OleDbConnection(service.GetConnectionString());
conObj1.Open();
string query1 = "Update sysdba.Account set Type ='Customer' where accountid ='" + oppo .Account.Id + "'";
System.Data.OleDb.OleDbCommand cmd = new System.Data.OleDb.OleDbCommand(query1, conObj1);
cmd.ExecuteNonQuery();

  Sage.Platform.WebPortal.Services.IPanelRefreshService refresher = PageWorkItem.Services.Get<Sage.Platform.WebPortal.Services.IPanelRefreshService>();
    if (refresher != null) {
      refresher.RefreshAll();
    }
    else {  
      Response.Redirect(Request.Url.ToString());
    }

}
protected void cmdCancel_ClickAction(object sender, EventArgs e) {
Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
Object[] methodArgs = new Object[] { FormAdapter, e };
lib.Execute("OpportunityClosedWon.cmdCancel_OnClick", methodArgs);

}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 lueCompetitorReplaced.LookupResultValueChanged += new EventHandler(lueCompetitorReplaced_ChangeAction);
if (RoleSecurityService != null)
{
if (RoleSecurityService.HasAccess("ENTITIES/OPPORTUNITY/EDIT"))
{
cmdOK.Click += new EventHandler(cmdOK_ClickAction);
}
}
cmdOK.Click += new EventHandler(DialogService.CloseEventHappened);
cmdOK.Click += new EventHandler(Refresh);
cmdCancel.Click += new EventHandler(cmdCancel_ClickAction);
cmdCancel.Click += new EventHandler(DialogService.CloseEventHappened);


}

protected void quickformload0(object sender, EventArgs e) {
 if (DialogService.DialogParameters.Count > 0 && (DialogService.DialogParameters.ContainsKey("ExchangeRateType")))
 {
     Sage.Platform.Controls.ExchangeRateTypeEnum rateType = (Sage.Platform.Controls.ExchangeRateTypeEnum)Enum.Parse(typeof(Sage.Platform.Controls.ExchangeRateTypeEnum), DialogService.DialogParameters["ExchangeRateType"].ToString());
  
     string exchangeRateCode = DialogService.DialogParameters["ExchangeRateCode"].ToString();
     double exchangeRate = System.Convert.ToDouble(DialogService.DialogParameters["ExchangeRate"]);
      Sage.Entity.Interfaces.IOpportunity opp = BindingSource.Current as Sage.Entity.Interfaces.IOpportunity;
     curActualAmount.DisplayCurrencyCode = true;
     curActualAmount.ExchangeRate = exchangeRate;
     curActualAmount.CurrentCode = exchangeRateCode;
     curActualAmount.ExchangeRateType = rateType;
     curActualAmount.Text = System.Convert.ToString(opp.ActualAmount);
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
ClientBindingMgr.RegisterSaveButton(cmdOK);

ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dtsOppCompetitors.SourceObject == null) { dtsOppCompetitors.SourceObject = BindingSource.Current; }
if (dtsOppCompetitors.SourceObject == null) { RegisterBindingsWithClient(dtsOppCompetitors); }
dtsOppCompetitors.Bind();

if (!RoleSecurityService.HasAccess("ENTITIES/OPPORTUNITY/EDIT"))
{
cmdOK.Visible = false;
}
ClientBindingMgr.RegisterDialogCancelButton(cmdCancel);


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
    get { return _formAdapter ?? (_formAdapter = new OpportunityClosedWonAdapter(this)); }
}

public class OpportunityClosedWonAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IOpportunityClosedWon
{
    public OpportunityClosedWonAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ICurrencyControl _curActualAmount;
    public  Sage.Platform.Controls.ICurrencyControl curActualAmount
    {
        get { return FindControl(ref _curActualAmount, "curActualAmount"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtpActualClose;
    public  Sage.Platform.Controls.IDateTimePickerControl dtpActualClose
    {
        get { return FindControl(ref _dtpActualClose, "dtpActualClose"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklReason;
    public  Sage.Platform.Controls.IPickListControl pklReason
    {
        get { return FindControl(ref _pklReason, "pklReason"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtNotes;
    public  Sage.Platform.Controls.ITextBoxControl txtNotes
    {
        get { return FindControl(ref _txtNotes, "txtNotes"); }
    }
    private Sage.Platform.Controls.ILookupControl _lueCompetitorReplaced;
    public  Sage.Platform.Controls.ILookupControl lueCompetitorReplaced
    {
        get { return FindControl(ref _lueCompetitorReplaced, "lueCompetitorReplaced"); }
    }
    private Sage.Platform.Controls.IDataGridControl _grdOppCompetitors;
    public  Sage.Platform.Controls.IDataGridControl grdOppCompetitors
    {
        get { return FindControl(ref _grdOppCompetitors, "grdOppCompetitors"); }
    }
    private Sage.Platform.Controls.IControlsListControl _QFControlsList;
    public  Sage.Platform.Controls.IControlsListControl QFControlsList
    {
        get { return FindControl(ref _QFControlsList, "QFControlsList"); }
    }
    private Sage.Platform.Controls.IButtonControl _cmdOK;
    public  Sage.Platform.Controls.IButtonControl cmdOK
    {
        get { return FindControl(ref _cmdOK, "cmdOK"); }
    }
    private Sage.Platform.Controls.IButtonControl _cmdCancel;
    public  Sage.Platform.Controls.IButtonControl cmdCancel
    {
        get { return FindControl(ref _cmdCancel, "cmdCancel"); }
    }
    private Sage.Platform.Controls.IDataSourceControl _dtsOppCompetitors;
    public  Sage.Platform.Controls.IDataSourceControl dtsOppCompetitors
    {
        get { return FindControl(ref _dtsOppCompetitors, "dtsOppCompetitors"); }
    }

    public  void lueCompetitorReplaced_OnChange(System.EventArgs e)
    {
        Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
        Object[] methodArgs = new Object[] { this, e };
        lib.Execute("OpportunityClosedWon.lueCompetitorReplaced_OnChange", methodArgs);
    }
    public  void cmdCancel_OnClick(System.EventArgs e)
    {
        Sage.Platform.DynamicMethod.DynamicMethodLibrary lib = Sage.Platform.Orm.DynamicMethodLibraryHelper.Instance;
        Object[] methodArgs = new Object[] { this, e };
        lib.Execute("OpportunityClosedWon.cmdCancel_OnClick", methodArgs);
    }
}

</script>

<script type="text/javascript">
</script>