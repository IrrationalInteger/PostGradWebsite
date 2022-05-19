<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Milestone3.Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
        .auto-style1 {
            width: 187px;
            height: 26px;
            position: absolute;
            top: 159px;
            left: 21px;
            z-index: 1;
        }
        .auto-style3 {
            width: 195px;
            height: 25px;
            position: absolute;
            top: 185px;
            left: 40px;
            z-index: 1;
        }
         .auto-style4 {
            position: absolute;
            top: 238px;
            left: 39px;
            z-index: 1;
            width: 195px;
            height: 44px;
            mix-blend-mode: multiply;
        
        }
          .auto-style2 {
            position: absolute;
            top: 8px;
            left: 8px;
            z-index: 1;
            width: 235px;
            height: 155px;
            mix-blend-mode: multiply;
        
        }
           .auto-style6 {
            position: absolute;
            top: 279px;
            left: 37px;
            z-index: 1;
            width: 186px;
            height: 24px;
            mix-blend-mode: multiply;
        
        }


        .auto-style7 {
            position: absolute;
            top: 27px;
            z-index: 1;
            width: 438px;
            height: 155px;
            mix-blend-mode: multiply;
            left: 467px;
        }
        .auto-style8 {
             position: absolute;
            top: 340px;
            left: 33px;
            z-index: 1;
            width: 159px;
            mix-blend-mode: multiply;
            height: 26px;
        }
        .auto-style5 {
            width: 264px;
            height: 439px;
            position: absolute;
            top: 20px;
            left: 14px;
            z-index: 1;
            border-radius: 25px;
            box-shadow: 5px 10px;
        }
        .auto-style9 {
             position: absolute;
            top: 213px;
            left: 22px;
            z-index: 1;
            width: 197px;
            mix-blend-mode: multiply;
            height: 25px;
        }
        .auto-style10 {
             position: absolute;
            top: 311px;
            left: 23px;
            z-index: 1;
            width: 129px;
            mix-blend-mode: multiply;
            height: 23px;
        }
         .auto-style11 {
             position: absolute;
            top: 367px;
            left: 34px;
            z-index: 1;
            width: 127px;
            mix-blend-mode: multiply;
            height: 23px;
        }


    </style>
    </head>
<body>
    <form id="form1" runat="server">
          
        <div style="height: 747px; margin-left: 0px; background-color:#d8f4f5; margin-right: 0px; margin-top: 0px;">
           
                
                

            <asp:Image ID="Image2" runat="server" CssClass="auto-style7" ImageUrl="~/GUC_Logo_for_job_announcements_1_2.jpg" />
            

             <div class="auto-style5" style="background-color:gray">
                
                
            <asp:Image ID="Image1" runat="server" CssClass="auto-style2" ImageUrl="~/logo.jpg" />
                
                
             <asp:Label ID="Label1" runat="server" Text="->Thesis Managment" CssClass="auto-style1"></asp:Label>    
             <asp:LinkButton ID="LinkButton1" runat="server" CssClass="auto-style3" OnClick="Defenses">Defenses attended</asp:LinkButton>                

             <asp:Label ID="Label3" runat="server" Text="->Thesis Managment" CssClass="auto-style1"></asp:Label>    

             <asp:LinkButton ID="LinkButton3" runat="server" CssClass="auto-style6" OnClick="Defense_grading">Add Grade</asp:LinkButton>

             <asp:Label ID="Label4" runat="server" Text="->Defenses Managment" CssClass="auto-style9"></asp:Label>    

                 <asp:LinkButton ID="LinkButton5" runat="server" CssClass="auto-style11" OnClick="Log_Out">Log Out</asp:LinkButton>

             <asp:LinkButton ID="LinkButton2" runat="server" CssClass="auto-style4" OnClick="Add">Add Comment for a defense</asp:LinkButton>

                 <asp:Label ID="Label5" runat="server" Text="->My Profile"  CssClass="auto-style10"></asp:Label>

                 <asp:LinkButton ID="LinkButton6" runat="server" CssClass="auto-style8" OnClick="Edit_myProfile">Edit profile</asp:LinkButton>


            </div>




             
        </div>
    </form>
</body>
</html>

