using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;
using Subgurim.Controles;
using Subgurim.Controles.GoogleChartIconMaker;
using System.Drawing;

namespace MyProject
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["storid"] = txtStore.Text;
        }

        protected void btnViewStore_Click(object sender, EventArgs e)
        {            
            Storewebservice.StoredetailsService st = new Storewebservice.StoredetailsService();
            Storewebservice.Storedetails details = st.getstoredetails(txtStore.Text);            
            lblStorename.Text = details.method_storename;
            lblst.Text = details.method_storestreet;
            lblstorecity.Text = details.method_storecity;
            lblstoreZip.Text = details.method_storezip;
            lblPhnum.Text = details.method_storephone;
            //string address = details.method_storestreet+", " +details.method_storecity + "," + details.method_storezip;
            string address = "63rd and holmes, Kansas City, Missouri";
            string latitude1 = "";
            string longitude1 = "";
            // Response.Redirect("http://where.yahooapis.com/geocode?location=" +address );

            XmlTextReader xtr = new XmlTextReader("http://where.yahooapis.com/geocode?location=" + address);
            xtr.WhitespaceHandling = WhitespaceHandling.Significant;
            //Response.Write(xtr.ToString());
            try
            {
                while (xtr.Read())
                {
                    if (xtr.Name.ToString() == "latitude")
                    {
                        latitude1 = xtr.ReadString().ToString();
                    }
                    if (xtr.Name.ToString() == "longitude")
                    {
                        longitude1 = xtr.ReadString().ToString();
                    }


                }

                lblLat.Text = latitude1;
                lblLong.Text = longitude1;
                GMap1.addGMapUI(new GMapUI());
                GMapUIOptions options = new GMapUIOptions();
                GLatLng latlong = new GLatLng(double.Parse(latitude1), double.Parse(longitude1));
                GMapType.GTypes maptype = GMapType.GTypes.Normal;
                GMap1.setCenter(latlong, 15, maptype);
                //GMap1.GZoom = 9;
                PinLetter pinLetter = new PinLetter("Y", Color.Yellow, Color.Black);

                GMap1.addGMarker(new GMarker(latlong, new GMarkerOptions(new GIcon(pinLetter.ToString(), pinLetter.Shadow()))));
                GMarker marker = new GMarker(latlong);
                GInfoWindowOptions IWoptions = new GInfoWindowOptions(12, maptype);

                GInfoWindow mbUp = new GInfoWindow(marker, address, IWoptions);
                GMap1.addInfoWindow(mbUp);
                //GMarker gm = new GMarker(latlong);

                //GMap1.addGMarker(gm);



                // GMap1.addControl(new GControl(GControl.extraBuilt.MarkCenter));
                //GMap1.addControl(new GControl(GControl.extraBuilt.TextualCoordinatesControl));

                // Response.Redirect("http://maps.google.com/?q=" + latitude1 + "," + longitude1);
            }
            catch (Exception)
            {
                Response.Write("invalid adress");
            }
        }
    }
}