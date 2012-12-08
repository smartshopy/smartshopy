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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                string uname = Session["Email"].ToString();
                Imag1.ImageUrl = "~/images/" + uname + ".jpg";
                string passw = Session["Password"].ToString();
                //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
                //conn.Open();
                //SqlCommand cmd = new SqlCommand("Select fname,city,phone,gender from userinfo where uid = '" + uname + "' and password = '" + passw + "'", conn);
                //SqlDataReader reader = cmd.ExecuteReader();
                //reader.Read();            
                //    Session["name"] = reader[0].ToString();
                //    Session["city"] = reader[1].ToString();
                //    Session["Phoneno"] = reader[2].ToString();
                //    Session["Gender"] = reader[3].ToString();   

                GetUserDetails.MainpageDetails uinfo = new GetUserDetails.MainpageDetails();
                GetUserDetails.Userdetails info = uinfo.methodgetUserdetails(uname, passw);
                lblName.Text = info.method_name;  //Session["name"].ToString();
                lblCity.Text = info.method_city; // Session["City"].ToString();
                lblEmail.Text = Session["Email"].ToString();
                lblPhone.Text = info.method_phone; // Session["Phoneno"].ToString();
                lblGender.Text = info.method_gender; // Session["Gender"].ToString();
            
        }

               

        protected void btnWebsite_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Searchwebsite.aspx");
        }

        protected void btnStore_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Storepage.aspx");
        }

        protected void btnPersonalize_Click(object sender, EventArgs e)
        {
            Response.Redirect("Personalize.aspx");
        }

    }
}