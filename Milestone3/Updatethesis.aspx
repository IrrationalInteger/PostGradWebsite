<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Updatethesis.aspx.cs" Inherits="Milestone3.Updatethesis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 569px;
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
            top: 16px;
            left: 130px;
            z-index: 1;
            width: 479px;
        }
        .auto-style25 {
            position: absolute;
            top: 76px;
            left: 345px;
            z-index: 1;
            width: 208px;
            height: 22px;
         
 
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1
        }
        .auto-style24 {
            position: absolute;
            top: 74px;
            left: 151px;
            z-index: 1;
        }

        .auto-style27 {
            width: 680px;
            height: 181px;
            position: absolute;
            top: 241px;
            left: 273px;
            z-index: 1;
            border-radius: 25px;
box-shadow: 5px 10px;
        }

        .auto-style28 {
            position: absolute;
            top: 110px;
            left: 280px;
            z-index: 1;
            height: 48px;
        }

    </style>
</head>
<body style="height: 612px; background-color: #d8f4f5">
    <form id="form1" runat="server">

        <div class="auto-style1">
            <div class="auto-style27" style="background-color:white">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style22" Font-Bold="True" Font-Size="X-Large" Text="Update the number of thesis extension :"></asp:Label>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style24" Text="Thesis serial number :"></asp:Label>
                <asp:DropDownList ID="Theses" runat="server" CssClass="auto-style25">
                </asp:DropDownList>
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style28" ImageUrl="~/button_update.jpg" OnClick="update" />
            </div>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />


            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" OnClick="option" />
            
            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />

            <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15" DisplayMode="LinkButton" Visible="False" BulletStyle="Circle" OnClick="Options">
                <asp:ListItem Value="Adminhomepage">Home</asp:ListItem>
                <asp:ListItem Value="Login">Logout</asp:ListItem>
            </asp:BulletedList>
            
           
        </div>
        
    </form>
</body>
</html>
