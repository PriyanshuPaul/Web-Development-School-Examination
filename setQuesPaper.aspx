<%@ Page Title="" Language="C#" MasterPageFile="~/SchMaster.Master" AutoEventWireup="true" CodeBehind="setQuesPaper.aspx.cs" Inherits="SchoolApp.setQuesPaper" %>

<asp:Content ID="Content3" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Set Ques Paper</title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            color: #003399;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <table align="center" class="style1">
        <tr>
            <td style="text-align: center" class="auto-style1">QUESTION PAPER</td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DropDownList ID="testlist" runat="server" Height="22px" Width="150px" AutoPostBack="True"
                    DataSourceID="SqlDataSource1" DataTextField="settype" DataValueField="settype">
                </asp:DropDownList>
            </td>
            <td style="text-align: center">
                <asp:TextBox ID="testname" runat="server" Visible="false"></asp:TextBox>
                <asp:Button ID="ntest" runat="server" Text="New Test" Width="88px" OnClick="ntest_Click" />
                <asp:Label ID="msg1" runat="server" ForeColor="Blue"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT DISTINCT [settype] FROM [UserRegistrationDB].[dbo].[QuestionMaster] ORDER BY [settype]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="question" runat="server" Height="50px" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:Label ID="msg2" runat="server" ForeColor="Blue"></asp:Label>
            </td>

        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="opt1" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="true"
                    GroupName="opt" />
                <asp:Label ID="msg3" runat="server" ForeColor="Blue"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="opt2" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:RadioButton ID="RadioButton2" runat="server" Checked="true"
                    GroupName="opt" />
                <asp:Label ID="msg4" runat="server" ForeColor="Blue"></asp:Label>

            </td>
        </tr>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="opt3" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:RadioButton ID="RadioButton3" runat="server" Checked="true"
                    GroupName="opt" />
                <asp:Label ID="msg5" runat="server" ForeColor="Blue"></asp:Label>

            </td>
        </tr>
        </tr>
        <tr>
            <td>&nbsp;
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="opt4" runat="server" Width="600px" Font-Bold="true"></asp:TextBox>
                <asp:RadioButton ID="RadioButton4" runat="server" Checked="true"
                    GroupName="opt" />
                <asp:Label ID="msg6" runat="server" ForeColor="Blue"></asp:Label>

            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="msg7" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <table align="center" class="style4">
                    <tr>
                        <td class="style16">
                            <asp:Button ID="submit" runat="server" Font-Bold="true" Text="Add Question" OnClick="submit_Click" />
                        </td>
                        <td>
                            <asp:Button ID="paperview" runat="server" Font-Bold="true" Text="View Paper" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
