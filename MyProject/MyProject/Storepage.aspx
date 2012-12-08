<%@ Page Title="" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="Storepage.aspx.cs" Inherits="MyProject.WebForm4" %>
<%@ Register assembly="GMaps" namespace="Subgurim.Controles" tagprefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td align="left" style="height: 118px; font-size: medium;" colspan="2" 
            id="txtStorename">
            <br />
            <br />
            Enter the store id to Search:&nbsp;&nbsp;
            <asp:TextBox ID="txtStore" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnViewStore" runat="server" onclick="btnViewStore_Click" 
                Text="View Store" />
            <br />
            <br />
            <br />
            <table align="left" style="width: 50%; border: 1px solid #FFFFFF">
                <tr>
                    <td style="width: 147px; height: 26px;">
                        <asp:Label ID="lblStName" runat="server" Text="Store Name"></asp:Label>
                    </td>
                    <td style="width: 167px; height: 26px">
                        <asp:Label ID="lblStorename" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 147px; height: 28px;">
                        <asp:Label ID="lblstreet" runat="server" Text="Street"></asp:Label>
                    </td>
                    <td style="width: 167px; height: 28px">
                        <asp:Label ID="lblst" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 147px; height: 26px;">
                        <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
                    </td>
                    <td style="width: 167px; height: 26px">
                        <asp:Label ID="lblstorecity" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 147px; height: 25px;">
                        <asp:Label ID="lblZip" runat="server" Text="Zip"></asp:Label>
                    </td>
                    <td style="width: 167px; height: 25px">
                        <asp:Label ID="lblstoreZip" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 147px; height: 25px;">
                        <asp:Label ID="lblPh" runat="server" Text="phone num"></asp:Label>
                    </td>
                    <td style="width: 167px; height: 25px">
                        <asp:Label ID="lblPhnum" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            Latitude:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblLat" runat="server"></asp:Label>
            <br />
            <br />
            Longitude:&nbsp; 
            <asp:Label ID="lblLong" runat="server"></asp:Label>
            <br />
            <br />
            <cc1:GMap ID="GMap1" runat="server" 
        Key="AIzaSyD4P6KnW1ukZNOEddJZL6foJywAwoXPwYU"/>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </td>
    </tr>       
       
    <tr>
        <td align="left" style="height: 118px">
            &nbsp;</td>
        <td align="left" style="height: 118px">
            <asp:Label ID="lblVisitors" runat="server" Text="Visitors Count :" 
                Font-Bold="True" Font-Italic="True" Font-Names="Bell MT" Font-Size="Large"></asp:Label>
        </td>
    </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    &nbsp; &nbsp;
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


