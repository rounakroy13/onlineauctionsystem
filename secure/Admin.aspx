<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style8
        {
            width: 108px;
        }
        .style9
        {
            width: 585px;
        }
        .style10
        {
            width: 108px;
            height: 23px;
        }
        .style11
        {
            width: 585px;
            height: 23px;
        }
        .style12
        {
            width: 161px;
            height: 23px;
        }
        .style13
        {
            width: 161px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style12">
                Welcome&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style11">
            </td>
            <td align="right" class="style3">
                <asp:LoginStatus ID="LoginStatus1" runat="server" 
                    LogoutPageUrl="~/Login.aspx" />
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Label ID="Label2" runat="server" Text="Area :"></asp:Label>
            </td>
            <td class="style9">
                <asp:RadioButton ID="RadioButton1" runat="server" Text="Seller" 
                    AutoPostBack="True" GroupName="c" 
                    oncheckedchanged="RadioButton1_CheckedChanged" />
                <asp:RadioButton ID="RadioButton2" runat="server" Text="Buyer" GroupName="c" 
                    oncheckedchanged="RadioButton2_CheckedChanged" AutoPostBack="True" />
                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                    GroupName="c" oncheckedchanged="RadioButton3_CheckedChanged2" Text="Feedback" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style9">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="buyer_id" 
                    DataSourceID="SqlDataSource2" 
                    EmptyDataText="There are no data records to display." Visible="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" GridLines="Vertical" 
                    onselectedindexchanged="GridView2_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="buyer_id" HeaderText="Buyer ID" ReadOnly="True" 
                            SortExpression="buyer_id" />
                        <asp:BoundField DataField="buyer_name" HeaderText="Name" 
                            SortExpression="buyer_name" />
                        <asp:BoundField DataField="buyer_email" HeaderText="Email" 
                            SortExpression="buyer_email" />
                        <asp:BoundField DataField="buyer_country" HeaderText="Country" 
                            SortExpression="buyer_country" />
                        <asp:BoundField DataField="buyer_city" HeaderText="City" 
                            SortExpression="buyer_city" />
                        <asp:BoundField DataField="buyer_phone" HeaderText="Phone" 
                            SortExpression="buyer_phone" />
                        <asp:CommandField ButtonType="Image" CancelImageUrl="~/Cancel.jpg" 
                            EditImageUrl="~/edit1.jpg" ShowDeleteButton="True" ShowEditButton="True" 
                            UpdateImageUrl="~/update.jpg" ControlStyle-Width="40" 
                            ControlStyle-Height = "40" DeleteImageUrl="~/delete1.jpg" 
                            HeaderText="Modify">
<ControlStyle Height="40px" Width="40px"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:auctionConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [buyer_table] WHERE [buyer_id] = @buyer_id" 
                    InsertCommand="INSERT INTO [buyer_table] ([buyer_name], [buyer_email], [buyer_pass], [buyer_country], [buyer_city], [buyer_address], [buyer_age], [buyer_phone]) VALUES (@buyer_name, @buyer_email, @buyer_pass, @buyer_country, @buyer_city, @buyer_address, @buyer_age, @buyer_phone)" 
                    ProviderName="<%$ ConnectionStrings:auctionConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [buyer_id], [buyer_name], [buyer_email], [buyer_pass], [buyer_country], [buyer_city], [buyer_address], [buyer_age], [buyer_phone] FROM [buyer_table]" 
                    UpdateCommand="UPDATE [buyer_table] SET [buyer_name] = @buyer_name, [buyer_email] = @buyer_email, [buyer_pass] = @buyer_pass, [buyer_country] = @buyer_country, [buyer_city] = @buyer_city, [buyer_address] = @buyer_address, [buyer_age] = @buyer_age, [buyer_phone] = @buyer_phone WHERE [buyer_id] = @buyer_id">
                    <DeleteParameters>
                        <asp:Parameter Name="buyer_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="buyer_name" Type="String" />
                        <asp:Parameter Name="buyer_email" Type="String" />
                        <asp:Parameter Name="buyer_pass" Type="String" />
                        <asp:Parameter Name="buyer_country" Type="String" />
                        <asp:Parameter Name="buyer_city" Type="String" />
                        <asp:Parameter Name="buyer_address" Type="String" />
                        <asp:Parameter Name="buyer_age" Type="Int32" />
                        <asp:Parameter Name="buyer_phone" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="buyer_name" Type="String" />
                        <asp:Parameter Name="buyer_email" Type="String" />
                        <asp:Parameter Name="buyer_pass" Type="String" />
                        <asp:Parameter Name="buyer_country" Type="String" />
                        <asp:Parameter Name="buyer_city" Type="String" />
                        <asp:Parameter Name="buyer_address" Type="String" />
                        <asp:Parameter Name="buyer_age" Type="Int32" />
                        <asp:Parameter Name="buyer_phone" Type="String" />
                        <asp:Parameter Name="buyer_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Product_id" 
                    DataSourceID="SqlDataSource1" 
                    EmptyDataText="There are no data records to display." Visible="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Product_name" HeaderText="Product Name" 
                            SortExpression="Product_name" />
                        <asp:BoundField DataField="Seller_name" HeaderText="Seller Name" 
                            SortExpression="Seller_name" />
                        <asp:BoundField DataField="Product_Category" HeaderText="Category" 
                            SortExpression="Product_Category" />
                        <asp:BoundField DataField="Seller_phone" HeaderText="Phone" 
                            SortExpression="Seller_phone" />
                        <asp:BoundField DataField="Base_Price" HeaderText="Current Price" 
                            SortExpression="Base_Price" />
                        <asp:BoundField DataField="Last_date" HeaderText="Last Date" 
                            SortExpression="Last_date" />
                        <asp:CommandField ShowDeleteButton="True" 
                            AccessibleHeaderText="Modify" ButtonType="Image" CancelImageUrl="~/Cancel.jpg" 
                            DeleteImageUrl="~/delete1.jpg" EditImageUrl="~/edit1.jpg" 
                            UpdateImageUrl="~/update.jpg" ControlStyle-Width="40" 
                            ControlStyle-Height = "40" HeaderText="Modify">
<ControlStyle Height="40px" Width="40px"></ControlStyle>
                        </asp:CommandField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:auctionConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [Seller] WHERE [Product_id] = @Product_id" 
                    InsertCommand="INSERT INTO [Seller] ([Product_name], [Seller_name], [Product_Category], [Seller_phone], [Seller_email], [Seller_address], [Product_description], [Base_Price], [Last_date], [image], [date], [hour], [minute]) VALUES (@Product_name, @Seller_name, @Product_Category, @Seller_phone, @Seller_email, @Seller_address, @Product_description, @Base_Price, @Last_date, @image, @date, @hour, @minute)" 
                    ProviderName="<%$ ConnectionStrings:auctionConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [Product_id], [Product_name], [Seller_name], [Product_Category], [Seller_phone], [Seller_email], [Seller_address], [Product_description], [Base_Price], [Last_date], [image], [date], [hour], [minute] FROM [Seller]" 
                    UpdateCommand="UPDATE [Seller] SET [Product_name] = @Product_name, [Seller_name] = @Seller_name, [Product_Category] = @Product_Category, [Seller_phone] = @Seller_phone, [Seller_email] = @Seller_email, [Seller_address] = @Seller_address, [Product_description] = @Product_description, [Base_Price] = @Base_Price, [Last_date] = @Last_date, [image] = @image, [date] = @date, [hour] = @hour, [minute] = @minute WHERE [Product_id] = @Product_id">
                    <DeleteParameters>
                        <asp:Parameter Name="Product_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Product_name" Type="String" />
                        <asp:Parameter Name="Seller_name" Type="String" />
                        <asp:Parameter Name="Product_Category" Type="String" />
                        <asp:Parameter Name="Seller_phone" Type="String" />
                        <asp:Parameter Name="Seller_email" Type="String" />
                        <asp:Parameter Name="Seller_address" Type="String" />
                        <asp:Parameter Name="Product_description" Type="String" />
                        <asp:Parameter Name="Base_Price" Type="Int32" />
                        <asp:Parameter Name="Last_date" Type="Int32" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="hour" Type="Int32" />
                        <asp:Parameter Name="minute" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Product_name" Type="String" />
                        <asp:Parameter Name="Seller_name" Type="String" />
                        <asp:Parameter Name="Seller_phone" Type="String" />
                        <asp:Parameter Name="Seller_address" Type="String" />
                        <asp:Parameter Name="Product_description" Type="String" />
                        <asp:Parameter Name="Base_Price" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Name" 
                    DataSourceID="SqlDataSource3" 
                    EmptyDataText="There are no data records to display." GridLines="Vertical" 
                    style="margin-right: 3px" Visible="False">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" 
                            SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Feedback" HeaderText="Feedback" 
                            SortExpression="Feedback" />
                        <asp:CommandField DeleteImageUrl="~/delete1.jpg" ShowDeleteButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:auctionConnectionString1 %>" 
                    DeleteCommand="DELETE FROM [feedback] WHERE [Name] = @Name" 
                    InsertCommand="INSERT INTO [feedback] ([Name], [Email], [Feedback]) VALUES (@Name, @Email, @Feedback)" 
                    ProviderName="<%$ ConnectionStrings:auctionConnectionString1.ProviderName %>" 
                    SelectCommand="SELECT [Name], [Email], [Feedback] FROM [feedback]" 
                    UpdateCommand="UPDATE [feedback] SET [Email] = @Email, [Feedback] = @Feedback WHERE [Name] = @Name">
                    <DeleteParameters>
                        <asp:Parameter Name="Name" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Feedback" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Feedback" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

