<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Link.aspx.cs" Inherits="Milestone3.Link" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 127px;
            left: 454px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 130px;
            left: 261px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 200px;
            left: 452px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            left: 258px;
            z-index: 1;
            top: 201px;
        }
        .auto-style5 {
            position: absolute;
            top: 155px;
            left: 802px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 638px">
    <form id="form1" runat="server">
         <asp:Button ID="Button8" runat="server"  style="z-index: 1" Text="Log out" OnClick="logOut" />
            <asp:Button ID="Button9" runat="server"  style="z-index: 1" Text="Home Page" OnClick="goHome" />
        <div>
        </div>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" TextMode="Number" ></asp:TextBox>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Publication ID :"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" TextMode="Number"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Thesis serial number :"></asp:Label>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" onclick="link" Text=" Link " style="height: 29px" />
    </form>
</body>
</html>
