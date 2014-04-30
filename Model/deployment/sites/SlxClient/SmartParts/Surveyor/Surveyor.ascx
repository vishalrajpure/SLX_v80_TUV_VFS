<%@ Control Language="C#" ClassName="Surveyor" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
 <div class=" lbl alignleft" >
   <asp:Label ID="FirstName_lbl" AssociatedControlID="FirstName" runat="server" Text="<%$ resources: FirstName.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="FirstName" Required="true"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="LastName_lbl" AssociatedControlID="LastName" runat="server" Text="<%$ resources: LastName.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="LastName" Required="true"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="EmailAddress_lbl" AssociatedControlID="EmailAddress" runat="server" Text="<%$ resources: EmailAddress.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="EmailAddress"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="MobileNo_lbl" AssociatedControlID="MobileNo" runat="server" Text="<%$ resources: MobileNo.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="MobileNo"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="ResidenceNo_lbl" AssociatedControlID="ResidenceNo" runat="server" Text="<%$ resources: ResidenceNo.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="ResidenceNo"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="Fax_lbl" AssociatedControlID="Fax" runat="server" Text="<%$ resources: Fax.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="Fax"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklLanguage_lbl" AssociatedControlID="pklLanguage" runat="server" Text="<%$ resources: pklLanguage.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklLanguage" PickListName="Language" AllowMultiples="true" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="pklurveyorType_lbl" AssociatedControlID="pklurveyorType" runat="server" Text="<%$ resources: pklurveyorType.Caption %>" ></asp:Label>
 </div>   
   <div  class="textcontrol picklist"  > 
    <SalesLogix:PickListControl runat="server" ID="pklurveyorType" PickListName="SurveyorType" Required="true" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="QFTextBox_lbl" AssociatedControlID="QFTextBox" runat="server" Text="<%$ resources: QFTextBox.Caption %>" ></asp:Label>
 </div>   
  <div   class="textcontrol lookup"   >
<SalesLogix:LookupControl runat="server" ID="QFTextBox" LookupEntityName="Surveyor" LookupEntityTypeName="Sage.Entity.Interfaces.ISurveyor, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupBindingMode="String" InitializeLookup="true" Required="true"  >
<LookupProperties>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox.LookupProperties.EmailAddress.PropertyHeader %>" PropertyName="EmailAddress" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox.LookupProperties.FirstName.PropertyHeader %>" PropertyName="FirstName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox.LookupProperties.LastName.PropertyHeader %>" PropertyName="LastName" PropertyType="System.String" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
<SalesLogix:LookupProperty PropertyHeader="<%$ resources: QFTextBox.LookupProperties.Status.PropertyHeader %>" PropertyName="Status" PropertyType="System.Boolean" PropertyFormat="None" PropertyFormatString="" UseAsResult="True" ExcludeFromFilters="False"></SalesLogix:LookupProperty>
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
   <asp:Label ID="dtDateOfJoining_lbl" AssociatedControlID="dtDateOfJoining" runat="server" Text="<%$ resources: dtDateOfJoining.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="dtDateOfJoining" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="QFDateTimePicker2_lbl" AssociatedControlID="QFDateTimePicker2" runat="server" Text="<%$ resources: QFDateTimePicker2.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="QFDateTimePicker2" DisplayTime="false" />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="QFDateTimePicker1_lbl" AssociatedControlID="QFDateTimePicker1" runat="server" Text="<%$ resources: QFDateTimePicker1.Caption %>" ></asp:Label>
 </div>
   <div  class="textcontrol datepicker"  >
    <SalesLogix:DateTimePicker runat="server" ID="QFDateTimePicker1" DisplayTime="false" />
  </div>

      </td>
      </tr>
<tr>
            <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox8_lbl" AssociatedControlID="QFTextBox8" runat="server" Text="<%$ resources: QFTextBox8.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox8" Required="true"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft" >
   <asp:Label ID="Password_lbl" AssociatedControlID="Password" runat="server" Text="<%$ resources: Password.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="Password"  dojoType="Sage.UI.Controls.TextBox" MaxLength="64" TextMode="Password"  />
  </div>

      </td>
                <td  >
 <div class=" lbl alignleft">
   <asp:Label ID="lkpBranch_lbl" AssociatedControlID="lkpBranch" runat="server" Text="<%$ resources: lkpBranch.Caption %>" ></asp:Label>
 </div>   
  <div    >
