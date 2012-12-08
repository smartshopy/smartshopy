using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;

namespace MyProject
{
    
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    
    public class Login1 : System.Web.Services.WebService
    {

        [WebMethod]
        public string methodlogin(string username, string password)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from userinfo where uid = '" + username + "' and password = '" + password + "'", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            String name = (String)reader["uid"];
            String pwd = (String)reader["password"];
            if ((name == username) && (pwd == password))
            {
               return ("success");
            }
            else if((name != username) && (pwd == password))
            {
                return "username";
            }
            else if ((name == username) && (pwd != password))
            {
                return "password";
            }
            else
            {
                return "fail";
            }
        }
    }
}
