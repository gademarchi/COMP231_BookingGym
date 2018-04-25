using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            using (var db = new GymModelContainer())
            {

                var u = new User();
                u.Name = txtName.Text;
                u.Email = txtEmail.Text;
                u.Password = txtPassword.Text;
                u.Address = txtAddress.Text;
                u.City = txtCity.Text;
                u.PostalCode = txtPostalCode.Text;
                u.Province = Convert.ToString(ddlProvince.SelectedValue);

                if (rdAdmin.Checked == true)
                {
                    u.Admin = "Admin";
                }
                else if (rdUser.Checked == true)
                {
                    u.Admin = "User";
                }
                else if (rdInstructor.Checked==true)
                {
                    u.Admin = "Instructor";
                }
                else
                {
                    u.Admin = "N/A";
                }

                db.Users.Add(u);
                db.SaveChanges();


            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text="";
            txtEmail.Text="";
            txtPassword.Text="";
            txtAddress.Text="";
            txtCity.Text="";
            txtPostalCode.Text="";
            ddlProvince.Text="Provinces";

        }
    }
}