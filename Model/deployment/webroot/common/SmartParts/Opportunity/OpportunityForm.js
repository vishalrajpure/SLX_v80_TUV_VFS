Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.OpportunityForm = {

  

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
    
    if (typeof OpportunityFormQFSDataGrid_Strings === 'undefined') {
        OpportunityFormQFSDataGrid_Strings = {};
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
    			field: 'Id',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_dc8aeb06_5bcc_4ad2_ba0c_d860d6f6f8dd_ColumnHeading']  || 'Edit',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	   	type: SlxEdit,
		cellValue: OpportunityFormQFSDataGrid_Strings['QFSDataGrid_dc8aeb06_5bcc_4ad2_ba0c_d860d6f6f8dd_Text']  || '',
		entityType: 'Sage.Entity.Interfaces.IOpportunityProduct, Sage.Entity.Interfaces',
		smartPart: 'EditOpportunityProduct',
		dialogTitle: OpportunityFormQFSDataGrid_Strings['d0a11d1e_9912_4213_87ca_a2b15972a730_DialogTitleOverride'] || '',
		isCentered: true ,
		dialogTop: 0,
		dialogLeft: 0,
		dialogHeight: 400,
		dialogWidth: 600,
    	formObjectName: 'Sage.UI.Forms.OpportunityForm'
    	    }
  	,
{
		field: 'Product.Name',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_fce5f38c_c0b0_4559_8bfa_74888dab9db0_ColumnHeading']  || 'Name',
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
		field: 'Product.Family',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_183dd21a_2759_4bb1_bd09_57ec275ff2e2_ColumnHeading']  || 'Family',
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
		field: 'Product.Criticality',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_be6a22ce_24dc_4884_98e3_4dad421f2ce0_ColumnHeading']  || 'Category',
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
		field: 'Product.Type',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_cc92b05b_4f41_4542_ae94_c2f9dfd7e8a5_ColumnHeading']  || 'Type',
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
		field: 'InspectionType',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_7dac827d_71c5_43fc_b500_f85e9dc26bd0_ColumnHeading']  || 'InspectionType',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: false,
	type: PickList,
	pickListName: 'InspectionType',		
	storageMode:  'text' ,
	displayMode: 'AsText'
}
  	,
{
		field: 'InspectionType',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_857efb0c_8640_4e67_b66b_53eb01e1a323_ColumnHeading']  || 'Inspection Type',
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
		field: 'ManDayRequired',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_cc9852f4_2061_4fe3_a807_b53509e0b50b_ColumnHeading']  || 'Man Days',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	defaultValue: '', 
	editable: true
				}
  	,
{
		field: 'Quantity',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_41128d6f_7163_479f_a0b3_7bcb2c75c0c1_ColumnHeading']  || 'Quantity',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: true,
	type: Numeric,
	    constraints: { places:  Sys.CultureInfo.CurrentCulture.numberFormat.NumberDecimalDigits ,  round: -1 },  
	formatType: 'Number'
}
  	,
{
		field: 'Price',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_bd8baafd_a04b_45be_bce4_bd78b3ab982f_ColumnHeading']  || 'Price',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: true,
	type: Numeric,
	    constraints: { places:  Sys.CultureInfo.CurrentCulture.numberFormat.NumberDecimalDigits ,  round: -1 },  
	formatType: 'Number'
}
  	,
{
		field: 'ExtendedPrice',
				name:  OpportunityFormQFSDataGrid_Strings['QFSDataGrid_4c2b8cef_6b56_4e98_9ebf_e2b6f4fdebc7_ColumnHeading']  || 'Total Price',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: false,
	type: Numeric,
	    constraints: { places:  Sys.CultureInfo.CurrentCulture.numberFormat.NumberDecimalDigits ,  round: -1 },  
	formatType: 'Number'
}
  	          ],
		         storeOptions: {
            resourceKind: 'opportunityProducts',
            newItemParentReferenceProperty: 'Opportunity',
            include: ['Opportunity'],
            select: ['Id'],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'OpportunityFormQFSDataGrid_DataCarrier',
            sort: [
                          ]
        },
        tools: [

{
    id : 'OpportunityForm_Save',
  displayInInsert : false,
  imageClass: 'icon_Save_16x16',  'alternateText' : OpportunityFormQFSDataGrid_Strings['QFSDataGrid_Save_ToolTip'] || 'Save',
         'handler' : function() {
    this.saveChanges(function () { if (Sage.Utility.getModeId() !== 'insert') { __doPostBack('MainContent', ''); } });
 }
}
  ,
{
    id : 'OpportunityForm_Delete',
  displayInInsert : true,
  imageClass: 'icon_Delete_16x16',  'alternateText' : OpportunityFormQFSDataGrid_Strings['QFSDataGrid_Delete_ToolTip'] || 'Delete',
          'handler' : function() { this.deleteSelected(); }
}
  ,
{
    id : 'OpportunityForm_Add',
  displayInInsert : true,
  imageClass: 'icon_No_icon_16x16',  'alternateText' : OpportunityFormQFSDataGrid_Strings['QFSDataGrid_Add_ToolTip'] || 'Add',
          'handler' : function() { 
       this.addNew({
           scope: this,
           onComplete: function(item) {
               var customAction = 

Response.Redirect("AddOppoProduct.aspx");;
               customAction(item);
               this.store.saveNewEntity(item, function(entity) { grid._refresh(); }, function() { }, this );
           }
       }) }
}
           ],
        contextualCondition: function() { return 'Opportunity.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'OpportunityForm',
		gridNodeId: 'OpportunityFormQFSDataGrid_Grid',
				id : 'OpportunityFormQFSDataGrid',
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
        setTimeout(function() { Sage.UI.Forms.OpportunityForm.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();