using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MileStone_3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logIn(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();


            SqlConnection conn = new SqlConnection(connStr);
            if (email.Text == "" || password.Text == "")
                System.Windows.Forms.MessageBox.Show("Enter valid credentials");
            else
            {

               
                    String m = email.Text;
                    String pass = password.Text;
                    SqlCommand getIdFromMail = new SqlCommand("getIdFromMail", conn);
                    SqlParameter id = getIdFromMail.Parameters.Add("@id", SqlDbType.Int);
                    getIdFromMail.Parameters.Add(new SqlParameter("@email", m));
                    getIdFromMail.CommandType = CommandType.StoredProcedure;
                    id.Direction = ParameterDirection.Output;
                    conn.Open();
                    getIdFromMail.ExecuteNonQuery();
                    conn.Close();
                    SqlCommand userLogin = new SqlCommand("userLogin", conn);
                    userLogin.CommandType = CommandType.StoredProcedure;
                    userLogin.Parameters.Add(new SqlParameter("@id", id.Value));
                    userLogin.Parameters.Add(new SqlParameter("@password", pass));
                    SqlParameter success = userLogin.Parameters.Add("@success", SqlDbType.Int);
                    SqlParameter type = userLogin.Parameters.Add("@type", SqlDbType.Int);
                    success.Direction = ParameterDirection.Output;
                    type.Direction = ParameterDirection.Output;

                    conn.Open();
                    userLogin.ExecuteNonQuery();
                    conn.Close();
                    if (success.Value.ToString() == "1")
                    {
                        Session["user"] = id.Value;
                        if (type.Value.ToString() == "0")
                            Response.Redirect("GUCianStudent.aspx");
                        if (type.Value.ToString() == "1")
                            Response.Redirect("NonGUCianStudent.aspx");
                        if (type.Value.ToString() == "2")
                            Response.Redirect("Adminhomepage.aspx");
                        if (type.Value.ToString() == "3")
                            Response.Redirect("SupervisorHomePage.aspx");
                        if (type.Value.ToString() == "4")
                            Response.Redirect("Examiner.aspx");
                    }
                    else
                        System.Windows.Forms.MessageBox.Show("Enter valid credentials");
                
               
                

            }











        }
        protected void noaccount(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
            protected void userName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}




