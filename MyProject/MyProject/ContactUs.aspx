<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="MyProject.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div style="height: 360px; width: 1059px; color: #FFFFFF;" align="left">
            <table style="width: 100%; height: 137px;">
                <tr>
                    <td style="width: 188px">
                        &nbsp;</td>
                    <td style="width: 383px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 188px">
                        &nbsp;</td>
                    <td style="width: 383px">
                        <strong>Computer Science Dept.<br />
                        Univ Of Missouri Kansas City<br />
                        Missouri- 64110<br />USA<br />Tel: +816 585 3033<br />Email : 
                        mmzb8@mail.umkc.edu</strong></td>
                    <td>
                        <img alt=""src="ghij.jpg" 
                            style="width: 471px; height: 255px" /></td>
                </tr>
                <tr>
                    <td style="width: 188px">
                        &nbsp;</td>
                    <td style="width: 383px">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
&nbsp;<div class="clsadresse">
        </div>
        <br /></div>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#003300" 
                            ForeColor="White" NavigateUrl="~/MainPage.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                        <asp:HyperLink ID="hplAbout" runat="server" BackColor="#003300" 
                            ForeColor="White" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hplContact" runat="server" ForeColor="White" 
                            NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hplLogin" runat="server" ForeColor="White" 
                           NavigateUrl="~/Login.aspx" >Login</asp:HyperLink>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</asp:Content>

