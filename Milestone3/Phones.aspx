<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phones.aspx.cs" Inherits="Milestone3.Phones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 700px;
            width: 932px;
            margin-left: 206px;
        }
        .auto-style2 {
            position: absolute;
            top: 89px;
            left: 58px;
            z-index: 1;
            width: 156px;
        }
        .auto-style3 {
            position: absolute;
            top: 26px;
            left: 17px;
            z-index: 1;
            width: 199px;
        }
        .auto-style6 {
            position: absolute;
            top: 145px;
            left: 91px;
            z-index: 1;
            width: 198px;
        }
        .auto-style8 {
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
            height: 493px;
        }
        .auto-style23 {
            width: 373px;
            height: 272px;
            position: absolute;
            top: 220px;
            left: 424px;
            z-index: 1;
            border-radius: 25px;
box-shadow: 5px 10px;
        }
        .auto-style24 {
            position: absolute;
            top: 192px;
            left: 150px;
            z-index: 1;
        }
        .auto-style25 {
            position: absolute;
            top: 79px;
            left: 270px;
            z-index: 1;
        }
    </style>
</head>

    <form id="form1" runat="server" class="auto-style22">
            
        <div  class="auto-style1" >
            
            
           
            <div class="auto-style23" style="background-color:white">
                <asp:TextBox ID="phone" runat="server" CssClass="auto-style2" ></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style25" Onclick="add" ImageUrl="~/button_done.jpg" />
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="Enter your phone number(s) :"></asp:Label>
                
                <asp:Label ID="Label2" runat="server" CssClass="auto-style6" Text="Click here when you are done"></asp:Label>


                
                <asp:ImageButton ID="ImageButton2" runat="server" CssClass="auto-style24" Onclick="done" ImageUrl="~/button_done_1.jpg" />


                
            </div>
            
           
        </div>
            

            
        <body style="height: 556px; background-color: #d8f4f5">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style8" ImageUrl="~/logo.jpg" />
            <asp:Image ID="Image2" runat="server" CssClass="auto-style21" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />
            

            
    </form>
</body>
</html>
