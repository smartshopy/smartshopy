using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



namespace MyProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void btnSignin_Click(object sender, EventArgs e)
        {
            String uname = txtName.Text;            
            String passw = txtPassword.Text;
            try
            {
                loginmethod.Login1 login = new loginmethod.Login1();
                string message = login.methodlogin(uname, passw);
                if (message == "success")
                {
                    Session["Email"] = uname;
                    Session["Password"] = passw;
                    Response.Redirect("MainPage.aspx");
                }
                else if (message == "username")
                {
                    lblMessage.Text = "Invalid username";

                }
                else if (message == "password")
                {
                    lblMessage.Text = "Invalid Password";
                }
                else
                {
                    lblMessage.Text = "Invalid Login. Try Again";
                }
            }
            catch (Exception ex)
            {
                String dd = ex.Message;
                Response.Write(dd);
            }
        }
    }
}