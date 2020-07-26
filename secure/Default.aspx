<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="secure_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style7
    {
            width: 136px;
        }
        .style9
        {
            width: 136px;
            height: 23px;
        }
        .style10
        {
            width: 211px;
            height: 23px;
        }
        .style11
        {
            width: 211px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style7">
            Welcome&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
        <td class="style11">
            &nbsp;</td>
        <td align="right">
    <asp:LoginStatus ID="LoginStatus1" runat="server" />
        </td>
        <td align="right">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            </td>
        <td class="style10">
            </td>
        <td class="style3">
            </td>
        <td class="style3">
            </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label1" runat="server" Text="Category :"></asp:Label>
        </td>
        <td class="style11">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Electronics</asp:ListItem>
                    <asp:ListItem>Building</asp:ListItem>
                    <asp:ListItem>Vehicle</asp:ListItem>
                    <asp:ListItem>Personal Care</asp:ListItem>
                    <asp:ListItem>Essential Commodities</asp:ListItem>
                    <asp:ListItem>Books</asp:ListItem>
                    <asp:ListItem>Historic Element</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label2" runat="server" Text="Price Range :"></asp:Label>
        </td>
        <td class="style11">
            <asp:DropDownList ID="DropDownList2" runat="server" 
                onselectedindexchanged="DropDownList2_SelectedIndexChanged" 
                AutoPostBack="True">
                <asp:ListItem Value="1000">&lt;1,000</asp:ListItem>
                <asp:ListItem Value="5000">&lt;5,000</asp:ListItem>
                <asp:ListItem Value="10000">&lt;10,000</asp:ListItem>
                <asp:ListItem Value="50000">&lt;50,000</asp:ListItem>
                <asp:ListItem Value="10000000"></asp:ListItem>
                <asp:ListItem Value="999999999">Above 1,00,000</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style11">
            &nbsp;</td>
        <td>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" 
                Font-Size="Large" ForeColor="#FF6600" Text="Bid History"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td class="style11">
            <asp:GridView ID="GridView2" runat="server" Width="211px" 
                AutoGenerateColumns="False" 
                onselectedindexchanged="GridView2_SelectedIndexChanged" BackColor="White" 
                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" PageSize="5" onrowediting="GridView2_RowEditing">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Product_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="Seller_name" HeaderText="Seller Name" />
                    <asp:BoundField DataField="date" HeaderText="Data of Post" />
                    <asp:BoundField DataField="base_price" HeaderText="Current Price" />
                    <asp:ImageField DataAlternateTextField="image" DataImageUrlField="image" 
                        HeaderText="Image" ControlStyle-Width="100" ControlStyle-Height = "100">
<ControlStyle Height="100px" Width="100px"></ControlStyle>

                        <ItemStyle Height="10px" Width="10px" />
                    </asp:ImageField>
                    <asp:CommandField ButtonType="Image" HeaderText="View" 
                        SelectImageUrl="~/View_Details.png" ShowSelectButton="True" />
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
        </td>
        <td valign="top">
            <asp:GridView ID="GridView3" runat="server" Height="195px" 
                style="margin-top: 4px" Width="162px" 
                onselectedindexchanged="GridView3_SelectedIndexChanged" 
                AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="Product_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="Base_Price" HeaderText="Price" />
                    <asp:CommandField ButtonType="Image" HeaderText="Pay Now" 
                        SelectImageUrl="~/paynow.png" ShowSelectButton="True" ControlStyle-Width="50" ControlStyle-Height = "30"/>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

