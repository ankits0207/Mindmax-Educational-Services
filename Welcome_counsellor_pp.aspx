﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Welcome_counsellor_pp.aspx.cs" Inherits="Welcome_counsellor_pp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style17
    {
        width: 100%;
    }
    .style18
    {
            text-align: center;
            font-weight: bold;
            background-color: #CCFFCC;
        }
    .style19
    {
        text-align: center;
        width: 464px;
            font-weight: bold;
            background-color: #CCFFCC;
        }
    .style20
    {
        text-align: center;
        width: 303px;
            font-weight: bold;
            background-color: #CCFFCC;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
    <tr>
        <td class="style20">
            <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Create Stock</asp:LinkButton>
        </td>
        <td class="style19">
            <asp:LinkButton ID="LinkButton5" runat="server" onclick="LinkButton5_Click">Manage Stock</asp:LinkButton>
        </td>
        <td class="style18">
            <asp:LinkButton ID="LinkButton6" runat="server" onclick="LinkButton6_Click">Change Password</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="style18" colspan="3">
            Welcome
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

