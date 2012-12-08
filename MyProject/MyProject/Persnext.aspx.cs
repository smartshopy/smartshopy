using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string itemsid = Session["items"].ToString();
            if (itemsid == "milk")
            {

                lbl1.Text = "Send through Sms";
                lbl2.Text = "Milk: 2.29$ Gomers 66";
                lbl3.Text = "Milk: 2.59$ Philips 66";
                lbl4.Text = "Milk: 2.39$ Joe81";
                lbl5.Text = "Milk:2.39$ QT12";
            }
            else if (itemsid == "bread")
            {
                lbl1.Text = "Send through Sms";
                lbl2.Text = "Bread: 2.29$ Gomers 66";
                lbl3.Text = "Bread: 2.59$ Philips 66";
                lbl4.Text = "Bread: 2.39$ Joe81";
                lbl5.Text = "Bread:2.39$ QT12";
            }
            else if (itemsid == "candy")
            {
                lbl1.Text = "Send through Sms";
                lbl2.Text = "Candy: 2.49$ Gomers 66";
                lbl3.Text = "Candy: 2.59$ Philips 66";
                lbl4.Text = "Candy: 2.49$ Joe81";
                lbl5.Text = "Candy:2.59$ QT12";
            }
            else if (itemsid == "lays")
            {
                lbl1.Text = "Send through Sms";
                lbl2.Text = "lays: 1.09$ Gomers 66";
                lbl3.Text = "lays: 1.49$ Philips 66";
                lbl4.Text = "lays: 1.39$ Joe81";
                lbl5.Text = "lays:1.49$ QT12";
            }
        }
    }
}