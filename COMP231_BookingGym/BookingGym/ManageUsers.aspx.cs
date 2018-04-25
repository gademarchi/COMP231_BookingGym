using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookingGym
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }



        }

        protected void GridView1_Load(object sender, EventArgs e)
        {



        }

        public void BindGrid()
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                if (db.Users.Count() > 0)
                {
                    gvUsers.DataSource = (from u in db.Users
                                          select new { u.UserId, u.Name, u.Email, u.Password, u.Address, u.City, u.Province, u.PostalCode, u.Admin }).ToList();

                    gvUsers.DataBind();

                }
                else
                {
                    gvUsers.DataSource = null;
                    gvUsers.DataBind();
                }



            }
        }

        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                int UserId = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value);
                User us = db.Users.First(u => u.UserId == UserId);

                txtUserId.Text = Convert.ToString(us.UserId);
                txtName.Text = us.Name;
                txtEmail.Text = us.Email;
                txtPassword.Text = us.Password;
                txtAddress.Text = us.Address;
                txtCity.Text = us.City;
                ddlProvince.Text = us.Province;
                txtPostalCode.Text = us.PostalCode;

                if (us.Admin == "Admin")
                {
                    rdAdmin.Checked = true;

                }
                else if (us.Admin == "User")
                {
                    rdUser.Checked = true;
                }
                else if (us.Admin == "Instructor")
                {
                    rdInstructor.Checked = true;
                }




            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            GymModelContainer db = new GymModelContainer();
            int UserId = Convert.ToInt32(txtUserId.Text);

            User user = db.Users.First(u => u.UserId == UserId);

            user.Name = txtName.Text;
            user.Email = txtEmail.Text;
            user.Password = txtPassword.Text;
            user.Address = txtAddress.Text;
            user.City = txtCity.Text;
            user.PostalCode = txtPostalCode.Text;
            user.Province = ddlProvince.SelectedValue;

            if (rdAdmin.Checked == true)
            {
                user.Admin = "Admin";
            }
            else if (rdUser.Checked == true)
            {
                user.Admin = "User";
            }
            else if (rdInstructor.Checked == true)
            {
                user.Admin = "Instructor";
            }
            else
            {
                user.Admin = "N/A";
            }

            db.SaveChanges();
            BindGrid();

        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (GymModelContainer db = new GymModelContainer())
            {
                int UserId = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value);

                User user = db.Users.First(u => u.UserId == UserId);
                db.Users.Remove(user);
                db.SaveChanges();
                BindGrid();

            }

        }
    }
}