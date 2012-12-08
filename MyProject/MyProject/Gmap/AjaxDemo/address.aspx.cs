//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;
//using MyService;
//using GeoCoding;
//using System.Xml;
//using Subgurim.Controles;
//public partial class address : System.Web.UI.Page
//{
//    protected void Page_Load(object sender, EventArgs e)
//    {

//        if (!Page.IsPostBack)
//        {
//            GMap1.Visible = true; ;
//        }
//    }
//    protected void Button1_Click(object sender, EventArgs e)
//    {
//        if (TextBox1.Text != "")
//        {
//            GMap1.Visible = true;
//        }
//        try
//        {
            
//            String url = "http://maps.googleapis.com/maps/api/geocode/xml?address=";
//            String str = TextBox1.Text;
//            String[] s = str.Split(' ');
//            foreach (String st in s)
//            {
                
//                url += "+" + st;
//            }
            

//            String uri = url + "&sensor=false";

//            String response = new System.Net.WebClient().DownloadString(uri);
//            XmlDocument xmlDoc = new XmlDocument();
//            xmlDoc.LoadXml(response);
//            XmlNodeList nl = xmlDoc.DocumentElement.SelectNodes("result");
//            //string longi = xmlDoc.DocumentElement.SelectSingleNode(@"//longitude ").InnerText;
//            foreach (XmlNode n in nl)
//            {
//                XmlNode x1 = n.SelectSingleNode("geometry/location/lat");
//                String lat = x1.InnerText;
//                XmlNode x2 = n.SelectSingleNode("geometry/location/lng");
//                String lng = x2.InnerText;
//                Label1.Text = lat;
//                Label2.Text = lng;
//            }
            
//        }
//        catch (NullReferenceException ex)
//        {
//            Response.Write(ex.Message);
//        }
        

 
  
//    }
//    // GooGle MAp Marker Code
//    protected void Button2_Click(object sender, EventArgs e)

//    {
//        string skey = "AIzaSyD9Lp24nMU4v0b9L4IVbri-acK7on0DQPQ";
//        GMap1.Key = skey;
//        double lat = double.Parse(Label1.Text);
//        double lng = double.Parse(Label2.Text);
//        GMap1.Add(new GControl(GControl.preBuilt.LargeMapControl));
//        GMap1.setCenter(new GLatLng(lat,lng), 10, Subgurim.Controles.GMapType.GTypes.Normal);
//        GMarker marker = new GMarker(new GLatLng(lat,lng));
//    GInfoWindow window = new GInfoWindow(marker,"<center><b>"+lat+","+lng+"</b></center>");
//    GMap1.addInfoWindow(window);
        
//    }
//}