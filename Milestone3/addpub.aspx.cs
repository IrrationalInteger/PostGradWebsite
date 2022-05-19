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
    public partial class addpub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void Addpub(object sender, EventArgs e)
        {
            if (TextBox1.Text =="" || TextBox2.Text=="" || TextBox3.Text=="" || Place.Text=="")
            {
                System.Windows.Forms.MessageBox.Show("Some fields were left empty. Make sure to fill every field");
            }
            else
            {

                string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                String titl = TextBox1.Text;
                String dat = TextBox2.Text;
                String hos = TextBox3.Text;
                String place = Place.Text;
                Boolean bit = CheckBox1.Checked;
                SqlCommand addPublication = new SqlCommand("addPublication", conn);
                addPublication.CommandType = CommandType.StoredProcedure;
                addPublication.Parameters.Add(new SqlParameter("@title", titl));
                addPublication.Parameters.Add(new SqlParameter("@pubDate", dat));
                addPublication.Parameters.Add(new SqlParameter("@host", hos));
                addPublication.Parameters.Add(new SqlParameter("@place", place));
                addPublication.Parameters.Add(new SqlParameter("@accepted", bit));
                conn.Open();
                addPublication.ExecuteNonQuery();
                conn.Close();
                System.Windows.Forms.MessageBox.Show("Publication added successfully");

            }
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