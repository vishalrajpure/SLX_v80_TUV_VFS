<%@ Control Language="C#" ClassName="AddEditBillingInstruction" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
     <tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtDateOfBilling_lbl" AssociatedControlID="dtDateOfBilling" runat="server" Text="<%$ resources: dtDateOfBilling.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtDateOfBilling" Required="true" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtInstructionDate_lbl" AssociatedControlID="dtInstructionDate" runat="server" Text="<%$ resources: dtInstructionDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtInstructionDate" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td rowspan="2"  >
 <div class=" lbl alignleft" >
   <asp:Label ID="Comments_lbl" AssociatedControlID="Comments" runat="server" Text="<%$ resources: Comments.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="Comments"  Rows="2" TextMode="MultiLine" Columns="40" dojoType="Sage.UI.Controls.SimpleTextarea" MultiLineMaxLength="252"  />
  </div>

      </td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="AddEditBillingInstruction_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="btnSave"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnDelete"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=AddEditBillingInstruction&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkAddEditBillingInstructionHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="AddEditBillingInstruction" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.ISalesOrderBillingInstruction); }
}

 

protected override void OnAddEntityBindings() {
                 // dtDateOfBilling.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtDateOfBillingDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DateOfBilling", dtDateOfBilling, "DateTimeValue");
        BindingSource.Bindings.Add(dtDateOfBillingDateTimeValueBinding);
                    // dtInstructionDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtInstructionDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("InstructionDate", dtInstructionDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtInstructionDateDateTimeValueBinding);
                    // Comments.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding CommentsTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Comments", Comments, "Text");
        BindingSource.Bindings.Add(CommentsTextBinding);
    
   
        }
                     
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ISalesOrderBillingInstruction _entity = BindingSource.Current as Sage.Entity.Interfaces.ISalesOrderBillingInstruction;
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
 btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);
btnSave.Click += new ImageClickEventHandler(DialogService.CloseEventHappened);
btnSave.Click += new ImageClickEventHandler(Refresh);
btnDelete.Click += new ImageClickEventHandler(btnDelete_ClickAction);


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
    get { return _formAdapter ?? (_formAdapter = new AddEditBillingInstructionAdapter(this)); }
}

public class AddEditBillingInstructionAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAddEditBillingInstruction
{
    public AddEditBillingInstructionAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDateTimePickerControl _dtDateOfBilling;
    public  Sage.Platform.Controls.IDateTimePickerControl dtDateOfBilling
    {
        get { return FindControl(ref _dtDateOfBilling, "dtDateOfBilling"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtInstructionDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtInstructionDate
    {
        get { return FindControl(ref _dtInstructionDate, "dtInstructionDate"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _Comments;
    public  Sage.Platform.Controls.ITextBoxControl Comments
    {
        get { return FindControl(ref _Comments, "Comments"); }
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