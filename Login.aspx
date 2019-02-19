<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 313px;
            background-color: #FFFFCC;
        }
        .style15
        {
            text-align: right;
            font-weight: bold;
            font-size: large;
            font-family: "Arial Unicode MS";
            background-color: #FFFFCC;
        }
        .style17
        {
            width: 141px;
            text-align: left;
            background-color: #FFFFCC;
        }
        .style18
        {
            font-weight: bold;
            background-color: #FFFFCC;
            text-align: left;
        }
        .style19
        {
            text-align: left;
            font-weight: bold;
            font-size: large;
            font-family: "Arial Unicode MS";
            background-color: #FFFFCC;
        }
        .style21
    {
        text-align: left;
        font-weight: bold;
        font-size: large;
        font-family: "Arial Unicode MS";
        background-color: #FFFFCC;
        height: 30px;
            width: 409px;
        }
    .style22
    {
        width: 141px;
        text-align: left;
        background-color: #FFFFCC;
        height: 30px;
    }
    .style23
    {
        font-weight: bold;
        background-color: #FFFFCC;
        height: 30px;
    }
        .style24
        {
            text-align: center;
            font-weight: bold;
            font-size: large;
            font-family: "Arial Unicode MS";
            background-color: #FFFFCC;
            height: 105px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style24" colspan="3">
                <asp:Image ID="Image3" runat="server" Height="128px" 
                    ImageUrl="~/Img/Login Image.gif" Width="157px" />
            </td>
        </tr>
        <tr>
            <td class="style19">
                SELECT USER TYPE</td>
            <td class="style17">
                <asp:RadioButtonList ID="rbl" runat="server" style="font-weight: 700">
                    <asp:ListItem>COUNSELLOR</asp:ListItem>
                    <asp:ListItem>ADMIN</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="rbl" Display="Dynamic" 
                    ErrorMessage="*Please select user type"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                SELECT CENTER</td>
            <td class="style17">
                <asp:RadioButtonList ID="rbl_c" runat="server" style="font-weight: 700" 
                    Width="182px">
                    <asp:ListItem>JANAKPURI</asp:ListItem>
                    <asp:ListItem>PITAMPURA</asp:ListItem>
                    <asp:ListItem>RAJOURI GARDEN</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="rbl_c" ErrorMessage="*Select Center"></asp:RequiredFieldValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style19">
                ENTER USER ID</td>
            <td class="style17">
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtusername" Display="Dynamic" ErrorMessage="*Enter User ID"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style19">
                ENTER PASSWORD</td>
            <td class="style17">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtpassword" Display="Dynamic" 
                    ErrorMessage="*Enter Password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;</td>
            <td class="style22">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-weight: 700" Text="LOGIN" />
            </td>
            <td class="style23">
                Please Logout after use!!<br />
            </td>
        </tr>
        </table>
</asp:Content>

