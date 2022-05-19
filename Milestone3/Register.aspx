<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Milestone3.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style9 {
            position: absolute;
            top: 7px;
            left: 77px;
            z-index: 1;
            width: 312px;
            height: 35px;
            right: 29px;
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
.auto-style21 {
            position: absolute;
            top: 60px;
            left: 354px;
            z-index: 1;
            width: 447px;
            mix-blend-mode: multiply;
        }
        .auto-style22 {
            width: 418px;
            position: absolute;
            top: 330px;
            left: 423px;
            z-index: 1;
            height: 259px;
            border-radius: 25px;
box-shadow: 5px 10px;
        }
        .auto-style23 {
            position: absolute;
            top: 117px;
            left: 114px;
            z-index: 1;
            width: 211px;
            height: 50px;
        }
        .auto-style24 {
            position: absolute;
            top: 191px;
            left: 110px;
            z-index: 1;
            height: 50px;
            width: 218px;
        }
        .auto-style25 {
            position: absolute;
            top: 49px;
            left: 126px;
            z-index: 1;
            right: 105px;
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <body style="height: 684px; background-color: #d8f4f5">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />


            
            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />
            
        </div>
        <div class="auto-style22" style="background-color:white">
            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="Choose your position please : " Font-Size="X-Large"></asp:Label>
            <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style25" ImageUrl="~/button_student.png" OnClick="Student" />
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style23" ImageUrl="~/button_supervisor.png" OnClick="Supervisor" />
            <asp:ImageButton ID="ImageButton3" runat="server" CssClass="auto-style24" ImageUrl="~/button_examiner.png" OnClick="Examiner" />
        </div>
    </form>
        </body>
</html>
