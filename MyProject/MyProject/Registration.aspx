<%@ Page Title="" Language="C#" MasterPageFile="~/MyMain.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="MyProject.WebForm6" %>
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

    <p>
        <br />
    </p>
    <table style="width: 100%">
        <tr>
            <td>
                First Name:</td>
            <td>
                <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtFname" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Last Name:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Email:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Set Password:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Reenter Password:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Address:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                State:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Zip:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                Phone number</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox9" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
        Text="Submit" />
    <br />

</asp:Content>
