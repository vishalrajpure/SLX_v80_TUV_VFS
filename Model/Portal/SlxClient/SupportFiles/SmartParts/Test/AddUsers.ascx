<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddUsers.ascx.cs" Inherits="AddUsers" %>
<%@ Register Assembly="Sage.SalesLogix.Client.GroupBuilder" Namespace="Sage.SalesLogix.Client.GroupBuilder" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.PickList" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.DependencyLookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Lookup" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.Web.Controls" Namespace="Sage.SalesLogix.Web.Controls.Timeline" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.SalesLogix.HighLevelTypes" Namespace="Sage.SalesLogix.HighLevelTypes" TagPrefix="SalesLogix" %>
<%@ Register Assembly="Sage.Platform.WebPortal" Namespace="Sage.Platform.WebPortal.SmartParts" TagPrefix="SalesLogix" %>

<div style="display:none">
    <asp:Panel ID="AddUsers_RTools" runat="server">
        <SalesLogix:PageLink ID="lnkAddUsersHelp" runat="server" LinkType="HelpFileName" ToolTip="<%$ resources: Portal, Help_ToolTip %>" Target="Help"
            NavigateUrl="Adding_a_User" ImageUrl="~/ImageResource.axd?scope=global&type=Global_Images&key=Help_16x16">&nbsp;&nbsp;&nbsp;&nbsp;
        </SalesLogix:PageLink>
    </asp:Panel>
</div>

    <h1>  Pratik s111</h1>

    
<div runat="server" id="divBarChart">
        <SalesLogix:SlxGridView ID="gvstamp" AllowSorting="true"  AutoGenerateColumns="False" CurrentSortDirection="Descending"
                                AllowPaging="false" runat="server" 
                                CssClass="datagrid" AlternatingRowStyle-CssClass="rowdk"  
                              ShowSortIcon="true"
                                RowStyle-CssClass="rowlt" ForeColor="#333333">                   
            <Columns>

                 <asp:BoundField HeaderText="Surveyor" DataField="Surveyor" ReadOnly="true" />
               <asp:BoundField HeaderText="Allocated Qty" DataField="Allocated Qty" ReadOnly="true" />
              
                </Columns> 
            </SalesLogix:SlxGridView> 
    </div> 

<%--<div runat="server" id="div1">
        <asp:Image ID="picone" ImageUrl="~/SmartParts/Test/Handler.ashx?imgid=1" runat="server" />
    </div>--%>


<div runat="server" id="div3">
        <asp:Image ID="Image1"  runat="server" Width="20" Height="20" />
    </div>

 <div runat="server" id="div2">
        <br/>Select Image<br/>
        <asp:FileUpload runat="server" ID="flImage" />
<asp:Button runat="server" ValidationGroup="Details" ID="btnSubmit" 
Text="Upload" OnClick="btnSubmit_Click" />
                        <br />
        <asp:Label ID="lblRes" runat="server" Text=" "></asp:Label>

    </div>
    
<script type="text/javascript" language="javascript">
    dojo.require("Sage.UI.Dialogs");

    function addUser_OkClick(divStep1Id, divStep2Id, message) {
        var opts = { title: "Sage SalesLogix", pct: 10, maximum: 100, width: 325, height: 125, showmessage: true, message: message, canclose: false, indeterminate: true };
        Sage.UI.Dialogs.showProgressBar(opts);
    }

    function hideMask() {
        Sage.UI.Dialogs.closeProgressBar();
    }
    Sys.WebForms.PageRequestManager.getInstance().add_endRequest(hideMask);
</script>