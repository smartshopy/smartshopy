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
    public class BestBuyService : System.Web.Services.WebService
    {

        [WebMethod]
        public BestBuydetails methodBBUYdetails(string BBUYid)
        {
            
                //conection of database
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Bestbuydatabase"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select pro_id, pro_model, pro_type, pro_name, pro_price from Pro_details where pro_id = '" + BBUYid + "'", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                BestBuydetails BBUYobj = new BestBuydetails();
                //Get Values from Database.                
                BBUYobj.method_BBUYProdId = reader[0].ToString();
                BBUYobj.method_BBUYProdmodel = reader[1].ToString();
                BBUYobj.method_BBUYProdtype = reader[2].ToString();
                BBUYobj.method_BBUYProdname = reader[3].ToString();
                BBUYobj.method_BBUYProdprice = reader[4].ToString();
                return BBUYobj;
            
            
        }
    }
}