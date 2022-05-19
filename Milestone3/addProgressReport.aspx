<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addProgressReport.aspx.cs" Inherits="Milestone3.addProgressReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 107px;
            left: 470px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 102px;
            left: 244px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 173px;
            left: 225px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: -226px;
            left: 653px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 230px;
            left: 466px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 228px;
            left: 249px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 172px;
            left: 471px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 295px;
            left: 469px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 560px">
    <form id="form1" runat="server">
        <asp:Button ID="Button8" runat="server" CssClass="auto-style9" style="z-index: 1" Text="Log out" OnClick="logOut" />
            <asp:Button ID="Button9" runat="server" CssClass="auto-style9" style="z-index: 1" Text="Home Page" OnClick="goHome" />
        <div>
        </div>
        <asp:TextBox ID="SerialNumber" runat="server" CssClass="auto-style1"  TextMode="Number"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Thesis serial number :"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text="Date of the progress report :"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style4"></asp:TextBox>
        <asp:TextBox ID="Number" runat="server" CssClass="auto-style5"  TextMode="Number"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style6" Text="Progress report number :"></asp:Label>
        <asp:TextBox ID="date" runat="server" CssClass="auto-style7"  TextMode="Date"></asp:TextBox>
        <asp:Button ID="add" runat="server" CssClass="auto-style8" OnClick="addProgress" Text="Add" />
    </form>
</body>
</html>
