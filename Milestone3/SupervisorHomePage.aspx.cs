using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone3
{
    public partial class SupervisorHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            

        }

        protected void option(object sender, EventArgs e)
        {
            options.Visible = !options.Visible;
        }
        protected void viewstudent(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorStudents.aspx");

        }
        protected void viewtheses(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorProgress.aspx");

        }
        protected void viewdefense(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorDefense.aspx");

        }
        protected void logout(object sender, BulletedListEventArgs e)
        {
           
            if (e.Index == 1)
            { 
                Session["user"] = null;
                Response.Redirect("Login.aspx");
            }
            if (e.Index == 0)
            {
                Response.Redirect("SupervisorHomePage.aspx");
            }
        }

    
    }
}