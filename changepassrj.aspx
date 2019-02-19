<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassrj.aspx.cs" Inherits="changepassjp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            width: 100%;
        }
        .style18
        {
            width: 250px;
            font-weight: bold;
            background-color: #FFFFCC;
        }
        .style19
        {
            width: 128px;
            background-color: #FFFFCC;
        }
        .style20
        {
            background-color: #FFFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
        <tr>
            <td class="style18">
                ENTER USER-ID</td>
            <td class="style19">
                <asp:TextBox ID="txtuid" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtuid" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                ENTER OLD PASSWORD</td>
            <td class="style19">
                <asp:TextBox ID="txtoldpass" runat="server"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtoldpass" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                ENTER NEW PASSWORD</td>
            <td class="style19">
                <asp:TextBox ID="txtnewpass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtnewpass" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtcnewpass" ControlToValidate="txtnewpass" Display="Dynamic" 
                    ErrorMessage="Passwords do not match"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                CONFIRM NEW PASSWORD</td>
            <td class="style19">
                <asp:TextBox ID="txtcnewpass" runat="server" 
                    ontextchanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style20">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtcnewpass" Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                    Text="Change Password" onclick="Button1_Click" />
            </td>
            <td class="style19">
                <asp:Button ID="Button2" runat="server" CausesValidation="False" 
                    onclick="Button2_Click" style="font-weight: 700" Text="BACK" />
            </td>
            <td class="style20">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

