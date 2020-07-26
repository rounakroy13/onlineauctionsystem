<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="Post_add.aspx.cs" Inherits="Post_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 146px;
        }
        .style9
        {
            width: 146px;
            height: 26px;
        }
        .style12
        {
            width: 253px;
        }
        .style13
        {
            width: 253px;
            height: 26px;
        }
        .style14
        {
            width: 216px;
        }
        .style15
        {
            width: 216px;
            height: 26px;
        }
        .style16
        {
            width: 146px;
            height: 61px;
        }
        .style17
        {
            width: 253px;
            height: 61px;
        }
        .style18
        {
            width: 216px;
            height: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label1" runat="server" Text="Product Name :"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="pro_name_txt" runat="server" ValidationGroup="post" 
                    Width="210px"></asp:TextBox>
            </td>
            <td class="style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="pro_name_txt" ErrorMessage="Enter Product Name" 
                    ForeColor="Red" ValidationGroup="post"></asp:RequiredFieldValidator>
            </td>
            <td rowspan="9" valign="top">
                <asp:Image ID="Image1" runat="server" Height="200px" ImageAlign="TextTop" 
                    Width="200px" ImageUrl="~/upload.jpg" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label9" runat="server" Text="Category"></asp:Label>
            </td>
            <td class="style12">
                <asp:DropDownList ID="cat_ddl" runat="server" Height="16px" 
                    ValidationGroup="post" Width="161px">
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
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="cat_ddl" ErrorMessage="Select Category" ForeColor="Red" 
                    InitialValue="Select" ValidationGroup="post" ViewStateMode="Disabled"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label2" runat="server" Text="Seller Name :"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="seller_name_txt" runat="server" ValidationGroup="post" 
                    Width="207px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="seller_name_txt" ErrorMessage="Enter Seller Name" 
                    ForeColor="Red" ValidationGroup="post"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:Label ID="Label3" runat="server" Text="Seller Phone :"></asp:Label>
            </td>
            <td class="style13">
                <asp:TextBox ID="seller_phone_txt" runat="server" ValidationGroup="post" 
                    Width="205px" MaxLength="10"></asp:TextBox>
            </td>
            <td class="style15">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="seller_phone_txt" ErrorMessage="Enter Phone Number" 
                    ForeColor="Red" ValidationGroup="post"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label8" runat="server" Text="Seller Email :"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="seller_email_txt" runat="server" ValidationGroup="post" 
                    Width="204px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="seller_email_txt" ErrorMessage="Enter Email" ForeColor="Red" 
                    ValidationGroup="post"></asp:RequiredFieldValidator>
&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="seller_email_txt" ErrorMessage="Enter valid mail" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="post"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label4" runat="server" Text="Address :"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="seller_address_txt" runat="server" ValidationGroup="post" 
                    Width="244px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="seller_address_txt" ErrorMessage="Enter Address" 
                    ForeColor="Red" ValidationGroup="post"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label5" runat="server" Text="Product Description :"></asp:Label>
            </td>
            <td class="style12" valign="top">
                <asp:TextBox ID="prod_description_txt" runat="server" Height="58px" 
                    ValidationGroup="post" Width="243px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label6" runat="server" Text="Base Price (INR) :"></asp:Label>
            </td>
            <td class="style12">
                <asp:TextBox ID="prod_baseprice_txt" runat="server" ValidationGroup="post" 
                    Width="134px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="prod_baseprice_txt" ErrorMessage="Enter Base Price" 
                    ForeColor="Red" ValidationGroup="post"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <asp:Label ID="Label7" runat="server" Text="Expiry Date : (dd-mm-yyyy)"></asp:Label>
            &nbsp;</td>
            <td class="style12">
                <asp:TextBox ID="prod_time_txt" runat="server" ValidationGroup="post" 
                    Width="130px"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="prod_time_txt" ErrorMessage="Enter Time Limit" 
                    ForeColor="Red" ValidationGroup="post"></asp:RequiredFieldValidator>
&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                <asp:Label ID="message" runat="server" Text="Upload a Picture"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="266px" 
                    BorderStyle="Ridge" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                <asp:CheckBox ID="CheckBox1" runat="server" 
                    oncheckedchanged="CheckBox1_CheckedChanged" 
                    Text="Accept" />
            &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Terms and Condition</asp:LinkButton>
            </td>
            <td class="style14">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="POST" 
                    ValidationGroup="post" Width="69px" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Upload" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

