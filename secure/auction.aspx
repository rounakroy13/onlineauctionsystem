<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="auction.aspx.cs" Inherits="secure_auction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 202px;
        }
        .style8
        {
            width: 298px;
        }
        .style9
        {
            width: 202px;
            height: 23px;
        }
        .style10
        {
            width: 298px;
            height: 23px;
        }
        .style11
        {
            height: 23px;
            width: 203px;
        }
        .style12
        {
            width: 203px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style9">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/b.png" 
                    Height="30px" onclick="ImageButton1_Click"  />
            </td>
            <td class="style10">
                &nbsp;</td>
            <td align="right" class="style11">
                <asp:LoginStatus ID="LoginStatus1" runat="server" 
                    LogoutPageUrl="~/Login.aspx" />
            </td>
            <td align="right" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
            </td>
            <td class="style10">
                </td>
            <td align="right" class="style11">
                &nbsp;</td>
            <td align="right" class="style3">
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="pname" runat="server" Text="Product Name : "></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="pn" runat="server" Text="Label"></asp:Label>
            </td>
            <td rowspan="7" valign="top" class="style12">
                <asp:Image ID="Image123" runat="server" BorderColor="Aqua" 
                    BorderStyle="Inset" Height="200px" ImageAlign="TextTop" 
                    Width="200px" />
            </td>
            <td rowspan="7" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="sname" runat="server" Text="Seller Name :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="sn" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Category :</td>
            <td class="style10">
                <asp:Label ID="c" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="cprice" runat="server" Text="Current Price"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="cp" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="lname" runat="server" Text="Last Bidder ID :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="ln" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="ldate" runat="server" Text="Last Date :"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="ld" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" Height="71px" 
                    ImageUrl="~/bid.png" onclick="ImageButton2_Click" ToolTip="Bid Now" 
                    Width="136px" />
            </td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

