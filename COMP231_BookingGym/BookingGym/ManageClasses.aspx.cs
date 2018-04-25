using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class ManageClasses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        protected void gvClasses_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                int ClassId = Convert.ToInt32(gvClasses.DataKeys[e.RowIndex].Value);

                Class cl = db.Classes.First(c => c.ClassId == ClassId);
                db.Classes.Remove(cl);
                db.SaveChanges();
                BindGrid();

            }

        }

        protected void gvClasses_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                int ClassId = Convert.ToInt32(gvClasses.DataKeys[e.RowIndex].Value);
                Class cl = db.Classes.First(c => c.ClassId == ClassId);

                txtClassId.Text = Convert.ToString(cl.ClassId);
                txtClassName.Text = cl.ClassName;
                txtProfessor.Text = cl.Professor;
                ddlWeekDay.Text = cl.WeekDay;
                txtClassStarts.Text = cl.Starts;
                txtClassFinish.Text = cl.Finish;


            }



        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            GymModelContainer db = new GymModelContainer();
            int ClassId = Convert.ToInt32(txtClassId.Text);

            Class cl = db.Classes.First(c => c.ClassId == ClassId);
            cl.ClassName = txtClassName.Text;
            cl.Professor = txtProfessor.Text;
            cl.WeekDay = ddlWeekDay.Text;
            cl.Starts = txtClassStarts.Text;
            cl.Finish = txtClassFinish.Text;
            db.SaveChanges();
            BindGrid();

        }

        public void BindGrid()
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                if (db.Classes.Count() > 0)
                {
                    gvClasses.DataSource = (from c in db.Classes
                                            select new { c.ClassId, c.ClassName, c.Professor, c.WeekDay , c.Starts, c.Finish }).ToList();

                    gvClasses.DataBind();

                }
                else
                {
                    gvClasses.DataSource = null;
                    gvClasses.DataBind();
                }
            }



        }
    }
}
