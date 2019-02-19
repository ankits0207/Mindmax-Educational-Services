<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Manage_rj.aspx.cs" Inherits="Manage_jp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
    {
        width: 100%;
            text-align: left;
        }
    .style22
    {
            text-align: left;
            font-weight: 700;
            background-color: #FFFFFF;
            color: #990033;
        }
    .style27
    {
        width: 13%;
    }
    .style31
    {
            width: 348px;
        }
    .style32
    {
        width: 321px;
    }
    .style35
    {
        width: 13%;
        text-align: left;
    }
    .style36
    {
        width: 321px;
        text-align: left;
    }
    .style37
    {
            text-align: left;
            font-weight: 700;
            width: 348px;
        }
        .style38
        {
            background-color: #FCB6BD;
        }
        .style39
        {
            font-weight: bold;
            font-size: medium;
        }
        .style40
        {
            font-weight: bold;
            font-size: medium;
            color: #993333;
            background-color: #FFFFFF;
        }
        .style41
        {
            width: 13%;
            color: #990033;
            background-color: #FFFFFF;
        }
        .style42
        {
            width: 321px;
            background-color: #FFFFFF;
        }
        .style43
        {
            color: #990033;
            font-weight: bold;
            background-color: #FFFFFF;
        }
        .style44
        {
            color: #990033;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
    <tr>
        <td colspan="3" 
            
            style="background-color: #FFFFFF; color: #993333;" class="style39">
            SEARCH REGISTRATION NUMBER</td>
        <td class="style40">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td 
            
            style="background-color: #FFFFFF; color: #993333;" class="style39">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" 
                ValidationGroup="NG"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="3" 
            
            style="background-color: #FFFFFF; color: #993333;" class="style39">
            &nbsp;</td>
        <td colspan="2" class="style40">
            <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
                style="font-weight: 700" Text="SEARCH" ValidationGroup="NG" />
                                    </td>
    </tr>
    <tr>
        <td colspan="5" 
            
            style="background-color: #FFFFFF; color: #993333;" class="style39">
            <asp:GridView ID="GridView5" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" style="font-size: medium">
                <RowStyle BackColor="#E3EAEB" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td colspan="5" 
            
            
            
            style="font-weight: 700; font-size: x-large; background-color: #CCFFCC; color: #993333;">
            INVENTORY STATUS</td>
    </tr>
    <tr>
        <td colspan="5" 
            style="font-weight: 700; font-size: large; " class="style38">
            SUMMARY OF TOTAL STOCK IN VIA CHALLAN</td>
    </tr>
    <tr>
        <td colspan="5" class="style38">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                ForeColor="#333333" GridLines="None" DataKeyNames="BOOK_NAME" 
                DataSourceID="SqlDataSource1" CssClass="style38">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="BATCH_ID" HeaderText="BATCH_ID" 
                        SortExpression="BATCH_ID" />
                    <asp:BoundField DataField="SUBJECT_NAME" HeaderText="SUBJECT_NAME" 
                        SortExpression="SUBJECT_NAME" />
                    <asp:BoundField DataField="BOOK_NAME" HeaderText="BOOK_NAME" ReadOnly="True" 
                        SortExpression="BOOK_NAME" />
                    <asp:BoundField DataField="STOCK_IN" HeaderText="STOCK_IN" ReadOnly="True" 
                        SortExpression="STOCK_IN" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT batch AS BATCH_ID, subject AS SUBJECT_NAME, book AS BOOK_NAME, SUM(quantity) AS STOCK_IN FROM rj_entry GROUP BY batch, subject, book">
            </asp:SqlDataSource>
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="5" 
            
            
            
            style="font-weight: 700; text-align: left; font-size: large; background-color: #FFFFCC;">
            SUMMARY OF STOCK ISSUED</td>
    </tr>
    <tr>
        <td colspan="5" 
            
            
            
            style="font-weight: 700; text-align: left; font-size: large; background-color: #FFFFCC;">
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                DataKeyNames="BATCH_ID,SUBJECT_NAME,BOOK_NAME" DataSourceID="SqlDataSource2" 
                ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="BATCH_ID" HeaderText="BATCH_ID" ReadOnly="True" 
                        SortExpression="BATCH_ID" />
                    <asp:BoundField DataField="SUBJECT_NAME" HeaderText="SUBJECT_NAME" 
                        ReadOnly="True" SortExpression="SUBJECT_NAME" />
                    <asp:BoundField DataField="BOOK_NAME" HeaderText="BOOK_NAME" ReadOnly="True" 
                        SortExpression="BOOK_NAME" />
                    <asp:BoundField DataField="STOCK_ISSUED" HeaderText="STOCK_ISSUED" 
                        ReadOnly="True" SortExpression="STOCK_ISSUED" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT batch AS BATCH_ID, subject AS SUBJECT_NAME, book AS BOOK_NAME, SUM(counter) AS STOCK_ISSUED FROM rj_issue GROUP BY batch, subject, book">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td colspan="5" 
            
            
            style="font-weight: 700; text-align: left; font-size: large; background-color: #FFCCCC;">
            CREATE ENTRY--STUDENT ONCE REGISTERED CANNOT BE REGISTERED AGAIN</td>
    </tr>
    <tr>
        <td class="style31" colspan="2">
            STUDENT NAME</td>
        <td class="style32" colspan="2">
            <asp:TextBox ID="txtsname" runat="server" style="margin-left: 0px" 
                ValidationGroup="REGS"></asp:TextBox>
        </td>
        <td class="style27">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtsname" Display="Dynamic" ErrorMessage="*" 
                ValidationGroup="REGS"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style31" colspan="2">
            REGISTRATION NO.</td>
        <td class="style32" colspan="2">
            <asp:TextBox ID="txtregno" runat="server" ontextchanged="TextBox2_TextChanged" 
                style="height: 22px" ValidationGroup="REGS"></asp:TextBox>
        </td>
        <td class="style27">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtregno" Display="Dynamic" ErrorMessage="*" 
                ValidationGroup="REGS"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style31" colspan="2">
            EMAIL ID</td>
        <td class="style32" colspan="2">
            <asp:TextBox ID="txteid" runat="server" ontextchanged="TextBox3_TextChanged" 
                ValidationGroup="REGS"></asp:TextBox>
        </td>
        <td class="style27">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txteid" Display="Dynamic" ErrorMessage="*" 
                ValidationGroup="REGS"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style31" colspan="2">
            MOBILE NO.</td>
        <td class="style32" colspan="2">
            <asp:TextBox ID="txtmno" runat="server" ontextchanged="TextBox4_TextChanged" 
                ValidationGroup="REGS"></asp:TextBox>
        </td>
        <td class="style27">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtmno" Display="Dynamic" ErrorMessage="*" 
                ValidationGroup="REGS"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style37" colspan="2">
            <asp:Button ID="Button1" runat="server" CausesValidation="False" 
                Text="REGISTER STUDENT" onclick="Button1_Click" style="font-weight: 700" 
                ValidationGroup="REGS" />
        </td>
        <td class="style36" colspan="2">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style35">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style22" colspan="5">
            ISSUE BOOKS</td>
    </tr>
    <tr>
        <td class="style22" colspan="3">
            ENTER REGISTRATION NUMBER</td>
        <td class="style22">
            <asp:TextBox ID="txtissuereg" runat="server" ValidationGroup="ISSUE"></asp:TextBox>
        </td>
        <td class="style22">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                ControlToValidate="txtissuereg" Display="Dynamic" ErrorMessage="*" 
                ValidationGroup="ISSUE"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22" colspan="3">
            &nbsp;</td>
        <td class="style22">
            <asp:Button ID="Button5" runat="server" style="font-weight: 700" Text="FIND" 
                ValidationGroup="ISSUE" onclick="Button5_Click" />
        </td>
        <td class="style22">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style22" colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style22" colspan="5">
            <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="regno">
                <RowStyle ForeColor="#000066" />
                <Columns>
                <asp:TemplateField>

                         <ItemTemplate>

                           <asp:CheckBox ID="chb3" runat="server" />
 
                         </ItemTemplate>

                        </asp:TemplateField>
                
                    <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                    <asp:BoundField DataField="regno" HeaderText="regno" ReadOnly="True" 
                        SortExpression="regno" />
                    <asp:BoundField DataField="eid" HeaderText="eid" SortExpression="eid" />
                    <asp:BoundField DataField="mno" HeaderText="mno" SortExpression="mno" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <br />
            <asp:DropDownList ID="ddldefault" runat="server" Visible="False">
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style43" colspan="2">
            SELECT BOOK FROM THE TABLE (BOOKS CAN ONLY BE ISSUED ONE BY ONE)</td>
        <td class="style42" colspan="2">
            &nbsp;</td>
        <td class="style41">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style43" colspan="5">
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" DataKeyNames="batch,subject,book" DataSourceID="SqlDataSource4" 
                GridLines="Vertical" AllowSorting="True" CssClass="style44">
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <Columns>
                <asp:TemplateField>

                         <ItemTemplate>

                           <asp:CheckBox ID="chb2" runat="server" />
 
                         </ItemTemplate>

                        </asp:TemplateField>
                    <asp:BoundField DataField="batch" HeaderText="batch" ReadOnly="True" 
                        SortExpression="batch" />
                    <asp:BoundField DataField="subject" HeaderText="subject" ReadOnly="True" 
                        SortExpression="subject" />
                    <asp:BoundField DataField="book" HeaderText="book" ReadOnly="True" 
                        SortExpression="book" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="#DCDCDC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [batch], [subject], [book] FROM [rj_book]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style37">
            ENTER DATE (DD-MM-YYYY)</td>
        <td class="style37">
            <asp:TextBox ID="txtissuedate" runat="server" ValidationGroup="S"></asp:TextBox>
        </td>
        <td class="style36" colspan="2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="txtissuedate" Display="Dynamic" ErrorMessage="*" 
                ValidationGroup="S"></asp:RequiredFieldValidator>
        </td>
        <td class="style35">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style37" colspan="2">
            <asp:Button ID="Button2" runat="server" Text="Issue!!" ValidationGroup="S" 
                onclick="Button2_Click" style="font-weight: 700" />
        </td>
        <td class="style36" colspan="2">
            &nbsp;</td>
        <td class="style35">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style31" colspan="2">
            <asp:Button ID="Button3" runat="server" CausesValidation="False" 
                onclick="Button3_Click" style="font-weight: 700" Text="BACK" />
        </td>
        <td class="style32" colspan="2">
            &nbsp;</td>
        <td class="style27">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

