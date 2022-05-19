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
    public partial class Publications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            else
            {
                string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand ViewAStudentPublications = new SqlCommand("ViewAStudentPublications", conn);
                ViewAStudentPublications.CommandType = CommandType.StoredProcedure;
                ViewAStudentPublications.Parameters.Add(new SqlParameter("@ThesisId", Session["thesisId"]));
                conn.Open();
                SqlDataReader rdr = ViewAStudentPublications.ExecuteReader(CommandBehavior.CloseConnection);
                Control myControl = FindControl("Table1");

                while (rdr.Read())
                {
                    String thesisTitle = rdr.GetString(rdr.GetOrdinal("ThesisTitle"));
                    int id = rdr.GetInt32(rdr.GetOrdinal("id"));
                    String title = rdr.GetString(rdr.GetOrdinal("title"));
                    DateTime date = rdr.GetDateTime(rdr.GetOrdinal("dateOfPublication"));
                    String place = rdr.GetString(rdr.GetOrdinal("place"));
                    Boolean accepted = rdr.GetBoolean(rdr.GetOrdinal("accepted"));
                    String host = rdr.GetString(rdr.GetOrdinal("host"));

                    
                    Label thesisTit = new Label();
                    thesisTit.Text = thesisTitle;
                    Label pubId = new Label();
                    pubId.Text = id+"";
                    Label tit = new Label();
                    tit.Text = title;
                    Label dateLabel = new Label();
                    dateLabel.Text = date.ToString();
                    Label placeLabel = new Label();
                    placeLabel.Text = place;
                    Label acceptedLabel = new Label();

                    if (accepted)
                        acceptedLabel.Text = "Accepted";
                    else
                        acceptedLabel.Text = "Rejected";
                    Label hostLabel = new Label();
                    hostLabel.Text = host;
                    TableRow tRow = new TableRow();
                    TableCell c1 = new TableCell();
                    TableCell c2 = new TableCell();
                    TableCell c3 = new TableCell();
                    TableCell c4 = new TableCell();
                    TableCell c5 = new TableCell();
                    TableCell c6 = new TableCell();
                    TableCell c7 = new TableCell();


                    c1.Controls.Add(thesisTit);
                    c2.Controls.Add(pubId);
                    c3.Controls.Add(tit);
                    c4.Controls.Add(dateLabel);
                    c5.Controls.Add(placeLabel);
                    c6.Controls.Add(hostLabel);
                    c7.Controls.Add(acceptedLabel);


                    tRow.Controls.Add(c1);
                    tRow.Controls.Add(c2);
                    tRow.Controls.Add(c3);
                    tRow.Controls.Add(c4);
                    tRow.Controls.Add(c5);
                    tRow.Controls.Add(c6);
                    tRow.Controls.Add(c7);
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

    }
}