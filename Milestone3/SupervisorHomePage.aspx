<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupervisorHomePage.aspx.cs" Inherits="Milestone3.SupervisorHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 560px;
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
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />
            

            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style9" ImageUrl="~/OIP.jpg" Onclick="option"  />
            


            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg"  />
            

            

            <div style="z-index: 1; left: 14px; top: 15px; position: absolute; height: 19px; width: 1030px">
            </div>
            


            <div style="z-index: 1; left: 84px; top: 321px; position: absolute; height: 248px; width: 293px;border-radius: 25px;
 box-shadow: 5px 10px; background-color:white">
                
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/button_view-my-students.png" style="z-index: 1; left: 17px; top: 16px; position: absolute; height: 65px; width: 259px; " OnClick="viewstudent" />
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/button_view-progress-reports.png" style="z-index: 1; left: 17px; top: 91px; position: absolute; width: 259px; height: 65px" OnClick="viewtheses"/>
            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/button_view-theses-defenses (1).png" style="z-index: 1; left: 17px; top: 166px; position: absolute; width: 259px; height: 65px" OnClick="viewdefense"/>

            </div>
            

        </div>
        <asp:BulletedList ID="options" runat="server" BorderStyle="None" CssClass="auto-style15"  DisplayMode="LinkButton" Visible="False" BulletStyle="Circle"  Onclick="logout">
            <asp:ListItem Value="SupervisorHomePage.aspx">Home</asp:ListItem>
            <asp:ListItem Value="Login.aspx">Logout</asp:ListItem>
        </asp:BulletedList>
    </form>
</body>
</html>
