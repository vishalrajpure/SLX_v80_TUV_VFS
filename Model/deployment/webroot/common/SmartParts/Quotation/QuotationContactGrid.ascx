<%@ Control Language="C#" ClassName="QuotationContactGrid" Inherits="Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider" %>
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
   <%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.ScriptResourceProvider" TagPrefix="SalesLogix" %>
  <%--Grid style overrides for quickform configurations and textbox compatibility with IE7.--%>
<style 
type="text/css">     
    .alignleft { text-align : left; }
    .alignright { text-align : right; }
    .aligncenter { text-align : center; }
	.dijitTextBox { width: auto; }
	.ISOSpace {width: 75% !important; }
</style>

	  			

<SalesLogix:ScriptResourceProvider ID="QuotationContactGridlkpQuotationContact_Strings" runat="server">
    <Keys>
        <SalesLogix:ResourceKeyName Key="lkpQuotationContact.ButtonTooltip" />
        <SalesLogix:ResourceKeyName Key="lkpQuotationContact.LookupDialogTitle" />
        <SalesLogix:ResourceKeyName Key="lkpQuotationContact.DialogButtonText" />
						<SalesLogix:ResourceKeyName Key="lkpQuotationContact.LookupProperties.NameLF.PropertyHeader" />
		 		<SalesLogix:ResourceKeyName Key="lkpQuotationContact.LookupProperties.Title.PropertyHeader" />
		 		<SalesLogix:ResourceKeyName Key="lkpQuotationContact.LookupProperties.AccountName.PropertyHeader" />
		 		<SalesLogix:ResourceKeyName Key="lkpQuotationContact.LookupProperties.Address.City.PropertyHeader" />
		 		<SalesLogix:ResourceKeyName Key="lkpQuotationContact.LookupProperties.Address.State.PropertyHeader" />
		 		<SalesLogix:ResourceKeyName Key="lkpQuotationContact.LookupProperties.WorkPhone.PropertyHeader" />
		 		<SalesLogix:ResourceKeyName Key="lkpQuotationContact.LookupProperties.Email.PropertyHeader" />
		       </Keys>
</SalesLogix:ScriptResourceProvider>

	  	  	   

<SalesLogix:ScriptResourceProvider ID="QuotationContactGridQFSDataGrid_Strings" runat="server">
    <Keys>
        <SalesLogix:ResourceKeyName Key="QFSDataGrid.EmptyTableRowText" />  <SalesLogix:ResourceKeyName Key="QFSDataGrid.91802476-c53c-4a80-ba2f-bbccbca81d2a.ColumnHeading" />
        <SalesLogix:ResourceKeyName Key="QFSDataGrid.91802476-c53c-4a80-ba2f-bbccbca81d2a.Text" />
<SalesLogix:ResourceKeyName Key="b5950d89-42b7-4780-b097-65e0df501adb.DialogTitleOverride" />   <SalesLogix:ResourceKeyName Key="QFSDataGrid.05981680-3714-4ea8-b5bd-787333e5c49f.ColumnHeading" />
       <SalesLogix:ResourceKeyName Key="QFSDataGrid.1c739677-138d-4d4c-a3d9-cc455654f02d.ColumnHeading" />
       <SalesLogix:ResourceKeyName Key="QFSDataGrid.7bc5420e-30c8-499b-a7dd-104c002565c3.ColumnHeading" />
       <SalesLogix:ResourceKeyName Key="QFSDataGrid.c6e31a00-36c7-43d1-8c80-232843af795b.ColumnHeading" />
       <SalesLogix:ResourceKeyName Key="QFSDataGrid.be2dba32-2eb3-4ca0-8101-7fcb1df10edd.ColumnHeading" />
       <SalesLogix:ResourceKeyName Key="QFSDataGrid.21942973-f477-4787-a433-58ad85d05fcf.ColumnHeading" />
           <SalesLogix:ResourceKeyName Key="QFSDataGrid.Save.ToolTip" />
    <SalesLogix:ResourceKeyName Key="QFSDataGrid.Relate.ToolTip" />
    <SalesLogix:ResourceKeyName Key="QFSDataGrid.Delete.ToolTip" />
    <SalesLogix:ResourceKeyName Key="QFSDataGrid.Cancel.ToolTip" />
     </Keys>
