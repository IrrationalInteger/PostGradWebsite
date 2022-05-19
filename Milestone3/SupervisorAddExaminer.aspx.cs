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
    public partial class SupervisorAddExaminer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            else
            {
                string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand supViewExaminer = new SqlCommand("supViewExaminer", conn);
                supViewExaminer.CommandType = CommandType.StoredProcedure;
                supViewExaminer.Parameters.Add(new SqlParameter("@supId", Session["user"]));
                conn.Open();
                SqlDataReader rdr = supViewExaminer.ExecuteReader(CommandBehavior.CloseConnection);
                Control myControl = FindControl("Table1");
                var i = 0;
                while (rdr.Read())
                {
                    int id = rdr.GetInt32(rdr.GetOrdinal("id"));
                    String name = rdr.GetString(rdr.GetOrdinal("name"));
                    String field = rdr.GetString(rdr.GetOrdinal("fieldOfWork"));
                    Boolean isNational = rdr.GetBoolean(rdr.GetOrdinal("isNational"));
                    Label idLabel = new Label();
                    idLabel.Text = id + "";

                    Label nameLabel = new Label();
                    nameLabel.Text = name;
                    Label fieldLabel = new Label();
                    fieldLabel.Text = field;
                    Label nationalLabel = new Label();
                    if (!isNational)
                        nationalLabel.Text = "No";
                    else
                        nationalLabel.Text = "Yes";
                    TableRow tRow = new TableRow();
                    TableCell c1 = new TableCell();
                    TableCell c2 = new TableCell();
                    TableCell c3 = new TableCell();
                    TableCell c4 = new TableCell();
                    TableCell c5 = new TableCell();
                    ImageButton add = new ImageButton();
                    add.ID = i + "";
                    add.AlternateText = name;
                    add.CommandArgument = field;
                    add.CommandName = id+"";
                   

                    add.ImageUrl = "~/button_add (1).png";
                    add.Click += addex;



                    c1.Controls.Add(idLabel);
                    c2.Controls.Add(nameLabel);
                    c3.Controls.Add(fieldLabel);
                    c4.Controls.Add(nationalLabel);
                    c5.Controls.Add(add);


                    tRow.Controls.Add(c1);
                    tRow.Controls.Add(c2);
                    tRow.Controls.Add(c3);
                    tRow.Controls.Add(c4);
                    tRow.Controls.Add(c5);
                    i++;
                    myControl.Controls.Add(tRow);
                }
                conn.Close();
            }
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
        protected void addex(object sender, EventArgs e)
        {
            int serialNo = (int)Session["thesisId"];
            DateTime date = (DateTime)Session["defenseDate"];
            int id = Int32.Parse(((ImageButton)sender).CommandName);
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand AddExaminer = new SqlCommand("AddExaminer", conn);
            AddExaminer.CommandType = CommandType.StoredProcedure;
            AddExaminer.Parameters.Add(new SqlParameter("@ThesisSerialNo", serialNo));
            AddExaminer.Parameters.Add(new SqlParameter("@DefenseDate", date));
            AddExaminer.Parameters.Add(new SqlParameter("@id", id));
            try
            {
                conn.Open();
                AddExaminer.ExecuteNonQuery();
                conn.Close();
                System.Windows.Forms.MessageBox.Show("Examiner assigned successfully!");
                Response.Redirect("SupervisorDefense.aspx");
            }
            catch( SqlException ex)
            {
                System.Windows.Forms.MessageBox.Show("This examiner has already been assigned to this defense!");

            }

        }
    }
}