using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Milestone3
{
    public partial class NonGUCianStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
        }
        protected void viewProfile(object sender, EventArgs e)
        {
            Response.Redirect("NonStudentProfile.aspx");
        }

        protected void addProgressReport(object sender, EventArgs e)
        {
            Response.Redirect("addProgressReport.aspx");

        }
        protected void fillProgressReport(object sender, EventArgs e)
        {
            Response.Redirect("fillPrgoressReport.aspx");
        }
        protected void addpub(object sender, EventArgs e)
        {
            Response.Redirect("addpub.aspx");
        }
        protected void Link(object sender, EventArgs e)
        {
            Response.Redirect("Link.aspx");
        }

        protected void ViewTheses(object sender, EventArgs e)
        {
            Response.Redirect("Theses.aspx");
        }
        protected void ViewCourses(object sender, EventArgs e)
        {
            Response.Redirect("Courses.aspx");
        }
        protected void logOut(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Login.aspx");
        }
        protected void goHome(object sender, EventArgs e)
        {

            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand isGucian = new SqlCommand("isGucian", conn);
            isGucian.CommandType = CommandType.StoredProcedure;
            isGucian.Parameters.Add(new SqlParameter("@sid", Session["user"]));
            SqlParameter success = isGucian.Parameters.Add("@success", SqlDbType.Bit);
            success.Direction = ParameterDirection.Output;
            conn.Open();
            isGucian.ExecuteNonQuery();
            conn.Close();
            if ((Boolean)success.Value)
                Response.Redirect("GUCianStudent.aspx");
            else
                Response.Redirect("NonGUCianStudent.aspx");


        }

    }
}