<SalesLogix:LookupControl runat="server" ID="lkpBranch" LookupEntityName="Branch" LookupEntityTypeName="Sage.Entity.Interfaces.IBranch, Sage.Entity.Interfaces, Version=0.0.0.0, Culture=neutral, PublicKeyToken=null" LookupDisplayMode="DropDownList" LookupBindingMode="String" DropDownDisplayProperty="BranchName" Required="true"  >
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
 <div class=" lbl alignleft" >
   <asp:Label ID="QFTextBox9_lbl" AssociatedControlID="QFTextBox9" runat="server" Text="<%$ resources: QFTextBox9.Caption %>" ></asp:Label>
 </div>
  <div  class="textcontrol"   >
<asp:TextBox runat="server" ID="QFTextBox9"  dojoType="Sage.UI.Controls.TextBox"  />
  </div>

      </td>
                <td  >
<div class="slxlabel  alignleft checkboxRight">

  <SalesLogix:SLXCheckBox runat="server" ID="chkActive"  Text="<%$ resources: chkActive.Caption %>"  CssClass=""
LabelPlacement="left"  />
</div>
      </td>
                <td  >
 <asp:Button runat="server" ID="btnChangePassword"
 Text="<%$ resources: btnChangePassword.Caption %>"  ToolTip="<%$ resources: btnChangePassword.ToolTip %>"  />
 
      </td>
      </tr>
<tr>
            <td></td>
                <td></td>
                <td></td>
      </tr>
</table>
 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="Surveyor_RTools" ToolbarLocation="right">
   <SalesLogix:GroupNavigator runat="server" ID="grpNavigator" ></SalesLogix:GroupNavigator>
    <asp:ImageButton runat="server" ID="btnSave"
 ToolTip="<%$ resources: btnSave.ToolTip %>" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Save_16x16"  />
   
    <asp:ImageButton runat="server" ID="btnDelete"
ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Delete_16x16"  />
 
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=Surveyor&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkSurveyorHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="Surveyor" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.ISurveyor); }
}

 

protected override void OnAddEntityBindings() {
                 // FirstName.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding FirstNameTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("FirstName", FirstName, "Text");
        BindingSource.Bindings.Add(FirstNameTextBinding);
                    // LastName.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding LastNameTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("LastName", LastName, "Text");
        BindingSource.Bindings.Add(LastNameTextBinding);
                    // EmailAddress.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding EmailAddressTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("EmailAddress", EmailAddress, "Text");
        BindingSource.Bindings.Add(EmailAddressTextBinding);
                    // MobileNo.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding MobileNoTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("MobileNo", MobileNo, "Text");
        BindingSource.Bindings.Add(MobileNoTextBinding);
                    // ResidenceNo.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding ResidenceNoTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ResidenceNo", ResidenceNo, "Text");
        BindingSource.Bindings.Add(ResidenceNoTextBinding);
                    // Fax.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding FaxTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Fax", Fax, "Text");
        BindingSource.Bindings.Add(FaxTextBinding);
                    // pklLanguage.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklLanguagePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("LanguageSpoken", pklLanguage, "PickListValue");
        BindingSource.Bindings.Add(pklLanguagePickListValueBinding);
                    // pklurveyorType.PickListValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding pklurveyorTypePickListValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SurveyorType", pklurveyorType, "PickListValue");
        BindingSource.Bindings.Add(pklurveyorTypePickListValueBinding);
                    // QFTextBox.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBoxLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("ReportingTo", QFTextBox, "LookupResultValue");
        BindingSource.Bindings.Add(QFTextBoxLookupResultValueBinding);
                    // dtDateOfJoining.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding dtDateOfJoiningDateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DateofJoining", dtDateOfJoining, "DateTimeValue");
        BindingSource.Bindings.Add(dtDateOfJoiningDateTimeValueBinding);
                    // QFDateTimePicker2.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFDateTimePicker2DateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DateofTransfer", QFDateTimePicker2, "DateTimeValue");
        BindingSource.Bindings.Add(QFDateTimePicker2DateTimeValueBinding);
                    // QFDateTimePicker1.DateTimeValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFDateTimePicker1DateTimeValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("DateofLeaving", QFDateTimePicker1, "DateTimeValue");
        BindingSource.Bindings.Add(QFDateTimePicker1DateTimeValueBinding);
                    // QFTextBox8.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox8TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("UserName", QFTextBox8, "Text");
        BindingSource.Bindings.Add(QFTextBox8TextBinding);
                    // Password.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding PasswordTextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Password", Password, "Text");
        BindingSource.Bindings.Add(PasswordTextBinding);
                    // lkpBranch.LookupResultValue Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding lkpBranchLookupResultValueBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("BranchId", lkpBranch, "LookupResultValue");
        BindingSource.Bindings.Add(lkpBranchLookupResultValueBinding);
                    // QFTextBox9.Text Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding QFTextBox9TextBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("SAPVendorId", QFTextBox9, "Text");
        BindingSource.Bindings.Add(QFTextBox9TextBinding);
                    // chkActive.Checked Binding
        Sage.Platform.WebPortal.Binding.WebEntityBinding chkActiveCheckedBinding = new Sage.Platform.WebPortal.Binding.WebEntityBinding("Status", chkActive, "Checked");
        BindingSource.Bindings.Add(chkActiveCheckedBinding);
       
   
            }
                                                                                                                              
