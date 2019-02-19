<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_jp.aspx.cs" Inherits="admin_jp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            width: 100%;
        }
        .style20
        {
            font-weight: bold;
            text-align: center;
            color: #663300;
            background-color: #CCFFCC;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style17">
        <tr>
            <td class="style20">
                JANAKPURI SUMMARY</td>
        </tr>
        <tr>
            <td class="style20">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="user_id" 
                    DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="first_name" HeaderText="first_name" 
                            SortExpression="first_name" />
                        <asp:BoundField DataField="user_id" HeaderText="user_id" ReadOnly="True" 
                            SortExpression="user_id" />
                        <asp:BoundField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                        <asp:BoundField DataField="center" HeaderText="center" 
                            SortExpression="center" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [counsellors] WHERE [user_id] = @user_id" 
                    InsertCommand="INSERT INTO [counsellors] ([first_name], [user_id], [password], [center]) VALUES (@first_name, @user_id, @password, @center)" 
                    SelectCommand="SELECT * FROM [counsellors]" 
                    UpdateCommand="UPDATE [counsellors] SET [first_name] = @first_name, [password] = @password, [center] = @center WHERE [user_id] = @user_id">
                    <DeleteParameters>
                        <asp:Parameter Name="user_id" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="first_name" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="center" Type="String" />
                        <asp:Parameter Name="user_id" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="first_name" Type="String" />
                        <asp:Parameter Name="user_id" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="center" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="batch" 
                    DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="batch" HeaderText="batch" ReadOnly="True" 
                            SortExpression="batch" />
                    </Columns>
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [jp_batch] WHERE [batch] = @batch" 
                    InsertCommand="INSERT INTO [jp_batch] ([batch]) VALUES (@batch)" 
                    SelectCommand="SELECT * FROM [jp_batch]">
                    <DeleteParameters>
                        <asp:Parameter Name="batch" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="batch" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <asp:GridView ID="GridView3" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="batch,subject" 
                    DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="batch" HeaderText="batch" ReadOnly="True" 
                            SortExpression="batch" />
                        <asp:BoundField DataField="subject" HeaderText="subject" ReadOnly="True" 
                            SortExpression="subject" />
                    </Columns>
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [jp_subject] WHERE [batch] = @batch AND [subject] = @subject" 
                    InsertCommand="INSERT INTO [jp_subject] ([batch], [subject]) VALUES (@batch, @subject)" 
                    SelectCommand="SELECT * FROM [jp_subject]">
                    <DeleteParameters>
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <asp:GridView ID="GridView6" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="batch,subject,book" 
                    DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="batch" HeaderText="batch" ReadOnly="True" 
                            SortExpression="batch" />
                        <asp:BoundField DataField="subject" HeaderText="subject" ReadOnly="True" 
                            SortExpression="subject" />
                        <asp:BoundField DataField="book" HeaderText="book" ReadOnly="True" 
                            SortExpression="book" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [jp_book] WHERE [batch] = @batch AND [subject] = @subject AND [book] = @book" 
                    InsertCommand="INSERT INTO [jp_book] ([batch], [subject], [book]) VALUES (@batch, @subject, @book)" 
                    SelectCommand="SELECT * FROM [jp_book]">
                    <DeleteParameters>
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="book" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="book" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <asp:GridView ID="GridView7" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="book,challan" 
                    DataSourceID="SqlDataSource5">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="batch" HeaderText="batch" SortExpression="batch" />
                        <asp:BoundField DataField="subject" HeaderText="subject" 
                            SortExpression="subject" />
                        <asp:BoundField DataField="book" HeaderText="book" ReadOnly="True" 
                            SortExpression="book" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" 
                            SortExpression="quantity" />
                        <asp:BoundField DataField="challan" HeaderText="challan" ReadOnly="True" 
                            SortExpression="challan" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="counsellor" HeaderText="counsellor" 
                            SortExpression="counsellor" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [jp_entry] WHERE [book] = @book AND [challan] = @challan" 
                    InsertCommand="INSERT INTO [jp_entry] ([batch], [subject], [book], [quantity], [challan], [date], [counsellor]) VALUES (@batch, @subject, @book, @quantity, @challan, @date, @counsellor)" 
                    SelectCommand="SELECT * FROM [jp_entry]" 
                    UpdateCommand="UPDATE [jp_entry] SET [batch] = @batch, [subject] = @subject, [quantity] = @quantity, [date] = @date, [counsellor] = @counsellor WHERE [book] = @book AND [challan] = @challan">
                    <DeleteParameters>
                        <asp:Parameter Name="book" Type="String" />
                        <asp:Parameter Name="challan" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="counsellor" Type="String" />
                        <asp:Parameter Name="book" Type="String" />
                        <asp:Parameter Name="challan" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="book" Type="String" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="challan" Type="String" />
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="counsellor" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style20">
                <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                    BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataKeyNames="registration_no,batch,subject,book" DataSourceID="SqlDataSource6">
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" />
                        <asp:BoundField DataField="st_name" HeaderText="st_name" 
                            SortExpression="st_name" />
                        <asp:BoundField DataField="registration_no" HeaderText="registration_no" 
                            ReadOnly="True" SortExpression="registration_no" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" 
                            SortExpression="email_id" />
                        <asp:BoundField DataField="mobile" HeaderText="mobile" 
                            SortExpression="mobile" />
                        <asp:BoundField DataField="batch" HeaderText="batch" 
                            SortExpression="batch" ReadOnly="True" />
                        <asp:BoundField DataField="subject" HeaderText="subject" 
                            SortExpression="subject" ReadOnly="True" />
                        <asp:BoundField DataField="book" HeaderText="book" 
                            SortExpression="book" ReadOnly="True" />
                        <asp:BoundField DataField="counter" HeaderText="counter" 
                            SortExpression="counter" />
                        <asp:BoundField DataField="counsellor" HeaderText="counsellor" 
                            SortExpression="counsellor" />
                        <asp:BoundField DataField="date" HeaderText="date" 
                            SortExpression="date" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [jp_issue] WHERE [registration_no] = @registration_no AND [batch] = @batch AND [subject] = @subject AND [book] = @book" 
                    InsertCommand="INSERT INTO [jp_issue] ([st_name], [registration_no], [email_id], [mobile], [register_no], [page_no], [line_no], [datetime], [batch], [subject], [book], [counter]) VALUES (@st_name, @registration_no, @email_id, @mobile, @register_no, @page_no, @line_no, @datetime, @batch, @subject, @book, @counter)" 
                    SelectCommand="SELECT st_name, registration_no, email_id, mobile, batch, subject, book, counter, counsellor, date FROM jp_issue" 
                    
                    UpdateCommand="UPDATE [jp_issue] SET [st_name] = @st_name, [email_id] = @email_id, [mobile] = @mobile, [register_no] = @register_no, [page_no] = @page_no, [line_no] = @line_no, [datetime] = @datetime, [counter] = @counter WHERE [registration_no] = @registration_no AND [batch] = @batch AND [subject] = @subject AND [book] = @book">
                    <DeleteParameters>
                        <asp:Parameter Name="registration_no" Type="String" />
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="book" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="st_name" Type="String" />
                        <asp:Parameter Name="email_id" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="register_no" Type="String" />
                        <asp:Parameter Name="page_no" Type="String" />
                        <asp:Parameter Name="line_no" Type="String" />
                        <asp:Parameter DbType="Date" Name="datetime" />
                        <asp:Parameter Name="counter" Type="Int32" />
                        <asp:Parameter Name="registration_no" Type="String" />
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="book" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="st_name" Type="String" />
                        <asp:Parameter Name="registration_no" Type="String" />
                        <asp:Parameter Name="email_id" Type="String" />
                        <asp:Parameter Name="mobile" Type="String" />
                        <asp:Parameter Name="register_no" Type="String" />
                        <asp:Parameter Name="page_no" Type="String" />
                        <asp:Parameter Name="line_no" Type="String" />
                        <asp:Parameter DbType="Date" Name="datetime" />
                        <asp:Parameter Name="batch" Type="String" />
                        <asp:Parameter Name="subject" Type="String" />
                        <asp:Parameter Name="book" Type="String" />
                        <asp:Parameter Name="counter" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style20">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

