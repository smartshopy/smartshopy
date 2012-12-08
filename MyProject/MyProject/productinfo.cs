using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyProject
{
    public class productinfo
    {
        protected string product_id;
        
        public string method_id {
            get { return product_id; }
            set { product_id = value; }
        }

        private string product_model;
        public string method_model
        {
            get { return product_model; }
            set { product_model = value; }
        }
        private string product_type;
        
        public string method_type
        {
            get { return product_type; }
            set { product_type = value; }
        }
        private string product_name;
                public string method_name
        {
            get { return product_name; }
            set { product_name = value; }
        }

        private float price;
        
        public float method_price
        {
            get { return price; }
            set { price = value; }
        }
        
        
    }

       
}