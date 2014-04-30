<%@ Control Language="C#" ClassName="AddEditComplaintActivity1" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
   <asp:Label ID="txtDescription_lbl" AssociatedControlID="txtDescription" runat="server" Text="<%$ resources: txtDescription.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtDescription"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklType_lbl" AssociatedControlID="pklType" runat="server" Text="<%$ resources: pklType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklType" PickListName="Activity Types" MustExistInList="false" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dtpStartDate_lbl" AssociatedControlID="dtpStartDate" runat="server" Text="<%$ resources: dtpStartDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtpStartDate" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtComments_lbl" AssociatedControlID="txtComments" runat="server" Text="<%$ resources: txtComments.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtComments"  dojoType="Sage.UI.Controls.TextBox" MaxLength="255"  />
  </div>

      </td>
      </tr>
<tr>
            <td></td>
                <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="AddEditComplaintActivity1_RTools" ToolbarLocation="right">
    <asp:ImageButton runat="server" ID="QFButton"
 AlternateText="<%$ resources: QFButton.Caption %>"  ToolTip="<%$ resources: QFButton.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="QFButton2"
 AlternateText="<%$ resources: QFButton2.Caption %>"  ToolTip="<%$ resources: QFButton2.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=AddEditComplaintActivity1&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkAddEditComplaintActivity1Help" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="AddEditComplaintActivity1" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IActivity); }
}

 

protected override void OnAddEntityBindings() {
                 // txtDescription.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtDescriptionTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Description", txtDescription, "Text");
        BindingSource.Bindings.Add(txtDescriptionTextBinding);
                    // pklType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Type", pklType, "PickListValue");
        BindingSource.Bindings.Add(pklTypePickListValueBinding);
                    // dtpStartDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtpStartDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("StartDate", dtpStartDate, "DateTimeValue");
        BindingSource.Bindings.Add(dtpStartDateDateTimeValueBinding);
                    // txtComments.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCommentsTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Notes", txtComments, "Text");
        BindingSource.Bindings.Add(txtCommentsTextBinding);
    
   
        }
                            
protected void QFButton_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.IActivity _entity = BindingSource.Current as Sage.Entity.Interfaces.IActivity;
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

          QFButton_ClickActionBRC(sender, e);
    
  
}
protected void QFButton_ClickActionBRC(object sender, EventArgs e) {
Sage.Entity.Interfaces.IComplaint cmp = this.GetParentEntity() as  Sage.Entity.Interfaces.IComplaint;
Sage.Entity.Interfaces.IActivity act = this.BindingSource.Current as Sage.Entity.Interfaces.IActivity;

act.ComplaintID = cmp.ComplaintId;


//Sage.Platform.WebPortal.EntityPage page =(Sage.Platform.WebPortal.EntityPage)Page;
  
//act.ComplaintID = page.EntityContext.EntityID.ToString();
 
    
act.Save();
System.Web.HttpContext.Current.Response.Redirect(string.Format("~/{0}.aspx?entityId={1}", "Complaint", cmp.Id.ToString()));


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
    get { return _formAdapter ?? (_formAdapter = new AddEditComplaintActivity1Adapter(this)); }
}

public class AddEditComplaintActivity1Adapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IAddEditComplaintActivity1
{
    public AddEditComplaintActivity1Adapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _txtDescription;
    public  Sage.Platform.Controls.ITextBoxControl txtDescription
    {
        get { return FindControl(ref _txtDescription, "txtDescription"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtpStartDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dtpStartDate
    {
        get { return FindControl(ref _dtpStartDate, "dtpStartDate"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklType;
    public  Sage.Platform.Controls.IPickListControl pklType
    {
        get { return FindControl(ref _pklType, "pklType"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtComments;
    public  Sage.Platform.Controls.ITextBoxControl txtComments
    {
        get { return FindControl(ref _txtComments, "txtComments"); }
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