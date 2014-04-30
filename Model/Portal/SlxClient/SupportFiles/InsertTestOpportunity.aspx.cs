//------------------------------------------------------------------------------
// <autogenerated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </autogenerated>
//------------------------------------------------------------------------------

using System;
using System.Data;
using System.Collections.Generic;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using Sage.Platform.Application;
using Sage.Platform.Application.UI;
using Sage.Platform.Application.UI.Web;
using Sage.Platform.Configuration;
using Sage.Platform.Data;
using Sage.Platform.EntityBinding;
using Sage.Platform.Orm;
using Sage.Platform.Orm.Entities;
using Sage.Platform.Security;
using Sage.Platform.Services;
using Sage.Platform.VirtualFileSystem;
using Sage.Platform.WebPortal;
using Sage.Platform.WebPortal.Services;
using Sage.Platform.WebPortal.SmartParts;
using Sage.Platform.WebPortal.UI;
using Sage.Platform.WebPortal.Workspaces;
using Sage.SalesLogix.Security;

namespace SlxClient
{
    public partial class InsertOpportunityPage : Sage.Platform.WebPortal.EntityPage
    {
        static readonly log4net.ILog log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        private const string ImageClass = "icon_New_Opportunity_24x24";

        ScriptManager _scriptManager;

        #region Dependency Properties

        private IUIElementAdapterFactoryCatalog _adapterCatalog;
        /// <summary>
        /// Gets and sets a reference to the IUIElementAdapterFactoryCatalog
        /// </summary>
        [ServiceDependency]
        public IUIElementAdapterFactoryCatalog AdapterCatalog
        {
            get { return _adapterCatalog; }
            set { _adapterCatalog = value; }
        }

        /// <summary>
        /// Gets or sets the role security service.
        /// </summary>
        /// <value>The role security service.</value>
        [ServiceDependency]
        public IRoleSecurityService SecuredActionService { get; set; }

        #endregion

        #region Page Lifetime Overrides
        protected override void OnPreInit(EventArgs e)
        {
            try
            {
                LoadScriptManager();
                base.OnPreInit(e);
                if (!SecuredActionService.HasAccess("Entities/Opportunity/Add"))
                {
                    throw new RoleAccessDeniedException(Resources.SalesLogix.Error_NoAccess);
                }
                IDataService data = ApplicationContext.Current.Services.Get<IDataService>();
                if(data != null)
                {
                    VFSQuery.ConfigureVFS(data.GetConnectionString(), data.Server);
                }

                //Apply Page Properties
                PropertyConfigurationCollection pageProperties = new PropertyConfigurationCollection();
                pageProperties.Add("EntityTypeName", "Sage.Entity.Interfaces.IOpportunity, Sage.Entity.Interfaces", "");
                pageProperties.ApplyProperties(this);
                //Apply Template Properties
                PropertyConfigurationCollection templateProperties = new PropertyConfigurationCollection();
                templateProperties.Add("IncludeTaskPane", "False", "");
                templateProperties.ApplyProperties(this.Master);

                this.PageWorkItem.Services.AddNew<EntityFactoryContextService, IEntityContextService>();
                this.PageWorkItem.Services.Add<IWebDialogService>(new WebDialogService(this.PageWorkItem));
                this.PageWorkItem.Services.Add<IPageWorkItemLocator>(this.PageWorkItem);
                this.PageWorkItem.Services.AddNew<WebEntityBindingManager, IEntityBindingManager>();
                this.PageWorkItem.Services.AddNew<PanelRefreshService, IPanelRefreshService>();
               
            }
            catch(Exception ex)
            {
                HandleException(ex);
            }
        }
        protected override void OnLoad(EventArgs e)
        {
            try
            {
                base.OnLoad(e);
                MenuService mnuService = new MenuService();
                this.Page.Form.Controls.Add(mnuService);
                this.PageWorkItem.Services.Add<IMenuService>(mnuService);
                LoadLayout(this.Master);
                LoadNav();
                LoadMenu();
                LoadSmartParts();
                LoadTasklets();
                LoadModules();
            }
            catch(Exception ex)
            {
                HandleException(ex);
            }
        }
        protected override void OnPreRenderComplete(EventArgs e)
        {
            base.OnPreRenderComplete(e);
            SetTitleBar();
            HtmlContainerControl localTitle = this.Master.FindControl("localTitle") as HtmlContainerControl;
            if (localTitle == null) return;

            var img = !string.IsNullOrEmpty(TitleBar.Image)
                          ? string.Format("<div class=\"Global_Images icon24x24 {0}\"> </div>", this.TitleBar.Image)
                          : string.Empty;
            localTitle.InnerHtml = string.Format("<span id=\"PageTitle\">{0} <span id=\"PageTitleText\">{1}</span></span>", img, this.TitleBar.Text);
        }
        #endregion

