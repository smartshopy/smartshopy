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
    public class StoredetailsService : System.Web.Services.WebService
    {

        [WebMethod]
        public Storedetails getstoredetails(String stid)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Database1"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select storename, storestreet, storecity, storezip, storeno from Storedetails where storeid = '" + stid + "'", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                Storedetails obj1 = new Storedetails();
                obj1.method_storename = reader[0].ToString();
                obj1.method_storestreet = reader[1].ToString();
                obj1.method_storecity = reader[2].ToString();
                obj1.method_storezip = reader[3].ToString();
                obj1.method_storephone = reader[4].ToString();

                return obj1;
            }
            catch (Exception ex)
            {
                return null;
            }

        }
    }
}
