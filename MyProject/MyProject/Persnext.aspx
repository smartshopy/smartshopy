<%@ Page Title="" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="Persnext.aspx.cs" Inherits="MyProject.WebForm10" %>
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
<p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    Your account has been personalised.</p>
<p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
    &nbsp;</p>
<p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="View details" Height="65px" style="margin-left: 0px" Width="139px" />
</p>
<p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
    &nbsp;</p>
<p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl1" runat="server"></asp:Label>
</p>
<p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl2" runat="server"></asp:Label>
</p>
<p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
    &nbsp;&nbsp;&nbsp;
    <asp:Label ID="lbl3" runat="server"></asp:Label>
</p>
    <p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl4" runat="server"></asp:Label>
&nbsp;</p>
    <p style="font-family: Calibri; font-size: x-large; font-weight: bolder">
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl5" runat="server"></asp:Label>
</p>
<p>
</p>

</asp:Content>

