<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="MyProject.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-family: 'Courier New', Courier, monospace; color: #FFFFFF; text-align: justify;">
        <font color="White"><font size="2" style="font-size: 11pt"><span dir="rtl" 
            style="font-weight: normal"><strong>Smart Shoppy</strong></span><span 
            style="font-weight: normal"><strong> </strong> </span></font><strong>is a fast expanding application 
        increasing its customer base by almost 10% every quarter. To meet challenges 
        with traditional searching procedures, smart shoppy comes up with a solution for 
        searching process which is highly flexible, efficient and accurate .It 
        offers a range of services and products to its existing customers. </strong> </font>
    </p>
    <p style="font-family: 'Courier New', Courier, monospace; color: #FFFFFF; text-align: justify;">
        <strong>Trust is the foundation of any application. Customers rely on the fact that 
        their money is safe with their shopping. </strong></p>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#003300" 
                            ForeColor="White" NavigateUrl="~/MainPage.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hplAbout" runat="server" BackColor="#003300" 
                            ForeColor="White" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:HyperLink ID="hplContact" runat="server" ForeColor="White" 
                            NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hplLogin" runat="server" ForeColor="White" 
                           NavigateUrl="~/Login.aspx" >Login</asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Content>

