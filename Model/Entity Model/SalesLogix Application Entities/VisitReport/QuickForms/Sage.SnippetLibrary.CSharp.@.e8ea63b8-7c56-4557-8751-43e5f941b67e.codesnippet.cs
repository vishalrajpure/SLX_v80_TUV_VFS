/*
 * This metadata is used by the Sage platform.  Do not remove.
<snippetHeader xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" id="e8ea63b8-7c56-4557-8751-43e5f941b67e">
 <assembly>Sage.SnippetLibrary.CSharp</assembly>
 <name>btnPrint_OnClickStep</name>
 <references>
  <reference>
   <assemblyName>Sage.Entity.Interfaces.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\interfaces\bin\Sage.Entity.Interfaces.dll</hintPath>
  </reference>
  <reference>
   <assemblyName>Sage.Form.Interfaces.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\formInterfaces\bin\Sage.Form.Interfaces.dll</hintPath>
  </reference>
  <reference>
   <assemblyName>Sage.Platform.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\assemblies\Sage.Platform.dll</hintPath>
  </reference>
  <reference>
   <assemblyName>Sage.SalesLogix.API.dll</assemblyName>
  </reference>
  <reference>
   <assemblyName>CrystalDecisions.CrystalReports.Engine.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\ReportDll\CrystalDecisions.CrystalReports.Engine.dll</hintPath>
  </reference>
  <reference>
   <assemblyName>CrystalDecisions.Shared.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\ReportDll\CrystalDecisions.Shared.dll</hintPath>
  </reference>
  <reference>
   <assemblyName>Sage.SalesLogix.Client.Reports.Helper.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\ReportDll\Sage.SalesLogix.Client.Reports.Helper.dll</hintPath>
  </reference>
  <reference>
   <assemblyName>Interop.SLXWR.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\ReportDll\Interop.SLXWR.dll</hintPath>
  </reference>
  <reference>
   <assemblyName>Sage.SalesLogix.BusinessRules.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\ReportDll\Sage.SalesLogix.BusinessRules.dll</hintPath>
  </reference>
  <reference>
   <assemblyName>Sage.SalesLogix.dll</assemblyName>
   <hintPath>%BASEBUILDPATH%\ReportDll\Sage.SalesLogix.dll</hintPath>
  </reference>
 </references>
</snippetHeader>
*/


#region Usings
using System;
using Sage.Entity.Interfaces;
using Sage.Form.Interfaces;
using Sage.SalesLogix.API;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using Sage.SalesLogix.Client.Reports.Helper;
using Sage.SalesLogix.Security;
using Sage.SalesLogix.Attachment;
using Interop.SLXWR;
#endregion Usings

namespace Sage.BusinessRules.CodeSnippets
{
    public static partial class VisitReportDetailsEventHandlers
    {
        public static void btnPrint_OnClickStep( IVisitReportDetails form,  EventArgs args)
        {
            // TODO: Complete business rule implementation
			IAttachment attachment = null;          
      		string pluginid = string.Empty;
    
   
   Sage.Entity.Interfaces.IVisitReport parentEntity = form.CurrentEntity as Sage.Entity.Interfaces.IVisitReport;
             
     
      if (ReportsHelper.GetPluginId("VisitReport:Visitreport", out pluginid))
      {     
          WebReportingClass reporting = new WebReportingClass();
    
    Sage.Platform.Data.IDataService datasvc = MySlx.Data.CurrentConnection;
          Sage.Entity.Interfaces.IUser user = MySlx.Security.CurrentSalesLogixUser;
   
          string tempPath = Rules.GetTempAttachmentPath();
    string ConnectionString = datasvc.GetConnectionString();
        
  
          string report = reporting.GenerateReport(ConnectionString,datasvc.Server,DatabaseServer.dsMSSQL,tempPath,false,false,"VISITREPORT.VISITREPORTID", "", pluginid, "", "",  "", "SELECT VISITREPORT.VISITREPORTID FROM VISITREPORT", string.Format("(VISITREPORT.VISITREPORTID = '{0}')", parentEntity.Id), user.Id.ToString(),  user.UserName.ToString());
    
                ReportDocument doc = new ReportDocument();
                
                report = string.Format("{0}run\\{1}", tempPath, report);
     
                doc.Load(report);
       
                string filename = string.Format("{0}\\{1}_v{2}.pdf", Rules.GetAttachmentPath(), parentEntity.ProjectName.Replace(" ", "_"), 1);
        
    			doc.ExportToDisk(ExportFormatType.PortableDocFormat,filename); 
         
          		doc.Close();    
               
          attachment = Sage.Platform.EntityFactory.Create<IAttachment>();
          attachment.Description = string.Format("{0} v{1}", parentEntity.ProjectName, 1);
          attachment.InsertFileAttachment(filename);
    	attachment.VISITREPORTID =Convert.ToString(parentEntity.Id);
    
          attachment.Save();
 
         System.IO.File.Delete(report);
   

    
          }
        }
    }
}
