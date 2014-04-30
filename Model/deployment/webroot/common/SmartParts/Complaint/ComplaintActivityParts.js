Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.ComplaintActivityParts = {

  

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
    
    if (typeof ComplaintActivityPartsQFSDataGrid_Strings === 'undefined') {
        ComplaintActivityPartsQFSDataGrid_Strings = {};
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
		field: 'ComplaintActivity.ActivityTypeCode',
				name:  ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_cc435322_5783_436b_83e6_428abd932025_ColumnHeading']  || 'Complaint Activity',
	sortable: true,
		width: 15,
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
		field: 'AccountProduct.ProductName',
				name:  ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_9b4a8b4a_46f0_448d_8650_59dc8ca8c361_ColumnHeading']  || 'Product',
	sortable: true,
		width: 15,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	defaultValue: '', 
	editable: false
				}
  	,
{
		field: 'AccountProduct.SerialNumber',
				name:  ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_d621b66d_f0a6_4119_a172_c90cc73f658d_ColumnHeading']  || 'Serial Number',
	sortable: true,
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
		field: 'AccountProduct.ActualId',
				name:  ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_9d8ecaa7_d045_482c_bd5d_d41d4cb4edd0_ColumnHeading']  || 'SKU',
	sortable: true,
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
		field: 'ItemAmount',
				name:  ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_9fb7d6bb_3780_4aaf_8b50_70aaf2a972a5_ColumnHeading']  || 'Price',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: false,
		type: Currency,
	constraints: {  places: Sys.CultureInfo.CurrentCulture.numberFormat.CurrencyDecimalDigits  },  

			exchangeRateType:  'BaseRate' ,
	displayCurrencyCode: true,
		    displayMode: 'AsControl',
    multiCurrency: isMultiCurrencyEnabled()	 //TODO: Move this method to Sage.IntegrationContractService.isMultiCurrencyEnabled()
}
  										,
{
		field: 'ItemDesc',
				name:  ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_b8bf4eb0_a620_4440_8ee8_36ec4a5e08e5_ColumnHeading']  || 'Discription',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	defaultValue: '', 
	editable: false
			,formatter: Sage.Format.abbreviationFormatter(128)
				,formatter: Sage.Format.abbreviationFormatter(128)
	}
  	,
{ 
    	field: 'ComplaintActivity.ComplaintId',
	    displayFields: ['ComplaintActivity.ComplaintId'],
    displayFormatString: ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_244dfa31_6685_49fd_a3d9_ed92953acea5_FormatString']  || 'EditComplaintActivity',
				name:  ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_244dfa31_6685_49fd_a3d9_ed92953acea5_ColumnHeading']  || '',
	sortable: false,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
    ,type: SlxLink
    ,editable: false
    ,pageName: 'ComplaintActivity'
    ,idField: 'ComplaintActivity.Complaint$key'
 }
  	,
{
    			field: '',
				name:  ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_c47e997e_754d_42de_82f3_3e9009055f64_ColumnHeading']  || '',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	   	type: SlxEdit,
		cellValue: ComplaintActivityPartsQFSDataGrid_Strings['QFSDataGrid_c47e997e_754d_42de_82f3_3e9009055f64_Text']  || '',
		entityType: 'Sage.Entity.Interfaces.IComplaintActivityItem, Sage.Entity.Interfaces',
		smartPart: 'AddEditComplaintActivityItem',
		dialogTitle: ComplaintActivityPartsQFSDataGrid_Strings['500fd5ed_bfc4_4679_bd7f_e360c663f3b0_DialogTitleOverride'] || '',
		isCentered: true ,
		dialogTop: 0,
		dialogLeft: 0,
		dialogHeight: 400,
		dialogWidth: 600,
    	formObjectName: 'Sage.UI.Forms.ComplaintActivityParts'
    	    }
  	          ],
        storeOptions: {
            resourceKind: 'complaintActivityItems',
            include: [],
            select: [],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'ComplaintActivityPartsQFSDataGrid_DataCarrier',
            sort: [
     { attribute: "AccountProduct.ProductName"
     }
                        ]
        },
        tools: [
         ],
        contextualCondition: function() { return 'ComplaintActivity.Complaint.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'ComplaintActivityParts',
		gridNodeId: 'ComplaintActivityPartsQFSDataGrid_Grid',
				id : 'ComplaintActivityPartsQFSDataGrid',
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
        setTimeout(function() { Sage.UI.Forms.ComplaintActivityParts.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();