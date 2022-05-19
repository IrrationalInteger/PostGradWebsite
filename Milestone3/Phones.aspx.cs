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
    public partial class Phones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["register"] == null)
                Response.Redirect("Login.aspx");
        }
        protected void add(object sender,EventArgs e)
        {
            String phoneNo = phone.Text;
            if (phoneNo == "")
            {
                System.Windows.Forms.MessageBox.Show("You can't leave the phone number empty! If you do not want to add a phone number then click done.");
            }
            else
            {
                if (phoneNo.Length > 20)
                    System.Windows.Forms.MessageBox.Show("You can't enter a phone number greater than 20 numbers");
                else
                {
                    try
                    {
                        int phoneNumber = Int32.Parse(phoneNo);

                        string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                        SqlConnection conn = new SqlConnection(connStr);
                        int currId = (int)Session["register"];
                        SqlCommand addmobile = new SqlCommand("addMobile", conn);
                        addmobile.CommandType = CommandType.StoredProcedure;
                            addmobile.Parameters.Add(new SqlParameter("@ID", currId));
                            addmobile.Parameters.Add(new SqlParameter("@mobile_number", phoneNumber));
                            conn.Open();
                            try
                            {
                                addmobile.ExecuteNonQuery();
                            System.Windows.Forms.MessageBox.Show("Your phone number was added");

                        }
                            catch
                            {
                                System.Windows.Forms.MessageBox.Show("This phone number was added before. Please try another number.");
                            }
                            conn.Close();
                            phone.Text = "";
                        
                    }
                    
                    catch
                    {
                       
                        System.Windows.Forms.MessageBox.Show("Enter a valid phone number!");
                    }




                }
            }
        }
        protected void done(object sender,EventArgs e)
        {
            int currId =(int) Session["register"];
            System.Windows.Forms.MessageBox.Show("You have been registered successfully!");
            Response.Redirect("login.aspx");
        }
    }
}