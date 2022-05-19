<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentRegister.aspx.cs" Inherits="Milestone3.StudentRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 131px;
            left: 85px;
            z-index: 1;
            width: 154px;
        }
        .auto-style3 {
            position: absolute;
            top: 16px;
            left: 86px;
            z-index: 1;
            width: 154px;
        }
        .auto-style6 {
            position: absolute;
            top: 50px;
            left: 87px;
            z-index: 1;
            width: 154px;
            right: 363px;
        }
        .auto-style7 {
            position: absolute;
            top: 212px;
            left: 84px;
            z-index: 1;
            width: 154px;
        }
        .auto-style9 {
            position: absolute;
            top: 49px;
            left: 259px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 130px;
            left: 259px;
            z-index: 1;
            
        }
        .auto-style12 {
            position: absolute;
            top: 253px;
            left: 258px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 86px;
            left: 87px;
            z-index: 1;
            width: 70px;
            right: 447px;
        }
        .auto-style15 {
            position: absolute;
            top: 285px;
            left: 184px;
            z-index: 1;
            width: 196px;
        }
        .auto-style16 {
            position: absolute;
            top: 315px;
            left: 202px;
            z-index: 1;
            width: 187px;
        }
        .auto-style19 {
            position: absolute;
            top: 174px;
            left: 83px;
            z-index: 1;
            width: 140px;
            height: 18px;
        }
        .auto-style20 {
            position: absolute;
            top: 255px;
            left: 84px;
            z-index: 1;
            width: 94px;
            height: 16px;
        }
        .auto-style21 {
            position: absolute;
            top: 17px;
            left: 259px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 172px;
            left: 258px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 89px;
            left: 259px;
            z-index: 1;
            right: 217px;
        }
        .auto-style24 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            position: absolute;
            top: 213px;
            left: 259px;
            z-index: 1;
            width: 182px;
            height: 22px;
            width: 30%;
            border-radius: 4px;
            background-color: #f1f1f1;
            
        }
        .auto-style25 {
            position: absolute;
            top: 18px;
            left: 15px;
            z-index: 1;
            width: 289px;
            height: 185px;
            mix-blend-mode: multiply;
        }
.auto-style26 {
            position: absolute;
            top: 60px;
            left: 354px;
            z-index: 1;
            width: 447px;
            mix-blend-mode: multiply;
        }
        .auto-style27 {
            width: 604px;
            height: 432px;
            position: absolute;
            top: 256px;
            left: 345px;
            z-index: 1;
            border-radius: 25px;
            box-shadow: 5px 10px;
        }
        .auto-style28 {
            position: absolute;
            top: 362px;
            left: 208px;
            z-index: 1;
        }
    </style>
</head>

    <form id="form1" runat="server">
        <body style="height: 1082px; background-color: #d8f4f5">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style25" ImageUrl="~/logo.jpg" />


            
            <div class="auto-style27" style="background-color:white">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="First Name  :"></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Last Name  :"></asp:Label>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style2" Text="Password * :"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Faculty * :"></asp:Label>
                <asp:TextBox ID="last" runat="server" CssClass="auto-style9"></asp:TextBox>
                <asp:TextBox ID="password" runat="server" CssClass="auto-style11" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="address" runat="server" CssClass="auto-style12"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text="E-mail * :"></asp:Label>
                <asp:CheckBox ID="gucian" runat="server" CssClass="auto-style15" Text="I am a Gucian student" />
                <asp:Label ID="Label8" runat="server" CssClass="auto-style16" Text="*.Field is mandatory"></asp:Label>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style19" Text="Confirm Password * :"></asp:Label>
                <asp:Label ID="Label10" runat="server" CssClass="auto-style20" Text="Address :"></asp:Label>
                <asp:TextBox ID="first" runat="server" CssClass="auto-style21"></asp:TextBox>
                <asp:TextBox ID="confirm" runat="server" CssClass="auto-style22" TextMode="Password"></asp:TextBox>
                <asp:TextBox ID="email" runat="server" CssClass="auto-style23"></asp:TextBox>
                <asp:DropDownList ID="Faculty" runat="server" CssClass="auto-style24">
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
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style28" OnClick="StudentRegistration" ImageUrl="~/button_register_1.png" />
            </div>


            
            <asp:Image ID="Image2" runat="server" CssClass="auto-style26" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />

            
        </div>
    </form>
</body>
</html>
