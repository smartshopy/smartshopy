<%@ Page Title="" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="Personalize.aspx.cs" Inherits="MyProject.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:HyperLink ID="hplHome" runat="server" BackColor="#003300" 
                            ForeColor="White" NavigateUrl="~/MainPage.aspx">Home</asp:HyperLink>
                           <%-- <asp:LinkButton ID="lbtnHome" runat="server" ForeColor="White" 
                            onclick="LinkButton1_Click">Home</asp:LinkButton>--%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        <asp:HyperLink ID="hplAbout" runat="server" BackColor="#003300" 
                            ForeColor="White" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hplContact" runat="server" ForeColor="White" 
                            NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" 
                            NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
<p>
    Select the ways to send updates:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbtnMobile" runat="server" Text="Mobile" />
</p>
<p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:RadioButton ID="rbtnSms" runat="server" Text="Sms" />
</p>
<p>
    Select the items you need to get updates of :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtItems" runat="server"></asp:TextBox>
</p>
<p>
    <asp:Button ID="btnPersonalise" runat="server" onclick="btnPersonalise_Click" 
        Text="Submit" />
</p>
<p>
</p>
</asp:Content>
