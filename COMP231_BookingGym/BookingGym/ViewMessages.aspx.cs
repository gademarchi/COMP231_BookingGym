using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class ViewMessages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        public void BindGrid()
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                if (db.Messages.Count() > 0)
                {
                    gvMessages.DataSource = (from m in db.Messages
                                            select new { m.MessageId, m.Title, m.DescMessage, m.From, m.Posted }).ToList();

                    gvMessages.DataBind();

                }
                else
                {
                    gvMessages.DataSource = null;
                    gvMessages.DataBind();
                }
            }
        }


    }
}