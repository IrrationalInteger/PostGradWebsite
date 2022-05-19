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
    public partial class fillPrgoressReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void Fill(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            if (Serial.Text == "" || TextBox3.Text == "" || TextBox2.Text == "" || TextBox4.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Some fields were left empty. Make sure to fill those fields");
            }
            else
            {
                SqlCommand checkIf = new SqlCommand("checkIf", conn);
                SqlParameter success = checkIf.Parameters.Add("@success", SqlDbType.Int);
                checkIf.Parameters.Add(new SqlParameter("@studentID", Session["user"]));
                checkIf.Parameters.Add(new SqlParameter("@serialNumber", Serial.Text));
                checkIf.CommandType = CommandType.StoredProcedure;
                success.Direction = ParameterDirection.Output;
                conn.Open();
                checkIf.ExecuteNonQuery();
                conn.Close();
                if (success.Value.ToString() == "0") {
                    
                    System.Windows.Forms.MessageBox.Show("This is not your Thesis");

                } else {
                    try
                    {
                        int serial = Int16.Parse(Serial.Text);
                        int state = Int16.Parse(TextBox3.Text);
                        int no = Int16.Parse(TextBox2.Text);
                        String str = TextBox4.Text;
                        SqlCommand FillProgressReport = new SqlCommand("FillProgressReport", conn);
                        FillProgressReport.CommandType = CommandType.StoredProcedure;
                        FillProgressReport.Parameters.Add(new SqlParameter("@thesisSerialNo", serial));
                        FillProgressReport.Parameters.Add(new SqlParameter("@progressReportNo", no));
                        FillProgressReport.Parameters.Add(new SqlParameter("@state", state));
                        FillProgressReport.Parameters.Add(new SqlParameter("@studentID", Session["user"]));
                        FillProgressReport.Parameters.Add(new SqlParameter("@description", str));
                        conn.Open();
                        FillProgressReport.ExecuteNonQuery();
                        conn.Close();
                        System.Windows.Forms.MessageBox.Show("The progress report was filled successfully");
                    }
                    catch (Exception err) {
                        System.Windows.Forms.MessageBox.Show("You have already filled that progress report with that progress report number for that Thesis");
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