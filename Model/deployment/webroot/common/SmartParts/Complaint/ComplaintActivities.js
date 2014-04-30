Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.ComplaintActivities = {

  

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
    
    if (typeof ComplaintActivitiesgrdComplaintActivities_Strings === 'undefined') {
        ComplaintActivitiesgrdComplaintActivities_Strings = {};
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
				name:  ComplaintActivitiesgrdComplaintActivities_Strings['grdComplaintActivities_5319162a_7a4d_4307_a48e_437e06844c6b_ColumnHeading']  || '',
	sortable: true,
		width: 5,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
    ,type: SlxLink
    ,editable: false
    ,pageName: 'ComplaintActivity'
    ,idField: '$key'
 }
  	,
{
		field: 'ActivityTypeCode',
				name:  ComplaintActivitiesgrdComplaintActivities_Strings['grdComplaintActivities_2d8c5595_a0d0_4e21_a7ea_aaaf0bbf344b_ColumnHeading']  || 'Type',
	sortable: true,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: false,
	type: PickList,
	pickListName: 'Ticket Activity',		
	storageMode:  'id' ,
	displayMode: 'AsText'
}
  	,
{
		field: 'Users.UserInfo.NameLF',
				name:  ComplaintActivitiesgrdComplaintActivities_Strings['grdComplaintActivities_a55340c6_6b16_4a5a_a1d7_7bd699db6c9d_ColumnHeading']  || 'User',
	sortable: false,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	defaultValue: '', 
	editable: false
				}
  	,
{
		field: 'AssignedDate',
				name:  ComplaintActivitiesgrdComplaintActivities_Strings['grdComplaintActivities_0a881bf9_ec94_4772_b14e_ef3d183512ea_ColumnHeading']  || 'Date',
	sortable: true,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	dateOnly: false,
		type: DateTime
}
  	,
{
		field: 'PublicAccessCode',
				name:  ComplaintActivitiesgrdComplaintActivities_Strings['grdComplaintActivities_bd258810_44c9_4d2f_88ea_275e0f534e92_ColumnHeading']  || 'Public',
	sortable: true,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: false,
	type: PickList,
	pickListName: 'Ticket Activity Public Access',		
	storageMode:  'id' ,
	displayMode: 'AsText'
}
  	,
{
		field: 'TotalFee',
				name:  ComplaintActivitiesgrdComplaintActivities_Strings['grdComplaintActivities_d65c3388_3c7b_461d_8098_6b87e4953bcb_ColumnHeading']  || 'Total',
	sortable: true,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: false,
		type: Currency,
	constraints: {  places: 2  },  

			exchangeRateType:  'BaseRate' ,
	displayCurrencyCode: true,
		    displayMode: 'AsControl',
    multiCurrency: isMultiCurrencyEnabled()	 //TODO: Move this method to Sage.IntegrationContractService.isMultiCurrencyEnabled()
}
  										          ],
        storeOptions: {
            resourceKind: 'complaintActivities',
            include: [],
            select: [],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'ComplaintActivitiesgrdComplaintActivities_DataCarrier',
            sort: [
                     ]
        },
        tools: [
         ],
        
						tabId : 'ComplaintActivities',
		gridNodeId: 'ComplaintActivitiesgrdComplaintActivities_Grid',
				id : 'ComplaintActivitiesgrdComplaintActivities',
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
        setTimeout(function() { Sage.UI.Forms.ComplaintActivities.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();