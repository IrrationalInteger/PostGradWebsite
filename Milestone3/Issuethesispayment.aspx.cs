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
    public partial class Issuethesispayment : System.Web.UI.Page
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

        protected void issue(object sender, EventArgs e)
        {
            if (Theses.SelectedItem.Text == "Choose a serial number")
                System.Windows.Forms.MessageBox.Show("Please choose a serial number");
            else
            {
                if (amount.Text == "")
                    System.Windows.Forms.MessageBox.Show("Please Enter the amount");
                else
                {
                    if (noinstallments.Text == "")
                        System.Windows.Forms.MessageBox.Show("Please Enter the number of installments");
                    else
                    {
                        if (Fundpercentage.Text == "")
                            System.Windows.Forms.MessageBox.Show("Please Enter the fund percentage");


                        else
                        {


                            int ThesisSerialNo = Int32.Parse(Theses.SelectedItem.Text);

                            try
                            {
                                double am = double.Parse(amount.Text);
                                if (am > 99999.99)
                                {
                                    System.Windows.Forms.MessageBox.Show("The amount value should be between 0 and 10000.00");
                                }
                                else if (am<0)
                                    System.Windows.Forms.MessageBox.Show("The amount value should be between 0 and 10000.00");
                                else{
                                    try
                                    {
                                        int ins = Int32.Parse(noinstallments.Text);
                                        if (ins < 0)
                                        {
                                            System.Windows.Forms.MessageBox.Show("The Number of Installments value should be greater than 0");
                                        }
                                        else
                                        {
                                            try
                                            {
                                                double fb = double.Parse(Fundpercentage.Text);
                                                if (fb > 100 || fb < 0)
                                                {
                                                    System.Windows.Forms.MessageBox.Show("The fund percentage value should be between 0 and 100!");
                                                }
                                                else
                                                {
                                                    string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();


                                                    SqlConnection conn = new SqlConnection(connStr);
                                                    SqlCommand AdminIssueThesisPayment = new SqlCommand("AdminIssueThesisPayment", conn);
                                                    AdminIssueThesisPayment.CommandType = CommandType.StoredProcedure;
                                                    AdminIssueThesisPayment.Parameters.Add(new SqlParameter("@ThesisSerialNo", ThesisSerialNo));
                                                    AdminIssueThesisPayment.Parameters.Add(new SqlParameter("@amount", am));
                                                    AdminIssueThesisPayment.Parameters.Add(new SqlParameter("@noOfInstallments", ins));
                                                    AdminIssueThesisPayment.Parameters.Add(new SqlParameter("@fundPercentage", fb));

                                                    conn.Open();
                                                    AdminIssueThesisPayment.ExecuteNonQuery();
                                                    conn.Close();


                                                    System.Windows.Forms.MessageBox.Show("The payment has been issued successfully");
                                                }
                                            }
                                            catch
                                            {
                                                System.Windows.Forms.MessageBox.Show("Fund percentage must be a number");
                                            }
                                        }
                                    }
                                    catch
                                    {
                                        System.Windows.Forms.MessageBox.Show("Number of installments must be a whole number");
                                    }

                                }
                                }
                            catch
                            {
                                System.Windows.Forms.MessageBox.Show("Amount must be a number");
                            }
                            Response.Redirect("Issuethesispayment.aspx");
                        }
                    }
                    }
                    }
                }
            }


        

        }
    