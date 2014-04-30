/*
 * This metadata is used by the Sage platform.  Do not remove.
<snippetHeader xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" id="e5cb44d0-3291-4221-b124-07b9ebbe9968">
 <assembly>Sage.SnippetLibrary.CSharp</assembly>
 <name>SetSeccode_OnAfterInsertStep</name>
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
    public static partial class StampMasterBusinessRules
    {
        public static void SetSeccode_OnAfterInsertStep( Sage.Entity.Interfaces.IStampMaster stampmaster)
        {
            // TODO: Complete business rule implementation
			Sage.Entity.Interfaces.IOwner objOwner = Sage.Platform.EntityFactory.GetById<Sage.Entity.Interfaces.IOwner>("SYST00000001");


			stampmaster.Owner = objOwner;
			stampmaster.Save();
			
        }
    }
}