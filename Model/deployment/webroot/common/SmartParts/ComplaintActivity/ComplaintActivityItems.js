Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.ComplaintActivityItems = {

  

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
    
    if (typeof ComplaintActivityItemsQFSDataGrid_Strings === 'undefined') {
        ComplaintActivityItemsQFSDataGrid_Strings = {};
    }

    var options = {		
		        context: runtimeConfig,		
		        noDataMessage: ComplaintActivityItemsQFSDataGrid_Strings['QFSDataGrid_EmptyTableRowText']  ||  'No records match the selection criteria.', 
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
				    //Set to the value of the visibleCondition property
	    hidden: function () { if(Sage.Utility.getModeId()==='insert') { return true;  }}(),
		name:  ComplaintActivityItemsQFSDataGrid_Strings['QFSDataGrid_bac73de9_936d_4416_b73a_76542ed1d439_ColumnHeading']  || '',
	sortable: false,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	   	type: SlxEdit,
		cellValue: ComplaintActivityItemsQFSDataGrid_Strings['QFSDataGrid_bac73de9_936d_4416_b73a_76542ed1d439_Text']  || 'Edit Part',
		entityType: 'Sage.Entity.Interfaces.IComplaintActivityItem, Sage.Entity.Interfaces',
		smartPart: 'AddEditComplaintActivityItem',
		dialogTitle: ComplaintActivityItemsQFSDataGrid_Strings['e7965782_1797_4fc1_a49c_85a0cc987842_DialogTitleOverride'] || '',
		isCentered: true ,
		dialogTop: 0,
		dialogLeft: 0,
		dialogHeight: 400,
		dialogWidth: 600,
    	formObjectName: 'Sage.UI.Forms.ComplaintActivityItems'
    	    }
  	,
{
		field: 'AccountProduct.ProductName',
				name:  ComplaintActivityItemsQFSDataGrid_Strings['QFSDataGrid_71841c1c_b003_4bcc_baed_59a0edb38641_ColumnHeading']  || 'Product',
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
		field: 'AccountProduct.SerialNumber',
				name:  ComplaintActivityItemsQFSDataGrid_Strings['QFSDataGrid_d7651227_032c_4a3e_ba6f_e4259af16f51_ColumnHeading']  || 'Serial Number',
	sortable: false,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	defaultValue: '', 
	editable: true
				}
  	,
{
		field: 'AccountProduct.ActualId',
				name:  ComplaintActivityItemsQFSDataGrid_Strings['QFSDataGrid_f8117b19_c075_4dc8_a8b1_0a1ac767c7ce_ColumnHeading']  || 'SKU',
	sortable: true,
		width: 12,
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
				name:  ComplaintActivityItemsQFSDataGrid_Strings['QFSDataGrid_e8020854_264d_4d21_9e2f_7f7da6e329a4_ColumnHeading']  || 'Price',
	sortable: false,
		width: 10,
		styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: true,
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
				name:  ComplaintActivityItemsQFSDataGrid_Strings['QFSDataGrid_bf298bc8_f298_4918_9565_077760fbafcd_ColumnHeading']  || 'Description',
	sortable: true,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	defaultValue: '', 
	editable: false
				}
  	          ],
        storeOptions: {
            resourceKind: 'complaintActivityItems',
            newItemParentReferenceProperty: 'ComplaintActivity',
            include: [],
            select: [],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'ComplaintActivityItemsQFSDataGrid_DataCarrier',
            sort: [
                     ]
        },
        tools: [
         ],
        contextualCondition: function() { return 'ComplaintActivity.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'ComplaintActivityItems',
		gridNodeId: 'ComplaintActivityItemsQFSDataGrid_Grid',
				id : 'ComplaintActivityItemsQFSDataGrid',
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
        setTimeout(function() { Sage.UI.Forms.ComplaintActivityItems.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();