<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorStudents.aspx.cs" Inherits="Milestone3.SupervisorStudents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 304px;
            width: 1030px;
            margin-left: 4px;
          
        }
        .auto-style2 {
            position: absolute;
            top: 29px;
            left: 21px;
            z-index: 1;
            width: 289px;
            mix-blend-mode: multiply;
            height: 185px;
        }
        .auto-style9 {
            position: absolute;
            top: 242px;
            left: 21px;
            z-index: 1;
            width: 30px;
            height: 30px;
        }
        .auto-style15 {
            width: 124px;
            height: 60px;
            position: absolute;
            top: 252px;
            left: -20px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 60px;
            left: 354px;
            mix-blend-mode: multiply;
            z-index: 1;
            width: 447px;
        }
    </style>
</head>
<body style="height: 1533px; background-color:#d8f4f5">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />
            

            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" Onclick="option"  />
            


            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />
            

            <a href="SupervisorStudents.aspx"></a></div>
        <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle"  Onclick="logout">
            <asp:ListItem Value="SupervisorHomePage.aspx">Home</asp:ListItem>
            <asp:ListItem Value="Login.aspx">Logout</asp:ListItem>
        </asp:BulletedList>
        <div id="div2" style="z-index: 1; left: 10px; top: 370px; position: absolute; height: 1177px; width: 1393px" runat="server">
            <asp:Table ID="Table1" runat="server" BackColor="White" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" EnableTheming="True" GridLines="Both" style="z-index: 1; left: 0px; top: 0px; position: absolute; height: 71px; width: 1080px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" HorizontalAlign="Center" VerticalAlign="Middle">Name</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" HorizontalAlign="Center">Thesis Title</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" HorizontalAlign="Center">Years Spent</asp:TableCell>
                    <asp:TableCell runat="server"> </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
    </div>
    </form>
    
</body>
</html>
