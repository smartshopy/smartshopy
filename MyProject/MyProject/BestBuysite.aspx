<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BestBuysite.aspx.cs" Inherits="MyProject.BestBuysite" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>
    
    </title>
    <style type="text/css">
body {
   margin: 0;
   padding: 0;
}
#container {
   margin: 1%;
   padding: 0;
   width: 65%;
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
            width: 442px;
        }
 
    </style>
</head>

<body>
    <form id="form1" runat="server">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
            Font-Names="Viner Hand ITC" Font-Size="XX-Large" ForeColor="#990000" 
            Text="BestBuy Online Shopping"></asp:Label>
    
    <br />
&nbsp;&nbsp;
    <br />
&nbsp;<div id="container">
 <table>
    <tr>
        <td >&nbsp;<table style="width: 395px; height: 166px" >
        <tr>
            <td >
                Product ID</td>
            <td >
                <asp:Label ID="lblID" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                Product Model</td>
            <td >
                <asp:Label ID="lblModel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                Product Type</td>
            <td >
                <asp:Label ID="lblType" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                Product Name</td>
            <td >
                <asp:Label ID="lblName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                Product Price</td>
            <td >
                <asp:Label ID="lblPrice" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
   
        </td>
        <td class="style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="BBUYImage" runat="server" Height="207px" Width="233px" />
        </td>
    </tr>
</table>
  
  <div class="clear"></div>
 </div><!-- container -->
    <br />
    <br />
    Compare Prices:&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="hypAmazon" runat="server" NavigateUrl="~/Amazon_main.aspx">Amazon</asp:HyperLink>
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="hypEBAY" runat="server" NavigateUrl="~/Ebaymain.aspx">Ebay</asp:HyperLink>
    <br />
    <br />
    Continue with Shopping: <a href="http://www.bestbuy.com">Best Buy site</a>&nbsp;
    </form>
</body>
</html>
