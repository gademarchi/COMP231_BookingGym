using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class Register_Timetable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGridUser();
        }


        public void BindGridUser()
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                if (db.Users.Count() > 0)
                {
                    ddlUser.DataSource = (from u in db.Users
                                          select u.UserId +" - "+ u.Name).ToList();

                    ddlUser.DataBind();

                }
                else
                {
                    ddlUser.DataSource = null;
                    ddlUser.DataBind();
                }



            }
        }




    }
}