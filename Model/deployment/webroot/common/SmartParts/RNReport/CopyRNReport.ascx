<%@ Control Language="C#" ClassName="CopyRNReport" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
   <asp:Label ID="QFTextBox_lbl" AssociatedControlID="QFTextBox" runat="server" Text="<%$ resources: QFTextBox.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox10_lbl" AssociatedControlID="QFTextBox10" runat="server" Text="<%$ resources: QFTextBox10.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox10"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox16_lbl" AssociatedControlID="QFTextBox16" runat="server" Text="<%$ resources: QFTextBox16.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox16"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox8_lbl" AssociatedControlID="QFTextBox8" runat="server" Text="<%$ resources: QFTextBox8.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox8"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox3_lbl" AssociatedControlID="QFTextBox3" runat="server" Text="<%$ resources: QFTextBox3.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox3"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox6_lbl" AssociatedControlID="QFTextBox6" runat="server" Text="<%$ resources: QFTextBox6.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox6"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox17_lbl" AssociatedControlID="QFTextBox17" runat="server" Text="<%$ resources: QFTextBox17.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox17"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox9_lbl" AssociatedControlID="QFTextBox9" runat="server" Text="<%$ resources: QFTextBox9.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox9"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox4_lbl" AssociatedControlID="QFTextBox4" runat="server" Text="<%$ resources: QFTextBox4.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox4"  dojoType="Sage.UI.Controls.TextBox" MaxLength="32"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="QFDateTimePicker_lbl" AssociatedControlID="QFDateTimePicker" runat="server" Text="<%$ resources: QFDateTimePicker.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="QFDateTimePicker" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox18_lbl" AssociatedControlID="QFTextBox18" runat="server" Text="<%$ resources: QFTextBox18.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox18"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox7_lbl" AssociatedControlID="QFTextBox7" runat="server" Text="<%$ resources: QFTextBox7.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox7"  dojoType="Sage.UI.Controls.TextBox" MaxLength="32"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox1_lbl" AssociatedControlID="QFTextBox1" runat="server" Text="<%$ resources: QFTextBox1.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox1"  dojoType="Sage.UI.Controls.TextBox" MaxLength="2147483647"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="QFSLXPickList_lbl" AssociatedControlID="QFSLXPickList" runat="server" Text="<%$ resources: QFSLXPickList.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="QFSLXPickList" PickListName="$qfcontrol.PickListName" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox2_lbl" AssociatedControlID="QFTextBox2" runat="server" Text="<%$ resources: QFTextBox2.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox2"  dojoType="Sage.UI.Controls.TextBox" MaxLength="2147483647"  />
  </div>

      </td>
                <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="CopyRNReport_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=CopyRNReport&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkCopyRNReportHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="CopyRNReport" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IRNReport); }
}

 

protected override void OnAddEntityBindings() {
                 // QFTextBox.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBoxTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Account", QFTextBox, "Text");
        BindingSource.Bindings.Add(QFTextBoxTextBinding);
                    // QFTextBox10.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox10TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ReferenceNumber", QFTextBox10, "Text");
        BindingSource.Bindings.Add(QFTextBox10TextBinding);
                    // QFTextBox16.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox16TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SalesOrder", QFTextBox16, "Text");
        BindingSource.Bindings.Add(QFTextBox16TextBinding);
                    // QFTextBox8.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox8TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PlaceOfIssue", QFTextBox8, "Text");
        BindingSource.Bindings.Add(QFTextBox8TextBinding);
                    // QFTextBox3.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox3TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Contract", QFTextBox3, "Text");
        BindingSource.Bindings.Add(QFTextBox3TextBinding);
                    // QFTextBox6.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox6TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Location", QFTextBox6, "Text");
        BindingSource.Bindings.Add(QFTextBox6TextBinding);
                    // QFTextBox17.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox17TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Ticket", QFTextBox17, "Text");
        BindingSource.Bindings.Add(QFTextBox17TextBinding);
                    // QFTextBox9.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox9TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PONumber", QFTextBox9, "Text");
        BindingSource.Bindings.Add(QFTextBox9TextBinding);
                    // QFTextBox4.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox4TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Contracter", QFTextBox4, "Text");
        BindingSource.Bindings.Add(QFTextBox4TextBinding);
                    // QFDateTimePicker.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFDateTimePickerDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("PODate", QFDateTimePicker, "DateTimeValue");
        BindingSource.Bindings.Add(QFDateTimePickerDateTimeValueBinding);
                    // QFTextBox18.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox18TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Vendor", QFTextBox18, "Text");
        BindingSource.Bindings.Add(QFTextBox18TextBinding);
                    // QFTextBox7.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox7TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("OrderStatus", QFTextBox7, "Text");
        BindingSource.Bindings.Add(QFTextBox7TextBinding);
                    // QFTextBox1.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox1TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Calibration", QFTextBox1, "Text");
        BindingSource.Bindings.Add(QFTextBox1TextBinding);
                    // QFSLXPickList.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFSLXPickListPickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DocumentsReviewed", QFSLXPickList, "PickListValue");
        BindingSource.Bindings.Add(QFSLXPickListPickListValueBinding);
                    // QFTextBox2.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox2TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Conclusion", QFTextBox2, "Text");
        BindingSource.Bindings.Add(QFTextBox2TextBinding);
    
   
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
    get { return _formAdapter ?? (_formAdapter = new CopyRNReportAdapter(this)); }
}

public class CopyRNReportAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ICopyRNReport
{
    public CopyRNReportAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _QFTextBox;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox
    {
        get { return FindControl(ref _QFTextBox, "QFTextBox"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox16;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox16
    {
        get { return FindControl(ref _QFTextBox16, "QFTextBox16"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox3;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox3
    {
        get { return FindControl(ref _QFTextBox3, "QFTextBox3"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox17;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox17
    {
        get { return FindControl(ref _QFTextBox17, "QFTextBox17"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox4;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox4
    {
        get { return FindControl(ref _QFTextBox4, "QFTextBox4"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox18;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox18
    {
        get { return FindControl(ref _QFTextBox18, "QFTextBox18"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox1;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox1
    {
        get { return FindControl(ref _QFTextBox1, "QFTextBox1"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox2;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox2
    {
        get { return FindControl(ref _QFTextBox2, "QFTextBox2"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox10;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox10
    {
        get { return FindControl(ref _QFTextBox10, "QFTextBox10"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox8;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox8
    {
        get { return FindControl(ref _QFTextBox8, "QFTextBox8"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox6;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox6
    {
        get { return FindControl(ref _QFTextBox6, "QFTextBox6"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox9;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox9
    {
        get { return FindControl(ref _QFTextBox9, "QFTextBox9"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _QFDateTimePicker;
    public  Sage.Platform.Controls.IDateTimePickerControl QFDateTimePicker
    {
        get { return FindControl(ref _QFDateTimePicker, "QFDateTimePicker"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox7;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox7
    {
        get { return FindControl(ref _QFTextBox7, "QFTextBox7"); }
    }
    private Sage.Platform.Controls.IPickListControl _QFSLXPickList;
    public  Sage.Platform.Controls.IPickListControl QFSLXPickList
    {
        get { return FindControl(ref _QFSLXPickList, "QFSLXPickList"); }
    }

}

</script>

<script type="text/javascript">
</script>