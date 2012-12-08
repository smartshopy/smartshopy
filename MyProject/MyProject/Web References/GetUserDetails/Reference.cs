﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.269
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// 
// This source code was auto-generated by Microsoft.VSDesigner, Version 4.0.30319.269.
// 
#pragma warning disable 1591

namespace MyProject.GetUserDetails {
    using System;
    using System.Web.Services;
    using System.Diagnostics;
    using System.Web.Services.Protocols;
    using System.ComponentModel;
    using System.Xml.Serialization;
    
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Web.Services.WebServiceBindingAttribute(Name="MainpageDetailsSoap", Namespace="http://tempuri.org/")]
    public partial class MainpageDetails : System.Web.Services.Protocols.SoapHttpClientProtocol {
        
        private System.Threading.SendOrPostCallback methodgetUserdetailsOperationCompleted;
        
        private bool useDefaultCredentialsSetExplicitly;
        
        /// <remarks/>
        public MainpageDetails() {
            this.Url = global::MyProject.Properties.Settings.Default.MyProject_Userdetails_MainpageDetails;
            if ((this.IsLocalFileSystemWebService(this.Url) == true)) {
                this.UseDefaultCredentials = true;
                this.useDefaultCredentialsSetExplicitly = false;
            }
            else {
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        public new string Url {
            get {
                return base.Url;
            }
            set {
                if ((((this.IsLocalFileSystemWebService(base.Url) == true) 
                            && (this.useDefaultCredentialsSetExplicitly == false)) 
                            && (this.IsLocalFileSystemWebService(value) == false))) {
                    base.UseDefaultCredentials = false;
                }
                base.Url = value;
            }
        }
        
        public new bool UseDefaultCredentials {
            get {
                return base.UseDefaultCredentials;
            }
            set {
                base.UseDefaultCredentials = value;
                this.useDefaultCredentialsSetExplicitly = true;
            }
        }
        
        /// <remarks/>
        public event methodgetUserdetailsCompletedEventHandler methodgetUserdetailsCompleted;
        
        /// <remarks/>
        [System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://tempuri.org/methodgetUserdetails", RequestNamespace="http://tempuri.org/", ResponseNamespace="http://tempuri.org/", Use=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)]
        public Userdetails methodgetUserdetails(string uname, string passwd) {
            object[] results = this.Invoke("methodgetUserdetails", new object[] {
                        uname,
                        passwd});
            return ((Userdetails)(results[0]));
        }
        
        /// <remarks/>
        public void methodgetUserdetailsAsync(string uname, string passwd) {
            this.methodgetUserdetailsAsync(uname, passwd, null);
        }
        
        /// <remarks/>
        public void methodgetUserdetailsAsync(string uname, string passwd, object userState) {
            if ((this.methodgetUserdetailsOperationCompleted == null)) {
                this.methodgetUserdetailsOperationCompleted = new System.Threading.SendOrPostCallback(this.OnmethodgetUserdetailsOperationCompleted);
            }
            this.InvokeAsync("methodgetUserdetails", new object[] {
                        uname,
                        passwd}, this.methodgetUserdetailsOperationCompleted, userState);
        }
        
        private void OnmethodgetUserdetailsOperationCompleted(object arg) {
            if ((this.methodgetUserdetailsCompleted != null)) {
                System.Web.Services.Protocols.InvokeCompletedEventArgs invokeArgs = ((System.Web.Services.Protocols.InvokeCompletedEventArgs)(arg));
                this.methodgetUserdetailsCompleted(this, new methodgetUserdetailsCompletedEventArgs(invokeArgs.Results, invokeArgs.Error, invokeArgs.Cancelled, invokeArgs.UserState));
            }
        }
        
        /// <remarks/>
        public new void CancelAsync(object userState) {
            base.CancelAsync(userState);
        }
        
        private bool IsLocalFileSystemWebService(string url) {
            if (((url == null) 
                        || (url == string.Empty))) {
                return false;
            }
            System.Uri wsUri = new System.Uri(url);
            if (((wsUri.Port >= 1024) 
                        && (string.Compare(wsUri.Host, "localHost", System.StringComparison.OrdinalIgnoreCase) == 0))) {
                return true;
            }
            return false;
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Xml", "4.0.30319.233")]
    [System.SerializableAttribute()]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    [System.Xml.Serialization.XmlTypeAttribute(Namespace="http://tempuri.org/")]
    public partial class Userdetails {
        
        private string method_idField;
        
        private string method_nameField;
        
        private string method_cityField;
        
        private string method_phoneField;
        
        private string method_genderField;
        
        /// <remarks/>
        public string method_id {
            get {
                return this.method_idField;
            }
            set {
                this.method_idField = value;
            }
        }
        
        /// <remarks/>
        public string method_name {
            get {
                return this.method_nameField;
            }
            set {
                this.method_nameField = value;
            }
        }
        
        /// <remarks/>
        public string method_city {
            get {
                return this.method_cityField;
            }
            set {
                this.method_cityField = value;
            }
        }
        
        /// <remarks/>
        public string method_phone {
            get {
                return this.method_phoneField;
            }
            set {
                this.method_phoneField = value;
            }
        }
        
        /// <remarks/>
        public string method_gender {
            get {
                return this.method_genderField;
            }
            set {
                this.method_genderField = value;
            }
        }
    }
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    public delegate void methodgetUserdetailsCompletedEventHandler(object sender, methodgetUserdetailsCompletedEventArgs e);
    
    /// <remarks/>
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Web.Services", "4.0.30319.1")]
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.ComponentModel.DesignerCategoryAttribute("code")]
    public partial class methodgetUserdetailsCompletedEventArgs : System.ComponentModel.AsyncCompletedEventArgs {
        
        private object[] results;
        
        internal methodgetUserdetailsCompletedEventArgs(object[] results, System.Exception exception, bool cancelled, object userState) : 
                base(exception, cancelled, userState) {
            this.results = results;
        }
        
        /// <remarks/>
        public Userdetails Result {
            get {
                this.RaiseExceptionIfNecessary();
                return ((Userdetails)(this.results[0]));
            }
        }
    }
}

#pragma warning restore 1591