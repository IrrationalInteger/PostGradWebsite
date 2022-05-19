using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Milestone3
{
    public partial class Adminhomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("Login.aspx");
            

        }
        protected void supervisor(object sender, EventArgs e)
        {
            Instal.Visible = false;
            thesis.Visible = false;
            options.Visible = false;
            payments.Visible = false;
            sup.Visible = !sup.Visible;
        }
        protected void Installments(object sender, EventArgs e)
        {
            payments.Visible = false;
            options.Visible = false;
            sup.Visible = false;
            thesis.Visible = false;
            Instal.Visible = !Instal.Visible;
        }
        protected void Theses(object sender, EventArgs e)
        {
            payments.Visible = false;
            options.Visible = false;
            sup.Visible = false;
            Instal.Visible = false;
            thesis.Visible = !thesis.Visible;
        }
        protected void option(object sender, EventArgs e)
        {

            payments.Visible = false;
            sup.Visible = false;
            Instal.Visible = false;
            thesis.Visible = false;
            options.Visible = !options.Visible;
        }
        protected void payment(object sender, EventArgs e)
        {
            sup.Visible = false;
            Instal.Visible = false;
            thesis.Visible = false;
            options.Visible = false;
            payments.Visible = !payments.Visible;
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
        protected void supervisors(object sender, BulletedListEventArgs e)
        {
                Response.Redirect("Allsupervisors.aspx");
        }
        protected void Theses(object sender, BulletedListEventArgs e)
        {

            if (e.Index == 0)
            {

                Response.Redirect("Alltheses.aspx");
            }
            if (e.Index == 1)
                Response.Redirect("Updatethesis.aspx");
        }
        protected void payment(object sender, BulletedListEventArgs e)
        {

           
                Response.Redirect("Issuethesispayment.aspx");
        }
        protected void installment(object sender, BulletedListEventArgs e)
        {

           
                Response.Redirect("Issueinstallments.aspx");
        }

    }
}