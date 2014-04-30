<%@ Control Language="C#" AutoEventWireup="true" CodeFile="stampdistribution.ascx.cs" Inherits="SmartParts_StampItems_Custom_Pages_stampdistributionl" %>
<%@ Register assembly="Sage.SalesLogix.Web.Controls" namespace="Sage.SalesLogix.Web.Controls" tagprefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.DependencyLookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Lookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.HighLevelTypes" Namespace="Sage.SalesLogix.HighLevelTypes" TagPrefix="SalesLogix" %>

<%@ Register Assembly="Sage.SalesLogix.Client.GroupBuilder" Namespace="Sage.SalesLogix.Client.GroupBuilder" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.PickList" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Timeline" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.Platform.WebPortal" Namespace="Sage.Platform.WebPortal.SmartParts" TagPrefix="SalesLogix" %>

<div runat="server" id="divBarChart">
        <SalesLogix:SlxGridView ID="gvstamp" AllowSorting="true"  AutoGenerateColumns="False" CurrentSortDirection="Descending"
                                AllowPaging="false" runat="server" OnPageIndexChanging="gvstamp_PageIndexChanging"
                                CssClass="datagrid" AlternatingRowStyle-CssClass="rowdk"  onsorting="gvstamp_Sorting"
                                OnRowDataBound="gvstamp_RowDataBound" ShowSortIcon="true"
                                RowStyle-CssClass="rowlt" ForeColor="#333333">                   
            <Columns>

                 <asp:BoundField HeaderText="Surveyor" DataField="Surveyor" ReadOnly="true" />
               <asp:BoundField HeaderText="Allocated Qty" DataField="Allocated Qty" ReadOnly="true" />
              
                </Columns> 
            </SalesLogix:SlxGridView> 
    </div> 