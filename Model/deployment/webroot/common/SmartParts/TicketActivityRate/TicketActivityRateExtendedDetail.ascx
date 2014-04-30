<%@ Control Language="C#" ClassName="TicketActivityRateExtendedDetail" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
 <div class=" lbl alignleft" >
   <asp:Label ID="txtId_lbl" AssociatedControlID="txtId" runat="server" Text="<%$ resources: txtId.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtId" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtCreateUser_lbl" AssociatedControlID="txtCreateUser" runat="server" Text="<%$ resources: txtCreateUser.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtCreateUser" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dteCreateDate_lbl" AssociatedControlID="dteCreateDate" runat="server" Text="<%$ resources: dteCreateDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dteCreateDate" ReadOnly="true" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="txtModifyUser_lbl" AssociatedControlID="txtModifyUser" runat="server" Text="<%$ resources: txtModifyUser.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="txtModifyUser" ReadOnly="true"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="dteModifyDate_lbl" AssociatedControlID="dteModifyDate" runat="server" Text="<%$ resources: dteModifyDate.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dteModifyDate" ReadOnly="true" DisplayTime="false" />
  </div>

      </td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="TicketActivityRateExtendedDetail_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=TicketActivityRateExtendedDetail&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkTicketActivityRateExtendedDetailHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="TicketActivityRateExtendedDetail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.ITicketActivityRate); }
}

 

protected override void OnAddEntityBindings() {
                 // txtId.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtIdTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Id", txtId, "Text");
        BindingSource.Bindings.Add(txtIdTextBinding);
                    // txtCreateUser.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCreateUserTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CreateUser", txtCreateUser, "Text");
        BindingSource.Bindings.Add(txtCreateUserTextBinding);
                    // dteCreateDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dteCreateDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("CreateDate", dteCreateDate, "DateTimeValue");
        BindingSource.Bindings.Add(dteCreateDateDateTimeValueBinding);
                    // txtModifyUser.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtModifyUserTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ModifyUser", txtModifyUser, "Text");
        BindingSource.Bindings.Add(txtModifyUserTextBinding);
                    // dteModifyDate.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dteModifyDateDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ModifyDate", dteModifyDate, "DateTimeValue");
        BindingSource.Bindings.Add(dteModifyDateDateTimeValueBinding);
    
   
}
                                   

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 
}

protected override void OnFormBound()
{
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
    get { return _formAdapter ?? (_formAdapter = new TicketActivityRateExtendedDetailAdapter(this)); }
}

public class TicketActivityRateExtendedDetailAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ITicketActivityRateExtendedDetail
{
    public TicketActivityRateExtendedDetailAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _txtId;
    public  Sage.Platform.Controls.ITextBoxControl txtId
    {
        get { return FindControl(ref _txtId, "txtId"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtCreateUser;
    public  Sage.Platform.Controls.ITextBoxControl txtCreateUser
    {
        get { return FindControl(ref _txtCreateUser, "txtCreateUser"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dteCreateDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dteCreateDate
    {
        get { return FindControl(ref _dteCreateDate, "dteCreateDate"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtModifyUser;
    public  Sage.Platform.Controls.ITextBoxControl txtModifyUser
    {
        get { return FindControl(ref _txtModifyUser, "txtModifyUser"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dteModifyDate;
    public  Sage.Platform.Controls.IDateTimePickerControl dteModifyDate
    {
        get { return FindControl(ref _dteModifyDate, "dteModifyDate"); }
    }

}

</script>

<script type="text/javascript">
</script>
