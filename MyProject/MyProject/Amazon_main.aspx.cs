using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
namespace MyProject
{
    public partial class Amazon_main : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string AMAZID = Session["productid"].ToString();
            AMAZimage.ImageUrl = "~/Websiteimages/" + AMAZID + ".jpg";
            Amazonwebservice.Amazonservice obj1 = new Amazonwebservice.Amazonservice();
            obj1.Credentials = System.Net.CredentialCache.DefaultCredentials;
            Amazonwebservice.Amazondetails details = obj1.methodAMAZdetails(AMAZID);
            lblAPId.Text = details.method_AMAZProdid;
            lblAPModel.Text = details.method_AMAZProdmodel;
            lblAPName.Text = details.method_AMAZProdtype;
            lblAPType.Text = details.method_AMAZProdname;
            lblAPPrice.Text = details.method_AMAZProdprice;
        }              
           
    }
}