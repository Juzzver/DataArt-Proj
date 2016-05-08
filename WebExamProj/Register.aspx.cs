using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebExamProj
{

   
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegistrationButton_Click(object sender, EventArgs e)
        {

            using (var db = new DataArtTestEntities2())
            {
                db.Users.Add(new Users {name = RegName.Text, surname = RegSurname.Text, enterLevel = 1,email = RegEmail.Text,numberPhone = RegContactNumber.Text});

                if (db.SaveChanges() > 0)
                Response.Write("Users was saved");

                RegName.Text = null;
                RegSurname.Text = null;
                RegEmail.Text = null;
                RegContactNumber = null;
            }



        }
    }
}