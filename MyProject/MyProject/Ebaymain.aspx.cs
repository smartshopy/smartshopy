using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class Ebaymain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string EbayId = Session["productid"].ToString();
            Ebayimg.ImageUrl = "~/Websiteimages/" + EbayId + ".jpg";
            Ebaywebservice.EbayService obj = new Ebaywebservice.EbayService();
            Ebaywebservice.Ebaydetails Ebinfo = obj.methodEbayinfo(EbayId);
            lblEbayID.Text = Ebinfo.method_EbayProdID;
            lblEbayModel.Text = Ebinfo.method_EbayProdModel;
            lblEbayType.Text = Ebinfo.method_EbayProdType;
            lblEbayName.Text = Ebinfo.method_EbayProdName;
            lblEbayPrice.Text = Ebinfo.method_EbayProdPrice;
            lblEbaySpec.Text = Ebinfo.method_EbayProdSpec;
        }
    }
}