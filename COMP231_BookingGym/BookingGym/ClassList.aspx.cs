using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class ClassList : System.Web.UI.Page
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
                    gvList.DataSource = (from t1 in db.Timetables
                                               join t2 in db.Classes on t1.ClassId equals t2.ClassId
                                               join t3 in db.Users on t1.UserId equals t3.UserId
                                               select new { t3.Name, t2.ClassName, t2.Professor }).ToList();

                    gvList.DataBind();

                }
                else
                {
                    gvList.DataSource = null;
                    gvList.DataBind();
                }
            }



        }

        protected void gvList_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Present")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvList.Rows[index];
                int IdCompany = Convert.ToInt32(gvList.DataKeys[index].Value);

                GymModelContainer db = new GymModelContainer();

                User user = new User();
              //  user.

            }


        }
    }
}