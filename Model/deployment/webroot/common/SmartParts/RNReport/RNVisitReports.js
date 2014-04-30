Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.RNVisitReports = {

  

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
    
    if (typeof RNVisitReportsgrdRNVisitReports_Strings === 'undefined') {
        RNVisitReportsgrdRNVisitReports_Strings = {};
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
    	field: 'VisitReportID',
				name:  RNVisitReportsgrdRNVisitReports_Strings['grdRNVisitReports_9636c944_b295_43b9_a744_1e15807c39d8_ColumnHeading']  || 'VisitReport',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
    ,type: SlxLink
    ,editable: false
    ,pageName: 'VisitReport'
    ,idField: '$key'
 }
  	          ],
	 	         storeOptions: {
            resourceKind: 'rNVisitReports',
            newItemParentReferenceProperty: 'RNReport',
            include: ['RNReport'],
            select: ['Id'],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'RNVisitReportsgrdRNVisitReports_DataCarrier',
            sort: [
                ]
        },
        tools: [

{
    id : 'RNVisitReports_Save',
  displayInInsert : false,
  imageClass: 'icon_Save_16x16',  'alternateText' : RNVisitReportsgrdRNVisitReports_Strings['grdRNVisitReports_Save_ToolTip'] || 'Save',
         'handler' : function() {
    this.saveChanges(function () { if (Sage.Utility.getModeId() !== 'insert') { __doPostBack('MainContent', ''); } });
 }
}
  ,
{
    id : 'RNVisitReports_Delete',
  displayInInsert : false,
  imageClass: 'icon_Delete_16x16',  'alternateText' : RNVisitReportsgrdRNVisitReports_Strings['grdRNVisitReports_Delete_ToolTip'] || 'Delete',
          'handler' : function() { this.deleteSelected(function () { if (Sage.Utility.getModeId() !== 'insert') { __doPostBack('MainContent', ''); } }); }
}
  ,
{
  displayInInsert : false,
  type : 'Sage.UI.SDataLookup',
  controlConfig : 
{
  id : 'grdRNVisitReports_AddRelationTool',
  btnToolTip :  RNVisitReportsgrdRNVisitReports_AddRelationTool_Strings['grdRNVisitReports_AddRelationTool_ButtonTooltip']  ||  'Add VisitReport', 
  btnIcon:  '~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16'  ,
  dialogButtonText : RNVisitReportsgrdRNVisitReports_AddRelationTool_Strings['grdRNVisitReports_AddRelationTool_DialogButtonText']  ||  '', 
  displayMode : 4, //$ {qf control . LookupDisplayMode}  When adding other dijit templates, need to convert control to use enum values
  dialogTitle : RNVisitReportsgrdRNVisitReports_AddRelationTool_Strings['grdRNVisitReports_AddRelationTool_LookupDialogTitle']  ||  '',
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
		   name: RNVisitReportsgrdRNVisitReports_AddRelationTool_Strings['grdRNVisitReports_AddRelationTool_LookupProperties_InspectionDate_PropertyHeader']  || 'InspectionDate',
		   field: 'InspectionDate',
		   propertyType: 'System.DateTime',
		   				   excludeFromFilters: false,		   
		   		   width: 17,
		   sortable: true
         }
         ,
		 {
		   name: RNVisitReportsgrdRNVisitReports_AddRelationTool_Strings['grdRNVisitReports_AddRelationTool_LookupProperties_ProjectName_PropertyHeader']  || 'ProjectName',
		   field: 'ProjectName',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 12,
		   sortable: true
         }
         ,
		 {
		   name: RNVisitReportsgrdRNVisitReports_AddRelationTool_Strings['grdRNVisitReports_AddRelationTool_LookupProperties_Stage_PropertyHeader']  || 'Stage',
		   field: 'Stage',
		   propertyType: 'SalesLogix.PickList',
		   				   excludeFromFilters: false,		   
		   		   width: 12,
		   sortable: true
         }
         ,
		 {
		   name: RNVisitReportsgrdRNVisitReports_AddRelationTool_Strings['grdRNVisitReports_AddRelationTool_LookupProperties_TicketID_PropertyHeader']  || 'TicketID',
		   field: 'TicketID',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 12,
		   sortable: true
         }
       ]      }    ],   storeOptions: {
            sort: [ { attribute: 'InspectionDate' } ],    
    resourceKind : 'visitReports',
	select : ['InspectionDate','ProjectName','Stage','TicketID']
  },
  gridOptions: {
		    selectionMode : 'Single',
    rowsPerPage : 15
  }

} // end of sdata lookup config object

}
           ],
        contextualCondition: function() { return 'RNReport.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'RNVisitReports',
		gridNodeId: 'RNVisitReportsgrdRNVisitReports_Grid',
				id : 'RNVisitReportsgrdRNVisitReports',
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
       var lup = dijit.byId('grdRNVisitReports_AddRelationTool');
    if (lup) {
      lup.doSelected = function (items) {
        var grid = dijit.byId('RNVisitReportsgrdRNVisitReports');        
        grid.addAssociatedItems(items, "RNReport", "VisitReport", lup);
      };
    }
   
});
}

  ,

    init : function(runtimeConfig) {
        setTimeout(function() { Sage.UI.Forms.RNVisitReports.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();