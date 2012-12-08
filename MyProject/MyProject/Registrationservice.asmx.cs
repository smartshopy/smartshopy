using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;

namespace MyProject
{
    /// <summary>
    /// Summary description for Registrationservice
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Registrationservice : System.Web.Services.WebService
    {
        [WebMethod]
        public string methodregister(string userid, string firstname, string lastname, string pswrd, string sex, string streeet, string town, string stat, string zipcode, string phonenum, string que, string ans)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from userinfo where uid = '"+ userid +"'", conn);
            SqlDataReader read = cmd.ExecuteReader();
         if( (read.HasRows)) 
         {
             cmd.Dispose();
             read.Close();
             conn.Close();
             return "fail";
             

         }
         
            
      
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
                con.Open();
                SqlCommand c = new SqlCommand("Insert into userinfo(uid,fname,lname,phone,password,gender,street,city,state,zip,secQ,secAns) values ( '" + userid + "', '" + firstname + "','" + lastname + "','" + phonenum + "','" + pswrd + "', '" + sex + "','" + streeet + "','" + town + "','" + stat + "','" + zipcode + "','" + que + "','" + ans + "')", con);
                int n = c.ExecuteNonQuery();
                cmd.Dispose();
                c.Dispose();
                read.Close();
                con.Close();
                conn.Close();
                return ("success");
                          
         }
         
        
         
        }
    }
}
