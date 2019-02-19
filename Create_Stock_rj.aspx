<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Create_Stock_rj.aspx.cs" Inherits="Create_Stock_jp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            width: 100%;
        }
        .style18
        {
            text-align: center;
            font-weight: 700;
            color: #990033;
            background-color: #FFCCFF;
        }
        .style19
        {
            background-color: #FFCCFF;
        }
        .style20
        {
            text-align: center;
            font-weight: 700;
            color: #990033;
            background-color: #FFFFFF;
        }
        .style21
        {
            background-color: #FFFFCC;
            width: 21px;
        }
        .style22
        {
            background-color: #FFFFCC;
        }
        .style23
        {
            background-color: #FFCCFF;
        }
        .style27
        {
            background-color: #FFFFCC;
            font-weight: bold;
        }
        .style28
        {
            background-color: #CCCCFF;
            font-weight: bold;
        }
        .style29
        {
            background-color: #CCCCFF;
        }
        .style30
        {
            text-align: center;
            font-weight: 700;
            color: #990033;
            background-color: #CCCCFF;
        }
        .style31
        {
            text-align: center;
            font-weight: 700;
            color: #990033;
            background-color: #FFFFCC;
            height: 26px;
        }
        .style32
        {
            background-color: #FFFFCC;
            height: 26px;
        }
        .style33
        {
            background-color: #FFFFCC;
            font-weight: bold;
            height: 26px;
        }
        .style34
        {
            background-color: #CCFFCC;
            font-weight: bold;
        }
        .style35
        {
            background-color: #CCFFCC;
        }
        .style36
        {
            text-align: center;
            font-weight: 700;
            color: #990033;
            background-color: #CCFFCC;
        }
        .style37
        {
            background-color: #FFFFFF;
        }
        .style39
        {
            color: #CC0000;
            font-weight: bold;
            font-size: large;
        }
        .style40
        {
            text-align: center;
            font-weight: 700;
            color: #990033;
            background-color: #FFFFCC;
        }
        .style41
        {
            background-color: #CCCCFF;
            width: 21px;
        }
        .style42
        {
            width: 21px;
            background-color: #FFFFCC;
            height: 26px;
        }
        .style43
        {
            background-color: #CCFFCC;
            width: 21px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
        <tr>
            <td class="style20" colspan="5">
                CREATE BATCH,SUBJECT AND BOOKS</td>
        </tr>
        <tr>
            <td class="style30">
                CREATE BATCH</td>
            <td class="style29">
                <asp:TextBox ID="txtcbatch" runat="server"></asp:TextBox>
            </td>
            <td class="style41">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcbatch" Display="Dynamic" ErrorMessage="*" 
                    ValidationGroup="BATCH"></asp:RequiredFieldValidator>
            </td>
            <td class="style28">
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click1" 
                    style="font-weight: 700" Text="CREATE BATCH" ValidationGroup="BATCH" 
                    Width="170px" />
            </td>
            <td class="style28">
                BATCH NAME MUST BE UNIQUE</td>
        </tr>
        <tr>
            <td class="style31">
                SELECT CREATED BATCH</td>
            <td class="style32">
                <asp:DropDownList ID="ddlcreatebatch" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="batch" DataValueField="batch" 
                    ValidationGroup="SUBJECT">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [batch] FROM [rj_batch]"></asp:SqlDataSource>
            </td>
            <td class="style42">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="ddlcreatebatch" Display="Dynamic" ErrorMessage="*" 
                    ValidationGroup="SUBJECT"></asp:RequiredFieldValidator>
            </td>
            <td class="style33">
            </td>
            <td class="style33">
            </td>
        </tr>
        <tr>
            <td class="style40">
                CREATE SUBJECT</td>
            <td class="style22">
                <asp:TextBox ID="txtcsubject" runat="server" 
                    ontextchanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td class="style21">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtcsubject" Display="Dynamic" ErrorMessage="*" 
                    ValidationGroup="SUBJECT"></asp:RequiredFieldValidator>
            </td>
            <td class="style27">
                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
                    style="font-weight: 700" Text="CREATE SUBJECT" ValidationGroup="SUBJECT" />
            </td>
            <td class="style27">
                SUBJECT WITHIN A BATCH MUST BE UNIQUE</td>
        </tr>
        <tr>
            <td class="style36">
                SELECT CREATED BATCH AND SUBJECT</td>
            <td class="style35" colspan="4">
                <asp:GridView ID="gv_bs" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
                    CellPadding="4" DataKeyNames="batch,subject" DataSourceID="SqlDataSource2" 
                    GridLines="Horizontal" AllowSorting="True" AllowPaging="True">
                    <RowStyle BackColor="White" ForeColor="#333333" />
                    <Columns>
                        <asp:TemplateField>

                         <ItemTemplate>

                           <asp:CheckBox ID="chb1" runat="server" />
 
                         </ItemTemplate>

                        </asp:TemplateField>

                        <asp:BoundField DataField="batch" HeaderText="batch" ReadOnly="True" 
                            SortExpression="batch" />
                        <asp:BoundField DataField="subject" HeaderText="subject" ReadOnly="True" 
                            SortExpression="subject" />
                    </Columns>
                    <FooterStyle BackColor="White" ForeColor="#333333" />
                    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [batch], [subject] FROM [rj_subject]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style36">
                CREATE BOOK</td>
            <td class="style35">
                <asp:TextBox ID="txtcbook" runat="server"></asp:TextBox>
            </td>
            <td class="style43">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtcbook" Display="Dynamic" ErrorMessage="*" 
                    ValidationGroup="BOOK"></asp:RequiredFieldValidator>
            </td>
            <td class="style34">
                <asp:Button ID="Button5" runat="server" style="font-weight: 700" 
                    Text="CREATE BOOK" ValidationGroup="BOOK" Width="170px" 
                    onclick="Button5_Click" />
            </td>
            <td class="style34">
                BOOKS WITHIN A BATCH AND SUBJECT MUST BE UNIQUE</td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
            <td class="style37" colspan="4">
                <span class="style39">Batch,subject and books once created
                </span>
                <br class="style39" />
                <span class="style39">cannot be modified!</span></td>
            <tr>
            <td class="style18" colspan="5">
                STOCK ENTRY</td>
        </tr>
        <tr>
            <td class="style18">
                SELECT BATCH,SUBJECT AND BOOK</td>
            <td class="style19" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="batch,subject,book" DataSourceID="SqlDataSource3" 
                    ForeColor="Black" GridLines="Vertical" AllowSorting="True" 
                    AllowPaging="True">
                    <RowStyle BackColor="#F7F7DE" />
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
                    <FooterStyle BackColor="#CCCC99" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [batch], [subject], [book] FROM [rj_book]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style18">
                ENTER QUANTITY<td class="style19">
                <asp:TextBox ID="txtequantity" runat="server" 
                    ontextchanged="TextBox4_TextChanged"></asp:TextBox>
            </td>
            <td class="style23" colspan="3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtequantity" Display="Dynamic" ErrorMessage="*" 
                    ValidationGroup="E"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                CHALLAN NO.</td>
            <td class="style19">
                <asp:TextBox ID="txtechallan" runat="server"></asp:TextBox>
            </td>
            <td class="style23" colspan="3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtechallan" Display="Dynamic" ErrorMessage="*" 
                    ValidationGroup="E"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                DATE AND TIME<br />
                (YYYY-MM-DD HR:MI:SS)</td>
            <td class="style19">
                <asp:TextBox ID="txtedate" runat="server" ontextchanged="TextBox2_TextChanged1"></asp:TextBox>
            </td>
            <td class="style23" colspan="3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="txtedate" Display="Dynamic" ErrorMessage="*" 
                    ValidationGroup="E"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <asp:Button ID="Button7" runat="server" CausesValidation="False" 
                    onclick="Button7_Click" style="font-weight: 700" Text="BACK" />
            </td>
            <td class="style19">
                <asp:Button ID="Button2" runat="server" Text="Enter" ValidationGroup="E" 
                    onclick="Button2_Click" />
            </td>
            <td class="style23" colspan="3">
                Stock once entered cannot                 <br />
                be modified!</td>
        </tr>
    </table>
</asp:Content>

