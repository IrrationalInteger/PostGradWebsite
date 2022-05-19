<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Issueinstallments.aspx.cs" Inherits="Milestone3.Issueinstallments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 705px;
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
            position: absolute;
            top: 40px;
            left: 186px;
            z-index: 1;
            width: 359px;
        }
        .auto-style23 {
            position: absolute;
            top: 136px;
            left: 208px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 100px;
            left: 208px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 100px;
            left: 377px;
            z-index: 1;
            width: 174px;
            height: 22px;
              border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
        }
        .auto-style26 {
            position: absolute;
            top: 141px;
            left: 377px;
             width: 156px;
            height: 22px;
            z-index: 1;
        }
        .auto-style28 {
            width: 741px;
            height: 309px;
            position: absolute;
            top: 271px;
            left: 271px;
            z-index: 1;
            border-radius: 25px;
box-shadow: 5px 10px;
        }
        .auto-style29 {
            position: absolute;
            top: 206px;
            left: 292px;
            z-index: 1;
            
        }
    </style>
</head>
<body style="height: 985px; background-color: #d8f4f5">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />


            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" OnClick="option" />

            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />

            <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15" DisplayMode="LinkButton" Visible="False" BulletStyle="Circle" OnClick="Options">
                <asp:ListItem Value="Adminhomepage">Home</asp:ListItem>
                <asp:ListItem Value="Login">Logout</asp:ListItem>
            </asp:BulletedList>

            

            <div class="auto-style28" style="background-color:white">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style22" Font-Bold="True" Font-Size="X-Large" Text="Issue installments for a payment :"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style24" Text="Payment number  :"></asp:Label>
                <asp:DropDownList ID="Payments" runat="server" CssClass="auto-style25">
                </asp:DropDownList>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style23" Text="Start date :"></asp:Label>

                <asp:TextBox ID="Date" runat="server" CssClass="auto-style26" TextMode="Date"></asp:TextBox>

                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style29" ImageUrl="~/button_issue (1).jpg" OnClick="issue" />
            </div>

        </div>
    </form>
</body>
</html>
