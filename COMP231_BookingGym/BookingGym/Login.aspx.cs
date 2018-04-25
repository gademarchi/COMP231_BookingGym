using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {

            using (GymModelContainer db = new GymModelContainer())
            {

                var checkEmail = (from ce in db.Users
                                  where ce.Email == txtEmail.Text
                                  select ce.Email).SingleOrDefault();

                var checkPassword = (from cp in db.Users
                                     where cp.Email == txtEmail.Text
                                     select cp.Password).SingleOrDefault();

                var verifyAdmin = (from v in db.Users
                                   where v.Email == txtEmail.Text
                                   select v.Admin).SingleOrDefault();

                var verifyId = (from v in db.Users
                                   where v.Email == txtEmail.Text
                                   select v.UserId).SingleOrDefault();

                if (checkEmail != txtEmail.Text)
                {
                    lblMsg.Visible = true;
                    
                }
                else if(checkPassword != txtPassword.Text)
                {
                    lblMsg.Visible = true;
                }
                else
                {
                    
                    Session["Email"] = txtEmail.Text;
                    Session["Admin"] = verifyAdmin;
                    Session["UserId"] = verifyId;
                    Response.Redirect("ViewMessages.aspx");

                }




            }



        }
    }
}