protected void btnChangePassword_ClickAction(object sender, EventArgs e) {
if (DialogService != null) {
  // DialogActionItem
  DialogService.SetSpecs(400, 600, "SurveyorChangePassword", GetLocalResourceObject("c34cdb00-8b5f-469f-a076-bca12939b1df.DialogTitleOverride").ToString() );
    DialogService.EntityType = typeof(Sage.Entity.Interfaces.ISurveyor); 
    DialogService.ShowDialog();
}

}
protected void btnSave_ClickAction(object sender, EventArgs e) {
  Sage.Entity.Interfaces.ISurveyor _entity = BindingSource.Current as Sage.Entity.Interfaces.ISurveyor;
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
      Response.Redirect(string.Format("Surveyor.aspx?entityId={0}", (this.BindingSource.Current as Sage.Platform.ComponentModel.IComponentReference).Id));
  
}
protected void btnDelete_ClickAction(object sender, EventArgs e) {
  Sage.Platform.Orm.Interfaces.IPersistentEntity persistentEntity = this.BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
  if (persistentEntity != null) {
    persistentEntity.Delete();
  }

  
}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 btnChangePassword.Click += new EventHandler(btnChangePassword_ClickAction);
btnSave.Click += new ImageClickEventHandler(btnSave_ClickAction);
btnDelete.Click += new ImageClickEventHandler(btnDelete_ClickAction);


}

