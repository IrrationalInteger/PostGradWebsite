<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminhomepage.aspx.cs" Inherits="Milestone3.Adminhomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 387px;
            width: 1030px;
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
            height: 28px;
        }
        .auto-style11 {
            position: absolute;
            top: 250px;
            left: 501px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 249px;
            left: 713px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 248px;
            left: 919px;
            z-index: 1;
            width: 113px;
        }
        .auto-style14 {
            width: 124px;
            height: 60px;
            position: absolute;
            top: 261px;
            left: 255px;
            z-index: 1;
        }
        .auto-style15 {
            width: 124px;
            height: 60px;
            position: absolute;
            top: 252px;
            left: -20px;
            z-index: 1;
        }
        .auto-style16 {
            width: 190px;
            height: 60px;
            position: absolute;
            top: 263px;
            left: 457px;
            z-index: 1;
        }
        .auto-style17 {
            width: 167px;
            height: 60px;
            position: absolute;
            top: 260px;
            left: 674px;
            z-index: 1;
        }
        .auto-style18 {
            width: 199px;
            height: 60px;
            position: absolute;
            top: 261px;
            left: 868px;
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
        .auto-style22 {
            position: absolute;
            top: 250px;
            left: 297px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 556px ;background-color:#d8f4f5">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style12" ForeColor="Black" Font-Underline="false" Onclick="payment">Payments ▼</asp:LinkButton>
            


            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style22" OnClick="supervisor" ForeColor="Black" Font-Underline="false">Supervisors ▼</asp:LinkButton>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />
            

            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" Onclick="option"  />
            


            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style11" ForeColor="Black" OnClick="Theses" Font-Underline="false">Theses ▼</asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="auto-style13" ForeColor="Black"  OnClick="Installments" Font-Underline="false">Installments ▼</asp:LinkButton>


            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />
            

        </div>
        <asp:BulletedList ID="sup" runat="server" BorderStyle="None" CssClass="auto-style14"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle" Onclick="supervisors">
            <asp:ListItem Value="AllSupervisors">list all supervisors</asp:ListItem>
        </asp:BulletedList>
        <asp:BulletedList ID="thesis" runat="server" BorderStyle="None" CssClass="auto-style16"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle" Onclick="Theses">
            <asp:ListItem Value="AllTheses">List all Theses</asp:ListItem>
            <asp:ListItem Value="Update thesis extension">Update thesis extension</asp:ListItem>
        </asp:BulletedList>
        <asp:BulletedList ID="payments" runat="server" BorderStyle="None" CssClass="auto-style17"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle" Onclick="payment">
            <asp:ListItem Value="IssuePayment">Issue a thesis payment</asp:ListItem>
        </asp:BulletedList>
        <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle"  Onclick="Options">
            <asp:ListItem Value="Adminhomepage">Home</asp:ListItem>
            <asp:ListItem Value="Login">Logout</asp:ListItem>
        </asp:BulletedList>
        <asp:BulletedList ID="Instal" runat="server" BorderStyle="None" CssClass="auto-style18"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle" Onclick="installment">
            <asp:ListItem  Value="display">Issue installments</asp:ListItem>


        </asp:BulletedList>
    </form>
</body>
</html>
