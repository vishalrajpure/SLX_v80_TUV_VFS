/*
 * This metadata is used by the Sage platform.  Do not remove.
<snippetHeader xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" id="2e97c0f9-e497-4dec-a24d-85812791df45">
 <assembly>Sage.SnippetLibrary.CSharp</assembly>
 <name>OnBeforeInsertStep</name>
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
using NHibernate;
using Sage.SalesLogix.API;
#endregion Usings

namespace Sage.BusinessRules.CodeSnippets
{
    public static partial class TicketProductBusinessRules
    {
        public static void OnBeforeInsertStep( ITicketProduct ticketproduct,  ISession session)
        {
            // TODO: Complete business rule implementation
			/*if(ticketproduct.Quantity <= 0)
			{
				 throw new ApplicationException("Enter Quantity of selected product...");
			}
				
			


			Sage.Platform.Data.IDataService service = Sage.Platform.Application.ApplicationContext.Current.Services.Get<Sage.Platform.Data.IDataService>();
			System.Data.OleDb.OleDbConnection conObj1 = new System.Data.OleDb.OleDbConnection(service.GetConnectionString());
			conObj1.Open();
			string query1 = "Select MAX(isnull(CP.QUANTITY,0)) - SUM(isnull(TP.Quantity,0)) Qty From TICKETPRODUCT TP "+
							"LEFT JOIN CONTRACTPRODUCTITEM CP ON TP.ContractProductItemID = CP.ContractProductItemID " +
							"where TP.ContractProductItemID	= '"+ ticketproduct.ContractProductItemID + "' group by TP.PRODUCTID";
			
			System.Data.OleDb.OleDbCommand cmd = new System.Data.OleDb.OleDbCommand(query1, conObj1);
			System.Data.OleDb.OleDbDataReader dr;

			dr = cmd.ExecuteReader();
			if (dr.HasRows == true)
			{
				if(Convert.ToInt32(dr.row[0][0]) < 0)
				{
			     throw new ApplicationException("Quantity is exeeded the limit with " + Convert.ToInt32(dr.row[0][0]));
				}
			}*/
			
    	}
	}
}