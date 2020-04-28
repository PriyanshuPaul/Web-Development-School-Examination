<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="SchoolApp.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: center;
           
        }
        .auto-style3 {
           
        }
        .auto-style4 {
            font-size: xx-large;
        }
        </style>
</head>
<body background="LOGIN PAGE/images/bg-01.jpg">
  
    
    <form id="form1" runat="server">
    <div style="margin-left: 40px" class="auto-style1">
                <h1 style="margin-left: 0px; width: 1551px; height: 44px; color: #FF3300;class="auto-style1" class="auto-style4">Signup</h1>
                <div class="auto-style2">
                    <asp:Label ID="lblmsg" runat="server" style="color: #00FFFF" CssClass="auto-style3"></asp:Label>
                    <br class="auto-style3" />
                    <strong>
    
        <asp:Label ID="txUsrnm" runat="server" Text="Label" CssClass="auto-style3">User Name</asp:Label>
</strong>
        <asp:TextBox ID="txtUserName" runat="server" style="margin-left: 125px" Height="26px" Width="289px"></asp:TextBox>
    
                    <br class="auto-style3" />
    
                <br class="auto-style3" />
                    <strong>
        <asp:Label ID="txtFrstNm" runat="server" Text="Label" CssClass="auto-style3">First Name</asp:Label>
        
                </strong>
        
        <asp:TextBox ID="txtFirstName" runat="server" style="margin-left: 123px" Height="26px" Width="289px"></asp:TextBox>
    
                    <strong>
                    <br class="auto-style3" />
                    <br class="auto-style3" />
        <asp:Label ID="txtlnm" runat="server" Text="Label" CssClass="auto-style3">Last Name</asp:Label>
                    <span class="auto-style3">&nbsp;&nbsp;</span></strong><asp:TextBox ID="txtLastName" runat="server" style="margin-left: 118px" Height="26px" Width="289px"></asp:TextBox>
        
                    <br class="auto-style3" />
        
                    <br class="auto-style3" />
        <asp:Label ID="txtem" runat="server" Text="Label" style="font-weight: 700" CssClass="auto-style3">Email</asp:Label>
    
                
    
        <asp:TextBox ID="txtEmail" runat="server" style="margin-left: 159px" Height="26px" Width="289px" ></asp:TextBox>
    
                    <br class="auto-style3" />
    
        <br class="auto-style3" />
    
                    <asp:Label ID="txtcon" runat="server" Text="Label" style="font-weight: 700" CssClass="auto-style3">Contact</asp:Label>
       
        <asp:TextBox ID="txtContact" runat="server" style="margin-left: 148px" Height="26px" Width="289px"></asp:TextBox>
    

            
               
    
                    <br class="auto-style3" />
                    <br class="auto-style3" />
    

            
               
    
        <asp:Label ID="txtpass" runat="server" Text="Label" style="font-weight: 700" CssClass="auto-style3">Password</asp:Label>

        <asp:TextBox ID="txtPassword" runat="server" input type="password" style="margin-left: 136px" Height="26px" Width="289px"></asp:TextBox>
    
    
    
    
                    <br class="auto-style3" />
    
    
    
    
                    <br class="auto-style3" />
    
    
    
    
        <asp:Label ID="txtcnfpass" runat="server" Text="Label" style="font-weight: 700" CssClass="auto-style3">Confirm Password</asp:Label>
                    <span class="auto-style3">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        </span>
        <asp:TextBox ID="txtConfirmPassword" runat="server" input type="password" style="margin-left: 47px" Height="26px" Width="289px"></asp:TextBox>
    
    
    
    
                    <br class="auto-style3" />
    
    
    
    
                </div>
    
    
    
    
    </div>
    <p>
        <asp:Button ID="btnSubmit" runat="server" OnClick="Button1_Click" Text="Submit" Height="88px" style="color: #CC3300; margin-left: 761px; background-color: #FFFFCC" Width="156px"/>
        </p>
    </form>
    </bod>
</html>
