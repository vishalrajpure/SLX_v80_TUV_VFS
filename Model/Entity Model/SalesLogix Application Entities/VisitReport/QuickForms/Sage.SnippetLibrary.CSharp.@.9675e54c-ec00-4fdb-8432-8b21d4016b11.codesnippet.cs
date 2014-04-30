/*
 * This metadata is used by the Sage platform.  Do not remove.
<snippetHeader xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" id="9675e54c-ec00-4fdb-8432-8b21d4016b11">
 <assembly>Sage.SnippetLibrary.CSharp</assembly>
 <name>dtpInspectionDate_OnChangeStep</name>
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
 </references>
</snippetHeader>
*/


#region Usings
using System;
using Sage.Entity.Interfaces;
using Sage.Form.Interfaces;
using Sage.SalesLogix.API;
#endregion Usings

namespace Sage.BusinessRules.CodeSnippets
{
    public static partial class VisitReportDetailsEventHandlers
    {
        public static void dtpInspectionDate_OnChangeStep( IVisitReportDetails form,  EventArgs args)
        {
            // TODO: Complete business rule implementation
			if(form.dtpInspectionCall.DateTimeValue>form.dtpInspectionDate.DateTimeValue)
			{
				throw new ApplicationException("Inspection date can not be less than call date");
			}
        }
    }
}