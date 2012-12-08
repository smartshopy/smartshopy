using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;

namespace MyProject
{

    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class EbayService : System.Web.Services.WebService
    {
        [WebMethod]
        public Ebaydetails methodEbayinfo(String EbayId)
        {
              SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Ebaydatabase"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select prod_id, prod_model, prod_type, prod_name, prod_price, prod_specif from Prod_details where prod_id = '" + EbayId + "'", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                Ebaydetails Ebayobj = new Ebaydetails();
                //Get Values from Database. 
                Ebayobj.method_EbayProdID = reader[0].ToString();
                Ebayobj.method_EbayProdModel = reader[1].ToString();
                Ebayobj.method_EbayProdType = reader[2].ToString();
                Ebayobj.method_EbayProdName = reader[3].ToString();
                Ebayobj.method_EbayProdPrice = reader[4].ToString();
                Ebayobj.method_EbayProdSpec = reader[5].ToString();
                return Ebayobj;
            
            
        }
    }
}
