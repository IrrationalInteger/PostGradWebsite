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
    public partial class SupervisorStudents : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            else {
                string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand supListStudent = new SqlCommand("ViewSupStudentsYears", conn);
                supListStudent.CommandType= CommandType.StoredProcedure;
                supListStudent.Parameters.Add(new SqlParameter("@supervisorID", Session["user"]));
                conn.Open();
                SqlDataReader rdr = supListStudent.ExecuteReader(CommandBehavior.CloseConnection);
                Control myControl = FindControl("Table1");

                while (rdr.Read())
                {
                    int sid = rdr.GetInt32(rdr.GetOrdinal("id"));

                    int id = rdr.GetInt32(rdr.GetOrdinal("serialNumber"));
                    String fname = rdr.GetString(rdr.GetOrdinal("firstName"));
                    String lname = rdr.GetString(rdr.GetOrdinal("lastName"));
                    String title = rdr.GetString(rdr.GetOrdinal("title"));
                    int years = rdr.GetInt32(rdr.GetOrdinal("years"));
                    Label nameLabel = new Label();
                    nameLabel.Text = fname + " " + lname;
                    Label titleLabel = new Label();
                    titleLabel.Text = title;
                    ImageButton button = new ImageButton();
                    Label yearLabel = new Label();
                    yearLabel.Text = years+"";
                   
                    button.ID = id + "";
                    button.ImageUrl = "~/button_publications.png";
                    button.Click += viewPub;
                    ImageButton addDefense = new ImageButton(); addDefense.ID = id + "              D";
                    addDefense.SkinID = sid + "";
                    addDefense.ImageUrl = "~/button_add-defense.png";
                    addDefense.Click += AddDef; TableRow tRow = new TableRow();
                    TableCell c1 = new TableCell();
                    TableCell c2 = new TableCell();
                    TableCell c3 = new TableCell();
                    TableCell c4 = new TableCell();
                    c1.Controls.Add(nameLabel);
                    c2.Controls.Add(titleLabel);
                    c3.Controls.Add(yearLabel);
                    c4.Controls.Add(button);
                    c4.Controls.Add(new LiteralControl("<br />"));
                    c4.Controls.Add(addDefense);
                    tRow.Controls.Add(c1);
                    tRow.Controls.Add(c2);
                    tRow.Controls.Add(c3);
                    tRow.Controls.Add(c4);
                    myControl.Controls.Add(tRow);
                }
                conn.Close();
            }
            }
        
        protected void viewPub(object sender, EventArgs e)
        {
            int id = Int32.Parse(((ImageButton)sender).ID);
            Session["thesisId"] = id;
            Response.Redirect("Publications.aspx");


        }
        protected void AddDef(object sender, EventArgs e)
        {
            int sid = Int32.Parse(((ImageButton)sender).SkinID);
            String id = ((ImageButton)sender).ID;
            id = id.Substring(0, id.Length - 1);
            int idNo = Int32.Parse(id);
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand checkDefense = new SqlCommand("checkDefense", conn);
            checkDefense.CommandType = CommandType.StoredProcedure;
            checkDefense.Parameters.Add(new SqlParameter("@thesisId", idNo));
            SqlParameter hasDef = checkDefense.Parameters.Add("@success", SqlDbType.Bit);
            hasDef.Direction = ParameterDirection.Output;
            conn.Open();
            checkDefense.ExecuteNonQuery();
            conn.Close();
            if ((Boolean)hasDef.Value)
                System.Windows.Forms.MessageBox.Show("This thesis already has a defense!");
            else {
                Session["thesisId"] = idNo;
                Session["studentId"] = sid;
                Response.Redirect("AddDefense.aspx");
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
    }
}