        #region Helper Methods
        private void SetTitleBar()
        {
            string text = GetResource("PageTitle");
            this.Title = Resources.Portal.PortalTitle + " - " + text;

            IEntityContextService entityContext = this.PageWorkItem.Services.Get<IEntityContextService>();
            if (entityContext.HasEntityContext)
            {
                switch (this.ViewMode)
                {
                    case EntityViewMode.Detail:
                        text = string.Format("{0} - {1}", Type.GetType(EntityTypeName).GetDisplayName(), entityContext.GetEntity());
                        break;
                    case EntityViewMode.List:
                        text  = Type.GetType(EntityTypeName).GetPluralDisplayName();
                        break;
                    default:
                        break;
                }
            }

            if (string.IsNullOrEmpty(text))
                text = Resources.Portal.PortalTitle;

            if (String.IsNullOrEmpty(this.TitleBar.Text))
            {
                TitleBar.Text = Server.HtmlEncode(text);
            }
            if (String.IsNullOrEmpty(this.TitleBar.Image))
            {
                TitleBar.Image = ImageClass;
            }
        }

        void LoadNav()
        {
            foreach (KeyValuePair<string, IWorkspace> wsPair in this.PageWorkItem.Workspaces)
            {
                if (wsPair.Value is NavWorkspace)
                {

                    NavItemCollection navSales = LoadControl("~/NavGroups/navSales.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(navSales.AppliedSecurity))
                    {
                        navSales.ID = "navSales";
                        WebSmartPartInfo navSalesInfo = new WebSmartPartInfo(GetResource("~/NavGroups/navSales.ascx", "Text"),GetResource("~/NavGroups/navSales.ascx", "Description"))
                        {SmallImagePath = "", LargeImagePath = ""};
                        wsPair.Value.Show(navSales, navSalesInfo);
                        this.PageWorkItem.UIExtensionSites.RegisterSite("navSales", navSales);
                    }

                    NavItemCollection navMarketing = LoadControl("~/NavGroups/navMarketing.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(navMarketing.AppliedSecurity))
                    {
                        navMarketing.ID = "navMarketing";
                        WebSmartPartInfo navMarketingInfo = new WebSmartPartInfo(GetResource("~/NavGroups/navMarketing.ascx", "Text"),GetResource("~/NavGroups/navMarketing.ascx", "Description"))
                        {SmallImagePath = "", LargeImagePath = ""};
                        wsPair.Value.Show(navMarketing, navMarketingInfo);
                        this.PageWorkItem.UIExtensionSites.RegisterSite("navMarketing", navMarketing);
                    }

                    NavItemCollection navService = LoadControl("~/NavGroups/navService.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(navService.AppliedSecurity))
                    {
                        navService.ID = "navService";
                        WebSmartPartInfo navServiceInfo = new WebSmartPartInfo(GetResource("~/NavGroups/navService.ascx", "Text"),GetResource("~/NavGroups/navService.ascx", "Description"))
                        {SmallImagePath = "", LargeImagePath = ""};
                        wsPair.Value.Show(navService, navServiceInfo);
                        this.PageWorkItem.UIExtensionSites.RegisterSite("navService", navService);
                    }

                    NavItemCollection navSupport = LoadControl("~/NavGroups/navSupport.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(navSupport.AppliedSecurity))
                    {
                        navSupport.ID = "navSupport";
                        WebSmartPartInfo navSupportInfo = new WebSmartPartInfo(GetResource("~/NavGroups/navSupport.ascx", "Text"),GetResource("~/NavGroups/navSupport.ascx", "Description"))
                        {SmallImagePath = "", LargeImagePath = ""};
                        wsPair.Value.Show(navSupport, navSupportInfo);
                        this.PageWorkItem.UIExtensionSites.RegisterSite("navSupport", navSupport);
                    }

                    NavItemCollection navAdministration = LoadControl("~/NavGroups/navAdministration.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(navAdministration.AppliedSecurity))
                    {
                        navAdministration.ID = "navAdministration";
                        WebSmartPartInfo navAdministrationInfo = new WebSmartPartInfo(GetResource("~/NavGroups/navAdministration.ascx", "Text"),GetResource("~/NavGroups/navAdministration.ascx", "Description"))
                        {SmallImagePath = "", LargeImagePath = ""};
                        wsPair.Value.Show(navAdministration, navAdministrationInfo);
                        this.PageWorkItem.UIExtensionSites.RegisterSite("navAdministration", navAdministration);
                    }

                    NavItemCollection StampDistributions = LoadControl("~/NavGroups/StampDistributions.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(StampDistributions.AppliedSecurity))
                    {
                        StampDistributions.ID = "StampDistributions";
                        WebSmartPartInfo StampDistributionsInfo = new WebSmartPartInfo(GetResource("~/NavGroups/StampDistributions.ascx", "Text"),GetResource("~/NavGroups/StampDistributions.ascx", "Description"))
                        {SmallImagePath = "", LargeImagePath = ""};
                        wsPair.Value.Show(StampDistributions, StampDistributionsInfo);
                        this.PageWorkItem.UIExtensionSites.RegisterSite("StampDistributions", StampDistributions);
                    }
                }
            }
        }


        void LoadMenu()
        {
            foreach (KeyValuePair<string, IWorkspace> wsPair in this.PageWorkItem.Workspaces)
            {
                if (wsPair.Value is ToolbarWorkspace)
                {

                    NavItemCollection mnuNew = LoadControl("~/MenuItems/mnuNew.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(mnuNew.AppliedSecurity))
                    {
                        mnuNew.ID = "mnuNew";
                        WebToolbarSmartPartInfo mnuNewInfo = new WebToolbarSmartPartInfo(GetResource("~/MenuItems/mnuNew.ascx", "Text"),GetResource("~/MenuItems/mnuNew.ascx", "Description"))
                        { SmallImagePath = "~/ImageResource.axd?scope=global&type=Global_Images&key=New_Contact_16x16",LargeImagePath = "", LargeImageClass = "", SmallImageClass = "icon_New_Contact_16x16"};
                        wsPair.Value.Show(mnuNew, mnuNewInfo);
                    }

                    NavItemCollection mnuSchedule = LoadControl("~/MenuItems/mnuSchedule.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(mnuSchedule.AppliedSecurity))
                    {
                        mnuSchedule.ID = "mnuSchedule";
                        WebToolbarSmartPartInfo mnuScheduleInfo = new WebToolbarSmartPartInfo(GetResource("~/MenuItems/mnuSchedule.ascx", "Text"),GetResource("~/MenuItems/mnuSchedule.ascx", "Description"))
                        { SmallImagePath = "~/ImageResource.axd?scope=global&type=Global_Images&key=Alarm_16x16",LargeImagePath = "~/ImageResource.axd?scope=global&type=Global_Images&key=Alarm_32x32", LargeImageClass = "icon_Alarm_32x32", SmallImageClass = "icon_Alarm_16x16"};
                        wsPair.Value.Show(mnuSchedule, mnuScheduleInfo);
                    }

                    NavItemCollection mnuTools = LoadControl("~/MenuItems/mnuTools.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(mnuTools.AppliedSecurity))
                    {
                        mnuTools.ID = "mnuTools";
                        WebToolbarSmartPartInfo mnuToolsInfo = new WebToolbarSmartPartInfo(GetResource("~/MenuItems/mnuTools.ascx", "Text"),GetResource("~/MenuItems/mnuTools.ascx", "Description"))
                        { SmallImagePath = "~/ImageResource.axd?scope=global&type=Global_Images&key=Tools_16x16",LargeImagePath = "~/ImageResource.axd?scope=global&type=Global_Images&key=Tools_24x24", LargeImageClass = "icon_Tools_24x24", SmallImageClass = "icon_Tools_16x16"};
                        wsPair.Value.Show(mnuTools, mnuToolsInfo);
                    }

                    NavItemCollection mnuAdministration = LoadControl("~/MenuItems/mnuAdministration.ascx").Controls[0] as NavItemCollection;
                    if (SecuredActionService.HasAccess(mnuAdministration.AppliedSecurity))
                    {
                        mnuAdministration.ID = "mnuAdministration";
                        WebToolbarSmartPartInfo mnuAdministrationInfo = new WebToolbarSmartPartInfo(GetResource("~/MenuItems/mnuAdministration.ascx", "Text"),GetResource("~/MenuItems/mnuAdministration.ascx", "Description"))
                        { SmallImagePath = "~/ImageResource.axd?scope=global&type=Global_Images&key=options_16x16",LargeImagePath = "~/ImageResource.axd?scope=global&type=Global_Images&key=options_24x24", LargeImageClass = "icon_options_24x24", SmallImageClass = "icon_options_16x16"};
                        wsPair.Value.Show(mnuAdministration, mnuAdministrationInfo);
                    }
                }
            }
        }

        void LoadSmartParts()
        {
            //PropertyConfigurationCollection InsertOpportunityProperties = new PropertyConfigurationCollection();
            //InsertOpportunityProperties.Add("HelpTopic", "InsertOpportunity", "");
            RegisterSmartPart("MainContent", "Insert","","~/SmartParts/StampDistribution/stampdistribution.ascx", "stampdistribution",GetResource("stampdistribution.Title"),GetResource("stampdistribution.Description"),null);
        }

        string GetResource(string url, string key)
        {
            object obj = HttpContext.GetLocalResourceObject(url, key);
            if(obj != null)
                return obj.ToString();
            else
                return String.Empty;
        }
        string GetResource(string key)
        {
            return GetResource("~/InsertOpportunity.aspx", key);
        }

        void LoadModules()
        {
            RegisterModule<Sage.SalesLogix.Web.Modules.WebViewerModule>("", "");
            RegisterModule<Sage.SalesLogix.Client.ImportHistory.Modules.ImportHistoryModule>("", "");
            RegisterModule<Sage.Platform.WebPortal.ServiceHostsModule>("", "");
            RegisterModule<Sage.SalesLogix.Web.Modules.GlobalDialogModule>("", "");
            RegisterModule<Sage.SalesLogix.Client.IntegrationContract.Modules.IntegrationModule>("", "");
        }
        void LoadTasklets()
        {
            foreach (KeyValuePair<string, IWorkspace> wsPair in PageWorkItem.Workspaces)
            {
                if (wsPair.Value is TaskPaneWorkspace)
                {
                    Control ctrl;
                    ctrl = LoadControl("~/SmartParts/TaskPane/Filters/Filters.ascx");
                    ctrl.ID = "Filters";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "Filters.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "Filters.Description"),
                        ContextDisplayMode.List,
                        new string[] {  },
                        false));
                    ctrl = LoadControl("~/SmartParts/TaskPane/GroupList/GroupListTasklet.ascx");
                    ctrl.ID = "GroupListTasklet";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "GroupListTasklet.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "GroupListTasklet.Description"),
                        ContextDisplayMode.Detail,
                        new string[] {  },
                        false));
                    ctrl = LoadControl("~/SmartParts/TaskPane/CommonTasks/CommonTasksTasklet.ascx");
                    ctrl.ID = "CommonTasksTasklet";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "CommonTasksTasklet.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "CommonTasksTasklet.Description"),
                        ContextDisplayMode.Any,
                        new string[] {  },
                        false));
                    ctrl = LoadControl("~/SmartParts/TaskPane/LiteratureManagement/LiteratureManagementTasks.ascx");
                    ctrl.ID = "LiteratureManagementTasks";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "LiteratureManagementTasks.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "LiteratureManagementTasks.Description"),
                        ContextDisplayMode.List,
                        new string[] {  "LitRequest"  },
                        false));
                    ctrl = LoadControl("~/SmartParts/TaskPane/AdminTasks/SecuredActionTasklet.ascx");
                    ctrl.ID = "SecuredActionTasklet";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "SecuredActionTasklet.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "SecuredActionTasklet.Description"),
                        ContextDisplayMode.List,
                        new string[] {  "SecuredAction"  },
                        false));
                    ctrl = LoadControl("~/SmartParts/TaskPane/AdminTasks/UserTasklet.ascx");
                    ctrl.ID = "UserTasklet";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "UserTasklet.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "UserTasklet.Description"),
                        ContextDisplayMode.List,
                        new string[] {  "User"  },
                        false));
                    ctrl = LoadControl("~/SmartParts/TaskPane/AccountingTasks/AccountingTasksTasklet.ascx");
                    ctrl.ID = "AccountingTasksTasklet";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "AccountingTasksTasklet.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "AccountingTasksTasklet.Description"),
                        ContextDisplayMode.Any,
                        new string[] {  "Account" , "SalesOrder"  },
                        false));
                    ctrl = LoadControl("~/SmartParts/TaskPane/OpportunityTasks/OpportunityTasksTasklet.ascx");
                    ctrl.ID = "OpportunityTasksTasklet";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "OpportunityTasksTasklet.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "OpportunityTasksTasklet.Description"),
                        ContextDisplayMode.List,
                        new string[] {  "Opportunity"  },
                        false));
                    ctrl = LoadControl("~/SmartParts/TaskPane/LeadTasks/LeadTasksTasklet.ascx");
                    ctrl.ID = "LeadTasksTasklet";
                    wsPair.Value.Show(ctrl, new TaskPaneSmartPartInfo(
                        (string) GetGlobalResourceObject("Tasklets", "LeadTasksTasklet.Title"),
                        (string) GetGlobalResourceObject("Tasklets", "LeadTasksTasklet.Description"),
                        ContextDisplayMode.List,
                        new string[] {  "Lead"  },
                        false));
                }
            }
        }
        void LoadLayout(Control parentControl)
        {
            foreach (Control childControl in parentControl.Controls)
            {
                //Load Workspaces
                IWorkspace ws = childControl as IWorkspace;
                if (ws != null)
                {
                    this.PageWorkItem.Workspaces.Add(ws, childControl.ID);

                }

                //Load SmartParts
                if (Attribute.IsDefined(childControl.GetType(), typeof(SmartPartAttribute)))
                    this.PageWorkItem.SmartParts.Add(childControl);

                //Load UIExtensionSites
                if (CanBeExtensionSite(childControl))
                    this.PageWorkItem.UIExtensionSites.RegisterSite(childControl.ID, childControl);

                LoadLayout(childControl);
            }
        }
        bool CanBeExtensionSite(Control c)
        {
            foreach (IUIElementAdapterFactory factory in AdapterCatalog.Factories)
            {
                if (factory.Supports(c))
                    return true;
            }
            return false;
        }
        void LoadScriptManager()
        {
            HtmlForm form = FindForm();
            if (form != null)
            {
                _scriptManager = new ScriptManager
                    {
                        ID = "portalScriptManager",
                        EnableScriptLocalization = true,
                        EnableScriptGlobalization = true
                    };
                _scriptManager.AsyncPostBackError += new EventHandler<AsyncPostBackErrorEventArgs>(_scriptManager_AsyncPostBackError);
                form.Controls.AddAt(0, _scriptManager);
            }
        }
        private HtmlForm FindFormRecursive (Control root)
        {
            HtmlForm form = root as HtmlForm;
            if (form == null)
            {
                foreach (Control c in root.Controls)
                {
                    form = FindFormRecursive(c) as HtmlForm;
                    if (form != null)
                    {
                        break;
                    }
                }
            }
            return form;
        }
        HtmlForm FindForm()
        {
            foreach (Control c in this.Master.Controls)
            {
                HtmlForm form = FindFormRecursive(c);
                if (form != null)
                {
                    return (form);
                }
            }
            return null;
        }

        // Sets the .SLXAUTH cookie to an empty value.
        private static void FormsAuthSignOut()
        {
            try
            {
                if (FormsAuthentication.IsEnabled)
                {
                    FormsAuthentication.SignOut();
                }
            }
            catch(Exception ex)
            {
                log.Debug("There was an error attempting to sign out of Forms authentication.", ex);
            }
        }

        void _scriptManager_AsyncPostBackError(object sender, AsyncPostBackErrorEventArgs e)
        {
            var exception = e != null ? e.Exception : null;
            if (exception == null) return;

            var fullException = exception;

            var eKind = Sage.Platform.Diagnostics.ErrorHelper.GetTargetedException(fullException, out exception);

            var eMitigationType = Sage.Platform.Diagnostics.ErrorHelper.GetMitigationType(eKind, Request);

            var sSlxErrorId = Sage.Platform.Diagnostics.ErrorHelper.GetNewLoggingId();

            if (Sage.Platform.Diagnostics.ErrorHelper.ExceptionMustBeLogged(eKind))
            {
                Sage.Platform.Diagnostics.ErrorHelper.LogException(fullException, Request, log,
                                                                   string.Format(
                                                                       "{0} unhandled exception during async postback",
                                                                       Sage.Platform.Diagnostics.ErrorHelper.
                                                                           GetCurrentEventLogSource()), sSlxErrorId);
            }

            Server.ClearError();            

            switch (eMitigationType)
            {
                case Sage.Platform.Diagnostics.ErrorHelper.MitigationType.AjaxLoginRedirect:
                case Sage.Platform.Diagnostics.ErrorHelper.MitigationType.LoginRedirect:
                    FormsAuthSignOut();
                    Response.Redirect("Login.aspx");
                    break;

                default:
                    _scriptManager.AsyncPostBackErrorMessage =
                        Sage.Platform.Diagnostics.ErrorHelper.GetErrorMessageContent(exception, Request, eKind,
                                                                                     sSlxErrorId, true, true,
                                                                                     Resources.SalesLogix.
                                                                                         MailDetailsLink);
                    break;
            }
        }

        void InitMode()
        {
            if (HttpContext.Current != null && HttpContext.Current.Request != null)
            {
                this.PageWorkItem.State["ModeId"] = HttpContext.Current.Request["ModeId"];
            }
        }
         #endregion
    }
}
