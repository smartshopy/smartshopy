<%@ Page Language="C#" AutoEventWireup="true" CodeFile="address.aspx.cs" Inherits="address" %>

<%@ Register assembly="GMaps" namespace="Subgurim.Controls" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Enter the Address:<br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
        <br />
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="Get Long&amp;Latitudes" />
    <br />
    <br />
    LATITUDE&nbsp;&nbsp;&nbsp; :&nbsp;
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <br />
    <br />
    LONGITUDE : 
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <br />
    <cc1:GMap ID="GMap1" runat="server" Key="AIzaSyD9Lp24nMU4v0b9L4IVbri-acK7on0DQPQ" enableHookMouseWheelToZoom="True"/>
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="Show the marker" />
    </form>
</body>
</html>
