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
                if (db.Users.Count() > 0)
                {
                    gvList.DataSource = (from c in db.Users
                                            select new { c.Name, DateTime.Today }).ToList();

                    gvList.DataBind();

                }
                else
                {
                    gvList.DataSource = null;
                    gvList.DataBind();
                }
            }



        }



    }
}