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
    public partial class StudentProfile : System.Web.UI.Page
    {
        
            protected void Page_Load(object sender, EventArgs e)
            {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand viewMyProfile = new SqlCommand("viewMyProfile", conn);
                viewMyProfile.CommandType = CommandType.StoredProcedure;
                viewMyProfile.Parameters.Add(new SqlParameter("@studentId", Session["user"]));
                System.Diagnostics.Debug.WriteLine(Session["user"]);
                conn.Open();
                viewMyProfile.ExecuteNonQuery();
                SqlDataAdapter adapter = new SqlDataAdapter(viewMyProfile);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();


            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

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