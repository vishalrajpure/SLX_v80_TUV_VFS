<%@ Control Language="C#" ClassName="CallsComments_PrintView" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
            <td  colspan="2" >
<asp:Panel runat="server" ID="ctrlstComments" CssClass="controlslist "
>
   <div class="twocollbl alignleft" style="margin-top:.5em;">
   <asp:Label ID="txtComments_lbl" AssociatedControlID="txtComments" runat="server" Text="<%$ resources: txtComments.Caption %>" ></asp:Label>
 </div>
  <div  class="twocoltextcontrol"  style="margin-top:.5em;" >
<asp:Label runat="server" ID="txtComments" style="white-space:normal"  />
  </div>

  
</asp:Panel>
      </td>
                      <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="CallsComments_PrintView_RTools" ToolbarLocation="right">
   
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=CallsComments_PrintView&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkCallsComments_PrintViewHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="CallsComments" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.ITicket); }
}

 

protected override void OnAddEntityBindings() {
                    // txtComments.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding txtCommentsTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Notes", txtComments, "Text");
        BindingSource.Bindings.Add(txtCommentsTextBinding);
       
   
    }
                     
protected override void OnFormBound()
{
ScriptManager.RegisterStartupScript(Page, GetType(), "cleanupcontainer", "jQuery(\".controlslist > div:empty\").remove();", true);
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}


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
                                            if (tool is PageLink)
                        {
                            PageLink plink = tool as PageLink;
                            if (plink.LinkType == enumPageLinkType.HelpFileName)
                            {
                                            tinfo.RightTools.Add(tool);
                                                }
                        }
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
    get { return _formAdapter ?? (_formAdapter = new CallsCommentsAdapter(this)); }
}

public class CallsCommentsAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ICallsComments
{
    public CallsCommentsAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IControlsListControl _ctrlstComments;
    public  Sage.Platform.Controls.IControlsListControl ctrlstComments
    {
        get { return FindControl(ref _ctrlstComments, "ctrlstComments"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _txtComments;
    public  Sage.Platform.Controls.ITextBoxControl txtComments
    {
        get { return FindControl(ref _txtComments, "txtComments"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnDateStamp;
    public  Sage.Platform.Controls.IButtonControl btnDateStamp
    {
        get { return FindControl(ref _btnDateStamp, "btnDateStamp"); }
    }
    private Sage.Platform.Controls.IButtonControl _cmdSave;
    public  Sage.Platform.Controls.IButtonControl cmdSave
    {
        get { return FindControl(ref _cmdSave, "cmdSave"); }
    }

}

</script>

<script type="text/javascript">
</script>
