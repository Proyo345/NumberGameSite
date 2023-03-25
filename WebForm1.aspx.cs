using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            grdUserGuess.Visible = false;
            lblIncorrect.Visible = false;
        }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(@"Server=LocalHost\sqlexpress;Database=NumberGame;Integrated Security=true"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from Users where Username = '" + txtUsername.Text + "' and Password = '" + txtPassword.Text + "' and UserType = 'Admin'", con);
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    txtPassword.Visible = false;
                    txtUsername.Visible = false;
                    lblPassword.Visible = false;
                    lblUsername.Visible = false;
                    btnLogin.Visible = false;
                    grdUserGuess.Visible = true;
                }
                else
                {
                    lblIncorrect.Visible = true;
                }
                reader.Close();
            }
        }
    }
}