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
    public partial class Issueinstallments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");

            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();


            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand AdminViewPayments = new SqlCommand("AdminViewPayments", conn);
            AdminViewPayments.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataReader rdr = AdminViewPayments.ExecuteReader(CommandBehavior.CloseConnection);


            DataTable dt = new DataTable();
            dt.Load(rdr);
            if (!Page.IsPostBack)
            {

                Payments.DataSource = dt;
                Payments.DataTextField = "id";
                Payments.DataBind();


                conn.Close();
                Payments.Items.Insert(0, "Choose the payment ID");

            }





        }
        protected void Options(object sender, BulletedListEventArgs e)
        {

            if (e.Index == 1)
            {


                Session["user"] = null;
                Response.Redirect("Login.aspx");
            }
            if (e.Index == 0)
                Response.Redirect("Adminhomepage.aspx");
        }

        protected void option(object sender, EventArgs e)
        {


            options.Visible = !options.Visible;
        }
        protected void issue(object sender, EventArgs e)
        {
            if (Payments.SelectedItem.Text == "Choose the payment ID")
                System.Windows.Forms.MessageBox.Show("Please choose the payment id");
            else
            {
                if (Date.Text == "")
                {
                    System.Windows.Forms.MessageBox.Show("Please choose a start date");
                }
                else
                {
                    string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                    SqlConnection conn = new SqlConnection(connStr);
                    SqlCommand AdminIssueInstallPayment = new SqlCommand("AdminIssueInstallPayment", conn);
                    AdminIssueInstallPayment.CommandType = CommandType.StoredProcedure;
                    AdminIssueInstallPayment.Parameters.Add(new SqlParameter("@paymentID", Int32.Parse(Payments.SelectedItem.Text)));
                    AdminIssueInstallPayment.Parameters.Add(new SqlParameter("@InstallStartDate", Date.Text));

                    conn.Open();
                    AdminIssueInstallPayment.ExecuteNonQuery();
                    conn.Close();
                    System.Windows.Forms.MessageBox.Show("Installments have been issued successfully");
                    Response.Redirect("Issueinstallments.aspx");
                }
            }
        }
    }
}