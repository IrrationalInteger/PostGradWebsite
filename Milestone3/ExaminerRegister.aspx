<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExaminerRegister.aspx.cs" Inherits="Milestone3.ExaminerRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 139px;
            left: 35px;
            z-index: 1;
            width: 154px;
        }
        .auto-style3 {
            position: absolute;
            top: 19px;
            left: 34px;
            z-index: 1;
            width: 154px;
        }
        .auto-style6 {
            position: absolute;
            top: 59px;
            left: 35px;
            z-index: 1;
            width: 154px;
            right: 236px;
        }
        .auto-style7 {
            position: absolute;
            top: 221px;
            left: 35px;
            z-index: 1;
            width: 153px;
        }
        .auto-style9 {
            position: absolute;
            top: 55px;
            left: 203px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 138px;
            left: 203px;
            z-index: 1;
            }
        .auto-style14 {
            position: absolute;
            top: 99px;
            left: 35px;
            z-index: 1;
            width: 70px;
            right: 320px;
        }
        .auto-style16 {
            position: absolute;
            top: 284px;
            left: 130px;
            z-index: 1;
            width: 187px;
        }
        .auto-style19 {
            position: absolute;
            top: 179px;
            left: 34px;
            z-index: 1;
            width: 140px;
            height: 18px;
        }
        .auto-style21 {
            position: absolute;
            top: 19px;
            left: 203px;
            z-index: 1;
        }
        .auto-style22 {
            position: absolute;
            top: 179px;
            left: 203px;
            z-index: 1;
        }
        .auto-style23 {
            position: absolute;
            top: 94px;
            left: 203px;
            z-index: 1;
        }
         .auto-style24 {
             position: absolute;
             top: 255px;
             left: 154px;
             z-index: 1;
             width: 120px;
             right: 197px;
         }
         .auto-style25 {
             border-style: none;
            border-color: inherit;
            border-width: medium;
            position: absolute;
            top: 223px;
            left: 203px;
            z-index: 1;
            width: 181px;
            height: 22px;
            border-radius: 4px;
            background-color: #f1f1f1;
            
         }
         .auto-style26 {
            position: absolute;
            top: 18px;
            left: 15px;
            z-index: 1;
            width: 289px;
            height: 185px;
            mix-blend-mode: multiply;
        }
.auto-style27 {
            position: absolute;
            top: 60px;
            left: 354px;
            z-index: 1;
            width: 447px;
            mix-blend-mode: multiply;
        }

         .auto-style28 {
             width: 425px;
             height: 370px;
             position: absolute;
             top: 262px;
             left: 371px;
             z-index: 1;
             border-radius: 25px;
             box-shadow: 5px 10px;
         }

         .auto-style29 {
             height: 769px;
         }

         .auto-style30 {
             position: absolute;
             top: 319px;
             left: 150px;
             z-index: 1;
         }

    </style>
</head>

    <form id="form1" runat="server" class="auto-style29">
        <body style="height: 839px; background-color: #d8f4f5">
            <asp:Image ID="Image1" runat="server" CssClass="auto-style26" ImageUrl="~/logo.jpg" />


            
            <div class="auto-style28" style="background-color:white">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="First Name  :"></asp:Label>
                <asp:Label ID="Label4" runat="server" CssClass="auto-style6" Text="Last Name  :"></asp:Label>
                <asp:Label ID="Label6" runat="server" CssClass="auto-style2" Text="Password * :"></asp:Label>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text="Field of work * :"></asp:Label>
                <asp:TextBox ID="last" runat="server" CssClass="auto-style9"></asp:TextBox>
                <asp:TextBox ID="password" runat="server" CssClass="auto-style11" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text="E-mail * :"></asp:Label>
                <asp:Label ID="Label8" runat="server" CssClass="auto-style16" Text="*.Field is mandatory"></asp:Label>
                <asp:Label ID="Label9" runat="server" CssClass="auto-style19" Text="Confirm Password * :"></asp:Label>
                <asp:TextBox ID="first" runat="server" CssClass="auto-style21"></asp:TextBox>
                <asp:TextBox ID="confirm" runat="server" CssClass="auto-style22" TextMode="Password"></asp:TextBox>
                
                <asp:TextBox ID="email" runat="server" CssClass="auto-style23"></asp:TextBox>
                <asp:CheckBox ID="national" runat="server" CssClass="auto-style24" Text="I am Egyptian" />
                <asp:DropDownList ID="FieldOfWork" runat="server" CssClass="auto-style25">
                    <asp:ListItem>Choose your field of work</asp:ListItem>
                    <asp:ListItem>Civil</asp:ListItem>
                    <asp:ListItem>Applied Arts</asp:ListItem>
                    <asp:ListItem>MET</asp:ListItem>
                    <asp:ListItem>IET</asp:ListItem>
                    <asp:ListItem>EMS</asp:ListItem>
                    <asp:ListItem>Pharmacy</asp:ListItem>
                    <asp:ListItem>Law</asp:ListItem>
                    <asp:ListItem>Architecture</asp:ListItem>
                </asp:DropDownList>
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="auto-style30" OnClick="ExaminerRegistration" ImageUrl="~/button_register_1.png" />
            </div>


            
            <asp:Image ID="Image2" runat="server" CssClass="auto-style27" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />
    </form>
</body>
</html>
