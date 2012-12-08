using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using MyProject;

namespace MyProject
{

    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]

    public class Amazonservice : System.Web.Services.WebService
    {        
        [WebMethod]
        public Amazondetails methodAMAZdetails(string prod_id)
        {
            try
            {
                //conection of database
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Amazondatabase"].ConnectionString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("Select product_id, product_model, product_type, product_name, product_price from product_details where product_id = '" + prod_id + "'", conn);
                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                Amazondetails AMAZobj = new Amazondetails();
                //Get Values from Database.                
                AMAZobj.method_AMAZProdid = reader[0].ToString();
                AMAZobj.method_AMAZProdmodel = reader[1].ToString();
                AMAZobj.method_AMAZProdtype = reader[2].ToString();
                AMAZobj.method_AMAZProdname = reader[3].ToString();
                AMAZobj.method_AMAZProdprice = reader[4].ToString();
                return AMAZobj;
            }
            catch (Exception ex)
            {
                return null;
            }
                        

        }
    }
}
