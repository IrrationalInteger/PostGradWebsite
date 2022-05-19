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
    public partial class DefTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");

            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand Examiner_ListDef = new SqlCommand("Examiner_ListDef", conn);
            Examiner_ListDef.CommandType = CommandType.StoredProcedure;
            conn.Open();
            SqlDataReader rdr = Examiner_ListDef.ExecuteReader(CommandBehavior.CloseConnection);



            
            conn.Close();
        }

        protected void Defenses(object sender, EventArgs e)
        {
            Response.Redirect("DefTable.aspx");
        }
        protected void Add(object sender, EventArgs e)
        {
            Response.Redirect("AddComment.aspx");
        }
        protected void Defense_grading(object sender, EventArgs e)
        {
            Response.Redirect("DefGrade.aspx");
        }
        protected void Edit_myProfile(object sender, EventArgs e)
        {
            Response.Redirect("Edit.aspx");
        }
        protected void Log_Out(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

    }
}