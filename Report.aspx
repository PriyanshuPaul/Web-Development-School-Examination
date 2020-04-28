<%@ Page Title="" Language="C#" MasterPageFile="~/SchMaster.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="SchoolApp.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width:1024px;
        }
        .style2
        {
            font-family:"Monotype Corsiva";
            font-size:xx-large;
            font-weight:bold;
            color:#3399FF;
            text-align:center;
            padding:0;
        }
        .style3
        {
            font-size:large;
            font-weight:bold;
            color:#FFFFFF;
            font-family:"Monotype Corsiva";
        }
        .style4
        {
            width 100%;
        }
        .style5
        {
            text-align:center;
        }
        .style20{
            width:167px;
            text-align:center;
        }
        .style21
        {
            width:254px;
            text-align:center;
        }
        .style22
        {
            width:200px;
            text-align:center;
        }
        .style23
        {
            text-align:center;
            width:166px;
            color:#FFFFFF;
            text-decoration:underline
        }

        .auto-style1 {
            text-align: center;
            color: #993300;
            font-weight: bold;
            height: 65px;
            font-size: large;
        }
        .auto-style2 {
            width: 167px;
            text-align: center;
            color: #993300;
            font-weight: bold;
            height: 65px;
            font-size: large;
        }
        .auto-style3 {
            width: 254px;
            text-align: center;
            color: #993300;
            font-weight: bold;
            height: 65px;
            font-size: large;
        }
        .auto-style4 {
            width: 200px;
            text-align: center;
            color: #993300;
            font-weight: bold;
            height: 65px;
            font-size: large;
        }

        .auto-style5 {
            color: #0000CC;
            font-size: xx-large;
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <table align="center" class="style4">
        <tr>
            <td class="auto-style4" >
                <strong><span class="auto-style5">&nbsp;EXAM&nbsp; RESULTS</span>
            </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">User</td>
             <td class="auto-style4">Date</td>
             <td class="auto-style3">Test Name</td>
             <td class="auto-style2">Marks</td>
             <td class="auto-style1">Total Marks</td>
        </tr>
        <%
            while(dr.Read())
            {
                 %>
        <tr>
            <td bgcolor="#FFFFCC" class="style22">
                <%=dr.GetValue(0) %></td>
             <td bgcolor="#FFFFCC" class="style22">
                <%=dr.GetValue(1) %></td>
             <td bgcolor="#FFFFCC" class="style21">
                <%=dr.GetValue(2) %></td>
             <td bgcolor="#FFFFCC" class="style20">
                <%=dr.GetValue(3) %></td>
             <td bgcolor="#FFFFCC" class="style5">
                <%=dr.GetValue(4) %></td>
        </tr>
        <%
        }
            con.Close();%>
        </table>
    
</asp:Content>
