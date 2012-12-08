<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Amazon_main.aspx.cs" Inherits="MyProject.Amazon_main" %>

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
   width: 60%;
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
            Font-Names="Vedana" Font-Size="XX-Large" ForeColor="#990000" 
            Text="Amazon Online Shopping"></asp:Label>
    
    <br />
    <br />
    <br />
    
 &nbsp;&nbsp;&nbsp;&nbsp;<div id="container">
 <table>
    <tr>
        <td >&nbsp;<table style="width: 395px; height: 166px" >
        <tr>
            <td >
                Product ID</td>
            <td >
                <asp:Label ID="lblAPId" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                Product Model</td>
            <td >
                <asp:Label ID="lblAPModel" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                Product Type</td>
            <td >
                <asp:Label ID="lblAPType" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                Product Name</td>
            <td >
                <asp:Label ID="lblAPName" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td >
                Product Price</td>
            <td >
                <asp:Label ID="lblAPPrice" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
   
        </td>
        <td class="style1">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="AMAZimage" runat="server" Height="207px" Width="233px" />
        </td>
    </tr>
</table>
  
  <div class="clear"></div>
 </div><!-- container -->
    <br />
    <br />
    <br />
&nbsp; Compare prices:&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="hypBBUY" runat="server" NavigateUrl="~/BestBuysite.aspx">BestBuy</asp:HyperLink>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="hypEBAY" runat="server" NavigateUrl="~/Ebaymain.aspx">EBAY</asp:HyperLink>
    <br />
    <br />
    Continue with Shopping:&nbsp;  <a href="http://www.amazon.com">Amazon site</a>&nbsp;&nbsp;
    </form>
</body>
</html>