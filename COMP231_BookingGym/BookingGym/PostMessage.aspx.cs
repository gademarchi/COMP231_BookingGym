using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class PostMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            using(GymModelContainer db = new GymModelContainer())
            {
                var m = new Message();
                m.Title = txtTitle.Text;
                m.DescMessage = txtMessage.Text;
                m.From = Session["Email"].ToString();
                m.Posted = Convert.ToString(DateTime.Now);

                db.Messages.Add(m);
                db.SaveChanges();
                
            }
        }
    }
}