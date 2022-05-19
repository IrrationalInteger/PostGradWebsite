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
    public partial class Allsupervisors : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();


            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand AdminListSup = new SqlCommand("AdminListSup", conn);
            AdminListSup.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataReader rdr = AdminListSup.ExecuteReader(CommandBehavior.CloseConnection);
           
            
                
                DataTable dt = new DataTable();
                dt.Load(rdr);
                Sups.DataSource = dt;
                Sups.DataBind();
            conn.Close();
            
            

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