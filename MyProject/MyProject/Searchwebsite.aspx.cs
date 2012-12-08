using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

namespace MyProject
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Session["productid"] = txtWEBID.Text;
            string ProductID = Session["productid"].ToString();
            //SqlConnection Amazconn = new SqlConnection(ConfigurationManager.ConnectionStrings["Amazondatabase"].ConnectionString);
            //Amazconn.Open();
            //SqlCommand cmd = new SqlCommand("Select product_price from product_details where product_id = '" + ProductID + "'", Amazconn);
            //SqlDataReader reader = cmd.ExecuteReader();
            //reader.Read();
            //String Amazonprice = reader[0].ToString();
            Amazonwebservice.Amazonservice AMAZobj = new Amazonwebservice.Amazonservice();
            AMAZobj.Credentials = System.Net.CredentialCache.DefaultCredentials;
            Amazonwebservice.Amazondetails Amadetails = AMAZobj.methodAMAZdetails(ProductID);
            BBuyWebservice.BestBuyService BBUYobj = new BBuyWebservice.BestBuyService();
            BBuyWebservice.BestBuydetails Bbuydetails = BBUYobj.methodBBUYdetails(ProductID);
            Ebaywebservice.EbayService Ebayobj = new Ebaywebservice.EbayService();
            Ebaywebservice.Ebaydetails Ebinfo = Ebayobj.methodEbayinfo(ProductID);            
            String Amazonpprice, BBuypprice, Ebaypprice;
            Amazonpprice = Amadetails.method_AMAZProdprice;
            BBuypprice = Bbuydetails.method_BBUYProdprice;
            Ebaypprice = Ebinfo.method_EbayProdPrice;
            int Amp = Int32.Parse((Amazonpprice));
            int BBp = Int32.Parse((BBuypprice));
            int Ebp = Int32.Parse((Ebaypprice));
            if (Amp < BBp)
            {
                if (Amp < Ebp)
                {
                    Response.Redirect("Amazon_main.aspx");
                }
                else if (Ebp < BBp)
                {
                    Response.Redirect("Ebaymain.aspx");
                }
                else
                {
                    Response.Redirect("BestBuysite.aspx");
                }
            }
            else
            {
                if (BBp < Ebp)
                {
                    Response.Redirect("BestBuysite.aspx");
                }
                else
                {
                    Response.Redirect("Ebaymain.aspx");
                }
            }

        }

        protected void btnGetId_Click(object sender, EventArgs e)
        {
            Response.Redirect("GetProductId.aspx");
        }                    
       
    }
} 