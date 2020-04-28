<%@ Page Title="" Language="C#" MasterPageFile="~/SchMaster.Master" AutoEventWireup="true" CodeBehind="testselection.aspx.cs" Inherits="SchoolApp.testselection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
            color: #FF3300;
            font-size: x-large;
        }
        .auto-style2 {
            color: #333300;
            font-size: 50pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <table align="center">
        <tr>
            <td class="auto-style2"><strong>ONLINE EXAM</strong></td>
        </tr>
        <tr>
            <td class="auto-style1"><strong>Select a test</strong></td>
        </tr>
        <tr>
            <td>
        <asp:DropDownList ID="testlist" runat="server" Height="91px" Width="449px"
                DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype"></asp:DropDownList>
                </td></tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:UserRegistrationDBConnectionString %>"
                    SelectCommand="SELECT DISTINCT [settype] FROM [QuestionMaster]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Submit" runat="server" Text="Submit" Height="65px" OnClick="Submit_Click" style="text-align: center; color: #CC3300; background-color: #CC99FF" Width="454px" /></td>
        </tr>
    </table>
        
            
</asp:Content>
