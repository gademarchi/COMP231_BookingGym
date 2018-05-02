using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class ViewTimetable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGrid();
        }


        public void BindGrid()
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                int UserId = Convert.ToInt32(Session["UserId"]);
                if (db.Classes.Count() > 0)
                {
                    gvTimetables.DataSource = (from t1 in db.Timetables
                                               where t1.UserId == UserId
                                              join t2 in db.Classes on t1.ClassId equals t2.ClassId
                                              join t3 in db.Users on t1.UserId equals t3.UserId
                                              select new { t3.Name, t2.ClassName, t2.Professor, t2.WeekDay, t2.Starts, t2.Finish,t1.TimetableId }).ToList();

                    gvTimetables.DataBind();

                }
                else
                {
                    gvTimetables.DataSource = null;
                    gvTimetables.DataBind();
                }
            }
        }



        protected void gvTimetables_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                int TimetableId = Convert.ToInt32(gvTimetables.DataKeys[e.RowIndex].Value);

                Timetable time = db.Timetables.First(u => u.TimetableId == TimetableId);
                db.Timetables.Remove(time);
                db.SaveChanges();
                BindGrid();

            }
        }
    }
}