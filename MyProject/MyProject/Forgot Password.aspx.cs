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
    public partial class Forgot_Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetpswrd_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
            conn.Open();
            string secans = txtSecAns.Text;
            string pwd = txtPassword.Text;
            passwordreset.Resetpassword reset = new passwordreset.Resetpassword();
            String mesg = reset.resetpasswrd(username, pwd, secans);
            if (mesg == "success")
            {
                Response.Redirect("loginpasswordchange.aspx");
            }
            else if(mesg == "fail")
            {
                lblMsg.Text = "Wrong match. Try again";
            }
            conn.Close();


        }

        protected void btnSecque_Click(object sender, EventArgs e)
        {
            //string username = txtUsername.Text;
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
            //con.Open();
            //SqlCommand cmd = new SqlCommand("Select secQ from userinfo where uid = '" + username + "'", con);
            //SqlDataReader question = cmd.ExecuteReader();
            //string que = reader[question].ToString();
            //lblQuestion.Text = que;
            //question.Close();
            //cmd.Dispose();
            //con.Close();
            
        }
    }
}