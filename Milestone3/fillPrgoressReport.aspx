<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fillPrgoressReport.aspx.cs" Inherits="Milestone3.fillPrgoressReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 299px;
            left: 989px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 131px;
            left: 225px;
            z-index: 1;
            right: 1053px;
        }
        .auto-style3 {
            position: absolute;
            top: 126px;
            left: 435px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 185px;
            left: 227px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 183px;
            left: 434px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 249px;
            left: 430px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 309px;
            left: 428px;
            z-index: 1;
            width: 343px;
            height: 215px;
        }
        .auto-style8 {
            position: absolute;
            top: 256px;
            left: 231px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 404px;
            left: 234px;
            z-index: 1;
        }
        .auto-style10 {
            margin-left: 40px;
        }
    </style>
</head>
<body style="height: 430px">
    <form id="form1" runat="server">
         <asp:Button ID="Button8" runat="server"  style="z-index: 1" Text="Log out" OnClick="logOut" />
            <asp:Button ID="Button9" runat="server"  style="z-index: 1" Text="Home Page" OnClick="goHome" />
        <div>
        </div>
        <asp:Button ID="fill" runat="server" CssClass="auto-style1" OnClick="Fill" Text="  Fill  " />
        <p>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Thesis serial Number :"></asp:Label>
        </p>
        <asp:TextBox ID="Serial" runat="server" CssClass="auto-style3"  TextMode="Number"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Progress report number :"></asp:Label>
        <div class="auto-style10">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style5"  TextMode="Number"></asp:TextBox>
        </div>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style9" Text="Description :"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style6" TextMode="Number"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style7"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style8" Text="State :"></asp:Label>
    </form>
</body>
</html>
