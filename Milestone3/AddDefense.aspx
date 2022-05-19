<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDefense.aspx.cs" Inherits="Milestone3.AddDefense" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 646px;
            width: 1162px;
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
        #start {
            width: 223px;
        }
    </style>
</head>
<body style="height: 661px; background-color:#d8f4f5">
    <form id="form2" runat="server">
        <div class="auto-style1">
            
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />
            

            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" Onclick="option"  />
            


            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />
            

           
            <div style="z-index: 1; left: 181px; top: 263px; position: absolute; height: 418px; width: 761px;border-radius: 25px;
box-shadow: 5px 10px; background-color:white">
                 <asp:Label ID="Label1" runat="server" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black" style="z-index: 1; left: 34px; top: 135px; position: absolute" Text="Choose a date for the defense: "></asp:Label>
            
                &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Calibri" Font-Size="Larger" ForeColor="Black" style="z-index: 1; left: 40px; top: 262px; position: absolute" Text="Choose a location for the defense: "></asp:Label>
            <asp:TextBox ID="LocationBox" runat="server" style="z-index: 1; left: 410px; top: 268px; position: absolute; width: 221px"></asp:TextBox>
            
                 <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/button_confirm.png" style="z-index: 1; left: 310px; top: 332px; position: absolute; height: 53px; width: 175px"  OnClick="button"/>

                 <asp:TextBox ID="Calendar1" runat="server" TextMode="Date" style="z-index: 1; left: 409px; top: 139px; position: absolute; width: 221px"></asp:TextBox>

            </div>
            
                               
</div>
        <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle"  Onclick="logout">
            <asp:ListItem Value="SupervisorHomePage.aspx">Home</asp:ListItem>
            <asp:ListItem Value="Login.aspx">Logout</asp:ListItem>
        </asp:BulletedList>

        </form>
</body>
</html>


