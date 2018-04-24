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

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                var cl = new Class();
                cl.ClassName = txtClassName.Text;
                cl.Professor = txtProfessor.Text;
                cl.Starts = txtClassStarts.Text;
                cl.Finish = txtClassFinish.Text;
                db.Classes.Add(cl);
                db.SaveChanges();
                
            }
        }
    }
}