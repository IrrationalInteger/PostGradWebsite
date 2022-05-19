<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MileStone_3.Login" %>

<!DOCTYPE html>
<script runat="server">

    protected void password_TextChanged(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 804px;
        }
        .auto-style2 {
            position: absolute;
            top: 79px;
            left: 39px;
            z-index: 1;
            width: 75px;
            height: 20px;
        }
        .auto-style3 {
            position: absolute;
            top: 18px;
            left: 35px;
            z-index: 1;
            width: 175px;
            height: 21px;
        }
        .auto-style5 {
            position: absolute;
            top: 107px;
            left: 42px;
            z-index: 1;
            height: 21px;
            right: 102px;
        }
        .auto-style8 {
            position: absolute;
            top: 46px;
            left: 44px;
            z-index: 1;
            height: 21px;
        }
        .auto-style22 {
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
        .auto-style23 {
            width: 272px;
            height: 271px;
            position: absolute;
            top: 244px;
            left: 478px;
            z-index: 1;
            border-radius: 25px;
            box-shadow: 5px 10px;
        }
        .auto-style24 {
            position: absolute;
            top: 437px;
            left: 520px;
            z-index: 1;
            width: 197px;
            height: 26px;
        }
        .auto-style25 {
            position: absolute;
            top: 391px;
            left: 566px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 556px; background-color: #d8f4f5">
    
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style22" ImageUrl="~/logo.jpg" />


            
            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />
           
            <div class="auto-style23" style="background-color:white">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Password :"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text="E-Mail :"></asp:Label>
                <asp:TextBox ID="password" runat="server" CssClass="auto-style5" OnTextChanged="password_TextChanged" TextMode="Password"></asp:TextBox>
                
                
                <asp:TextBox ID="email" runat="server" CssClass="auto-style8" OnTextChanged="userName_TextChanged"></asp:TextBox>
            </div>
            
            <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style25" ImageUrl="~/button_log-in.png" OnClick="logIn" />
                        <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style24" ImageUrl="~/button_i-dont-have-an-account_1.png" Onclick="noaccount"/>

        </div>
    </form>
</body>
</html>

