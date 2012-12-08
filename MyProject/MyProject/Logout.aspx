<%@ Page Title="" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="MyProject.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table style="width: 100%;">
    <tr>
        <td align="center" style="height: 118px" colspan="2">
            Thank you
            <asp:Label ID="lblName" runat="server" ForeColor="White"></asp:Label>
            <br />
            <br />
            Visit Us Again!</td>
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

