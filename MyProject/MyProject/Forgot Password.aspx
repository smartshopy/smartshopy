<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot Password.aspx.cs" Inherits="MyProject.Forgot_Password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="lblSecQ">
    
        <p>
                        Enter your Username:
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnSecque" runat="server" onclick="btnSecque_Click" 
                            Text="click for security que" />
        </p>
        <p>
            <asp:Label ID="lblQuestion" runat="server"></asp:Label>
        </p>
        <p>
            Answer the security question below:&nbsp;
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtSecAns" runat="server"></asp:TextBox>
            &nbsp;
        </p>
        <p>
            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;Enter new Password:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            Reenter Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtPassword" ControlToValidate="txtPassword1" 
                ErrorMessage="Passwords must be same"></asp:CompareValidator>
        </p>
        <p>
            <asp:Button ID="btnResetpswrd" runat="server" onclick="btnResetpswrd_Click" 
                Text="Reset Password" />
            <br />
            <br />
        </p>
    
    </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
