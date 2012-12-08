using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class BestBuysite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string BBUYID = Session["productid"].ToString();
            BBUYImage.ImageUrl = "~/Websiteimages/" + BBUYID + ".jpg";
            BBuyWebservice.BestBuyService obj2 = new BBuyWebservice.BestBuyService();
            BBuyWebservice.BestBuydetails Bbuydetails = obj2.methodBBUYdetails(BBUYID);
            lblID.Text = Bbuydetails.method_BBUYProdId;
            lblModel.Text = Bbuydetails.method_BBUYProdmodel;
            lblType.Text = Bbuydetails.method_BBUYProdtype;
            lblName.Text = Bbuydetails.method_BBUYProdname;
            lblPrice.Text = Bbuydetails.method_BBUYProdprice;
            

        }
       
    }
}