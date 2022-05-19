<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Issuethesispayment.aspx.cs" Inherits="Milestone3.Issuethesispayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 657px;
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
            top: 30px;
            left: 128px;
            z-index: 1;
            width: 345px;
            height: 36px;
        }
        .auto-style23 {
            position: absolute;
            top: 196px;
            left: 153px;
            z-index: 1;
            width: 142px;
        }
        .auto-style24 {
            position: absolute;
            top: 84px;
            left: 153px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 81px;
            left: 345px;
            z-index: 1;
            width: 199px;
            height: 22px;
           

  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
        }
        .auto-style26 {
            position: absolute;
            top: 119px;
            left: 153px;
            z-index: 1;
        }
        .auto-style27 {
            position: absolute;
            top: 120px;
            left: 345px;
            z-index: 1;
            width: 192px;
        }
        .auto-style28 {
            position: absolute;
            top: 159px;
            left: 153px;
            z-index: 1;
        }
        .auto-style29 {
            position: absolute;
            top: 156px;
            left: 345px;
            z-index: 1;
            width: 192px;
        }
        .auto-style30 {
            position: absolute;
            top: 193px;
            left: 345px;
            z-index: 1;
            width: 192px;
        }
                
        .auto-style32 {
            width: 638px;
            height: 286px;
            position: absolute;
            top: 220px;
            left: 292px;
            z-index: 1;
             border-radius: 25px;
box-shadow: 5px 10px;
           
        }
        .auto-style33 {
            position: absolute;
            top: 231px;
            left: 308px;
            z-index: 1;
            width: 101px;
            height: 44px;
        }
    </style>
</head>
<body style="height: 689px; background-color: #d8f4f5">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />


            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" OnClick="option" />
            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />

            <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15" DisplayMode="LinkButton" Visible="False" BulletStyle="Circle" OnClick="Options">
                <asp:ListItem Value="Adminhomepage">Home</asp:ListItem>
                <asp:ListItem Value="Login">Logout</asp:ListItem>
            </asp:BulletedList>



            <div class="auto-style32" style="background-color:white">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Font-Bold="True" Font-Size="X-Large" Text="Issue a thesis payment :"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style24" Text="Thesis serial number :"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style26" Text="Amount :"></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style28" Text="Number of installments :"></asp:Label>
                <asp:TextBox ID="noinstallments" runat="server" CssClass="auto-style29"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" CssClass="auto-style23" Text="Fund percentage :"></asp:Label>
                <asp:TextBox ID="Fundpercentage" runat="server" CssClass="auto-style30"></asp:TextBox>
                <asp:DropDownList ID="Theses" runat="server" CssClass="auto-style25">
                </asp:DropDownList>

                <asp:TextBox ID="amount" runat="server" CssClass="auto-style27"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style33" ImageUrl="~/button_issue (1).jpg" OnClick="issue" />
            </div>

        </div>
    </form>
</body>
</html>
