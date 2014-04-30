Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.BranchSurveyor = {

  

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
    
    if (typeof BranchSurveyorgrdBranchSurveyors_Strings === 'undefined') {
        BranchSurveyorgrdBranchSurveyors_Strings = {};
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
    	field: '',
				name:  BranchSurveyorgrdBranchSurveyors_Strings['grdBranchSurveyors_2c0dc309_a1dc_4d72_b15a_e32234c450b8_ColumnHeading']  || '',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
    ,type: SlxLink
    ,editable: false
 }
  	          ],
        storeOptions: {
            resourceKind: 'branches',
            newItemParentReferenceProperty: 'Branch1',
            include: [],
            select: [],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'BranchSurveyorgrdBranchSurveyors_DataCarrier',
            sort: [
                ]
        },
        tools: [
         ],
        contextualCondition: function() { return 'Branch1.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'BranchSurveyor',
		gridNodeId: 'BranchSurveyorgrdBranchSurveyors_Grid',
				id : 'BranchSurveyorgrdBranchSurveyors',
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
        setTimeout(function() { Sage.UI.Forms.BranchSurveyor.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();