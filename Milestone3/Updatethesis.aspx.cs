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
    public partial class Updatethesis : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();


            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand AdminViewAllTheses = new SqlCommand("AdminViewAllTheses", conn);
            AdminViewAllTheses.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataReader rdr = AdminViewAllTheses.ExecuteReader(CommandBehavior.CloseConnection);


            DataTable dt = new DataTable();
            dt.Load(rdr);
            if (!Page.IsPostBack)
            {

                Theses.DataSource = dt;
                Theses.DataTextField = "serialNumber";
                Theses.DataBind();


                conn.Close();
                Theses.Items.Insert(0, "Choose a serial number");

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
        protected void update(object sender,EventArgs e)
        {
            if(Theses.SelectedItem.Text== "Choose a serial number")
            {
                System.Windows.Forms.MessageBox.Show("Please choose a serial number");
            }
            else
            {
                string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();


                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand AdminUpdateExtension = new SqlCommand("AdminUpdateExtension", conn);
                AdminUpdateExtension.CommandType = CommandType.StoredProcedure;
                AdminUpdateExtension.Parameters.Add(new SqlParameter("@ThesisSerialNo", Int32.Parse(Theses.SelectedItem.Text)));
                conn.Open();
                AdminUpdateExtension.ExecuteNonQuery();
                conn.Close();
                System.Windows.Forms.MessageBox.Show("Thesis number of extensions has been updated successfully ");
                Response.Redirect("Updatethesis.aspx");

            }
        }protected void logOut(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Login.aspx");
        }
        protected void goHome(object sender, EventArgs e) {

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