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
    /// Summary description for Resetpassword
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class Resetpassword : System.Web.Services.WebService
    {

        [WebMethod]
        public String resetpasswrd(string uname, string pwd, string secans)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("Select *from userinfo where uid = '" + uname + "' and secAns = '" + secans + "'", conn);
            SqlDataReader p = cmd.ExecuteReader();
            if (p.HasRows)
            {
                p.Close();
                SqlCommand reset = new SqlCommand("update userinfo set password = '" + pwd + "' where uid = '" + uname + "'", conn);
                reset.ExecuteNonQuery();                
                conn.Close();
                cmd.Dispose();
                reset.Dispose();
                return "success";
            }
            else
            {
                cmd.Dispose();
                p.Close();
                conn.Close();
                return "fail";
            }
        }

    }
}
