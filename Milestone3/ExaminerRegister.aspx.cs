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
    public partial class ExaminerRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ExaminerRegistration(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();


            SqlConnection conn = new SqlConnection(connStr);
            if (email.Text == "" || password.Text == "" || confirm.Text == "")
                System.Windows.Forms.MessageBox.Show("You can't leave fields with * empty");
            else
            {
                if (password.Text != confirm.Text)
                    System.Windows.Forms.MessageBox.Show("The two passwords don't match. Please try again!");
                else
                {

                    if (last.Text.Length + first.Text.Length > 19)
                        System.Windows.Forms.MessageBox.Show("The name cannot exceed 20 charcters. Please try again!");

                    else
                    {

                        if (email.Text.Length > 50)
                            System.Windows.Forms.MessageBox.Show("The email cannot exceed 50 charcters. Please try again!");
                        else
                        {
                            if (password.Text.Length > 30)
                                System.Windows.Forms.MessageBox.Show("The password cannot exceed 30 charcters. Please try again!");
                            else
                            {
                                if (FieldOfWork.SelectedValue == "Select your field of work ")
                                    
                                        System.Windows.Forms.MessageBox.Show("Please choose a field of work ");
                                    else
                                        {


                                            String f = first.Text;
                                            String l = last.Text;
                                            String em = email.Text;
                                            String p = password.Text;
                                            String fe = FieldOfWork.SelectedValue;
                                            Boolean na = national.Checked;

                                            SqlCommand examinerRegister = new SqlCommand("examinerRegister", conn);
                                            examinerRegister.CommandType = CommandType.StoredProcedure;
                                            examinerRegister.Parameters.Add(new SqlParameter("@first_name", (f == "") ? (object)DBNull.Value : f));
                                            examinerRegister.Parameters.Add(new SqlParameter("@last_name", (l == "") ? (object)DBNull.Value : l));
                                            examinerRegister.Parameters.Add(new SqlParameter("@password", p));
                                            examinerRegister.Parameters.Add(new SqlParameter("@fieldofwork", (fe == "") ? (object)DBNull.Value : fe));
                                            examinerRegister.Parameters.Add(new SqlParameter("@national", na));
                                            examinerRegister.Parameters.Add(new SqlParameter("@email", em));
                                            SqlParameter id = examinerRegister.Parameters.Add("@id", SqlDbType.Int);
                                            id.Direction = ParameterDirection.Output;
                                            conn.Open();
                                            examinerRegister.ExecuteNonQuery();
                                            conn.Close();

                                    System.Windows.Forms.MessageBox.Show("You have been registered successfully!");
                                    Response.Redirect("Login.aspx?");

                                        }
                            }
                        }
                    }
                }
            }
        }



    }
}

        

    

    
