Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.RNVisitReport = {

  

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
    
    if (typeof RNVisitReportQFSDataGrid_Strings === 'undefined') {
        RNVisitReportQFSDataGrid_Strings = {};
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
				name:  RNVisitReportQFSDataGrid_Strings['QFSDataGrid_c483b20a_accf_4c6c_bc2e_c45faf17c577_ColumnHeading']  || 'VisitReportID',
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
            include: [],
            select: [],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'RNVisitReportQFSDataGrid_DataCarrier',
            sort: [
                ]
        },
        tools: [

{
    id : 'RNVisitReport_Delete',
  displayInInsert : false,
  imageClass: 'icon_Delete_16x16',  'alternateText' : RNVisitReportQFSDataGrid_Strings['QFSDataGrid_Delete_ToolTip'] || 'Delete',
          'handler' : function() { this.deleteSelected(); }
}
           ],
        contextualCondition: function() { return 'RNReport.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'RNVisitReport',
		gridNodeId: 'RNVisitReportQFSDataGrid_Grid',
				id : 'RNVisitReportQFSDataGrid',
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
  
});
}

  ,

    init : function(runtimeConfig) {
        setTimeout(function() { Sage.UI.Forms.RNVisitReport.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();