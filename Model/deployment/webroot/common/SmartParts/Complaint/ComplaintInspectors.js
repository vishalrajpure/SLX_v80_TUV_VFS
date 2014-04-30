Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.ComplaintInspectors = {

  

makeGrid : function(runtimeConfig) {
    require(['Sage/UI/EditableGrid',
             'Sage/UI/Columns/DateTime',
             'Sage/UI/Columns/SlxLink',
             'Sage/UI/Columns/SlxEdit',
             'Sage/UI/Columns/PickList',
             'Sage/UI/Columns/Phone',
             'Sage/UI/Columns/Email',
             'Sage/UI/Columns/CheckBox',
             'Sage/UI/Columns/Numeric',
             'Sage/UI/Columns/Currency',
             'Sage/UI/Columns/Lookup',
             'dojo/aspect',
             'Sage/UI/SLXPreviewGrid',
             'Sage/UI/Columns/SlxUser'],
			 
			 function(EditableGrid, DateTime, SlxLink, SlxEdit, PickList, Phone, Email, CheckBox,
			   Numeric, Currency, Lookup, aspect, SLXPreviewGrid, SlxUser) {
    
    if (typeof ComplaintInspectorsgrdComplaintInspectors_Strings === 'undefined') {
        ComplaintInspectorsgrdComplaintInspectors_Strings = {};
    }

    var options = {		
		        context: runtimeConfig,		
				        		//Set to the value of the ReadOnlyCondition property
		          readOnly: false,
			        columns: [
    {
        field: '$key',
        editable: false,
		excludeFromFilters: true,
        hidden: true,
        id: 'id',
        formatter: function (value, rowIdx, cel) {
            var insertId = [cel.grid.id, '-row', rowIdx].join('');
            var id = (Sage.Utility.getModeId() === 'insert') ? insertId : value;
            var anchor = ['<div id=', id, ' >', id, '</ div>'].join('');
            return anchor;
        }
    },

{ 
    	field: 'Surveyor.UserName',
				name:  ComplaintInspectorsgrdComplaintInspectors_Strings['grdComplaintInspectors_de1628c5_6c3f_463d_8e6e_1817de5cce58_ColumnHeading']  || 'Inspector',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
    ,type: SlxLink
    ,editable: false
    ,pageName: 'Surveyor'
    ,idField: '$key'
 }
  	          ],
        storeOptions: {
            resourceKind: 'complaintInspectors',
            newItemParentReferenceProperty: 'Complaint',
            include: ['Complaint'],
            select: [],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'ComplaintInspectorsgrdComplaintInspectors_DataCarrier',
            sort: [
                ]
        },
        tools: [

{
    id : 'ComplaintInspectors_Save',
  displayInInsert : false,
  imageClass: 'icon_Save_16x16',  'alternateText' : ComplaintInspectorsgrdComplaintInspectors_Strings['grdComplaintInspectors_Save_ToolTip'] || 'Save',
         'handler' : function() {
    this.saveChanges(function () { if (Sage.Utility.getModeId() !== 'insert') { __doPostBack('MainContent', ''); } });
 }
}
  ,
{
  displayInInsert : false,
  type : 'Sage.UI.SDataLookup',
  controlConfig : 
{
  id : 'grdComplaintInspectors_AddRelationTool',
  btnToolTip :  ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_ButtonTooltip']  ||  'Add Inspectior', 
  btnIcon:  '~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16'  ,
  dialogButtonText : ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_DialogButtonText']  ||  '', 
  displayMode : 4, //$ {qf control . LookupDisplayMode}  When adding other dijit templates, need to convert control to use enum values
  dialogTitle : ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_LookupDialogTitle']  ||  'Lookup Inspector',
      structure : [
     {
       defaultCell: { width: 8, editable: false, styles: 'text-align: left;' },
       cells: [
	       {
        field: '$key',
        editable: false,
        hidden: true,
        id: 'id',
		excludeFromFilters: true,
        formatter: function (value, rowIdx, grid) {
            var anchor = ['<div id=', value, ' >', value, '</ div>'].join('');
		return anchor;
        }
    },
          
		 {
		   name: ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_LookupProperties_Branch_PropertyHeader']  || 'Branch (branch)',
		   field: 'Branch',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 17,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'Branch', 
							includeButton: true, 
						childentity: 'ComplaintInspectors'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_LookupProperties_FirstName_PropertyHeader']  || 'FirstName',
		   field: 'FirstName',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'FirstName', 
							includeButton: false, 
						childentity: 'ComplaintInspectors'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_LookupProperties_LastName_PropertyHeader']  || 'LastName',
		   field: 'LastName',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'LastName', 
							includeButton: false, 
						childentity: 'ComplaintInspectors'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_LookupProperties_MobileNo_PropertyHeader']  || 'MobileNo',
		   field: 'MobileNo',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'MobileNo', 
							includeButton: false, 
						childentity: 'ComplaintInspectors'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_LookupProperties_ReportingTo_PropertyHeader']  || 'ReportingTo',
		   field: 'ReportingTo',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'ReportingTo', 
							includeButton: false, 
						childentity: 'ComplaintInspectors'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_LookupProperties_SurveyorType_PropertyHeader']  || 'SurveyorType',
		   field: 'SurveyorType',
		   propertyType: 'SalesLogix.PickList',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'SurveyorType', 
							includeButton: false, 
						childentity: 'ComplaintInspectors'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: ComplaintInspectorsgrdComplaintInspectors_AddRelationTool_Strings['grdComplaintInspectors_AddRelationTool_LookupProperties_UserName_PropertyHeader']  || 'UserName',
		   field: 'UserName',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'UserName', 
							includeButton: false, 
						childentity: 'ComplaintInspectors'
		        });
		   },
		   sortable: true
         }
       ]      }    ],   storeOptions: {
            sort: [ { attribute: 'Branch' } ],    
    resourceKind : '$generator.GetSDataPathName(${qfcontrol.LookupResourceName})',
	select : ['ComplaintInspectors/Branch','ComplaintInspectors/FirstName','ComplaintInspectors/LastName','ComplaintInspectors/MobileNo','ComplaintInspectors/ReportingTo','ComplaintInspectors/SurveyorType','ComplaintInspectors/UserName','Branch','FirstName','LastName','MobileNo','ReportingTo','SurveyorType','UserName']
  },
  gridOptions: {
		    selectionMode : 'Single',
    rowsPerPage : 15
  }

} // end of sdata lookup config object

}
  ,
{
    id : 'ComplaintInspectors_Delete',
  displayInInsert : false,
  imageClass: 'icon_Delete_16x16',  'alternateText' : ComplaintInspectorsgrdComplaintInspectors_Strings['grdComplaintInspectors_Delete_ToolTip'] || 'Delete',
          'handler' : function() { this.deleteSelected(function () { if (Sage.Utility.getModeId() !== 'insert') { __doPostBack('MainContent', ''); } }); }
}
           ],
        contextualCondition: function() { return 'Complaint.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'ComplaintInspectors',
		gridNodeId: 'ComplaintInspectorsgrdComplaintInspectors_Grid',
				id : 'ComplaintInspectorsgrdComplaintInspectors',
        rowsPerPage: 20,
        singleClickEdit: true
    };

		var grid = new EditableGrid(options);
	var container = dijit.byId(grid.gridNodeId);
	container.addChild(grid);
	    window.setTimeout(function () { grid.startup(); }, 1);
	aspect.after(grid, 'startup', function () {
		// This is not a typo.  The dijit.layout.ContentPane is not affectively determining all of it's layout information
		// on the first pass through resize.  Calling resize twice effectively renders the grid to fill it's container.
		var localTC = dijit.byId('tabContent');
		localTC.resize(); localTC.resize();
	});
      var lup = dijit.byId('grdComplaintInspectors_AddRelationTool');
    if (lup) {
      lup.doSelected = function (items) {
        var grid = dijit.byId('ComplaintInspectorsgrdComplaintInspectors');        
        grid.addAssociatedItems(items, "Complaint", "Surveyor", lup);
      };
    }
    
});
}

  ,

    init : function(runtimeConfig) {
        setTimeout(function() { Sage.UI.Forms.ComplaintInspectors.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();