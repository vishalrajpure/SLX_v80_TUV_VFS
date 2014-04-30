Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.TrainingSurveyor = {

  

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
    
    if (typeof TrainingSurveyorQFSDataGrid_Strings === 'undefined') {
        TrainingSurveyorQFSDataGrid_Strings = {};
    }

    var options = {		
		        context: runtimeConfig,		
		        noDataMessage: TrainingSurveyorQFSDataGrid_Strings['QFSDataGrid_EmptyTableRowText']  ||  'No Records Found.', 
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
    	field: 'Surveyor.FirstName',
				name:  TrainingSurveyorQFSDataGrid_Strings['QFSDataGrid_89db91d6_2b06_4264_86f4_56da2e7cd336_ColumnHeading']  || 'Inspector',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
    ,type: SlxLink
    ,editable: false
    ,pageName: 'Surveyor'
    ,idField: 'Surveyor.$key'
 }
  	,
{
		field: 'Surveyor.MobileNo',
				name:  TrainingSurveyorQFSDataGrid_Strings['QFSDataGrid_8d1fcebb_2126_499d_9030_09988e2579db_ColumnHeading']  || 'Mobile No',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	defaultValue: '', 
	editable: false
				}
  	,
{
		field: 'Surveyor.SurveyorType',
				name:  TrainingSurveyorQFSDataGrid_Strings['QFSDataGrid_6c65ed85_03e7_4f51_a2ff_d21f5d3eb658_ColumnHeading']  || 'Type',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	defaultValue: '', 
	editable: false
				}
  	,
{
    			field: '',
				name:  TrainingSurveyorQFSDataGrid_Strings['QFSDataGrid_39dda28e_520d_4992_985b_e31aabc8e861_ColumnHeading']  || 'Edit',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	   	type: SlxEdit,
		cellValue: TrainingSurveyorQFSDataGrid_Strings['QFSDataGrid_39dda28e_520d_4992_985b_e31aabc8e861_Text']  || 'Edit',
		entityType: 'Sage.Entity.Interfaces.ITrainingDetail, Sage.Entity.Interfaces',
		smartPart: 'AddEditTrainingDetail',
		dialogTitle: TrainingSurveyorQFSDataGrid_Strings['874e1cc5_aabf_4927_9902_c0aaa55dd70e_DialogTitleOverride'] || 'Edit Training Detail',
		isCentered: true ,
		dialogTop: 0,
		dialogLeft: 0,
		dialogHeight: 400,
		dialogWidth: 600,
    	formObjectName: 'Sage.UI.Forms.TrainingSurveyor'
    	    }
  	          ],
        storeOptions: {
            resourceKind: 'trainingDetails',
            newItemParentReferenceProperty: 'Training',
            include: [],
            select: [],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'TrainingSurveyorQFSDataGrid_DataCarrier',
            sort: [
                   ]
        },
        tools: [
         ],
        contextualCondition: function() { return 'Training.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'TrainingSurveyor',
		gridNodeId: 'TrainingSurveyorQFSDataGrid_Grid',
				id : 'TrainingSurveyorQFSDataGrid',
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
        setTimeout(function() { Sage.UI.Forms.TrainingSurveyor.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();