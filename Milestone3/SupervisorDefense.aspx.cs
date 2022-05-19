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
    public partial class SupervisorDefense : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                if (Session["user"] == null)
                    Response.Redirect("Login.aspx");
                else
                {
                    string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                    SqlConnection conn = new SqlConnection(connStr);
                    SqlCommand displayDefense = new SqlCommand("displayDefense", conn);
                    displayDefense.CommandType = CommandType.StoredProcedure;
                    displayDefense.Parameters.Add(new SqlParameter("@supId", Session["user"]));
                    conn.Open();
                    SqlDataReader rdr = displayDefense.ExecuteReader(CommandBehavior.CloseConnection);
                    Control myControl = FindControl("Table1");
                    var i = 0;
                    while (rdr.Read())
                    {
                        String thesisTitle = rdr.GetString(rdr.GetOrdinal("title"));
                        int serialNo = rdr.GetInt32(rdr.GetOrdinal("serialNumber"));
                        DateTime date = rdr.GetDateTime(rdr.GetOrdinal("date"));
                        String location = rdr.GetString(rdr.GetOrdinal("location"));
                        Label gradeLabel = new Label();

                        try
                        {
                            decimal grade = rdr.GetDecimal(rdr.GetOrdinal("grade"));
                            gradeLabel.Text = grade + "";
                        }
                        catch
                        {
                            gradeLabel.Text = "N/A";
                        }
                        String field = rdr.GetString(rdr.GetOrdinal("field"));

                        Label titleLabel = new Label();
                        titleLabel.Text = thesisTitle;
                        Label dateLabel = new Label();
                        dateLabel.Text = date.ToString();
                        Label locationLabel = new Label();
                        locationLabel.Text = location;
                       

                        TableRow tRow = new TableRow();
                        TableCell c1 = new TableCell();
                        TableCell c2 = new TableCell();
                        TableCell c3 = new TableCell();
                        TableCell c4 = new TableCell();
                        TableCell c5 = new TableCell();
                        ImageButton addExaminer = new ImageButton();
                        addExaminer.ID = i+"";
                        addExaminer.AlternateText = serialNo + "";
                        addExaminer.CommandArgument = field;
                        
                        addExaminer.ImageUrl = "~/button_add-examiner.png";
                        addExaminer.Click += adddef;



                        c1.Controls.Add(titleLabel);
                        c2.Controls.Add(dateLabel);
                        c3.Controls.Add(locationLabel);
                        c4.Controls.Add(gradeLabel);
                        c5.Controls.Add(addExaminer);


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
        protected void adddef(object sender, EventArgs e)
        {
            int thesisId = Int32.Parse(((ImageButton)sender).AlternateText);
            String field = (((ImageButton)sender).CommandArgument);
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand getDefenseDate = new SqlCommand("getDefenseDate", conn);
            getDefenseDate.CommandType = CommandType.StoredProcedure;
            getDefenseDate.Parameters.Add(new SqlParameter("@serialNo", thesisId));

            SqlParameter defenseDate = getDefenseDate.Parameters.Add("@date", SqlDbType.DateTime);
            defenseDate.Direction = ParameterDirection.Output;
            conn.Open();
            getDefenseDate.ExecuteNonQuery();
            conn.Close();
            Session["thesisId"] = thesisId;
            Session["field"] = field;
            Session["defenseDate"] = (DateTime)defenseDate.Value;
            Response.Redirect("SupervisorAddExaminer.aspx");


        }

    }
}