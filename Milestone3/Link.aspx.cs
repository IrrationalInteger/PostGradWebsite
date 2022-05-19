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
    public partial class Link : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void link(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Please enter a publication ID and a thesis serial number");
            }
            else
            {
                SqlCommand checkIf = new SqlCommand("checkIf", conn);
                SqlParameter success = checkIf.Parameters.Add("@success", SqlDbType.Int);
                checkIf.Parameters.Add(new SqlParameter("@studentID", Session["user"]));
                checkIf.Parameters.Add(new SqlParameter("@serialNumber", TextBox2.Text));
                checkIf.CommandType = CommandType.StoredProcedure;
                success.Direction = ParameterDirection.Output;
                conn.Open();
                checkIf.ExecuteNonQuery();
                conn.Close();
                if (success.Value.ToString() == "0")
                {
                    System.Windows.Forms.MessageBox.Show("This is not your Thesis");
                }
                else
                {
                    try
                    {
                        int pub = Int16.Parse(TextBox1.Text);
                        int Thes = Int16.Parse(TextBox2.Text);
                        SqlCommand linkPubThesis = new SqlCommand("linkPubThesis", conn);
                        linkPubThesis.CommandType = CommandType.StoredProcedure;
                        linkPubThesis.Parameters.Add(new SqlParameter("@PubID", pub));
                        linkPubThesis.Parameters.Add(new SqlParameter("@thesisSerialNo", Thes));
                        conn.Open();
                        linkPubThesis.ExecuteNonQuery();
                        conn.Close();
                        System.Windows.Forms.MessageBox.Show("Thesis has been linked to Publication successfully");

                    }
                    catch (Exception err) {
                        System.Windows.Forms.MessageBox.Show("Enter a valid publication id number!");
                    }
                 }
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