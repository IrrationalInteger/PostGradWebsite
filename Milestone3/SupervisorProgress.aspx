<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorProgress.aspx.cs" Inherits="Milestone3.SupervisorProgress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 560px;
            width: 1866px;
            margin-left: 4px;
          
        }
        .auto-style2 {
            position: absolute;
            top: 18px;
            left: 15px;
            z-index: 1;
            width: 289px;
            height: 185px;
            mix-blend-mode: multiply;
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
            z-index: 1;
            width: 447px;
            mix-blend-mode: multiply;
        }
    </style>
</head>
<body style="height: 556px; background-color:#d8f4f5">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg"  />
            

            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" Onclick="option"  />
            


            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg"  />
            

            

            <div style="z-index: 1; left: 14px; top: 15px; position: absolute; height: 19px; width: 1030px">
            </div>
            
            <asp:Table ID="Table1" runat="server" BackColor="White" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" EnableTheming="True" GridLines="Both" style="z-index: 1; left: 25px; top: 329px; position: absolute; height: 71px; width: 1080px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Overline="False" Font-Size="Larger" Font-Strikeout="False" HorizontalAlign="Center" VerticalAlign="Middle">Student Name</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" HorizontalAlign="Center">Thesis Title</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" HorizontalAlign="Center">Report Number</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger"> Date</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger">Evaluation</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger">State</asp:TableCell>
                    <asp:TableCell runat="server" BorderColor="#1CE36B" BorderStyle="Ridge" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

           

        </div>
        <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle"  Onclick="logout">
            <asp:ListItem Value="SupervisorHomePage.aspx">Home</asp:ListItem>
            <asp:ListItem Value="Login.aspx">Logout</asp:ListItem>
        </asp:BulletedList>
    </form>
</body>
</html>

