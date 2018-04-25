using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class RegisterClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadInstructor();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                var cl = new Class();
                cl.ClassName = txtClassName.Text;
                cl.Professor = ddlInstructor.Text;
                cl.WeekDay = ddlWeekDay.SelectedValue;
                cl.Starts = txtClassStarts.Text;
                cl.Finish = txtClassFinish.Text;
                db.Classes.Add(cl);
                db.SaveChanges();
                
            }
        }

        public void LoadInstructor()
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                if (db.Users.Count() > 0)
                {
                    ddlInstructor.DataSource = (from u in db.Users
                                   where u.Admin == "Instructor"
                                   select u.Name).ToList();

                    ddlInstructor.DataBind();

                }
                else
                {
                    ddlInstructor.DataSource = null;
                    ddlInstructor.DataBind();
                }
            }

        }


    }
}