<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="SchoolApp.panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 54px;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <%--  <div>
            <table>
                <tr>
                    <th>Q&nbsp;
                    <asp:Literal ID="ltNo" runat="server" Text=""></asp:Literal>&nbsp;:&nbsp;
                        <asp:Literal ID="ltQuestion" runat="server" Text=""></asp:Literal>
                    </th>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="rbAns" runat="server">
                        </asp:RadioButtonList></td>
                </tr>
            </table>
        </div>--%>


        <table>
            <tr>
                <td>
                    <asp:Label ID="time" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <asp:Label ID="msg" runat="server" Font-Bold="true" Font-Size="Larger" ForeColor="#00C00"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <table align="center" bgcolor="#3399FF" class="style5">
                        <tr>
                            <td class="style6">&nbsp;
                            </td>
                            <td bgcolor="#FFFCC" class="style7">
                                <%con.Open();
                                  rqry = "select * from QuestionMaster where settype='" + testtype + "'order by qid";
                                  rcmd = new System.Data.SqlClient.SqlCommand(rqry, con);
                                  rdr = rcmd.ExecuteReader();
                                  c = 1;
                                  while (rdr.Read())
                                  {
                                      if (c != count)
                                      {
                                          c = c + 1;
                                      }
                                      else if (c == count)
                                      {
                                %><%int q = Convert.ToInt16(rdr.GetValue(0));
                                    qid = q;%>
                                <table align="center" class="style 8">
                                    <tr>
                                        <td>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Q:-<%=count %><%=rdr.GetValue(1) %></td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left:initial" class="auto-style2" >
                                            <asp:RadioButton ID="RadioButton1" runat="server" Checked="true" GroupName="opt" style="text-align: justify" />
                                            <%=rdr.GetValue(3) %>
                                        </td>
                                    </tr>
                                    <tr>
                                         <td style="padding-left:initial" class="auto-style2" >
                                            <asp:RadioButton ID="RadioButton2" runat="server" Checked="true" GroupName="opt" style="text-align: justify" />
                                            <%=rdr.GetValue(4) %>
                                        </td>
                                    </tr>
                                    <tr>
                                         <td style="padding-left:initial" class="auto-style2" >
                                            <asp:RadioButton ID="RadioButton3" runat="server" Checked="true" GroupName="opt" style="text-align: justify" />
                                            <%=rdr.GetValue(5) %>
                                        </td>
                                    </tr>
                                    <tr>
                                         <td style="padding-left:initial" class="auto-style2" >
                                            <asp:RadioButton ID="RadioButton4" runat="server" Checked="true" GroupName="opt" style="text-align: justify" />
                                            <%=rdr.GetValue(6) %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style1">
                                            <table align="center" class="style8">
                                                <tr>
                                                    <td class="style9">
                                                        <asp:Button ID="back" runat="server" Height="43px" Text="back"
                                                            Width="100px" OnClick="back_Click" />

                                                    </td>
                                                    <td class="style10">
                                                        <asp:Button ID="next" runat="server" Height="32px" Text="next" Width="100px" OnClick="next_Click" /></td>
                                                    <td>
                                                        <asp:Button ID="finish" runat="server" Height="33px" Text="Finish"
                                                            Width="100px" OnClick="finish_Click" />
                                                    </td>

                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>
                    </table>

                    <%if (count != n)
                          c = c + 1;
                                      }
                                  } con.Close();%>

                </td>
            </tr>
        </table>
    </form>
</body>
</html>
