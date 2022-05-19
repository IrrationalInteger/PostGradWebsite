<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addpub.aspx.cs" Inherits="Milestone3.addpub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 451px;
        }
        .auto-style2 {
            position: absolute;
            top: 102px;
            left: 204px;
            z-index: 1;
            bottom: 291px;
        }
        .auto-style3 {
            position: absolute;
            top: 185px;
            left: 704px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 124px;
            left: 699px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 97px;
            left: 367px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 170px;
            left: 371px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 228px;
            left: 372px;
            z-index: 1;
            height: 27px;
        }
        .auto-style8 {
            position: absolute;
            top: 169px;
            left: 205px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 229px;
            left: 209px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 275px;
            left: 208px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 277px;
            left: 374px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button8" runat="server"  style="z-index: 1" Text="Log out" OnClick="logOut" />
            <asp:Button ID="Button9" runat="server"  style="z-index: 1" Text="Home Page" OnClick="goHome" />
        <div class="auto-style1">
            <asp:Label ID="Tiltle" runat="server" CssClass="auto-style2" Text="Title :"></asp:Label>
            <asp:Button ID="addpub1" runat="server" CssClass="auto-style3" onClick="Addpub" Text="  Add  " />
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="auto-style4" Text="Accepted" />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style5" ></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style6" TextMode="Date"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style7"></asp:TextBox>
            <asp:Label ID="date" runat="server" CssClass="auto-style8" Text="Date of Publication :"></asp:Label>
            <asp:Label ID="host" runat="server" CssClass="auto-style9" Text="Host :"></asp:Label>
            <asp:Label ID="Label4" runat="server" CssClass="auto-style10" Text="Place :"></asp:Label>
            <asp:TextBox ID="Place" runat="server" CssClass="auto-style11"></asp:TextBox>
        </div>
    </form>
</body>
</html>
