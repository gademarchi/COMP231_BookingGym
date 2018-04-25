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
            BindGrid();
        }

        public void BindGrid()
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                if (db.Classes.Count() > 0)
                {
                    gvTimetable.DataSource = (from c in db.Classes
                                            select new { c.ClassId, c.ClassName, c.Professor, c.WeekDay, c.Starts, c.Finish, }).ToList();

                    gvTimetable.DataBind();

                }
                else
                {
                    gvTimetable.DataSource = null;
                    gvTimetable.DataBind();
                }
            }



        }

        protected void gvTimetable_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "Add")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvTimetable.Rows[index];
                int ClassId = Convert.ToInt32(gvTimetable.DataKeys[index].Value);

                GymModelContainer db = new GymModelContainer();

                var tm = new Timetable();
                tm.ClassId = ClassId;
                tm.UserId = Convert.ToInt32(Session["UserId"]);

                db.Timetables.Add(tm);
                db.SaveChanges();
                BindGrid();

            }
        }
    }
}