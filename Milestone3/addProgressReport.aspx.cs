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
    public partial class addProgressReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
        }

        protected void addProgress(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            if (Number.Text == "" || date.Text == ""|| Number.Text == "")
            {
                System.Windows.Forms.MessageBox.Show("Some Fields are left empty. Make sure to fill every field");
            }
            else
            {
                SqlCommand checkIf = new SqlCommand("checkIf", conn);
                SqlParameter success = checkIf.Parameters.Add("@success", SqlDbType.Int);
                checkIf.Parameters.Add(new SqlParameter("@studentID", Session["user"]));
                checkIf.Parameters.Add(new SqlParameter("@serialNumber", SerialNumber.Text));
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

                        int serial = Int16.Parse(SerialNumber.Text);
                        String time = date.Text;
                        int no = Int16.Parse(Number.Text);
                        SqlCommand AddProgressReport = new SqlCommand("AddProgressReport", conn);
                        AddProgressReport.CommandType = CommandType.StoredProcedure;
                        AddProgressReport.Parameters.Add(new SqlParameter("@thesisSerialNo", serial));
                        AddProgressReport.Parameters.Add(new SqlParameter("@progressReportDate", time));
                        AddProgressReport.Parameters.Add(new SqlParameter("@progressReportNo", no));
                        AddProgressReport.Parameters.Add(new SqlParameter("@studentID", Session["user"]));
                        conn.Open();
                        AddProgressReport.ExecuteNonQuery();
                        conn.Close();
                        System.Windows.Forms.MessageBox.Show("Progress report added successfully");
                    }
                    catch (Exception err) {
                        System.Windows.Forms.MessageBox.Show("This progress report number already exists");
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