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
    public partial class SupervisorProgress : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            else
            {
                string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
                SqlCommand getStudentProgressReports = new SqlCommand("getStudentProgressReports", conn);
                getStudentProgressReports.CommandType = CommandType.StoredProcedure;
                getStudentProgressReports.Parameters.Add(new SqlParameter("@supId", Session["user"]));
                conn.Open();
                SqlDataReader rdr = getStudentProgressReports.ExecuteReader(CommandBehavior.CloseConnection);
                Control myControl = FindControl("Table1");
                int i = 0;
                int j = 0;
                while (rdr.Read())
                {
                    String name = rdr.GetString(rdr.GetOrdinal("N"));
                    String title = rdr.GetString(rdr.GetOrdinal("title"));
                    int no = rdr.GetInt32(rdr.GetOrdinal("no"));
                    DateTime date = rdr.GetDateTime(rdr.GetOrdinal("date"));
                    int eval = rdr.GetInt32(rdr.GetOrdinal("eval"));
                    int state = rdr.GetInt32(rdr.GetOrdinal("state"));
                    int serialNo = rdr.GetInt32(rdr.GetOrdinal("serialNumber"));
                    Label nameLabel = new Label();
                    nameLabel.Text = name;
                    Label titleLabel = new Label();
                    titleLabel.Text = title;
                    Label noLabel = new Label();
                    noLabel.Text = no + "";
                    Label dateLabel = new Label();
                    dateLabel.Text = date.ToString();
                    Label evalLabel = new Label();
                    evalLabel.Text = eval + "";
                    Label stateLabel = new Label();
                    stateLabel.Text = state + "";
                    ImageButton Evaluate = new ImageButton();
                    Evaluate.ID = "E"+i;
                    Evaluate.AlternateText = serialNo + "";
                    Evaluate.CommandArgument = no + "PR";

                    Evaluate.ImageUrl = "~/button_evaluate.png";
                    Evaluate.Click += evaluate;

                    ImageButton Cancel = new ImageButton();
                    Cancel.ID = "C" + j;
                    Cancel.AlternateText = serialNo + "";

                    Cancel.ImageUrl = "button_cancel-thesis.png";
                    Cancel.Click += cancel;

                    TableRow tRow = new TableRow();
                    TableCell c1 = new TableCell();
                    TableCell c2 = new TableCell();
                    TableCell c3 = new TableCell();
                    TableCell c4 = new TableCell();
                    TableCell c5 = new TableCell();
                    TableCell c6 = new TableCell();
                    TableCell c7 = new TableCell();

                    c1.Controls.Add(nameLabel);
                    c2.Controls.Add(titleLabel);
                    c3.Controls.Add(noLabel);
                    c4.Controls.Add(dateLabel);
                    c5.Controls.Add(evalLabel);
                    c6.Controls.Add(stateLabel);
                    c7.Controls.Add(Evaluate);
                    c7.Controls.Add(new LiteralControl("<br />"));
                    c7.Controls.Add(Cancel);
                    tRow.Controls.Add(c1);
                    tRow.Controls.Add(c2);
                    tRow.Controls.Add(c3);
                    tRow.Controls.Add(c4);
                    tRow.Controls.Add(c5);
                    tRow.Controls.Add(c6);
                    tRow.Controls.Add(c7);
                    myControl.Controls.Add(tRow);
                    i++;
                    j++;
                }
                conn.Close();
            }
        }
        protected void evaluate(object sender, EventArgs e)
        {
            int thesisId = Int32.Parse(((ImageButton)sender).AlternateText);
            int reportNo = Int32.Parse(((ImageButton)sender).CommandArgument.Substring(0, ((ImageButton)sender).CommandArgument.Length-2));
            string UserAnswer = Microsoft.VisualBasic.Interaction.InputBox("Pick an evaluation score from 0 to 3", "Pick a score", "");
            if (UserAnswer =="")
                System.Windows.Forms.MessageBox.Show("Please pick a number!");
            else
            {
                try {
                    if (Int32.Parse(UserAnswer) < 0 || Int32.Parse(UserAnswer) > 3)
                        System.Windows.Forms.MessageBox.Show("Please pick a number between 0 and 3!");
                    else
                    {
                        string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
                        SqlConnection conn = new SqlConnection(connStr);
                        SqlCommand EvaluateProgressReport = new SqlCommand("EvaluateProgressReport", conn);
                        EvaluateProgressReport.CommandType = CommandType.StoredProcedure;
                        EvaluateProgressReport.Parameters.Add(new SqlParameter("@supervisorID", Session["user"]));
                        EvaluateProgressReport.Parameters.Add(new SqlParameter("@thesisSerialNo", thesisId));
                        EvaluateProgressReport.Parameters.Add(new SqlParameter("@progressReportNo", reportNo));
                        EvaluateProgressReport.Parameters.Add(new SqlParameter("@evaluation", Int32.Parse(UserAnswer)));

                        conn.Open();
                        EvaluateProgressReport.ExecuteNonQuery();
                        conn.Close();
                        System.Windows.Forms.MessageBox.Show("Evaluation Added Successfully!");
                        Response.Redirect("SupervisorProgress.aspx");

                    }
                }
                catch(FormatException ex)
                {
                    System.Windows.Forms.MessageBox.Show("Please enter a valid number!");
                }
                

            }





        }
        protected void cancel(object sender, EventArgs e)
        {
            int thesisId = Int32.Parse(((ImageButton)sender).AlternateText);
            System.Diagnostics.Debug.WriteLine(thesisId);
            string connStr = WebConfigurationManager.ConnectionStrings["postGrad"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
            SqlCommand CancelThesis = new SqlCommand("CancelThesis", conn);
            CancelThesis.CommandType = CommandType.StoredProcedure;
            CancelThesis.Parameters.Add(new SqlParameter("@ThesisSerialNo", thesisId));
            SqlParameter success = CancelThesis.Parameters.Add("@success", SqlDbType.Int);
            success.Direction = ParameterDirection.Output;
            conn.Open();
            CancelThesis.ExecuteNonQuery();
            conn.Close();
            if ((Int32)success.Value == 0)
                System.Windows.Forms.MessageBox.Show("You can't cancel this thesis as it's last progress report evaluation isn't zero!");
            else
            {
                System.Windows.Forms.MessageBox.Show("Thesis canceled successfully");
                Response.Redirect("SupervisorProgress.aspx");
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