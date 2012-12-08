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
    public class MainpageDetails : System.Web.Services.WebService
    {

        [WebMethod]
        public Userdetails methodgetUserdetails(string uname, string passwd)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select fname,city,phone,gender from userinfo where uid = '" + uname + "' and password = '" + passwd + "'", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                Userdetails obj = new Userdetails();
                obj.method_name = reader[0].ToString();
                obj.method_city = reader[1].ToString();
                obj.method_phone = reader[2].ToString();
                obj.method_gender = reader[3].ToString();
                return obj;
            }
            catch (Exception ex)
            {
                return null;
            }
        }
    }
}
