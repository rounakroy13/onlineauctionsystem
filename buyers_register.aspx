<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage1.master" AutoEventWireup="true" CodeFile="buyers_register.aspx.cs" Inherits="buyers_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style7
        {
            width: 195px;
        }
        .style8
        {
            width: 332px;
        }
        .style9
        {
            width: 195px;
            height: 26px;
        }
        .style10
        {
            width: 332px;
            height: 26px;
        }
        .style11
        {
            height: 26px;
        }
        .style12
        {
            width: 215px;
            height: 30px;
        }
        .style13
        {
            width: 346px;
            height: 30px;
        }
        .style14
        {
            height: 30px;
        }
        .style15
        {
            width: 215px;
        }
        .style16
        {
            width: 215px;
            height: 26px;
        }
        .style17
        {
            width: 215px;
            height: 11px;
        }
        .style18
        {
            width: 346px;
            height: 11px;
        }
        .style19
        {
            height: 11px;
        }
        .style20
        {
            width: 346px;
        }
        .style21
        {
            width: 346px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td colspan="3">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="30px" 
                    ImageUrl="~/b.png" Width="56px" onclick="ImageButton4_Click" />
            </td>
        </tr>
        <tr>
            <td class="style15" bgcolor="#FFCCFF">
                <asp:Label ID="Label1" runat="server" Text="Name : "></asp:Label>
            </td>
            <td class="style20" bgcolor="#FFCCFF">
                <asp:TextBox ID="buy_name_txt" runat="server" Width="250px" 
                    ValidationGroup="buyer"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="buy_name_txt" ErrorMessage="Enter Name" ForeColor="Red" 
                    ValidationGroup="buyer" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15" bgcolor="#FFCCFF">
                Email ID :</td>
            <td class="style20" bgcolor="#FFCCFF">
                <asp:TextBox ID="buy_email_txt" runat="server" Width="252px" 
                    ValidationGroup="buyer"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="buy_email_txt" ErrorMessage="Enter Email" ForeColor="Red" 
                    ValidationGroup="buyer" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="buy_email_txt" ErrorMessage="Enter valid ID" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="buyer" Font-Bold="True" Font-Size="Medium"></asp:RegularExpressionValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td class="style15" bgcolor="#FFCCFF">
                <asp:Label ID="Label3" runat="server" Text="Enter new password :"></asp:Label>
            </td>
            <td class="style20" bgcolor="#FFCCFF">
                <asp:TextBox ID="buy_pass_txt" runat="server" Width="150px" 
                    ValidationGroup="buyer" ontextchanged="buy_pass_txt_TextChanged" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="buy_pass_txt" ErrorMessage="Enter Password" ForeColor="Red" 
                    ValidationGroup="buyer" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17" bgcolor="#FFCCFF">
                <asp:Label ID="Label7" runat="server" Text="Re-enter Password :"></asp:Label>
            </td>
            <td class="style18" bgcolor="#FFCCFF" valign="top">
                <asp:TextBox ID="buy_repass_txt" runat="server" Width="150px" 
                    ValidationGroup="buyer" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ErrorMessage="Re-Enter Password" ControlToValidate="buy_repass_txt" 
                    ForeColor="Red" ValidationGroup="buyer" Font-Bold="True" 
                    Font-Size="Medium"></asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToValidate="buy_repass_txt" ErrorMessage="Password Mismatch" 
                    ForeColor="Red" ValidationGroup="buyer" ControlToCompare="buy_pass_txt" 
                    Font-Bold="True" Font-Size="Medium"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style15" bgcolor="#FFCCFF">
                <asp:Label ID="Label8" runat="server" Text="Country :"></asp:Label>
            </td>
            <td class="style20" bgcolor="#FFCCFF">
                <asp:DropDownList ID="buy_country_ddl" runat="server" 
                    ValidationGroup="buyer" 
                    onselectedindexchanged="buy_country_ddl_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>Pakistan</asp:ListItem>
                    <asp:ListItem>Srilanka</asp:ListItem>
                    <asp:ListItem>Bangladesh</asp:ListItem>
                    <asp:ListItem>Nepal</asp:ListItem>
                    <asp:ListItem>China</asp:ListItem>
                    <asp:ListItem>Korea</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="buy_country_ddl" ErrorMessage="Select Country" 
                    ForeColor="Red" ValidationGroup="buyer" InitialValue="Select" 
                    Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15" bgcolor="#FFCCFF">
                <asp:Label ID="Label9" runat="server" Text="City :"></asp:Label>
            </td>
            <td class="style20" bgcolor="#FFCCFF">
                <asp:TextBox ID="buy_city_txt" runat="server" ValidationGroup="buyer" 
                    Width="148px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="buy_city_txt" ErrorMessage="Enter City" ForeColor="Red" 
                    ValidationGroup="buyer" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16" bgcolor="#FFCCFF">
                <asp:Label ID="Label10" runat="server" Text="Address :"></asp:Label>
            </td>
            <td class="style21" bgcolor="#FFCCFF">
                <asp:TextBox ID="buy_address_txt" runat="server" Width="319px" 
                    ValidationGroup="buyer"></asp:TextBox>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="buy_address_txt" ErrorMessage="Enter Address" 
                    ForeColor="Red" ValidationGroup="buyer" Font-Bold="True" 
                    Font-Size="Medium"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style15" bgcolor="#FFCCFF">
                <asp:Label ID="Label4" runat="server" Text="Age :"></asp:Label>
            </td>
            <td class="style20" bgcolor="#FFCCFF">
                <asp:TextBox ID="buy_age_txt" runat="server" Width="50px" 
                    ValidationGroup="buyer"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="buy_age_txt" ErrorMessage="Enter Age" ForeColor="Red" 
                    ValidationGroup="buyer" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="buy_age_txt" 
                    ErrorMessage="Enter Valid Age" ForeColor="Red" MaximumValue="100" 
                    MinimumValue="18" Type="Integer" ValidationGroup="buyer" Font-Bold="True" 
                    Font-Size="Medium"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="style15" bgcolor="#FFCCFF">
                <asp:Label ID="Label5" runat="server" Text="Phone Number :"></asp:Label>
            </td>
            <td class="style20" bgcolor="#FFCCFF">
                <asp:TextBox ID="buy_phone_txt" runat="server" Width="150px" 
                    ValidationGroup="buyer" MaxLength="10"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="buy_phone_txt" ErrorMessage="Enter Number" ForeColor="Red" 
                    ValidationGroup="buyer" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15" bgcolor="#FFCCFF">
                <asp:CheckBox ID="tc_check" runat="server" 
                    Text="Accept" 
                    oncheckedchanged="tc_check_CheckedChanged" />
            &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">terms and conditions</asp:LinkButton>
            </td>
            <td class="style20" bgcolor="#FFCCFF">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" bgcolor="#FFCCFF">
                </td>
            <td class="style13" bgcolor="#FFCCFF">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="51px" 
                    ImageUrl="~/Submit.jpg" onclick="ImageButton1_Click" ValidationGroup="buyer" 
                    Width="190px" />
                </td>
            <td class="style14">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

