<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NonGUCianStudent.aspx.cs" Inherits="Milestone3.NonGUCianStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 903px;
        }
        .auto-style2 {
            position: absolute;
            top: 140px;
            left: 569px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 185px;
            left: 569px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 232px;
            left: 569px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 278px;
            left: 566px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 326px;
            left: 567px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 100px;
            left: 570px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 59px;
            left: 567px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <asp:Button ID="Button8" runat="server"  style="z-index: 1" Text="Log out" OnClick="logOut" />
            <asp:Button ID="Button9" runat="server"  style="z-index: 1" Text="Home Page" OnClick="goHome" />
        <div class="auto-style1">
            <asp:Button ID="Button6" runat="server" CssClass="auto-style7" OnClick="ViewCourses" Text="           My Courses          " />
            <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="ViewTheses" Text="            My Theses           " />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style3" OnClick="Link" Text="Link Publication to my Thesis" />
            <asp:Button ID="Button3" runat="server" CssClass="auto-style4" OnClick="addpub" Text="        Add Publication        " />
            <asp:Button ID="Button4" runat="server" CssClass="auto-style5" OnClick="fillProgressReport" Text="      Fill progress report      " />
            <asp:Button ID="Button5" runat="server" CssClass="auto-style6" OnClick="addProgressReport" Text="     Add progress report     " />
            <asp:Button ID="Button7" runat="server" CssClass="auto-style8" OnClick="viewProfile" Text="             My profile            " />
        </div>
    </form>
</body>
</html>
