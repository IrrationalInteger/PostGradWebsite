﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonStudentProfile.aspx.cs" Inherits="Milestone3.NonStudentProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 232px;
            height: 152px;
            position: absolute;
            top: 135px;
            left: 545px;
            z-index: 1;
        }
        .auto-style2 {
            height: 918px;
        }
        .auto-style3 {
            position: absolute;
            top: 48px;
            left: 62px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style2">
         <asp:Button ID="Button8" runat="server"  style="z-index: 1" Text="Log out" OnClick="logOut" />
            <asp:Button ID="Button9" runat="server"  style="z-index: 1" Text="Home Page" OnClick="goHome" />
        <div>
        
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">

                <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Left" BackColor="#CCCCCC" ForeColor="Black"></PagerStyle>

                <RowStyle BackColor="White"></RowStyle>

                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
            </asp:GridView>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Your profile :"></asp:Label>
 </div>    </form>
</body>
</html>
