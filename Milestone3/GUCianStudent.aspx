<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GUCianStudent.aspx.cs" Inherits="Milestone3.GUCianStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 613px;
        }
        .auto-style2 {
            position: absolute;
            top: 118px;
            left: 565px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 167px;
            left: 565px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 217px;
            left: 563px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 265px;
            left: 561px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 313px;
            left: 562px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 362px;
            left: 562px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 600px">
    <form id="form1" runat="server">
         <asp:Button ID="Button8" runat="server"  style="z-index: 1" Text="Log out" OnClick="logOut" />
            <asp:Button ID="Button9" runat="server"  style="z-index: 1" Text="Home Page" OnClick="goHome" />
        <div class="auto-style1">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="ViewTheses" Text="            My Theses           " /> 
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" OnClick="Link" Text="Link Publication to my Thesis" /> 
            <asp:Button ID="Button3" runat="server" CssClass="auto-style4" OnClick="addpub" Text="        Add Publication        " /> 
            <asp:Button ID="Button4" runat="server" CssClass="auto-style5" OnClick="fillProgressReport" Text="      Fill progress report      " /> 
            <asp:Button ID="Button5" runat="server" CssClass="auto-style6" OnClick="addProgressReport" Text="     Add progress report     " /> 
            <asp:Button ID="Button6" runat="server" CssClass="auto-style7" OnClick="viewProfile" Text="             My profile            " /> 
        </div>
    </form>
</body>
</html>
