<%@ Page Title="" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyProject.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="javascript">
     javascript:window.history.forward(1);
    </script>

    <table style="width:100%; height: 155px;" align="center">
        <tr>
          
            <td style="height: 31px; color: #FF0000; width: 902px;" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
          
            <td style="height: 31px; color: #FF0000;" align="left">
             <asp:Label ID="Label1" runat="server" Text="LOGIN " Font-Bold="True" 
        Font-Names="Century Gothic" Font-Size="X-Large" ForeColor="#990000" 
                    style="text-align: center"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
        </tr>
        <tr>
            <td style="height: 31px; width: 902px;" align="right">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblUname" runat="server" Text="Username"></asp:Label>
                <font color='red'>*</font></td>
            
            <td style="height: 31px; width: 341px;" align="left">
                <asp:TextBox ID="txtName" runat="server" Width="127px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUname" runat="server" 
                    ControlToValidate="txtName" ErrorMessage="Blank Username" 
                    ForeColor="Red" ValidationGroup="AdminLoginGroup" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 902px; height: 31px">
                <asp:Label ID="lblPwd" runat="server" Text="Password"></asp:Label>
               <font color='red'>*</font></td>
            
            <td align="left" style="width: 341px; height: 31px;">
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="127px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Blank Password" 
                    ForeColor="Red" ValidationGroup="AdminLoginGroup" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="height: 31px; color: #FF0000; width: 902px;" align="center">
                
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            
            <td style="height: 31px; color: #FF0000;" align="justify">
                
                <asp:Button ID="btnLogin" runat="server" Text="Sign In" 
                    onclick="btnSignin_Click" ValidationGroup="AdminLoginGroup" /></td></tr>
                       <tr>
            <td align="center" style="height: 31px; width: 902px;">
                <asp:Label ID="lblMessage" runat="server"></asp:Label>
                           </td>
          
            <td align="justify" style="height: 31px">
                <font color='red'>Fields marked with * are mandatory</font> </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder2">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#003300" 
                            ForeColor="White" NavigateUrl="~/MainPage.aspx">Home</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hplAbout" runat="server" BackColor="#003300" 
                            ForeColor="White" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="hplContact" runat="server" ForeColor="White" 
                            NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="White" 
                            NavigateUrl="~/Registration.aspx">Register Here</asp:HyperLink>
    &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</asp:Content>

