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
    public partial class Alltheses : System.Web.UI.Page
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
            Theses.DataSource = dt;
            Theses.DataBind();
            conn.Close();
            SqlCommand AdminViewOnGoingTheses = new SqlCommand("AdminViewOnGoingTheses", conn);
            AdminViewOnGoingTheses.CommandType = CommandType.StoredProcedure;
            SqlParameter count = AdminViewOnGoingTheses.Parameters.Add("@thesesCount", SqlDbType.Int);
            count.Direction = ParameterDirection.Output;
            conn.Open();
            AdminViewOnGoingTheses.ExecuteNonQuery();
            conn.Close();

            onGoing.Text = "The count of the on going theses is : " + count.Value;

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


    }
}