</SalesLogix:ScriptResourceProvider>

							 





























<div style="display:none;">
  <asp:TextBox runat="server" ID="QuotationContactGridQFSDataGrid_DataCarrier" class="QuotationContactGridQFSDataGrid_DataCarrier" ></asp:TextBox>
</div>
  <div id="QuotationContactGridQFSDataGrid_Container" style="width:100%;height:100%;" class="">
    <div id="QuotationContactGridQFSDataGrid_Grid" style="width:100%;height:100%;"
     data-dojo-type="dijit.layout.BorderContainer"
></div>
</div>


 


 <SalesLogix:SmartPartToolsContainer runat="server" ID="QuotationContactGrid_RTools" ToolbarLocation="right">
  <SalesLogix:PageLink ID="btnEditForm" CssClass="adminEditFormButton" runat="server" LinkType="RelativePath" ToolTip="<%$ resources: Portal, EditForm_ToolTip %>" NavigateUrl="~/FormManager.aspx?entityid=QuotationContactGrid&modeid=Detail" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=form_manager_16x16"></SalesLogix:PageLink>
 
 
 
 
 <SalesLogix:PageLink ID="lnkQuotationContactGridHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="MCWebHelp" NavigateUrl="QuotationContactGrid" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16"></SalesLogix:PageLink>
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
    get { return typeof(Sage.Entity.Interfaces.IQuotation); }
}

 private Sage.Platform.WebPortal.Binding.WebEntityListBindingSource _dsQuotationContacts;
public Sage.Platform.WebPortal.Binding.WebEntityListBindingSource dsQuotationContacts
{ 
  get 
  {
    if (_dsQuotationContacts == null)
    {
             _dsQuotationContacts = new Sage.Platform.WebPortal.Binding.WebEntityListBindingSource(typeof(Sage.Entity.Interfaces.IQuotationContact), 
	    EntityType              ,"QuotationContacts", System.Reflection.MemberTypes.Property);
                   _dsQuotationContacts.UseSmartQuery = true;
      	   	}
 	return _dsQuotationContacts;
  }
}

void dsQuotationContacts_OnCurrentEntitySet(object sender, EventArgs e) 
{
      if (Visible)
    { 
		if(BindingSource.Current != null)
		{
		
      
        dsQuotationContacts.SourceObject = BindingSource.Current;
   		}
    }
   if (Visible)
   {   
      RegisterBindingsWithClient(dsQuotationContacts);
   }
}

 



 

protected override void OnAddEntityBindings() {
    
     BindingSource.OnCurrentEntitySet += new EventHandler(dsQuotationContacts_OnCurrentEntitySet);
    
}
       
protected void QFSDataGrid_InsertAssociationAction(object sender, EventArgs e) {

	    string text = Request.Form.Get(QuotationContactGridQFSDataGrid_DataCarrier.UniqueID);
    if (text.Length > 0)
    {
    var feed = new Sage.Integration.Entity.Feeds.QuotationContactFeed();

		using (var stream = new System.IO.MemoryStream(Encoding.UTF8.GetBytes(text)))
		{
			new Sage.Common.Syndication.JsonSerializer().LoadFromStream<Sage.Integration.Entity.Feeds.QuotationContactEntry>(feed, stream);
		}

		if (feed == null) return;
		var transformer =
			Sage.Platform.Application.ApplicationContext.Current.Services.Get
				<Sage.Platform.SData.IAtomEntryToEntityTransformationService>();
    	
		var entity = BindingSource.Current as Sage.Entity.Interfaces.IQuotation;

		if (transformer != null && entity != null && entity.QuotationContacts.Count == 0)
		{
			foreach (Sage.Integration.Entity.Feeds.QuotationContactEntry entry in feed.Entries)
			{
				var item = transformer.ConvertEntry(entry) as Sage.Entity.Interfaces.IQuotationContact;
				if (item != null)
				{
					item.Quotation = entity;
					entity.QuotationContacts.Add(item);
				}
			}
			entity.Persisted -= QFSDataGrid_InsertAssociationAction;
			entity.Save();
		}
	}



}