protected void quickformload0(object sender, EventArgs e) {




 Sage.Platform.WebPortal.EntityPage page=(Sage.Platform.WebPortal.EntityPage)Page;

Sage.Entity.Interfaces.ISurveyor   objSurveyor = this.BindingSource.Current as Sage.Entity.Interfaces.ISurveyor ; 

 

 
if (page.IsInsertMode )
{
	btnChangePassword.Visible = false;
	
 
	/* string encryptpwd = "";
	 try
         {
             byte[] data = ASCIIEncoding.ASCII.GetBytes(Password.Text );
             byte[] rgbKey = ASCIIEncoding.ASCII.GetBytes("12345678");
             byte[] rgbIV = ASCIIEncoding.ASCII.GetBytes("87654321");
             //1024-bit encryption

             System.IO.MemoryStream memoryStream = new System.IO.MemoryStream(1024);
             System.Security.Cryptography.DESCryptoServiceProvider desCryptoServiceProvider = new System.Security.Cryptography.DESCryptoServiceProvider();
             System.Security.Cryptography.CryptoStream cryptoStream = new System.Security.Cryptography.CryptoStream(memoryStream, desCryptoServiceProvider.CreateEncryptor(rgbKey, rgbIV), System.Security.Cryptography.CryptoStreamMode.Write);
             cryptoStream.Write(data, 0, data.Length);
             cryptoStream.FlushFinalBlock();
             byte[] result = new byte[(int)memoryStream.Position];
             memoryStream.Position = 0;
             memoryStream.Read(result, 0, result.Length);
             cryptoStream.Close();
             memoryStream.Dispose();
             encryptpwd = Convert.ToBase64String(result);
         }
         catch (Exception ex)
         {
             encryptpwd = null;
         }
        
	
	objSurveyor.Password=encryptpwd ;
	*/
}
else
{

Password.Visible =false ;
	Password_lbl.Visible=false;
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
    get { return _formAdapter ?? (_formAdapter = new SurveyorAdapter(this)); }
}

public class SurveyorAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.ISurveyor
{
    public SurveyorAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.ITextBoxControl _FirstName;
    public  Sage.Platform.Controls.ITextBoxControl FirstName
    {
        get { return FindControl(ref _FirstName, "FirstName"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _MobileNo;
    public  Sage.Platform.Controls.ITextBoxControl MobileNo
    {
        get { return FindControl(ref _MobileNo, "MobileNo"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklLanguage;
    public  Sage.Platform.Controls.IPickListControl pklLanguage
    {
        get { return FindControl(ref _pklLanguage, "pklLanguage"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _dtDateOfJoining;
    public  Sage.Platform.Controls.IDateTimePickerControl dtDateOfJoining
    {
        get { return FindControl(ref _dtDateOfJoining, "dtDateOfJoining"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox8;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox8
    {
        get { return FindControl(ref _QFTextBox8, "QFTextBox8"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _QFTextBox9;
    public  Sage.Platform.Controls.ITextBoxControl QFTextBox9
    {
        get { return FindControl(ref _QFTextBox9, "QFTextBox9"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _LastName;
    public  Sage.Platform.Controls.ITextBoxControl LastName
    {
        get { return FindControl(ref _LastName, "LastName"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _ResidenceNo;
    public  Sage.Platform.Controls.ITextBoxControl ResidenceNo
    {
        get { return FindControl(ref _ResidenceNo, "ResidenceNo"); }
    }
    private Sage.Platform.Controls.IPickListControl _pklurveyorType;
    public  Sage.Platform.Controls.IPickListControl pklurveyorType
    {
        get { return FindControl(ref _pklurveyorType, "pklurveyorType"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _QFDateTimePicker2;
    public  Sage.Platform.Controls.IDateTimePickerControl QFDateTimePicker2
    {
        get { return FindControl(ref _QFDateTimePicker2, "QFDateTimePicker2"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _Password;
    public  Sage.Platform.Controls.ITextBoxControl Password
    {
        get { return FindControl(ref _Password, "Password"); }
    }
    private Sage.Platform.Controls.ICheckBoxControl _chkActive;
    public  Sage.Platform.Controls.ICheckBoxControl chkActive
    {
        get { return FindControl(ref _chkActive, "chkActive"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _EmailAddress;
    public  Sage.Platform.Controls.ITextBoxControl EmailAddress
    {
        get { return FindControl(ref _EmailAddress, "EmailAddress"); }
    }
    private Sage.Platform.Controls.ITextBoxControl _Fax;
    public  Sage.Platform.Controls.ITextBoxControl Fax
    {
        get { return FindControl(ref _Fax, "Fax"); }
    }
    private Sage.Platform.Controls.ILookupControl _QFTextBox;
    public  Sage.Platform.Controls.ILookupControl QFTextBox
    {
        get { return FindControl(ref _QFTextBox, "QFTextBox"); }
    }
    private Sage.Platform.Controls.IDateTimePickerControl _QFDateTimePicker1;
    public  Sage.Platform.Controls.IDateTimePickerControl QFDateTimePicker1
    {
        get { return FindControl(ref _QFDateTimePicker1, "QFDateTimePicker1"); }
    }
    private Sage.Platform.Controls.ILookupControl _lkpBranch;
    public  Sage.Platform.Controls.ILookupControl lkpBranch
    {
        get { return FindControl(ref _lkpBranch, "lkpBranch"); }
    }
    private Sage.Platform.Controls.IButtonControl _btnChangePassword;
    public  Sage.Platform.Controls.IButtonControl btnChangePassword
    {
        get { return FindControl(ref _btnChangePassword, "btnChangePassword"); }
    }
    private Sage.Platform.Controls.IGroupNavigatorControl _grpNavigator;
    public  Sage.Platform.Controls.IGroupNavigatorControl grpNavigator
    {
        get { return FindControl(ref _grpNavigator, "grpNavigator"); }
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