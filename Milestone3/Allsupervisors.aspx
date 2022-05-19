<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Allsupervisors.aspx.cs" Inherits="Milestone3.Allsupervisors" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
       .auto-style1 {
            height: 576px;
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
        }
.auto-style21 {
            position: absolute;
            top: 60px;
            left: 354px;
            z-index: 1;
            width: 447px;
        }
.auto-style9 {
            position: absolute;
            top: 242px;
            left: 21px;
            z-index: 1;
            width: 30px;
            height: 28px;
        }
.auto-style15 {
            width: 124px;
            height: 60px;
            position: absolute;
            top: 252px;
            left: -20px;
            z-index: 1;
        }

        .auto-style22 {
            width: 992px;
            height: 167px;
            position: absolute;
            top: 307px;
            left: 206px;
            z-index: 1;
        }

        .auto-style23 {
            position: absolute;
            top: 236px;
            left: 207px;
            z-index: 1;
            width: 245px;
            height: 48px;
        }

    </style>
</head>
<body style="height: 486px; background-color: #d8f4f5">
    <form id="form1" runat="server">
        <div class="auto-style1" >
           <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />


            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" OnClick="option" />
            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />

            <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15" DisplayMode="LinkButton" Visible="False" BulletStyle="Circle" OnClick="Options">
                <asp:ListItem Value="Adminhomepage">Home</asp:ListItem>
                <asp:ListItem Value="Login">Logout</asp:ListItem>
            </asp:BulletedList>
            <asp:GridView ID="Sups" runat="server" CssClass="auto-style22" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style23" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Supervisors List :"></asp:Label>
        </div>
    </form>
</body>
</html>
