<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            background-color: #FFFFFF;
        }
        .style14
        {
            font-weight: bold;
        }
        .style15
        {
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .style16
        {
            height: 23px;
            text-align: center;
            font-weight: 700;
        }
        .style20
    {
        font-weight: bold;
        height: 36px;
        font-size: large;
        font-family: "Times New Roman", Times, serif;
        color: #000000;
        width: 232px;
        text-align: left;
        background-color: #FFFFFF;
    }
    .style22
    {
        color: #006699;
    }
    .style23
    {
        color: #003399;
        font-weight: bold;
        width: 232px;
    }
    .style24
    {
        text-align: center;
        font-weight: 700;
        height: 23px;
        background-color: #FFFFFF;
    }
    .style25
    {
        color: #003399;
        font-weight: bold;
        background-color: #FFFFFF;
    }
    .style26
    {
        color: #003399;
        font-weight: bold;
        width: 604px;
        background-color: #FFFFFF;
    }
    .style27
    {
        height: 36px;
        background-color: #FFFFFF;
        width: 604px;
        text-align: left;
        color: rgb(0, 0, 0);
    }
    .style28
    {
        height: 36px;
        background-color: #FFFFFF;
        text-align: left;
        font-size: large;
    }
    .style29
    {
        font-weight: bold;
        height: 33px;
        font-size: large;
        text-align: center;
        font-family: "Times New Roman", Times, serif;
        color: rgb(0, 0, 0);
        width: 228px;
        background-color: #FFFFFF;
    }
    .style30
    {
        height: 36px;
        background-color: #FFFFFF;
        text-align: left;
        font-family: "Times New Roman", Times, serif;
        font-size: large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style23">
                CENTER NAME</td>
            <td class="style26">
                ADDRESS</td>
            <td class="style25">
                PHONE NUMBER</td>
        </tr>
        <tr>
            <td class="style20">
                ALDINE PITAMPURA</td>
            <td class="style27">
                <span class="style29" 
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                16, 3rd Floor, Vaishali,</span><br class="style29" 
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                <span class="style29" 
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Pitampura,Delhi 110034</span></td>
            <td class="style30">
                011-27316462,8510007657</td>
        </tr>
        <tr>
            <td class="style20">
                ALDINE RAJOURI GARDEN</td>
            <td class="style27">
                <span class="style29" 
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                A-9 Second Floor</span><br class="style29" 
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);" />
                <span class="style29" 
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                Rajouri Garden,Delhi 110027</span></td>
            <td class="style28">
                011-45110293,8510007637</td>
        </tr>
        <tr>
            <td class="style20">
                ALDINE JANAKPURI</td>
            <td class="style27">
                <span class="style29" 
                    
                    style="font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: auto; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);">
                B-1/ 625 Basement Floor, Janak Puri,Delhi 110058</span></td>
            <td class="style28">
                011-25613677,8510007638</td>
        </tr>
        <tr>
            <td class="style24" colspan="3">
                <span class="style22">Reach us on Facebook at
                </span>
                <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click" 
                    CssClass="style22">mindmax.aldineca</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>

