<%@ Page Title="" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="MyProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
    <tr>
        <td align="left" 
            style="height: 118px; font-size: x-large; font-family: Calibri; font-weight: bolder; font-style: oblique;" 
            colspan="2">
            <br />
            <br />
            <div><table style="width: 258px; height: 166px;"><tr><td style="width: 170px"> 
                <asp:Image ID="Imag1" runat="server" Height="173px" Width="239px" />&nbsp;&nbsp;&nbsp; </td>  
                           
            <br /></table>           
            <span style="font-size: medium">
                <br />
                <table style="width: 100%">
                    <tr>
                        <td>
            <span style="font-size: medium">Name:</span></td>
                        <td>
            <asp:Label ID="lblName" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
            <span style="font-size: medium">&nbsp;City:</span></td>
                        <td>
            <asp:Label ID="lblCity" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
            Email id:</td>
                        <td>
            <asp:Label ID="lblEmail" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 24px">
            Phone no:</td>
                        <td style="height: 24px">
            <asp:Label ID="lblPhone" runat="server" style="font-size: large"></asp:Label>            
                        </td>
                    </tr>
                    <tr>
                        <td>
            Gender:</td>
                        <td>
            <asp:Label ID="lblGender" runat="server" style="font-size: large"></asp:Label>
                        </td>
                    </tr>
                </table>
                </span>&nbsp;&nbsp;&nbsp;&nbsp;
            </div>

            <asp:Button ID="btnPersonalize" runat="server" Height="71px" 
                onclick="btnPersonalize_Click" Text="Personalize Account" Width="306px" />

            <br />
            <br />
            &nbsp;&nbsp;<br />
            &nbsp;
            Search Website:
            <asp:Button ID="btnWebsite" runat="server" ForeColor="Black" Text="Website" 
                Width="296px" onclick="btnWebsite_Click1" Height="65px"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp; Search Store&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnStore" runat="server" Text="Store" Width="281px" 
                onclick="btnStore_Click1" Height="62px"/> 
                 
            <br />
                 
        </td>
    </tr>
       <tr>
        <td align="left" colspan="2" 
               style="font-family: 'courier New', Courier, monospace; color: #FFFFFF;">
            &nbsp;<br />
            <br />
            <br />
            <br />
            <br />
           </td>
       </tr>
       <tr>
        <td align="left" colspan="2">
            &nbsp;</td>
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


