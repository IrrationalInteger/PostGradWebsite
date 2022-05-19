<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorRegister.aspx.cs" Inherits="Milestone3.SupervisorRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 911px;
            width: 1187px;
            margin-left: 83px;
            margin-right: 492px;
            margin-top: 52px;
        }
        .auto-style2 {
            position: absolute;
            top: 137px;
            left: 22px;
            z-index: 1;
            width: 154px;
        }
        .auto-style3 {
            position: absolute;
            top: 30px;
            left: 20px;
            z-index: 1;
            width: 154px;
        }
        .auto-style6 {
            position: absolute;
            top: 68px;
            left: 20px;
            z-index: 1;
            width: 154px;
            right: 173px;
        }
        .auto-style7 {
            position: absolute;
            top: 102px;
            left: 13px;
            z-index: 1;
            width: 154px;
            right: 230px;
        }
        .auto-style9 {
            position: absolute;
            top: 65px;
            left: 203px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 132px;
            left: 202px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 205px;
            left: 55px;
            z-index: 1;
            width: 70px;
            right: 222px;
        }
        .auto-style16 {
            position: absolute;
            top: 258px;
            left: 91px;
            z-index: 1;
            width: 187px;
        }
        .auto-style19 {
            position: absolute;
            top: 171px;
            left: 54px;
            z-index: 1;
            width: 140px;
            height: 18px;
        }
        .auto-style21 {
            position: absolute;
            top: 26px;
            left: 202px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 170px;
            left: 202px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 204px;
            left: 202px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 18px;
            left: 15px;
            z-index: 1;
            width: 289px;
            height: 185px;
            mix-blend-mode: multiply;
        }
.auto-style25 {
            position: absolute;
            top: 60px;
            left: 354px;
            z-index: 1;
            width: 447px;
            mix-blend-mode: multiply;
        }
        .auto-style26 {
            width: 397px;
            height: 356px;
            position: absolute;
            top: 234px;
            left: 444px;
            z-index: 1;
            border-radius: 25px;
box-shadow: 5px 10px;
        }
        .auto-style11 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            position: absolute;
            top: 102px;
            left: 203px;
            z-index: 1;
            width: 181px;
            height: 22px;
           
            border-radius: 4px;
            background-color: #f1f1f1;
        }
        .auto-style27 {
            position: absolute;
            top: 300px;
            left: 134px;
            z-index: 1;
        }
    </style>
</head>

<form id="form1" runat="server">
    <body style="height: 556px; background-color: #d8f4f5">
        <asp:Image ID="Image1" runat="server" CssClass="auto-style24" ImageUrl="~/logo.jpg" />


       
        <asp:Image ID="Image2" runat="server" CssClass="auto-style25" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />

        <div class="auto-style1"  align="center">
            
            <div class="auto-style26" style="background-color:white">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="First Name  :"></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Last Name  :"></asp:Label>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style2" Text="Password * :"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Faculty *  :"></asp:Label>
                <asp:TextBox ID="last" runat="server" CssClass="auto-style9"></asp:TextBox>
                <asp:TextBox ID="password" runat="server" CssClass="auto-style10" TextMode="Password"></asp:TextBox>
                <asp:DropDownList ID="Faculty" runat="server" CssClass="auto-style11">
                    <asp:ListItem>Choose your faculty</asp:ListItem>
                <asp:ListItem>Civil</asp:ListItem>
                <asp:ListItem>Applied Arts</asp:ListItem>
                <asp:ListItem>MET</asp:ListItem>
                <asp:ListItem>IET</asp:ListItem>
                <asp:ListItem>EMS</asp:ListItem>
                <asp:ListItem>Pharmacy</asp:ListItem>
                <asp:ListItem>Law</asp:ListItem>
                <asp:ListItem>Architecture</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text="E-mail * :"></asp:Label>
                <asp:Label ID="Label8" runat="server" CssClass="auto-style16" Text="*.Field is mandatory"></asp:Label>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style19" Text="Confirm Password * :"></asp:Label>
                <asp:TextBox ID="first" runat="server" CssClass="auto-style21"></asp:TextBox>
                <asp:TextBox ID="confirm" runat="server" CssClass="auto-style22" TextMode="Password"></asp:TextBox>
                
                <asp:TextBox ID="email" runat="server" CssClass="auto-style23"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style27" OnClick="SupervisorRegistration" ImageUrl="~/button_register_1.png" />
            </div>
        </div>
    </form>
</body>
</html>