protected override void OnWireEventHandlers()
{
 base.OnWireEventHandlers();
 var epage = Page as Sage.Platform.WebPortal.EntityPage;
 if (epage != null && epage.IsInsertMode)
 {
     var ent = BindingSource.Current as Sage.Platform.Orm.Interfaces.IPersistentEntity;
     if (ent != null)
     {
         ent.Persisted += QFSDataGrid_InsertAssociationAction;
     }
 }


}

protected override void OnFormBound()
{
 var entity = BindingSource.Current as Sage.Entity.Interfaces.IQuotation; 
 if (this.PageWorkItem.State["ModeId"].ToString() == "Insert") 
 { 
 var feed = new Sage.Integration.Entity.Feeds.QuotationContactFeed(); 
 if (entity != null) 
      if (entity.QuotationContacts.Count > 0) 
      { 
			var include = Sage.Common.Syndication.InclusionNode.CreateInclusionTree("Contact", null, null, null); 
          var transformer = 
              Sage.Platform.Application.ApplicationContext.Current.Services.Get 
                  <Sage.Platform.SData.IAtomEntryToEntityTransformationService>(); 
          foreach (Sage.Entity.Interfaces.IQuotationContact item in entity.QuotationContacts) 
          { 
              var transItem = transformer.ConvertEntity(item, include) as Sage.Integration.Entity.Feeds.QuotationContactEntry; 
              if (transItem != null) 
              { 
                  feed.Entries.Add(transItem); 
              } 
          } 
          string text; 
          using (var stream = new System.IO.MemoryStream()) 
          { 
          	          	new Sage.Common.Syndication.JsonSerializer().SaveToStream((Sage.Common.Syndication.IFeed)feed, stream, null, include); 
          	text = Encoding.UTF8.GetString(stream.ToArray()); 
          } 
          QuotationContactGridQFSDataGrid_DataCarrier.Text = text; 
          entity.QuotationContacts.Clear(); 
      } 
 } 
if (!RoleSecurityService.HasAccess("Administration/Forms/View"))
{
btnEditForm.Visible = false;
}
if (dsQuotationContacts.SourceObject == null) { dsQuotationContacts.SourceObject = BindingSource.Current; }
if (dsQuotationContacts.SourceObject == null) { RegisterBindingsWithClient(dsQuotationContacts); }
dsQuotationContacts.Bind();


                                var script = new StringBuilder();
                                script.AppendLine("require(['" + Page.ResolveUrl("~/SmartParts/Quotation/QuotationContactGrid.js") + "'], function () {");
                                if (Page.IsPostBack)
                                {
                                    script.Append(" Sage.UI.Forms.QuotationContactGrid.init({workspace: '" + getMyWorkspace() + "'} );");
                                }
                                else 
                                {
                                    script.AppendLine("require(['dojo/ready'], function(ready) {");
                                    script.Append("ready(function () {Sage.UI.Forms.QuotationContactGrid.init({workspace: '" + getMyWorkspace() + "'} ); });");
                                    script.AppendLine("});");//end ready require
                                }

                                script.AppendLine("});");// end require
                                ScriptManager.RegisterStartupScript(this, GetType(), "initialize_QuotationContactGrid", script.ToString(), true);


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
    get { return _formAdapter ?? (_formAdapter = new QuotationContactGridAdapter(this)); }
}

public class QuotationContactGridAdapter : Sage.Platform.WebPortal.Adapters.EntityFormAdapter, Sage.Form.Interfaces.IQuotationContactGrid
{
    public QuotationContactGridAdapter(Sage.Platform.WebPortal.SmartParts.EntityBoundSmartPartInfoProvider smartPart)
        : base(smartPart) {}

    private Sage.Platform.Controls.IDataSourceControl _dsQuotationContacts;
    public  Sage.Platform.Controls.IDataSourceControl dsQuotationContacts
    {
        get { return FindControl(ref _dsQuotationContacts, "dsQuotationContacts"); }
    }

}

</script>

<script type="text/javascript">
</script>
