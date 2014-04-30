Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.QuotationContactGrid = {

  

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
    
    if (typeof QuotationContactGridQFSDataGrid_Strings === 'undefined') {
        QuotationContactGridQFSDataGrid_Strings = {};
    }

    var options = {		
		        context: runtimeConfig,		
		        noDataMessage: QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_EmptyTableRowText']  ||  'No records match the selection criteria.', 
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
				name:  QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_91802476_c53c_4a80_ba2f_bbccbca81d2a_ColumnHeading']  || 'Edit',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	   	type: SlxEdit,
		cellValue: QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_91802476_c53c_4a80_ba2f_bbccbca81d2a_Text']  || 'Edit',
		entityType: 'Sage.Entity.Interfaces.IQuotationContact, Sage.Entity.Interfaces',
		smartPart: 'AddEditQuotationContact',
		dialogTitle: QuotationContactGridQFSDataGrid_Strings['b5950d89_42b7_4780_b097_65e0df501adb_DialogTitleOverride'] || 'Edit Quotation Contact',
		isCentered: true ,
		dialogTop: 0,
		dialogLeft: 0,
		dialogHeight: 400,
		dialogWidth: 600,
    	formObjectName: 'Sage.UI.Forms.QuotationContactGrid'
    	    }
  	,
{ 
    	field: 'Contact.NameLF',
				name:  QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_05981680_3714_4ea8_b5bd_787333e5c49f_ColumnHeading']  || 'Contact',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
    ,type: SlxLink
    ,editable: false
    ,pageName: 'Contact'
    ,idField: 'Contact.$key'
 }
  	,
{
		field: 'Contact.Title',
				name:  QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_1c739677_138d_4d4c_a3d9_cc455654f02d_ColumnHeading']  || 'Title',
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
		field: 'SalesRole',
				name:  QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_7bc5420e_30c8_499b_a7dd_104c002565c3_ColumnHeading']  || 'Role',
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
		field: 'ISPRIMARY',
				name:  QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_c6e31a00_36c7_43d1_8c80_232843af795b_ColumnHeading']  || 'Is Primary',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
,
	editable: false,
	type: CheckBox,
	defaultValue: "x"   }
  	,
{
		field: 'Contact.WorkPhone',
				name:  QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_be2dba32_2eb3_4ca0_8101_7fcb1df10edd_ColumnHeading']  || 'Phone',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	editable: false,
	type: Phone
}
  	,
{
		field: 'Contact.Email',
				name:  QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_21942973_f477_4787_a433_58ad85d05fcf_ColumnHeading']  || 'Email',
	sortable: false,
		width: '10',
	 	styles: 'width:auto;',
    cellClasses: '  alignleft ',
	headerClasses: ' alignleft '
, 
	editable: false,
	type: Email
}
  	          ],
        storeOptions: {
            resourceKind: 'quotationContacts',
            newItemParentReferenceProperty: 'Quotation',
            include: ['Quotation'],
            select: [],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'QuotationContactGridQFSDataGrid_DataCarrier',
            sort: [
                      ]
        },
        tools: [

{
    id : 'QuotationContactGrid_Save',
  displayInInsert : false,
  imageClass: 'icon_Save_16x16',  'alternateText' : QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_Save_ToolTip'] || 'Save',
         'handler' : function() {
    this.saveChanges(function () { if (Sage.Utility.getModeId() !== 'insert') { __doPostBack('MainContent', ''); } }
);
 }
}
  ,
{
  displayInInsert : false,
  type : 'Sage.UI.SDataLookup',
  controlConfig : 
{
  id : 'lkpQuotationContact',
  btnToolTip :  QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_ButtonTooltip']  ||  '', 
  btnIcon:  '~/ImageResource.axd?scope=global&type=Global_Images&key=plus_16x16'  ,
  dialogButtonText : QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_DialogButtonText']  ||  'Add Selected', 
  displayMode : 4, //$ {qf control . LookupDisplayMode}  When adding other dijit templates, need to convert control to use enum values
  dialogTitle : QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_LookupDialogTitle']  ||  '',
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
		   name: QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_LookupProperties_NameLF_PropertyHeader']  || 'Contact',
		   field: 'NameLF',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 17,
		   sortable: true
         }
         ,
		 {
		   name: QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_LookupProperties_Title_PropertyHeader']  || 'Title',
		   field: 'Title',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   sortable: true
         }
         ,
		 {
		   name: QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_LookupProperties_AccountName_PropertyHeader']  || 'Account',
		   field: 'AccountName',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   sortable: true
         }
         ,
		 {
		   name: QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_LookupProperties_Address_City_PropertyHeader']  || 'City',
		   field: 'Address.City',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   sortable: true
         }
         ,
		 {
		   name: QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_LookupProperties_Address_State_PropertyHeader']  || 'State',
		   field: 'Address.State',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   sortable: true
         }
         ,
		 {
		   name: QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_LookupProperties_WorkPhone_PropertyHeader']  || 'Phone',
		   field: 'WorkPhone',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   sortable: true
         }
         ,
		 {
		   name: QuotationContactGridlkpQuotationContact_Strings['lkpQuotationContact_LookupProperties_Email_PropertyHeader']  || 'Email',
		   field: 'Email',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 8,
		   sortable: true
         }
       ]      }    ],   storeOptions: {
            sort: [ { attribute: 'NameLF' } ],    
    resourceKind : 'contacts',
	select : ['NameLF','Title','AccountName','Address.City','Address.State','WorkPhone','Email']
  },
  gridOptions: {
		    selectionMode : 'Multi',
    rowsPerPage : 15
  }

} // end of sdata lookup config object

}
  ,
{
    id : 'QuotationContactGrid_Delete',
  displayInInsert : false,
  imageClass: 'icon_Delete_16x16',  'alternateText' : QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_Delete_ToolTip'] || 'Delete',
          'handler' : function() { this.deleteSelected(function () { if (Sage.Utility.getModeId() !== 'insert') { __doPostBack('MainContent', ''); } }
); }
}
  ,
{
    id : 'QuotationContactGrid_Cancel',
  displayInInsert : false,
  imageClass: 'icon_Reset_16x16',  'alternateText' : QuotationContactGridQFSDataGrid_Strings['QFSDataGrid_Cancel_ToolTip'] || 'Revert Changes',
          'handler' : function() { this.cancelChanges(); }
}
           ],
        contextualCondition: function() { return 'Quotation.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'QuotationContactGrid',
		gridNodeId: 'QuotationContactGridQFSDataGrid_Grid',
				id : 'QuotationContactGridQFSDataGrid',
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
      var lup = dijit.byId('lkpQuotationContact');
    if (lup) {
      lup.doSelected = function (items) {
        var grid = dijit.byId('QuotationContactGridQFSDataGrid');        
        grid.addAssociatedItems(items, "Quotation", "Contact", lup);
      };
    }
     
});
}

  ,

    init : function(runtimeConfig) {
        setTimeout(function() { Sage.UI.Forms.QuotationContactGrid.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();