Sage.namespace("Sage.UI.Forms");
Sage.UI.Forms.QuoatationProductGrid = {

  

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
    
    if (typeof QuoatationProductGridgrdQuotationProducts_Strings === 'undefined') {
        QuoatationProductGridgrdQuotationProducts_Strings = {};
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
		field: 'Product.Criticality',
				name:  QuoatationProductGridgrdQuotationProducts_Strings['grdQuotationProducts_3068869b_096d_4187_a267_01ba51d96b77_ColumnHeading']  || 'Category',
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
		field: 'Product.Name',
				name:  QuoatationProductGridgrdQuotationProducts_Strings['grdQuotationProducts_610c0114_9c59_4f7b_8c3f_5092fe5b2faf_ColumnHeading']  || 'Product',
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
				name:  QuoatationProductGridgrdQuotationProducts_Strings['grdQuotationProducts_dc517ac0_bbaf_4bf9_88f7_015bb743d742_ColumnHeading']  || 'Family',
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
		field: 'CALCPRICE',
				name:  QuoatationProductGridgrdQuotationProducts_Strings['grdQuotationProducts_1a365f47_0317_4ccc_9fab_75f992db20da_ColumnHeading']  || 'Adj.Price',
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
		field: 'EXTENDEDPRICE',
				name:  QuoatationProductGridgrdQuotationProducts_Strings['grdQuotationProducts_7d2bd788_3e8e_4a57_b758_9eab1adfb878_ColumnHeading']  || 'Extended Price',
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
            resourceKind: 'quotationProducts',
            newItemParentReferenceProperty: 'Quotation',
            include: ['Quotation'],
            select: ['Id'],
	    //The .net vehicle to store grid data on postback
            dataCarrierId: 'QuoatationProductGridgrdQuotationProducts_DataCarrier',
            sort: [
                    ]
        },
        tools: [

{
    id : 'QuoatationProductGrid_Save',
  displayInInsert : false,
  imageClass: 'icon_Save_16x16',  'alternateText' : QuoatationProductGridgrdQuotationProducts_Strings['grdQuotationProducts_Save_ToolTip'] || '',
         'handler' : function() {
    this.saveChanges();
 }
}
  ,
{
  displayInInsert : true,
  type : 'Sage.UI.SDataLookup',
  controlConfig : 
{
  id : 'lueProduct',
  btnToolTip :  QuoatationProductGridlueProduct_Strings['lueProduct_ButtonTooltip']  ||  'Include Product', 
  btnIcon:  '~/ImageResource.axd?scope=global&type=Global_Images&key=add_products_24x24'  ,
  dialogButtonText : QuoatationProductGridlueProduct_Strings['lueProduct_DialogButtonText']  ||  '', 
  displayMode : 4, //$ {qf control . LookupDisplayMode}  When adding other dijit templates, need to convert control to use enum values
  dialogTitle : QuoatationProductGridlueProduct_Strings['lueProduct_LookupDialogTitle']  ||  '',
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
		   name: QuoatationProductGridlueProduct_Strings['lueProduct_LookupProperties_Criticality_PropertyHeader']  || 'Criticality',
		   field: 'Criticality',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 17,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'Criticality', 
							includeButton: true, 
						childentity: 'Product'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: QuoatationProductGridlueProduct_Strings['lueProduct_LookupProperties_Family_PropertyHeader']  || 'Family',
		   field: 'Family',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 9,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'Family', 
							includeButton: false, 
						childentity: 'Product'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: QuoatationProductGridlueProduct_Strings['lueProduct_LookupProperties_Name_PropertyHeader']  || 'Name',
		   field: 'Name',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 9,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'Name', 
							includeButton: false, 
						childentity: 'Product'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: QuoatationProductGridlueProduct_Strings['lueProduct_LookupProperties_Price_PropertyHeader']  || 'Price',
		   field: 'Price',
		   propertyType: 'System.Decimal',
		   				styles: 'text-align: right', 
		   				   excludeFromFilters: false,		   
		   		   width: 9,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'Price', 
							includeButton: false, 
						childentity: 'Product'
		        });
		   },
		   sortable: true
         }
         ,
		 {
		   name: QuoatationProductGridlueProduct_Strings['lueProduct_LookupProperties_Type_PropertyHeader']  || 'Type',
		   field: 'Type',
		   propertyType: 'System.String',
		   				   excludeFromFilters: false,		   
		   		   width: 9,
		   formatter: function (value, rowIdx, grid) {
				return Sage.Utility.SDataLookup.childObjectFormatter({
					value: value, rowIdx: rowIdx, grid: grid,
					fieldName: 'Type', 
							includeButton: false, 
						childentity: 'Product'
		        });
		   },
		   sortable: true
         }
       ]      }    ],   storeOptions: {
            sort: [ { attribute: 'Criticality' } ],    
    resourceKind : 'productPackageKit',
	select : ['Product/Criticality','Product/Family','Product/Name','Product/Price','Product/Type','Criticality','Family','Name','Price','Type']
  },
  gridOptions: {
		    selectionMode : 'Multi',
    rowsPerPage : 15
  }

} // end of sdata lookup config object

}
  ,
{
    id : 'QuoatationProductGrid_Delete',
  displayInInsert : false,
  imageClass: 'icon_Delete_16x16',  'alternateText' : QuoatationProductGridgrdQuotationProducts_Strings['grdQuotationProducts_Delete_ToolTip'] || '',
          'handler' : function() { this.deleteSelected(); }
}
           ],
        contextualCondition: function() { return 'Quotation.Id eq "' + Sage.Utility.getCurrentEntityId() + '"'; },
        
						tabId : 'QuoatationProductGrid',
		gridNodeId: 'QuoatationProductGridgrdQuotationProducts_Grid',
				id : 'QuoatationProductGridgrdQuotationProducts',
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
      var lup = dijit.byId('lueProduct');
    if (lup) {
      lup.doSelected = function (items) {
        var grid = dijit.byId('QuoatationProductGridgrdQuotationProducts');        
        grid.addAssociatedItems(items, "Quotation", "Product", lup);
      };
    }
    
});
}

  ,

    init : function(runtimeConfig) {
        setTimeout(function() { Sage.UI.Forms.QuoatationProductGrid.makeGrid(runtimeConfig); }, 1);

    }
};
if (typeof Sys !== 'undefined')
    Sys.Application.notifyScriptLoaded();