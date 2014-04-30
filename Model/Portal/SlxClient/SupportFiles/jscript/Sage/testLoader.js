/*globals Sage, dojo, dojox, dijit, Simplate, window, Sys, define */
define([
    /* Sage */
    "Sage/tests/Utility",

    /* Sage/Data */
    "Sage/Data/tests/BaseSDataStore",
    "Sage/Data/tests/GroupLayoutSingleton",
    "Sage/Data/tests/SingleEntryPropertySDataStore",
    "Sage/Data/tests/SingleEntrySDataStore",
    "Sage/Data/tests/WritableSDataStore",

    /* Sage/Store */
    "Sage/Store/tests/SData",

    /* Sage/UI */
    "Sage/UI/tests/_DetailPane",
    "Sage/UI/tests/_DetailPanelConfigurationProvider",
    "Sage/UI/tests/_DialogLoadingMixin",
    "Sage/UI/tests/_TitlePaneConfigProvider",
    "Sage/UI/tests/ComboBox",
    "Sage/UI/tests/ConditionManager",
    "Sage/UI/tests/DateTextBox",
    "Sage/UI/tests/DetailPanel",
    "Sage/UI/tests/Dialogs",
    "Sage/UI/tests/EditableGrid",
    "Sage/UI/tests/EditorContainer",
    "Sage/UI/tests/FilteringSelect",
    "Sage/UI/tests/GridContainer",
    "Sage/UI/tests/GridMenuItem",
    "Sage/UI/tests/GroupListConfigurationProvider",
    "Sage/UI/tests/GroupMenuFmtScope",
    "Sage/UI/tests/GroupsTitlePaneConfigProvider",
    //"Sage/UI/tests/GroupTabPane", // Performance test - run stand alone
    "Sage/UI/tests/ImageButton",
    "Sage/UI/tests/JsonPrintDetailPane",
    "Sage/UI/tests/ListPanel",
    "Sage/UI/tests/MenuBar",
    "Sage/UI/tests/MenuBarItem",
    "Sage/UI/tests/MenuItem",
    "Sage/UI/tests/NavBar",
    "Sage/UI/tests/NavBarPane",
    "Sage/UI/tests/NumberTextBox",
    "Sage/UI/tests/OrientableMenuBar",
    "Sage/UI/tests/PopupMenuBarItem",
    "Sage/UI/tests/PopupMenuItem",
    "Sage/UI/tests/SDataLookup",
    "Sage/UI/tests/SDataMainViewConfigurationProvider",
    "Sage/UI/tests/SearchConditionWidget",
    "Sage/UI/tests/SearchMenuItem",
    "Sage/UI/tests/SLXPreviewGrid",
    "Sage/UI/tests/SpeedSearch",
    "Sage/UI/tests/SummaryContainer",
    "Sage/UI/tests/SummaryContents",
    "Sage/UI/tests/SummaryDetailPane",
    "Sage/UI/tests/SummaryFormatterScope",
    "Sage/UI/tests/TextBox",
    "Sage/UI/tests/TitleContentPane",
    "Sage/UI/tests/ToggleButton",
    "Sage/UI/tests/ToolBarLabel",
    "Sage/UI/tests/UniqueToListValidationTextBox",
    "Sage/UI/tests/URL",
    "Sage/UI/tests/WidgetEditor",
    "Sage/UI/tests/widgetEditorLookup",

    /* Sage/UI/Alarms */
    "Sage/UI/Alarms/tests/ActivityAlarm",
    "Sage/UI/Alarms/tests/AlarmButton",
    "Sage/UI/Alarms/tests/AlarmCountDown",
    "Sage/UI/Alarms/tests/AlarmPane",
    "Sage/UI/Alarms/tests/AlarmPopup",
    "Sage/UI/Alarms/tests/AlertPane",
    "Sage/UI/Alarms/tests/UnconfirmedAlarm",
    "Sage/UI/Alarms/tests/UnconfirmedPane",

    /* Sage/UI/Columns */
    "Sage/UI/Columns/tests/Boolean",
    "Sage/UI/Columns/tests/CheckBox",
    "Sage/UI/Columns/tests/DataType",
    "Sage/UI/Columns/tests/DateTime",
    "Sage/UI/Columns/tests/TextBox",
    "Sage/UI/Columns/tests/UserType",
    
    /* Sage/UI/Controls */
    "Sage/UI/Controls/tests/Address",
    "Sage/UI/Controls/tests/CheckBox",
    "Sage/UI/Controls/tests/CopyToClipboard",
    "Sage/UI/Controls/tests/Currency",
    "Sage/UI/Controls/tests/DateTimePicker",
    "Sage/UI/Controls/tests/DependencyLookup",
    "Sage/UI/Controls/tests/DropDownSelectPickList",
    "Sage/UI/Controls/tests/DurationSelect",
    "Sage/UI/Controls/tests/Email",
    "Sage/UI/Controls/tests/EntityInfoToolTip",
    "Sage/UI/Controls/tests/HelpMenu",
    "Sage/UI/Controls/tests/LogOffButton",
    "Sage/UI/Controls/tests/Lookup",
    "Sage/UI/Controls/tests/MultiSelectPickList",
    "Sage/UI/Controls/tests/Name",
    "Sage/UI/Controls/tests/Numeric",
    "Sage/UI/Controls/tests/Phone",
    "Sage/UI/Controls/tests/PickList",
    "Sage/UI/Controls/tests/PickListAsText",
    "Sage/UI/Controls/tests/SimpleTextarea",
    "Sage/UI/Controls/tests/SingleSelectPickList",
    "Sage/UI/Controls/tests/SummaryAggregate",
    "Sage/UI/Controls/tests/TextBox",
    
    /* Sage/UI/Dashboard */
    "Sage/UI/Dashboard/tests/BaseWidget",
    "Sage/UI/Dashboard/tests/ChartingWidget",
    "Sage/UI/Dashboard/tests/Dashboard",
    "Sage/UI/Dashboard/tests/DashboardPage",
    "Sage/UI/Dashboard/tests/DashboardTabController",
    "Sage/UI/Dashboard/tests/DashboardWidget",
    "Sage/UI/Dashboard/tests/DashboardWidgetCell",
    "Sage/UI/Dashboard/tests/WidgetDefinition",
    
    /* Sage/UI/Filters */
    "Sage/UI/Filters/tests/CheckBoxFilter",
    "Sage/UI/Filters/tests/EditFilters",
    "Sage/UI/Filters/tests/EditFilterItems",
    "Sage/UI/Filters/tests/FilterManager",
    "Sage/UI/Filters/tests/FilterPanel",
    "Sage/UI/Filters/tests/GroupFilterConfigurationProvider",
    
    /* Sage/Workspaces */
    "Sage/Workspaces/tests/Dialog"
], function() {
});