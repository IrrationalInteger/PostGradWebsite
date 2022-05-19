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
    public partial class StudentRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void StudentRegistration(object sender, EventArgs e)
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
                    if (first.Text.Length > 20)
                        System.Windows.Forms.MessageBox.Show("The first name cannot exceed 20 charcters. Please try again!");
                    else
                    {
                        if (last.Text.Length > 20)
                            System.Windows.Forms.MessageBox.Show("The last name cannot exceed 20 charcters. Please try again!");
                        else
                        {

                            if (address.Text.Length > 50)
                                System.Windows.Forms.MessageBox.Show("The address cannot exceed 50 charcters. Please try again!");
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
                                        if (Faculty.SelectedValue == "Choose your faculty")
                                            System.Windows.Forms.MessageBox.Show("Please choose a faculty");
                                        else
                                        {


                                            try
                                            {
                                                String f = first.Text;
                                                String l = last.Text;
                                                String em = email.Text;
                                                String p = password.Text;
                                                String fa = Faculty.SelectedValue;
                                                String ad = address.Text;
                                                Boolean guc = gucian.Checked;

                                                SqlCommand studentRegister = new SqlCommand("studentRegister", conn);
                                                studentRegister.CommandType = CommandType.StoredProcedure;
                                                studentRegister.Parameters.Add(new SqlParameter("@first_name", (f == "") ? (object)DBNull.Value : f));
                                                studentRegister.Parameters.Add(new SqlParameter("@last_name", (l == "") ? (object)DBNull.Value : l));
                                                studentRegister.Parameters.Add(new SqlParameter("@password", p));
                                                studentRegister.Parameters.Add(new SqlParameter("@faculty", (fa == "") ? (object)DBNull.Value : fa));
                                                studentRegister.Parameters.Add(new SqlParameter("@address", (ad == "") ? (object)DBNull.Value : ad));
                                                studentRegister.Parameters.Add(new SqlParameter("@Gucian", guc));
                                                studentRegister.Parameters.Add(new SqlParameter("@email", em));
                                                conn.Open();
                                                studentRegister.ExecuteNonQuery();
                                                conn.Close();
                                                SqlCommand getLastID = new SqlCommand("getLastId", conn);
                                                getLastID.CommandType = CommandType.StoredProcedure;
                                                SqlParameter id = getLastID.Parameters.Add("@id", SqlDbType.Int);
                                                id.Direction = ParameterDirection.Output;
                                                conn.Open();
                                                getLastID.ExecuteNonQuery();
                                                conn.Close();
                                                Session["register"] = id.Value;

                                                Response.Redirect("Phones.aspx");
                                            }
                                            catch (SqlException)
                                            {
                                                System.Windows.Forms.MessageBox.Show("This email has already been registered!");
                                            }
                                        }
                                    }
                                }
                            }

                        }
                        }
                    }
                }


            }


        }
    }
