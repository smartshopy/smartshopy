<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ebaymain.aspx.cs" Inherits="MyProject.Ebaymain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #container {
   margin: 1%;
   padding: 0;
   width: 97%;
   background-color: #fc9;
}
#left, #right {
   float: left;
   width: 46.5%;
   margin: 1% 0 1% 1%;
   padding: 1%;
   background-color: #9cf;
   color: #000;
}
#right {
   float: right;
   margin: 1% 1% 1% 0;
}
.clear {
   height: 0;
   font-size: 1px;
   margin: 0;
   padding: 0;
   line-height: 0;
   clear: both;
}
        .style1
        {
            width: 50%;
        }
        .style2
        {
            width: 193px;
        }
    </style>
</head>
<body style="height: 61px">
    <form id="form1" runat="server">
    <div align="center">
        
        <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Viner Hand ITC" Font-Size="XX-Large" ForeColor="#990000" 
            Text="EBay Online Shopping"></asp:Label>
        
    </div>
    <br />
    <br />
<div id="container">
 <table>
    <tr>
        <td >&nbsp;<table style="width: 395px; height: 166px" >
        <tr>
            <td class="style2" >
                Product ID</td>
            <td >
                <asp:Label ID="lblEbayID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                Product Model</td>
            <td >
                <asp:Label ID="lblEbayModel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                Product Type</td>
            <td >
                <asp:Label ID="lblEbayType" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                Product Name</td>
            <td >
                <asp:Label ID="lblEbayName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                Product Price</td>
            <td >
                <asp:Label ID="lblEbayPrice" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" >
                Product Specification</td>
            <td >
                <asp:Label ID="lblEbaySpec" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
   
        </td>
        <td class="style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Ebayimg" runat="server" Height="207px" Width="233px" />
        </td>
    </tr>
</table>
  
  <div class="clear"></div>
 </div><!-- container -->
    <br />
    <br />
    Compare Prices:&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="hypAmazo" runat="server" NavigateUrl="~/Amazon_main.aspx">Amazon</asp:HyperLink>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="hypBBUY" runat="server" NavigateUrl="~/BestBuysite.aspx">BestBuy</asp:HyperLink>
    <br />
    <br />
    <br />
    Continue with shopping:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <a href="http://www.ebay.com">Ebay site</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
    </form>

</body>
</html>
