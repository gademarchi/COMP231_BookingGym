using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Email"] != null)
            {
                btnLogout.Visible = true;
                LoadUserType();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            FormsAuthentication.SignOut();
            Response.Redirect("Login.aspx");
        }

        public void LoadUserType()
        {
            if(Session["Admin"].ToString() == "Admin")
            {
                lnkMUsers.Visible = true;
                lnkMClasses.Visible = true;
                lnkPMessages.Visible = true;
                lnkRClasses.Visible = true;
                lnkVMessages.Visible = true;
                lnkRTimetable.Visible = true;
                lnkSignUp.Visible = true;
                lnkVTimetable.Visible = true;

            }
            else if (Session["Admin"].ToString() == "User")
            {
                lnkVTimetable.Visible = true;
                lnkVMessages.Visible = true;
                lnkRTimetable.Visible = true;
            }
            else if(Session["Admin"].ToString() == "Instructor")
            {
                lnkVTimetable.Visible = true;
                lnkMUsers.Visible = true;
                lnkPMessages.Visible = true;
                lnkVMessages.Visible = true;
                lnkMClasses.Visible = true;
                lnkCList.Visible = true;

            }


        }


    }
}