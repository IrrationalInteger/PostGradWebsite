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
    public partial class AddDefense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");


        }
        protected void option(object sender, EventArgs e)
        {
            options.Visible = !options.Visible;
        }
        protected void logout(object sender, BulletedListEventArgs e)
        {

            if (e.Index == 1)
            {
                Session["user"] = null;
                Response.Redirect("Login.aspx");
            }
            if (e.Index == 0)
            {
                Response.Redirect("SupervisorHomePage.aspx");
            }
        }
        protected void button(object sender, EventArgs e)
        {

            System.Diagnostics.Debug.WriteLine(Session["thesisId"]);
            if (Calendar1.Text == "")
                System.Windows.Forms.MessageBox.Show("Please pick a date!");
            else if (LocationBox.Text == "")
                System.Windows.Forms.MessageBox.Show("Please choose a location!");
            else
            {
                try
                {   
                    string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                    SqlConnection conn = new SqlConnection(connStr);
                    SqlCommand isGucian = new SqlCommand("isGucian", conn);
                    isGucian.CommandType = CommandType.StoredProcedure;
                    System.Diagnostics.Debug.WriteLine(Session["studentId"]);
                    isGucian.Parameters.Add(new SqlParameter("@sid", Session["studentId"]));
                    SqlParameter success = isGucian.Parameters.Add("@success", SqlDbType.Bit);
                    success.Direction = ParameterDirection.Output;
                    conn.Open();
                    isGucian.ExecuteNonQuery();
                    conn.Close();
                    System.Diagnostics.Debug.WriteLine(success.Value.ToString());
                    if (success.Value.ToString() == "True")
                    {
                        SqlCommand addDefenseGuc = new SqlCommand("AddDefenseGucian", conn);
                        addDefenseGuc.CommandType = CommandType.StoredProcedure;
                        addDefenseGuc.Parameters.Add(new SqlParameter("@ThesisSerialNo", Session["thesisId"]));
                        addDefenseGuc.Parameters.Add(new SqlParameter("@DefenseDate", Calendar1.Text));
                        addDefenseGuc.Parameters.Add(new SqlParameter("@DefenseLocation", LocationBox.Text)); 

                        conn.Open();
                        addDefenseGuc.ExecuteNonQuery();
                        conn.Close();
                        System.Windows.Forms.MessageBox.Show("Defense added successfully!");

                    }
                    else
                    {
                        SqlCommand addDefenseNonGuc = new SqlCommand("AddDefenseNonGucian", conn);
                        addDefenseNonGuc.CommandType = CommandType.StoredProcedure;
                        addDefenseNonGuc.Parameters.Add(new SqlParameter("@ThesisSerialNo", Session["thesisId"]));
                        addDefenseNonGuc.Parameters.Add(new SqlParameter("@DefenseDate", Calendar1.Text));
                        addDefenseNonGuc.Parameters.Add(new SqlParameter("@DefenseLocation", LocationBox.Text));
                        SqlParameter yes =  addDefenseNonGuc.Parameters.Add("@success",SqlDbType.Bit);
                        success.Direction = ParameterDirection.Output;


                        conn.Open();
                        addDefenseNonGuc.ExecuteNonQuery();
                        conn.Close();
                        if ((Boolean)yes.Value)
                        {
                            System.Windows.Forms.MessageBox.Show("Defense added successfully!");

                        }
                        else
                            System.Windows.Forms.MessageBox.Show("Failed to add defense as this student has a course grade less than 50!");

                    }

                    Response.Redirect("SupervisorStudents.aspx");
                }
                catch(SqlException ex)
                {
                    System.Windows.Forms.MessageBox.Show("This thesis already has a defense at this date!");
                    Response.Redirect("SupervisorStudents.aspx");
                }
            }






        }
    }
}