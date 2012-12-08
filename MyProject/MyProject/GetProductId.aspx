<%@ Page Title="" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="GetProductId.aspx.cs" Inherits="MyProject.WebForm5" %>
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

    <table style="width: 100%">
        <tr>
            <td style="width: 313px">
                Dell Inspiron 1525</td>
            <td>
                DI1525<br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px">
                Dell Inspiron 14</td>
            <td>
                <br />
                DI14R<br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px">
                Dell Inspiron 15</td>
            <td>
                <br />
                DI15R<br />
                <br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px">
                Dell XPS 15Inch</td>
            <td>
                <br />
                DXPS15<br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px">
                Dell XPS 14Inch</td>
            <td>
                <br />
                DXPS14<br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px; height: 61px">
                HP 14inch</td>
            <td style="height: 61px">
                <br />
                HP14R<br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px">
                HP Pavilion</td>
            <td>
                <br />
                HPP15<br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px">
                Lenovo 14inch</td>
            <td>
                <br />
                LNV14<br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px">
                Lenovo 15inch</td>
            <td>
                <br />
                LNV15<br />
            </td>
        </tr>
        <tr>
            <td style="width: 313px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="btnBack" runat="server" onclick="btnBack_Click" 
        Text="Go Back" />
    <br />
    <br />

</asp:Content>
